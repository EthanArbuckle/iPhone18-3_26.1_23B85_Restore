@interface UserActivityTrackingInfo
- (NSString)description;
- (_TtC7SwiftUI24UserActivityTrackingInfo)init;
- (void)userActivityWillSave:(id)save;
@end

@implementation UserActivityTrackingInfo

- (void)userActivityWillSave:(id)save
{
  saveCopy = save;
  selfCopy = self;
  UserActivityTrackingInfo.userActivityWillSave(_:)(saveCopy);
}

- (NSString)description
{
  selfCopy = self;
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