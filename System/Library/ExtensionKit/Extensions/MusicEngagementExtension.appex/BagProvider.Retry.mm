@interface BagProvider.Retry
- (_TtCC9MusicCore11BagProviderP33_D1F028703756EAFCB4E62A24E619467F5Retry)init;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
@end

@implementation BagProvider.Retry

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  if (swift_weakLoadStrong())
  {
    v4 = self;
    BagProvider.fetchBag(forceReload:)(0);
  }
}

- (_TtCC9MusicCore11BagProviderP33_D1F028703756EAFCB4E62A24E619467F5Retry)init
{
  swift_weakInit();
  *(&self->super.isa + OBJC_IVAR____TtCC9MusicCore11BagProviderP33_D1F028703756EAFCB4E62A24E619467F5Retry_bindings) = _swiftEmptyArrayStorage;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BagProvider.Retry();
  return [(BagProvider.Retry *)&v4 init];
}

@end