@interface PushNotificationSettingsView
- (_TtC19TetsuoNotifications28PushNotificationSettingsView)initWithCoder:(id)a3;
- (_TtC19TetsuoNotifications28PushNotificationSettingsView)initWithNibName:(id)a3 bundle:(id)a4;
- (id)getLatestNews;
- (id)specifiers;
- (void)setLatestNews:(id)a3;
@end

@implementation PushNotificationSettingsView

- (id)specifiers
{
  v2 = self;
  v3 = sub_2CA0();

  if (v3)
  {
    v4.super.isa = sub_5C38().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setLatestNews:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_334C(v4);
}

- (id)getLatestNews
{
  if (sub_5AF8())
  {
    v2 = sub_5AC8();
  }

  else
  {
    v2 = sub_5AE8() ^ 1;
  }

  v3 = [objc_allocWithZone(NSNumber) initWithBool:v2 & 1];

  return v3;
}

- (_TtC19TetsuoNotifications28PushNotificationSettingsView)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_5C08();
    a3 = v8;
  }

  v9 = a4;
  sub_5B78();
  sub_5BA8();
  if (a3)
  {
    v10 = sub_5BF8();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(PushNotificationSettingsView *)&v13 initWithNibName:v10 bundle:v9];

  return v11;
}

- (_TtC19TetsuoNotifications28PushNotificationSettingsView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  sub_5B78();
  sub_5BA8();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(PushNotificationSettingsView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end