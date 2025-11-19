@interface ZoomEffectViewEntry
- (BOOL)shouldAnimateProperty:(id)a3;
- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry)init;
- (void)applyRequestedEffectToView:(id)a3;
@end

@implementation ZoomEffectViewEntry

- (BOOL)shouldAnimateProperty:(id)a3
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 1836019578 && v3 == 0xE400000000000000)
  {

    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

- (void)applyRequestedEffectToView:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = [(ZoomEffectViewEntry *)v4 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    [v6 setZoom:*&v8->_UIVisualEffectViewEntry_opaque[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry_zoomAmount]];
    v7 = v5;
  }

  else
  {
    v7 = v4;
    v4 = v8;
    v8 = v5;
  }
}

- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry)init
{
  *&self->_UIVisualEffectViewEntry_opaque[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry_zoomAmount] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ZoomEffectViewEntry();
  return [(ZoomEffectViewEntry *)&v3 init];
}

@end