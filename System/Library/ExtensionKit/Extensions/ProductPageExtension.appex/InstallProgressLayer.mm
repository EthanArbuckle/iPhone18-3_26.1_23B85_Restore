@interface InstallProgressLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (_TtC20ProductPageExtension20InstallProgressLayer)init;
- (_TtC20ProductPageExtension20InstallProgressLayer)initWithLayer:(id)layer;
- (id)actionForKey:(id)key;
- (void)drawInContext:(CGContext *)context;
@end

@implementation InstallProgressLayer

+ (BOOL)needsDisplayForKey:(id)key
{
  v3 = sub_10076FF9C();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_1000C86BC(v3, v5);

  return v6 & 1;
}

- (id)actionForKey:(id)key
{
  v4 = sub_10076FF9C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1000C8864(v4, v6);

  return v8;
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1000C8B68(contextCopy);
}

- (_TtC20ProductPageExtension20InstallProgressLayer)init
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension20InstallProgressLayer_stageColor;
  v4 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  cGColor = [v4 CGColor];

  *(&self->super.super.isa + v3) = cGColor;
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20InstallProgressLayer_originAngle) = 0x4012D97C7F3321D2;
  v7.receiver = self;
  v7.super_class = type metadata accessor for InstallProgressLayer();
  return [(InstallProgressLayer *)&v7 init];
}

- (_TtC20ProductPageExtension20InstallProgressLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_10077123C();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC20ProductPageExtension20InstallProgressLayer_stageColor;
  v5 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  cGColor = [v5 CGColor];

  *(&self->super.super.isa + v4) = cGColor;
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20InstallProgressLayer_originAngle) = 0x4012D97C7F3321D2;
  sub_10000CF78(v11, v11[3]);
  v7 = sub_10077165C();
  v10.receiver = self;
  v10.super_class = type metadata accessor for InstallProgressLayer();
  v8 = [(InstallProgressLayer *)&v10 initWithLayer:v7];
  swift_unknownObjectRelease();
  sub_10000CD74(v11);
  return v8;
}

@end