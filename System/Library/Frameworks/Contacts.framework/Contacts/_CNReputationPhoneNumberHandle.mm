@interface _CNReputationPhoneNumberHandle
- (void)configureBuilder:(id)builder;
@end

@implementation _CNReputationPhoneNumberHandle

- (void)configureBuilder:(id)builder
{
  builderCopy = builder;
  [builderCopy addCoreRecentsTrust];
  [builderCopy addContactsTrustForPhoneNumber];
}

@end