@interface TipKitManager
+ (uint64_t)setupTips;
- (_TtC10VoiceMemos13TipKitManager)init;
@end

@implementation TipKitManager

+ (uint64_t)setupTips
{
  v0 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C773C(&qword_1002D6588);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_100242C70;
  static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v1 + 8))(v3, v0);
  static Tips.configure(_:)();
}

- (_TtC10VoiceMemos13TipKitManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TipKitManager();
  return [(TipKitManager *)&v3 init];
}

@end