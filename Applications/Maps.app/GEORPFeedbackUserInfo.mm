@interface GEORPFeedbackUserInfo
+ (id)userCredentialsForContactBackEmailAddress:(id)address userEnteredEmailAddress:(id)emailAddress pushToken:(id)token;
@end

@implementation GEORPFeedbackUserInfo

+ (id)userCredentialsForContactBackEmailAddress:(id)address userEnteredEmailAddress:(id)emailAddress pushToken:(id)token
{
  emailAddressCopy = emailAddress;
  addressCopy = address;
  v8 = objc_alloc_init(GEORPFeedbackUserInfo);
  [v8 setUserEmail:addressCopy];

  [v8 setPreferredEmail:emailAddressCopy];
  v9 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  [v8 setUserCredentials:v9];

  return v8;
}

@end