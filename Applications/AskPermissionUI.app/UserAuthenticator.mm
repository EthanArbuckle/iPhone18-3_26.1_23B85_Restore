@interface UserAuthenticator
+ (void)authenticateWithUsername:(id)username authenticationType:(int64_t)type completion:(id)completion;
@end

@implementation UserAuthenticator

+ (void)authenticateWithUsername:(id)username authenticationType:(int64_t)type completion:(id)completion
{
  usernameCopy = username;
  completionCopy = completion;
  v10 = +[APLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v25 = objc_opt_class();
    v26 = 2112;
    v27 = usernameCopy;
    v28 = 2050;
    typeCopy = type;
    v12 = v25;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Authenticating user. Username: %@, authenticationType: %{public}ld.", buf, 0x20u);
  }

  v13 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v13 setAuthenticationType:2];
  [v13 setIsEphemeral:1];
  [v13 _setProxyingForApp:1];
  [v13 setIsUsernameEditable:type == 0];
  [v13 setServiceType:1];
  [v13 setShouldAllowAppleIDCreation:0];
  [v13 setUsername:usernameCopy];
  if (type == 2)
  {
    v16 = @"AUTHENTICATION_PROMPT_TITLE_DECLINE_REMOTE";
    goto LABEL_11;
  }

  if (type == 1)
  {
    v16 = @"AUTHENTICATION_PROMPT_TITLE_APPROVE_REMOTE";
LABEL_11:
    v14 = [Localizations stringWithKey:v16];
    v15 = @"AUTHENTICATION_PROMPT_BODY_REMOTE";
    goto LABEL_12;
  }

  if (type)
  {
    usernameCopy = 0;
    v14 = 0;
    goto LABEL_17;
  }

  v14 = [Localizations stringWithKey:@"AUTHENTICATION_PROMPT_TITLE_APPROVE_LOCAL"];
  v15 = @"AUTHENTICATION_PROMPT_BODY_LOCAL";
LABEL_12:
  v17 = [Localizations stringWithKey:v15];
  if (v17)
  {
    usernameCopy = [NSString stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@" error:0, usernameCopy];
  }

  else
  {
    usernameCopy = 0;
  }

LABEL_17:
  [v13 set_passwordPromptTitle:v14];
  [v13 setReason:usernameCopy];
  v19 = objc_alloc_init(AKAppleIDAuthenticationController);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000CFD8;
  v21[3] = &unk_100018768;
  v22 = completionCopy;
  selfCopy = self;
  v20 = completionCopy;
  [v19 authenticateWithContext:v13 completion:v21];
}

@end