@interface ClimateRecirculationServiceButton
- (_TtC7Climate33ClimateRecirculationServiceButton)init;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter;
- (void)recirculationService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)recirculationService:(id)service didUpdateOn:(BOOL)on;
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

- (void)recirculationService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  sub_1000B038C(on);
}

- (void)recirculationService:(id)service didUpdateAutoMode:(BOOL)mode
{
  selfCopy = self;
  sub_1000AF884();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter
{
  selfCopy = self;
  sub_1000AF9A0();
}

@end