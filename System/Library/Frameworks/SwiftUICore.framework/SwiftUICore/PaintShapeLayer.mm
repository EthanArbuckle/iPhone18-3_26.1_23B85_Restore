@interface PaintShapeLayer
- (_TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer)init;
- (_TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer)initWithCoder:(id)coder;
- (_TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation PaintShapeLayer

- (_TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 6;
  v5 = (&self->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paint) = 0;
  v6 = (self + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds);
  *v6 = 0u;
  v6[1] = 0u;
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_fillStyle) = 256;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(PaintShapeLayer *)&v8 init];
}

- (_TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 6;
  v5 = (&self->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paint) = 0;
  v6 = (self + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds);
  *v6 = 0u;
  v6[1] = 0u;
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_fillStyle) = 256;
  swift_deallocPartialClassInstance();
  return 0;
}

- (_TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return PaintShapeLayer.init(layer:)(v4);
}

- (void)drawInContext:(CGContext *)context
{
  selfCopy = self;
  contextCopy = context;
  EnvironmentValues.init()(&v7);
  v6 = v7;
  specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(contextCopy, &v6, 0, 1, selfCopy);
}

@end