@interface NotificationView
- (MKMapView)mapView;
- (UILabel)notificationBodyLabel;
- (_TtC26FindMyNotificationsContent16NotificationView)initWithCoder:(id)coder;
- (_TtC26FindMyNotificationsContent16NotificationView)initWithFrame:(CGRect)frame;
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

- (_TtC26FindMyNotificationsContent16NotificationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for NotificationView();
  return [(NotificationView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC26FindMyNotificationsContent16NotificationView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for NotificationView();
  coderCopy = coder;
  v6 = [(NotificationView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end