@interface HearingAppPluginAppDelegate
- (_TtC16HearingAppPlugin27HearingAppPluginAppDelegate)init;
@end

@implementation HearingAppPluginAppDelegate

- (_TtC16HearingAppPlugin27HearingAppPluginAppDelegate)init
{
  v3 = OBJC_IVAR____TtC16HearingAppPlugin27HearingAppPluginAppDelegate_logger;
  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v4 = sub_29D65F314();
  v5 = sub_29D5DE6EC(v4, qword_2A17AD6F0);
  (*(*(v4 - 8) + 16))(self + v3, v5, v4);
  *(&self->super.isa + OBJC_IVAR____TtC16HearingAppPlugin27HearingAppPluginAppDelegate____lazy_storage___articleIdentifiersByUrl) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HearingAppPluginAppDelegate();
  return [(HearingAppPluginAppDelegate *)&v7 init];
}

@end