@interface HeadphoneNotificationsDataDetailConfigurationProvider
- (_TtC16HearingAppPlugin53HeadphoneNotificationsDataDetailConfigurationProvider)init;
@end

@implementation HeadphoneNotificationsDataDetailConfigurationProvider

- (_TtC16HearingAppPlugin53HeadphoneNotificationsDataDetailConfigurationProvider)init
{
  v3 = OBJC_IVAR____TtC16HearingAppPlugin53HeadphoneNotificationsDataDetailConfigurationProvider_logger;
  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v4 = sub_29D65F314();
  v5 = sub_29D5DE6EC(v4, qword_2A17AD6F0);
  (*(*(v4 - 8) + 16))(self + v3, v5, v4);
  v6 = OBJC_IVAR____TtC16HearingAppPlugin53HeadphoneNotificationsDataDetailConfigurationProvider_dataType;
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(&self->super.isa + v6) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA450]);
  v8.receiver = self;
  v8.super_class = type metadata accessor for HeadphoneNotificationsDataDetailConfigurationProvider();
  return [(HeadphoneNotificationsDataDetailConfigurationProvider *)&v8 init];
}

@end