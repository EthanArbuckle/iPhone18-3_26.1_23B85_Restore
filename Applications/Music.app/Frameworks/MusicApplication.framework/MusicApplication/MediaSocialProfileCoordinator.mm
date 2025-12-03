@interface MediaSocialProfileCoordinator
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)handleProfileDidExpire:(id)expire;
@end

@implementation MediaSocialProfileCoordinator

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  reachabilityCopy = reachability;
  selfCopy = self;
  sub_386688(&unk_D0E078, sub_386FB8, &block_descriptor_102);
}

- (void)handleProfileDidExpire:(id)expire
{
  expireCopy = expire;
  selfCopy = self;
  sub_385018(expireCopy);
}

@end