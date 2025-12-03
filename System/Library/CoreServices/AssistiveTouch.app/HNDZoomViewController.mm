@interface HNDZoomViewController
- (HNDZoomViewController)initWithCoder:(id)coder;
- (HNDZoomViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)zoomInAt:(CGPoint)at screenBounds:(CGRect)bounds;
- (void)zoomOutAt:(CGPoint)at screenBounds:(CGRect)bounds;
@end

@implementation HNDZoomViewController

- (HNDZoomViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR___HNDZoomViewController____lazy_storage___zoomView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)zoomInAt:(CGPoint)at screenBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = at.y;
  v9 = at.x;
  selfCopy = self;
  v10 = sub_100112F2C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100127018(sub_1001135E8, v9, v8, x, y, width, height);
}

- (void)zoomOutAt:(CGPoint)at screenBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = at.y;
  v9 = at.x;
  selfCopy = self;
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

- (HNDZoomViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end