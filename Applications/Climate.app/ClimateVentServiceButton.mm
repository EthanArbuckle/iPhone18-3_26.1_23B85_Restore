@interface ClimateVentServiceButton
- (_TtC7Climate24ClimateVentServiceButton)init;
- (void)ventService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)ventService:(id)service didUpdateCombinations:(id)combinations;
- (void)ventService:(id)service didUpdateCurrentIndex:(unsigned int)index;
- (void)ventService:(id)service didUpdateOn:(BOOL)on;
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

- (void)ventService:(id)service didUpdateCombinations:(id)combinations
{
  v4 = *&self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent];
  selfCopy = self;
  currentIndex = [v4 currentIndex];
  *&selfCopy->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_currentValue] = currentIndex;
  v6 = *((swift_isaMask & *selfCopy->super._TtC7Climate13ClimateButton_opaque) + 0x1F8);
  v7 = v6();
  (v6)(v7);
}

- (void)ventService:(id)service didUpdateCurrentIndex:(unsigned int)index
{
  *&self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_currentValue] = index;
  v4 = *((swift_isaMask & *self->super._TtC7Climate13ClimateButton_opaque) + 0x1F8);
  selfCopy = self;
  v5 = v4();
  (v4)(v5);
}

- (void)ventService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  sub_100080DAC(serviceCopy, on);
}

- (void)ventService:(id)service didUpdateAutoMode:(BOOL)mode
{
  v4 = *((swift_isaMask & *self->super._TtC7Climate13ClimateButton_opaque) + 0x1F8);
  selfCopy = self;
  v4();
}

@end