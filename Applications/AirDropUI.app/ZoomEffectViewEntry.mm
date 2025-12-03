@interface ZoomEffectViewEntry
- (BOOL)shouldAnimateProperty:(id)property;
- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry)init;
- (void)applyRequestedEffectToView:(id)view;
@end

@implementation ZoomEffectViewEntry

- (BOOL)shouldAnimateProperty:(id)property
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

- (void)applyRequestedEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  layer = [(ZoomEffectViewEntry *)viewCopy layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    [v6 setZoom:*&selfCopy->_UIVisualEffectViewEntry_opaque[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry_zoomAmount]];
    v7 = layer;
  }

  else
  {
    v7 = viewCopy;
    viewCopy = selfCopy;
    selfCopy = layer;
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