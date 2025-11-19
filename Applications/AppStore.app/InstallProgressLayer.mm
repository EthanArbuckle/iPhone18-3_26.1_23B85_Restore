@interface InstallProgressLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (_TtC8AppStore20InstallProgressLayer)init;
- (_TtC8AppStore20InstallProgressLayer)initWithLayer:(id)a3;
- (id)actionForKey:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation InstallProgressLayer

+ (BOOL)needsDisplayForKey:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_10015DF48(v3, v5);

  return v6 & 1;
}

- (id)actionForKey:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_10015E0F0(v4, v6);

  return v8;
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  sub_10015E3F4(v4);
}

- (_TtC8AppStore20InstallProgressLayer)init
{
  v3 = OBJC_IVAR____TtC8AppStore20InstallProgressLayer_stageColor;
  v4 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  v5 = [v4 CGColor];

  *(&self->super.super.isa + v3) = v5;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore20InstallProgressLayer_originAngle) = 0x4012D97C7F3321D2;
  v7.receiver = self;
  v7.super_class = type metadata accessor for InstallProgressLayer();
  return [(InstallProgressLayer *)&v7 init];
}

- (_TtC8AppStore20InstallProgressLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC8AppStore20InstallProgressLayer_stageColor;
  v5 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  v6 = [v5 CGColor];

  *(&self->super.super.isa + v4) = v6;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore20InstallProgressLayer_originAngle) = 0x4012D97C7F3321D2;
  sub_10002A400(v11, v11[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = self;
  v10.super_class = type metadata accessor for InstallProgressLayer();
  v8 = [(InstallProgressLayer *)&v10 initWithLayer:v7];
  swift_unknownObjectRelease();
  sub_100007000(v11);
  return v8;
}

@end