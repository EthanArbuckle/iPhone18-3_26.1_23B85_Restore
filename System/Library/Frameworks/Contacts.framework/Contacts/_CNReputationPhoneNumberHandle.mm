@interface _CNReputationPhoneNumberHandle
- (void)configureBuilder:(id)a3;
@end

@implementation _CNReputationPhoneNumberHandle

- (void)configureBuilder:(id)a3
{
  v3 = a3;
  [v3 addCoreRecentsTrust];
  [v3 addContactsTrustForPhoneNumber];
}

@end