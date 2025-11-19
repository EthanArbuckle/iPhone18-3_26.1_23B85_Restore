@interface InstallProgressLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (_TtC18ASMessagesProvider20InstallProgressLayer)init;
- (_TtC18ASMessagesProvider20InstallProgressLayer)initWithLayer:(id)a3;
- (id)actionForKey:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation InstallProgressLayer

+ (BOOL)needsDisplayForKey:(id)a3
{
  v3 = sub_769240();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_6217F0(v3, v5);

  return v6 & 1;
}

- (id)actionForKey:(id)a3
{
  v4 = sub_769240();
  v6 = v5;
  v7 = self;
  v8 = sub_621998(v4, v6);

  return v8;
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  sub_621C9C(v4);
}

- (_TtC18ASMessagesProvider20InstallProgressLayer)init
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider20InstallProgressLayer_stageColor;
  v4 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  v5 = [v4 CGColor];

  *(&self->super.super.isa + v3) = v5;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20InstallProgressLayer_originAngle) = 0x4012D97C7F3321D2;
  v7.receiver = self;
  v7.super_class = type metadata accessor for InstallProgressLayer();
  return [(InstallProgressLayer *)&v7 init];
}

- (_TtC18ASMessagesProvider20InstallProgressLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_76A510();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider20InstallProgressLayer_stageColor;
  v5 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  v6 = [v5 CGColor];

  *(&self->super.super.isa + v4) = v6;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20InstallProgressLayer_originAngle) = 0x4012D97C7F3321D2;
  sub_B170(v11, v11[3]);
  v7 = sub_76A930();
  v10.receiver = self;
  v10.super_class = type metadata accessor for InstallProgressLayer();
  v8 = [(InstallProgressLayer *)&v10 initWithLayer:v7];
  swift_unknownObjectRelease();
  sub_BEB8(v11);
  return v8;
}

@end