@interface SecureButton
- (CGSize)drawingSize;
- (_TtC28ManagedAppDistributionDaemon12SecureButton)init;
- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4;
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

- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  sub_1004B44BC(v7, x, y);
}

- (_TtC28ManagedAppDistributionDaemon12SecureButton)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end