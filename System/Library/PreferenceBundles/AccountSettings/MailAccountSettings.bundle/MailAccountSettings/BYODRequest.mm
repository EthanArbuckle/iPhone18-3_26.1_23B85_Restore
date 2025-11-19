@interface BYODRequest
+ (id)log;
- (BYODRequest)initWithURLString:(id)a3 accountStore:(id)a4 appleAccount:(id)a5 httpRequestType:(id)a6 requestBody:(id)a7 httpHeader:(id)a8;
- (id)_errorDictionaryFromServerResponse:(id)a3;
- (id)urlRequest;
- (void)_performRequestWithHandler:(id)a3 renewToken:(BOOL)a4;
@end

@implementation BYODRequest

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_57788;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D65A0 != -1)
  {
    dispatch_once(&qword_D65A0, block);
  }

  v2 = qword_D6598;

  return v2;
}

- (BYODRequest)initWithURLString:(id)a3 accountStore:(id)a4 appleAccount:(id)a5 httpRequestType:(id)a6 requestBody:(id)a7 httpHeader:(id)a8
{
  v15 = a3;
  v31 = a4;
  v30 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v32.receiver = self;
  v32.super_class = BYODRequest;
  v26 = v15;
  v16 = [(BYODRequest *)&v32 initWithURLString:v15];
  if (v16)
  {
    v25 = [v31 aida_accountForPrimaryiCloudAccount];
    v17 = +[BYODRequest log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v25 accountType];
      v19 = [v30 accountType];
      *buf = 138412546;
      v34 = v18;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "adding aida account type %@ and apple account type %@", buf, 0x16u);
    }

    v20 = [AAGrandSlamSigner alloc];
    v21 = [v31 aida_accountForiCloudAccount:v30];
    v22 = [v20 initWithAccountStore:v31 grandSlamAccount:v21 appTokenID:@"com.apple.gs.icloud.mail.auth"];
    grandSlamSigner = v16->_grandSlamSigner;
    v16->_grandSlamSigner = v22;

    objc_storeStrong(&v16->_requestType, a6);
    objc_storeStrong(&v16->_requestUrl, a3);
    objc_storeStrong(&v16->_headers, a8);
    objc_storeStrong(&v16->_requestBody, a7);
    objc_storeStrong(&v16->_iCloudAppleAccount, a5);
    objc_storeStrong(&v16->_accountStore, a4);
  }

  return v16;
}

- (id)urlRequest
{
  v19.receiver = self;
  v19.super_class = BYODRequest;
  v3 = [(BYODRequest *)&v19 urlRequest];
  v4 = [v3 mutableCopy];

  [(AAGrandSlamSigner *)self->_grandSlamSigner setUseAltDSID:1];
  if (([(AAGrandSlamSigner *)self->_grandSlamSigner signURLRequest:v4 isUserInitiated:1]& 1) == 0)
  {
    v5 = +[BYODRequest log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_79898(v5);
    }
  }

  v6 = [(BYODRequest *)self bodyDictionary];
  if (v6)
  {
    v18 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:v6 options:1 error:&v18];
    v8 = v18;
    [v4 setHTTPBody:v7];
  }

  [v4 setHTTPMethod:self->_requestType];
  [v4 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_iCloudAppleAccount preferUsingPassword:0];
  v9 = +[AADeviceInfo udid];
  [v4 setValue:v9 forHTTPHeaderField:@"X-Client-UDID"];

  v10 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 infoDictionary];

  v13 = [v10 objectForKey:@"ProductVersion"];
  v14 = [v12 objectForKey:@"CFBundleName"];
  v15 = [v12 objectForKey:@"CFBundleVersion"];
  v16 = [NSString stringWithFormat:@"%@/%@ iOS/%@", v14, v15, v13];
  [v4 setValue:v16 forHTTPHeaderField:@"User-agent"];

  return v4;
}

- (void)_performRequestWithHandler:(id)a3 renewToken:(BOOL)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_57F44;
  v6[3] = &unk_B97C8;
  v9 = a4;
  v7 = self;
  v8 = a3;
  v5.receiver = v7;
  v5.super_class = BYODRequest;
  v4 = v8;
  [(BYODRequest *)&v5 performRequestWithHandler:v6];
}

- (id)_errorDictionaryFromServerResponse:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 byodError];
  if (v5)
  {
    v6 = [v3 byodError];
    v7 = [v6 errorTitle];

    if (v7)
    {
      v8 = [v3 byodError];
      v9 = [v8 errorTitle];
      [v4 setObject:v9 forKey:@"errorTitle"];
    }
  }

  v10 = [v3 byodError];
  if (v10 && ([v3 byodError], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "errorMessage"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v12))
  {
    v13 = [v3 byodError];
    v14 = [v13 errorMessage];
    [v4 setObject:v14 forKey:@"errorDescription"];
  }

  else
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"BYOD_GENERIC_ERROR_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v4 setObject:v14 forKey:@"errorDescription"];
  }

  return v4;
}

@end