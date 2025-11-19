@interface AssetsJetpackFetcherWrapper
+ (AssetsJetpackFetcherWrapper)shared;
- (void)performOnStartupWithCompletionHandler:(id)a3;
@end

@implementation AssetsJetpackFetcherWrapper

+ (AssetsJetpackFetcherWrapper)shared
{
  v2 = static AssetsJetpackFetcherWrapper.shared.getter();

  return v2;
}

- (void)performOnStartupWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_100004754(&unk_10023B688, v5);
}

@end