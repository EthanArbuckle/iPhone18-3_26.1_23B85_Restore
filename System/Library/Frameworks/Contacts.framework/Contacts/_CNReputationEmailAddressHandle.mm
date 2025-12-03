@interface _CNReputationEmailAddressHandle
- (void)configureBuilder:(id)builder;
@end

@implementation _CNReputationEmailAddressHandle

- (void)configureBuilder:(id)builder
{
  builderCopy = builder;
  [builderCopy addCoreRecentsTrust];
  [builderCopy addContactsTrustForEmailAddress];
}

@end