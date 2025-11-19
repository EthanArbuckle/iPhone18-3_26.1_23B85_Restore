@interface ZoomEffect
- (BOOL)isEqual:(id)a3;
- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect)init;
- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect)initWithCoder:(id)a3;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
@end

@implementation ZoomEffect

- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v7 = objc_allocWithZone(type metadata accessor for ZoomEffectViewEntry());
  v8 = a3;
  v10 = self;
  v9 = [v7 init];
  *&v9[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry_zoomAmount] = *(&v10->super.super.isa + OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect_magnitude);
  [v8 addViewEffect:v9];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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