@interface ClimateRecirculationServiceButton
- (_TtC7Climate33ClimateRecirculationServiceButton)init;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3;
- (void)recirculationService:(id)a3 didUpdateAutoMode:(BOOL)a4;
- (void)recirculationService:(id)a3 didUpdateOn:(BOOL)a4;
@end

@implementation ClimateRecirculationServiceButton

- (_TtC7Climate33ClimateRecirculationServiceButton)init
{
  v2 = OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_autoModeGlyph;
  *&self->super._TtC7Climate13ClimateButton_opaque[v2] = [objc_allocWithZone(UIImageView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)recirculationService:(id)a3 didUpdateOn:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1000B038C(a4);
}

- (void)recirculationService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v4 = self;
  sub_1000AF884();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3
{
  v3 = self;
  sub_1000AF9A0();
}

@end