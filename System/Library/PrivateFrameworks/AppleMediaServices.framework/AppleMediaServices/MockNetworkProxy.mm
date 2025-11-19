@interface MockNetworkProxy
+ (BOOL)canInitWithRequest:(id)a3;
+ (id)canonicalRequestForRequest:(id)a3;
- (_TtC18AppleMediaServices16MockNetworkProxy)initWithRequest:(id)a3 cachedResponse:(id)a4 client:(id)a5;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation MockNetworkProxy

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = sub_192F9540C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192F953AC();
  v8 = static MockNetworkProxy.canInit(with:)();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

+ (id)canonicalRequestForRequest:(id)a3
{
  v3 = sub_192F9540C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - v10;
  sub_192F953AC();
  static MockNetworkProxy.canonicalRequest(for:)();
  v12 = *(v4 + 8);
  v12(v8, v3);
  v13 = sub_192F9539C();
  v12(v11, v3);

  return v13;
}

- (_TtC18AppleMediaServices16MockNetworkProxy)initWithRequest:(id)a3 cachedResponse:(id)a4 client:(id)a5
{
  v7 = sub_192F9540C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192F953AC();
  v11 = a4;
  swift_unknownObjectRetain();
  return sub_192C36F54(v10, a4, a5);
}

- (void)startLoading
{
  v2 = self;
  MockNetworkProxy.startLoading()();
}

- (void)stopLoading
{
  v2 = self;
  MockNetworkProxy.stopLoading()();
}

@end