@interface _CNReputationEmailAddressHandle
- (void)configureBuilder:(id)a3;
@end

@implementation _CNReputationEmailAddressHandle

- (void)configureBuilder:(id)a3
{
  v3 = a3;
  [v3 addCoreRecentsTrust];
  [v3 addContactsTrustForEmailAddress];
}

@end