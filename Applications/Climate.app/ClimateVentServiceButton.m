@interface ClimateVentServiceButton
- (_TtC7Climate24ClimateVentServiceButton)init;
- (void)ventService:(id)a3 didUpdateAutoMode:(BOOL)a4;
- (void)ventService:(id)a3 didUpdateCombinations:(id)a4;
- (void)ventService:(id)a3 didUpdateCurrentIndex:(unsigned int)a4;
- (void)ventService:(id)a3 didUpdateOn:(BOOL)a4;
@end

@implementation ClimateVentServiceButton

- (_TtC7Climate24ClimateVentServiceButton)init
{
  *&self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_currentValue] = 0;
  v2 = &self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_defaultSymbolName];
  *v2 = 0xD000000000000012;
  *(v2 + 1) = 0x80000001000DD970;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)ventService:(id)a3 didUpdateCombinations:(id)a4
{
  v4 = *&self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent];
  v8 = self;
  v5 = [v4 currentIndex];
  *&v8->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_currentValue] = v5;
  v6 = *((swift_isaMask & *v8->super._TtC7Climate13ClimateButton_opaque) + 0x1F8);
  v7 = v6();
  (v6)(v7);
}

- (void)ventService:(id)a3 didUpdateCurrentIndex:(unsigned int)a4
{
  *&self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_currentValue] = a4;
  v4 = *((swift_isaMask & *self->super._TtC7Climate13ClimateButton_opaque) + 0x1F8);
  v6 = self;
  v5 = v4();
  (v4)(v5);
}

- (void)ventService:(id)a3 didUpdateOn:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100080DAC(v6, a4);
}

- (void)ventService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v4 = *((swift_isaMask & *self->super._TtC7Climate13ClimateButton_opaque) + 0x1F8);
  v5 = self;
  v4();
}

@end