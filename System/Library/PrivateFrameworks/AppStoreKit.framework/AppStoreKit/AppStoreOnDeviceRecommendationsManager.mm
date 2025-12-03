@interface AppStoreOnDeviceRecommendationsManager
- (_TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager)init;
- (id)performRequest:(id)request;
@end

@implementation AppStoreOnDeviceRecommendationsManager

- (id)performRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  v6 = sub_1E18DC620(requestCopy);

  return v6;
}

- (_TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end