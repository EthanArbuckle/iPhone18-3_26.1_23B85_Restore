@interface BYODRequest
+ (id)log;
- (BYODRequest)initWithURLString:(id)string accountStore:(id)store appleAccount:(id)account httpRequestType:(id)type requestBody:(id)body httpHeader:(id)header;
- (id)_errorDictionaryFromServerResponse:(id)response;
- (id)urlRequest;
- (void)_performRequestWithHandler:(id)handler renewToken:(BOOL)token;
@end

@implementation BYODRequest

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_57788;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D65A0 != -1)
  {
    dispatch_once(&qword_D65A0, block);
  }

  v2 = qword_D6598;

  return v2;
}

- (BYODRequest)initWithURLString:(id)string accountStore:(id)store appleAccount:(id)account httpRequestType:(id)type requestBody:(id)body httpHeader:(id)header
{
  stringCopy = string;
  storeCopy = store;
  accountCopy = account;
  typeCopy = type;
  bodyCopy = body;
  headerCopy = header;
  v32.receiver = self;
  v32.super_class = BYODRequest;
  v26 = stringCopy;
  v16 = [(BYODRequest *)&v32 initWithURLString:stringCopy];
  if (v16)
  {
    aida_accountForPrimaryiCloudAccount = [storeCopy aida_accountForPrimaryiCloudAccount];
    v17 = +[BYODRequest log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      accountType = [aida_accountForPrimaryiCloudAccount accountType];
      accountType2 = [accountCopy accountType];
      *buf = 138412546;
      v34 = accountType;
      v35 = 2112;
      v36 = accountType2;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "adding aida account type %@ and apple account type %@", buf, 0x16u);
    }

    v20 = [AAGrandSlamSigner alloc];
    v21 = [storeCopy aida_accountForiCloudAccount:accountCopy];
    v22 = [v20 initWithAccountStore:storeCopy grandSlamAccount:v21 appTokenID:@"com.apple.gs.icloud.mail.auth"];
    grandSlamSigner = v16->_grandSlamSigner;
    v16->_grandSlamSigner = v22;

    objc_storeStrong(&v16->_requestType, type);
    objc_storeStrong(&v16->_requestUrl, string);
    objc_storeStrong(&v16->_headers, header);
    objc_storeStrong(&v16->_requestBody, body);
    objc_storeStrong(&v16->_iCloudAppleAccount, account);
    objc_storeStrong(&v16->_accountStore, store);
  }

  return v16;
}

- (id)urlRequest
{
  v19.receiver = self;
  v19.super_class = BYODRequest;
  urlRequest = [(BYODRequest *)&v19 urlRequest];
  v4 = [urlRequest mutableCopy];

  [(AAGrandSlamSigner *)self->_grandSlamSigner setUseAltDSID:1];
  if (([(AAGrandSlamSigner *)self->_grandSlamSigner signURLRequest:v4 isUserInitiated:1]& 1) == 0)
  {
    v5 = +[BYODRequest log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_79898(v5);
    }
  }

  bodyDictionary = [(BYODRequest *)self bodyDictionary];
  if (bodyDictionary)
  {
    v18 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:bodyDictionary options:1 error:&v18];
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
  infoDictionary = [v11 infoDictionary];

  v13 = [v10 objectForKey:@"ProductVersion"];
  v14 = [infoDictionary objectForKey:@"CFBundleName"];
  v15 = [infoDictionary objectForKey:@"CFBundleVersion"];
  v16 = [NSString stringWithFormat:@"%@/%@ iOS/%@", v14, v15, v13];
  [v4 setValue:v16 forHTTPHeaderField:@"User-agent"];

  return v4;
}

- (void)_performRequestWithHandler:(id)handler renewToken:(BOOL)token
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_57F44;
  v6[3] = &unk_B97C8;
  tokenCopy = token;
  selfCopy = self;
  handlerCopy = handler;
  v5.receiver = selfCopy;
  v5.super_class = BYODRequest;
  v4 = handlerCopy;
  [(BYODRequest *)&v5 performRequestWithHandler:v6];
}

- (id)_errorDictionaryFromServerResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc_init(NSMutableDictionary);
  byodError = [responseCopy byodError];
  if (byodError)
  {
    byodError2 = [responseCopy byodError];
    errorTitle = [byodError2 errorTitle];

    if (errorTitle)
    {
      byodError3 = [responseCopy byodError];
      errorTitle2 = [byodError3 errorTitle];
      [v4 setObject:errorTitle2 forKey:@"errorTitle"];
    }
  }

  byodError4 = [responseCopy byodError];
  if (byodError4 && ([responseCopy byodError], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "errorMessage"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, byodError4, v12))
  {
    byodError5 = [responseCopy byodError];
    errorMessage = [byodError5 errorMessage];
    [v4 setObject:errorMessage forKey:@"errorDescription"];
  }

  else
  {
    byodError5 = [NSBundle bundleForClass:objc_opt_class()];
    errorMessage = [byodError5 localizedStringForKey:@"BYOD_GENERIC_ERROR_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v4 setObject:errorMessage forKey:@"errorDescription"];
  }

  return v4;
}

@end