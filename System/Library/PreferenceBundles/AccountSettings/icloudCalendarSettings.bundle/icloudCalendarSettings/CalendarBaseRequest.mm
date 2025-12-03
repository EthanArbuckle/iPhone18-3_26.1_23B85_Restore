@interface CalendarBaseRequest
- (CalendarBaseRequest)initWithURLString:(id)string accountStore:(id)store appleAccount:(id)account httpRequestType:(id)type requestBody:(id)body httpHeader:(id)header;
- (id)_errorDictionaryFromServerResponse:(id)response;
- (id)urlRequest;
- (void)_performRequestWithHandler:(id)handler renewToken:(BOOL)token;
@end

@implementation CalendarBaseRequest

- (CalendarBaseRequest)initWithURLString:(id)string accountStore:(id)store appleAccount:(id)account httpRequestType:(id)type requestBody:(id)body httpHeader:(id)header
{
  stringCopy = string;
  storeCopy = store;
  obj = account;
  accountCopy = account;
  typeCopy = type;
  bodyCopy = body;
  headerCopy = header;
  v34.receiver = self;
  v34.super_class = CalendarBaseRequest;
  v18 = [(CalendarBaseRequest *)&v34 initWithURLString:stringCopy];
  if (v18)
  {
    storeCopy2 = store;
    aida_accountForPrimaryiCloudAccount = [storeCopy aida_accountForPrimaryiCloudAccount];
    v19 = _CalLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [aida_accountForPrimaryiCloudAccount accountType];
      v20 = v27 = stringCopy;
      accountType = [accountCopy accountType];
      *buf = 138412546;
      v36 = v20;
      v37 = 2112;
      v38 = accountType;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "adding aida account type %@ and apple account type %@", buf, 0x16u);

      stringCopy = v27;
    }

    v22 = [AAGrandSlamSigner alloc];
    v23 = [storeCopy aida_accountForiCloudAccount:accountCopy];
    v24 = [v22 initWithAccountStore:storeCopy grandSlamAccount:v23 appTokenID:AAGrandSlamAppTokenIDiCloudSettings];
    v25 = _grandSlamSigner;
    _grandSlamSigner = v24;

    objc_storeStrong(&_requestType, type);
    objc_storeStrong(&_requestUrl, string);
    objc_storeStrong(&_headers, header);
    objc_storeStrong(&v18->_requestBody, body);
    objc_storeStrong(&v18->_iCloudAppleAccount, obj);
    objc_storeStrong(&_accountStore, storeCopy2);
  }

  return v18;
}

- (id)urlRequest
{
  v18.receiver = self;
  v18.super_class = CalendarBaseRequest;
  urlRequest = [(CalendarBaseRequest *)&v18 urlRequest];
  v4 = [urlRequest mutableCopy];

  [_grandSlamSigner setUseAltDSID:1];
  if (([_grandSlamSigner signURLRequest:v4 isUserInitiated:1] & 1) == 0)
  {
    v5 = _CalLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_B3A0(v5);
    }
  }

  bodyDictionary = [(CalendarBaseRequest *)self bodyDictionary];
  if (bodyDictionary)
  {
    v17 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:bodyDictionary options:1 error:&v17];
    [v4 setHTTPBody:v7];
  }

  [v4 setHTTPMethod:_requestType];
  [v4 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_iCloudAppleAccount preferUsingPassword:0];
  v8 = +[AADeviceInfo udid];
  [v4 setValue:v8 forHTTPHeaderField:@"X-Client-UDID"];

  v9 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v10 = +[NSBundle mainBundle];
  infoDictionary = [v10 infoDictionary];

  v12 = [v9 objectForKey:@"ProductVersion"];
  v13 = [infoDictionary objectForKey:@"CFBundleName"];
  v14 = [infoDictionary objectForKey:@"CFBundleVersion"];
  v15 = [NSString stringWithFormat:@"%@/%@ iOS/%@", v13, v14, v12];
  [v4 setValue:v15 forHTTPHeaderField:@"User-agent"];

  return v4;
}

- (void)_performRequestWithHandler:(id)handler renewToken:(BOOL)token
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4EC0;
  v6[3] = &unk_14780;
  tokenCopy = token;
  selfCopy = self;
  handlerCopy = handler;
  v5.receiver = selfCopy;
  v5.super_class = CalendarBaseRequest;
  v4 = handlerCopy;
  [(CalendarBaseRequest *)&v5 performRequestWithHandler:v6];
}

- (id)_errorDictionaryFromServerResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc_init(NSMutableDictionary);
  calError = [responseCopy calError];
  if (calError)
  {
    v6 = calError;
    calError2 = [responseCopy calError];
    errorTitle = [calError2 errorTitle];

    if (errorTitle)
    {
      calError3 = [responseCopy calError];
      errorTitle2 = [calError3 errorTitle];
      [v4 setObject:errorTitle2 forKey:@"errorTitle"];
    }
  }

  calError4 = [responseCopy calError];
  if (!calError4)
  {
    goto LABEL_7;
  }

  v12 = calError4;
  calError5 = [responseCopy calError];
  errorMessage = [calError5 errorMessage];

  if (errorMessage)
  {
    calError6 = [responseCopy calError];
    errorMessage2 = [calError6 errorMessage];
  }

  else
  {
LABEL_7:
    calError6 = [NSBundle bundleForClass:objc_opt_class()];
    errorMessage2 = [calError6 localizedStringForKey:@"CALENDAR_GENERIC_ERROR_MESSAGE" value:&stru_14AB8 table:@"calendarSettings"];
  }

  v17 = errorMessage2;
  [v4 setObject:errorMessage2 forKey:@"errorDescription"];

  return v4;
}

@end