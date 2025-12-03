@interface NotificationViewController
- (_TtC26FindMyNotificationsContent26NotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)didReceiveNotification:(id)notification;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation NotificationViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100001B44();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100001D84(disappear);
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100001E8C(notificationCopy);
}

- (_TtC26FindMyNotificationsContent26NotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100004540(v5, v7, bundle);
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_100006204(viewCopy, annotation);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_100006328(overlay);

  swift_unknownObjectRelease();

  return v8;
}

@end