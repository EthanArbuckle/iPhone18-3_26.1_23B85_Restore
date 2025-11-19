@interface NameRecognitionNotificationViewController
- (_TtC37NameRecognitionNotificationsExtension41NameRecognitionNotificationViewController)initWithCoder:(id)a3;
- (_TtC37NameRecognitionNotificationsExtension41NameRecognitionNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveNotification:(id)a3;
- (void)viewDidLoad;
@end

@implementation NameRecognitionNotificationViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for NameRecognitionNotificationViewController();
  [(NameRecognitionNotificationViewController *)&v2 viewDidLoad];
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  _s37NameRecognitionNotificationsExtension0aB26NotificationViewControllerC10didReceiveyySo14UNNotificationCF_0(v4);
}

- (_TtC37NameRecognitionNotificationsExtension41NameRecognitionNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100001B24();
    v6 = a4;
    v7 = sub_100001B14();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NameRecognitionNotificationViewController();
  v9 = [(NameRecognitionNotificationViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC37NameRecognitionNotificationsExtension41NameRecognitionNotificationViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NameRecognitionNotificationViewController();
  v4 = a3;
  v5 = [(NameRecognitionNotificationViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end