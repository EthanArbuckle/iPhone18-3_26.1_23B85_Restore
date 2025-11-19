@interface ClimateAutomakerSettingButton
- (_TtC7Climate29ClimateAutomakerSettingButton)init;
- (void)automakerSettingService:(id)a3 didUpdateSymbolName:(id)a4;
- (void)automakerSettingService:(void *)a1 didUpdateDisabled:;
- (void)limitedUIDidChange;
@end

@implementation ClimateAutomakerSettingButton

- (_TtC7Climate29ClimateAutomakerSettingButton)init
{
  v2 = &self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate29ClimateAutomakerSettingButton_symbolName];
  *v2 = 0xD000000000000013;
  *(v2 + 1) = 0x80000001000DF4D0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)limitedUIDidChange
{
  v2 = self;
  sub_1000BFAE0();
}

- (void)automakerSettingService:(id)a3 didUpdateSymbolName:(id)a4
{
  v4 = self;
  sub_1000BF7B4();
  sub_1000BF8BC();
}

- (void)automakerSettingService:(void *)a1 didUpdateDisabled:
{
  v1 = a1;
  sub_1000BF7B4();
}

@end