@interface PushNotificationSettingsView
- (_TtC19TetsuoNotifications28PushNotificationSettingsView)initWithCoder:(id)coder;
- (_TtC19TetsuoNotifications28PushNotificationSettingsView)initWithNibName:(id)name bundle:(id)bundle;
- (id)getLatestNews;
- (id)specifiers;
- (void)setLatestNews:(id)news;
@end

@implementation PushNotificationSettingsView

- (id)specifiers
{
  selfCopy = self;
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

- (void)setLatestNews:(id)news
{
  newsCopy = news;
  selfCopy = self;
  sub_334C(newsCopy);
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

- (_TtC19TetsuoNotifications28PushNotificationSettingsView)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_5C08();
    name = v8;
  }

  bundleCopy = bundle;
  sub_5B78();
  sub_5BA8();
  if (name)
  {
    v10 = sub_5BF8();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(PushNotificationSettingsView *)&v13 initWithNibName:v10 bundle:bundleCopy];

  return v11;
}

- (_TtC19TetsuoNotifications28PushNotificationSettingsView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  coderCopy = coder;
  sub_5B78();
  sub_5BA8();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(PushNotificationSettingsView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end