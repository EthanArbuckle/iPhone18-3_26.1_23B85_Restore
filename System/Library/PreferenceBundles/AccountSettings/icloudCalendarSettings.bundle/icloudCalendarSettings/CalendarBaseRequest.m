@interface CalendarBaseRequest
- (CalendarBaseRequest)initWithURLString:(id)a3 accountStore:(id)a4 appleAccount:(id)a5 httpRequestType:(id)a6 requestBody:(id)a7 httpHeader:(id)a8;
- (id)_errorDictionaryFromServerResponse:(id)a3;
- (id)urlRequest;
- (void)_performRequestWithHandler:(id)a3 renewToken:(BOOL)a4;
@end

@implementation CalendarBaseRequest

- (CalendarBaseRequest)initWithURLString:(id)a3 accountStore:(id)a4 appleAccount:(id)a5 httpRequestType:(id)a6 requestBody:(id)a7 httpHeader:(id)a8
{
  v15 = a3;
  v16 = a4;
  obj = a5;
  v17 = a5;
  v33 = a6;
  v32 = a7;
  v31 = a8;
  v34.receiver = self;
  v34.super_class = CalendarBaseRequest;
  v18 = [(CalendarBaseRequest *)&v34 initWithURLString:v15];
  if (v18)
  {
    v28 = a4;
    v29 = [v16 aida_accountForPrimaryiCloudAccount];
    v19 = _CalLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [v29 accountType];
      v20 = v27 = v15;
      v21 = [v17 accountType];
      *buf = 138412546;
      v36 = v20;
      v37 = 2112;
      v38 = v21;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "adding aida account type %@ and apple account type %@", buf, 0x16u);

      v15 = v27;
    }

    v22 = [AAGrandSlamSigner alloc];
    v23 = [v16 aida_accountForiCloudAccount:v17];
    v24 = [v22 initWithAccountStore:v16 grandSlamAccount:v23 appTokenID:AAGrandSlamAppTokenIDiCloudSettings];
    v25 = _grandSlamSigner;
    _grandSlamSigner = v24;

    objc_storeStrong(&_requestType, a6);
    objc_storeStrong(&_requestUrl, a3);
    objc_storeStrong(&_headers, a8);
    objc_storeStrong(&v18->_requestBody, a7);
    objc_storeStrong(&v18->_iCloudAppleAccount, obj);
    objc_storeStrong(&_accountStore, v28);
  }

  return v18;
}

- (id)urlRequest
{
  v18.receiver = self;
  v18.super_class = CalendarBaseRequest;
  v3 = [(CalendarBaseRequest *)&v18 urlRequest];
  v4 = [v3 mutableCopy];

  [_grandSlamSigner setUseAltDSID:1];
  if (([_grandSlamSigner signURLRequest:v4 isUserInitiated:1] & 1) == 0)
  {
    v5 = _CalLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_B3A0(v5);
    }
  }

  v6 = [(CalendarBaseRequest *)self bodyDictionary];
  if (v6)
  {
    v17 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:v6 options:1 error:&v17];
    [v4 setHTTPBody:v7];
  }

  [v4 setHTTPMethod:_requestType];
  [v4 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_iCloudAppleAccount preferUsingPassword:0];
  v8 = +[AADeviceInfo udid];
  [v4 setValue:v8 forHTTPHeaderField:@"X-Client-UDID"];

  v9 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 infoDictionary];

  v12 = [v9 objectForKey:@"ProductVersion"];
  v13 = [v11 objectForKey:@"CFBundleName"];
  v14 = [v11 objectForKey:@"CFBundleVersion"];
  v15 = [NSString stringWithFormat:@"%@/%@ iOS/%@", v13, v14, v12];
  [v4 setValue:v15 forHTTPHeaderField:@"User-agent"];

  return v4;
}

- (void)_performRequestWithHandler:(id)a3 renewToken:(BOOL)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4EC0;
  v6[3] = &unk_14780;
  v9 = a4;
  v7 = self;
  v8 = a3;
  v5.receiver = v7;
  v5.super_class = CalendarBaseRequest;
  v4 = v8;
  [(CalendarBaseRequest *)&v5 performRequestWithHandler:v6];
}

- (id)_errorDictionaryFromServerResponse:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 calError];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 calError];
    v8 = [v7 errorTitle];

    if (v8)
    {
      v9 = [v3 calError];
      v10 = [v9 errorTitle];
      [v4 setObject:v10 forKey:@"errorTitle"];
    }
  }

  v11 = [v3 calError];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [v3 calError];
  v14 = [v13 errorMessage];

  if (v14)
  {
    v15 = [v3 calError];
    v16 = [v15 errorMessage];
  }

  else
  {
LABEL_7:
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CALENDAR_GENERIC_ERROR_MESSAGE" value:&stru_14AB8 table:@"calendarSettings"];
  }

  v17 = v16;
  [v4 setObject:v16 forKey:@"errorDescription"];

  return v4;
}

@end