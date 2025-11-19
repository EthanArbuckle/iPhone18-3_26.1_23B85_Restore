@interface ClimateSeatHeatingCoolingServiceButton
- (BOOL)isHighlighted;
- (_TtC7Climate38ClimateSeatHeatingCoolingServiceButton)init;
- (void)heatingCoolingService:(id)a3 didUpdateHeatingCoolingLevel:(int)a4;
- (void)heatingCoolingService:(void *)a1 didUpdateAutoMode:;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation ClimateSeatHeatingCoolingServiceButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateSeatHeatingCoolingServiceButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateSeatHeatingCoolingServiceButton();
  v4 = v7.receiver;
  [(ClimateButton *)&v7 setHighlighted:v3];
  v5 = *&v4[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView];
  v6 = [v4 isHighlighted];
  (*((swift_isaMask & *v5) + 0xB8))(v6);
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

- (void)heatingCoolingService:(void *)a1 didUpdateAutoMode:
{
  v1 = a1;
  sub_10006FBC4();
}

- (void)heatingCoolingService:(id)a3 didUpdateHeatingCoolingLevel:(int)a4
{
  v4 = self;
  sub_10006FBC4();
}

@end