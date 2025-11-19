@interface NotificationView
- (MKMapView)mapView;
- (UILabel)notificationBodyLabel;
- (_TtC26FindMyNotificationsContent16NotificationView)initWithCoder:(id)a3;
- (_TtC26FindMyNotificationsContent16NotificationView)initWithFrame:(CGRect)a3;
@end

@implementation NotificationView

- (MKMapView)mapView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)notificationBodyLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC26FindMyNotificationsContent16NotificationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for NotificationView();
  return [(NotificationView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC26FindMyNotificationsContent16NotificationView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for NotificationView();
  v5 = a3;
  v6 = [(NotificationView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end