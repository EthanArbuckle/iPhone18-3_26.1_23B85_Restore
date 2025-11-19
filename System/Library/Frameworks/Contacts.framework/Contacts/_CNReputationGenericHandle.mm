@interface _CNReputationGenericHandle
- (void)configureBuilder:(id)a3;
@end

@implementation _CNReputationGenericHandle

- (void)configureBuilder:(id)a3
{
  v3 = a3;
  [v3 addCoreRecentsTrust];
  [v3 addContactsTrustForEmailAddress];
  [v3 addContactsTrustForPhoneNumber];
}

@end