@interface NotificationViewController
- (_TtC26FindMyNotificationsContent26NotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)didReceiveNotification:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation NotificationViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100001B44();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100001D84(a3);
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100001E8C(v4);
}

- (_TtC26FindMyNotificationsContent26NotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100004540(v5, v7, a4);
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_100006204(v6, a4);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_100006328(a4);

  swift_unknownObjectRelease();

  return v8;
}

@end