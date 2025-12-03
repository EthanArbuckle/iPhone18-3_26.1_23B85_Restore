@interface _CNReputationGenericHandle
- (void)configureBuilder:(id)builder;
@end

@implementation _CNReputationGenericHandle

- (void)configureBuilder:(id)builder
{
  builderCopy = builder;
  [builderCopy addCoreRecentsTrust];
  [builderCopy addContactsTrustForEmailAddress];
  [builderCopy addContactsTrustForPhoneNumber];
}

@end