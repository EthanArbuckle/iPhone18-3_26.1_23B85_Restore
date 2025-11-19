@interface GEORPFeedbackUserInfo
+ (id)userCredentialsForContactBackEmailAddress:(id)a3 userEnteredEmailAddress:(id)a4 pushToken:(id)a5;
@end

@implementation GEORPFeedbackUserInfo

+ (id)userCredentialsForContactBackEmailAddress:(id)a3 userEnteredEmailAddress:(id)a4 pushToken:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(GEORPFeedbackUserInfo);
  [v8 setUserEmail:v7];

  [v8 setPreferredEmail:v6];
  v9 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  [v8 setUserCredentials:v9];

  return v8;
}

@end