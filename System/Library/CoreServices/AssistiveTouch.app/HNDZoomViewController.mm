@interface HNDZoomViewController
- (HNDZoomViewController)initWithCoder:(id)a3;
- (HNDZoomViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)zoomInAt:(CGPoint)a3 screenBounds:(CGRect)a4;
- (void)zoomOutAt:(CGPoint)a3 screenBounds:(CGRect)a4;
@end

@implementation HNDZoomViewController

- (HNDZoomViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR___HNDZoomViewController____lazy_storage___zoomView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)zoomInAt:(CGPoint)a3 screenBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.y;
  v9 = a3.x;
  v11 = self;
  v10 = sub_100112F2C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100127018(sub_1001135E8, v9, v8, x, y, width, height);
}

- (void)zoomOutAt:(CGPoint)a3 screenBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.y;
  v9 = a3.x;
  v10 = self;
  v11 = sub_100112F2C();
  sub_1001279E0(v9, v8, x, y, width, height);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didZoomOut];
    swift_unknownObjectRelease();
  }
}

- (HNDZoomViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end