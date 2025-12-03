@interface InstallProgressLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (_TtC8AppStore20InstallProgressLayer)init;
- (_TtC8AppStore20InstallProgressLayer)initWithLayer:(id)layer;
- (id)actionForKey:(id)key;
- (void)drawInContext:(CGContext *)context;
@end

@implementation InstallProgressLayer

+ (BOOL)needsDisplayForKey:(id)key
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_10015DF48(v3, v5);

  return v6 & 1;
}

- (id)actionForKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_10015E0F0(v4, v6);

  return v8;
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_10015E3F4(contextCopy);
}

- (_TtC8AppStore20InstallProgressLayer)init
{
  v3 = OBJC_IVAR____TtC8AppStore20InstallProgressLayer_stageColor;
  v4 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  cGColor = [v4 CGColor];

  *(&self->super.super.isa + v3) = cGColor;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore20InstallProgressLayer_originAngle) = 0x4012D97C7F3321D2;
  v7.receiver = self;
  v7.super_class = type metadata accessor for InstallProgressLayer();
  return [(InstallProgressLayer *)&v7 init];
}

- (_TtC8AppStore20InstallProgressLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC8AppStore20InstallProgressLayer_stageColor;
  v5 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  cGColor = [v5 CGColor];

  *(&self->super.super.isa + v4) = cGColor;
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