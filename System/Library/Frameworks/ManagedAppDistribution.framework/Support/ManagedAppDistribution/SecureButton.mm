@interface SecureButton
- (CGSize)drawingSize;
- (_TtC28ManagedAppDistributionDaemon12SecureButton)init;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation SecureButton

- (CGSize)drawingSize
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize);
  v3 = *(&self->drawingSize.width + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  selfCopy = self;
  sub_1004B44BC(contextCopy, x, y);
}

- (_TtC28ManagedAppDistributionDaemon12SecureButton)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end