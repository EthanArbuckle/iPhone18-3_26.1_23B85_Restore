@interface MediaSocialProfileCoordinator
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)handleProfileDidExpire:(id)a3;
@end

@implementation MediaSocialProfileCoordinator

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_386688(&unk_D0E078, sub_386FB8, &block_descriptor_102);
}

- (void)handleProfileDidExpire:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_385018(v4);
}

@end