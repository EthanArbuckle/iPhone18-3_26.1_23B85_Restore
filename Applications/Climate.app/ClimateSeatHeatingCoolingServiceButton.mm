@interface ClimateSeatHeatingCoolingServiceButton
- (BOOL)isHighlighted;
- (_TtC7Climate38ClimateSeatHeatingCoolingServiceButton)init;
- (void)heatingCoolingService:(id)service didUpdateHeatingCoolingLevel:(int)level;
- (void)heatingCoolingService:(void *)service didUpdateAutoMode:;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ClimateSeatHeatingCoolingServiceButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateSeatHeatingCoolingServiceButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateSeatHeatingCoolingServiceButton();
  v4 = v7.receiver;
  [(ClimateButton *)&v7 setHighlighted:highlightedCopy];
  v5 = *&v4[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView];
  isHighlighted = [v4 isHighlighted];
  (*((swift_isaMask & *v5) + 0xB8))(isHighlighted);
}

- (_TtC7Climate38ClimateSeatHeatingCoolingServiceButton)init
{
  *&self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_currentValue] = 0;
  v2 = OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_autoModeGlyph;
  *&self->super._TtC7Climate13ClimateButton_opaque[v2] = [objc_allocWithZone(UIImageView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)heatingCoolingService:(void *)service didUpdateAutoMode:
{
  serviceCopy = service;
  sub_10006FBC4();
}

- (void)heatingCoolingService:(id)service didUpdateHeatingCoolingLevel:(int)level
{
  selfCopy = self;
  sub_10006FBC4();
}

@end