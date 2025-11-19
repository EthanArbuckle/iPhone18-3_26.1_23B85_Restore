@interface UserActivityTrackingInfo
- (NSString)description;
- (_TtC7SwiftUI24UserActivityTrackingInfo)init;
- (void)userActivityWillSave:(id)a3;
@end

@implementation UserActivityTrackingInfo

- (void)userActivityWillSave:(id)a3
{
  v4 = a3;
  v5 = self;
  UserActivityTrackingInfo.userActivityWillSave(_:)(v4);
}

- (NSString)description
{
  v2 = self;
  v3 = UserActivityTrackingInfo.description.getter();
  v5 = v4;

  v6 = MEMORY[0x18D00C850](v3, v5);

  return v6;
}

- (_TtC7SwiftUI24UserActivityTrackingInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end