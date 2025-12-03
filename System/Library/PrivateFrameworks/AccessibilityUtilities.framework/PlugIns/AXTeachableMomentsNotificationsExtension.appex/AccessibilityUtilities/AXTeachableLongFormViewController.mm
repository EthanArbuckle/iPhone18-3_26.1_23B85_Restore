@interface AXTeachableLongFormViewController
- (AXTeachableLongFormViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveNotification:(id)notification;
@end

@implementation AXTeachableLongFormViewController

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  AXTeachableLongFormViewController.didReceive(_:)(notificationCopy);
}

- (AXTeachableLongFormViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000030B8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return AXTeachableLongFormViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end