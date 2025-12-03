@interface NameRecognitionNotificationViewController
- (_TtC37NameRecognitionNotificationsExtension41NameRecognitionNotificationViewController)initWithCoder:(id)coder;
- (_TtC37NameRecognitionNotificationsExtension41NameRecognitionNotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation NameRecognitionNotificationViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for NameRecognitionNotificationViewController();
  [(NameRecognitionNotificationViewController *)&v2 viewDidLoad];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  _s37NameRecognitionNotificationsExtension0aB26NotificationViewControllerC10didReceiveyySo14UNNotificationCF_0(notificationCopy);
}

- (_TtC37NameRecognitionNotificationsExtension41NameRecognitionNotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100001B24();
    bundleCopy = bundle;
    v7 = sub_100001B14();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NameRecognitionNotificationViewController();
  v9 = [(NameRecognitionNotificationViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC37NameRecognitionNotificationsExtension41NameRecognitionNotificationViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NameRecognitionNotificationViewController();
  coderCopy = coder;
  v5 = [(NameRecognitionNotificationViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end