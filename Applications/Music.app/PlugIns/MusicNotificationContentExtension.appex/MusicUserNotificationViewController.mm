@interface MusicUserNotificationViewController
- (_TtC33MusicNotificationContentExtension35MusicUserNotificationViewController)initWithCoder:(id)coder;
- (_TtC33MusicNotificationContentExtension35MusicUserNotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation MusicUserNotificationViewController

- (_TtC33MusicNotificationContentExtension35MusicUserNotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1000011E4();
    bundleCopy = bundle;
    v7 = sub_1000011D4();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MusicUserNotificationViewController();
  v9 = [(MusicUserNotificationViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC33MusicNotificationContentExtension35MusicUserNotificationViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MusicUserNotificationViewController();
  coderCopy = coder;
  v5 = [(MusicUserNotificationViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end