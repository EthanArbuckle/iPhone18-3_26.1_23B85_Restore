@interface ZoomEffect
- (BOOL)isEqual:(id)equal;
- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect)init;
- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect)initWithCoder:(id)coder;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
@end

@implementation ZoomEffect

- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  v7 = objc_allocWithZone(type metadata accessor for ZoomEffectViewEntry());
  descriptorCopy = descriptor;
  selfCopy = self;
  v9 = [v7 init];
  *&v9[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry_zoomAmount] = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect_magnitude);
  [descriptorCopy addViewEffect:v9];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_10006C980(v8);

  sub_10006CDAC(v8);
  return v6;
}

- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end