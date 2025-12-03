@interface SettingLocation
- (BOOL)isEqual:(id)equal;
- (_TtC20UrchinBridgeSettings15SettingLocation)init;
@end

@implementation SettingLocation

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_623C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_4460(v8);

  sub_5808(v8, &qword_11500, &qword_7338);
  return v6 & 1;
}

- (_TtC20UrchinBridgeSettings15SettingLocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end