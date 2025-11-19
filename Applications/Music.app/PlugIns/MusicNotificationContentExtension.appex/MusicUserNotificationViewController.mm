@interface MusicUserNotificationViewController
- (_TtC33MusicNotificationContentExtension35MusicUserNotificationViewController)initWithCoder:(id)a3;
- (_TtC33MusicNotificationContentExtension35MusicUserNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation MusicUserNotificationViewController

- (_TtC33MusicNotificationContentExtension35MusicUserNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1000011E4();
    v6 = a4;
    v7 = sub_1000011D4();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MusicUserNotificationViewController();
  v9 = [(MusicUserNotificationViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC33MusicNotificationContentExtension35MusicUserNotificationViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MusicUserNotificationViewController();
  v4 = a3;
  v5 = [(MusicUserNotificationViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end