@interface ClimateSeatFanServiceButton
- (BOOL)isHighlighted;
- (_TtC7Climate27ClimateSeatFanServiceButton)init;
- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level;
- (void)fanService:(void *)service didUpdateAutoMode:;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ClimateSeatFanServiceButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateSeatFanServiceButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateSeatFanServiceButton();
  v4 = v7.receiver;
  [(ClimateButton *)&v7 setHighlighted:highlightedCopy];
  v5 = *&v4[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_progressView];
  isHighlighted = [v4 isHighlighted];
  (*((swift_isaMask & *v5) + 0xB8))(isHighlighted);
}

- (_TtC7Climate27ClimateSeatFanServiceButton)init
{
  self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_currentValue] = 0;
  v2 = OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_autoModeGlyph;
  *&self->super._TtC7Climate13ClimateButton_opaque[v2] = [objc_allocWithZone(UIImageView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)fanService:(void *)service didUpdateAutoMode:
{
  serviceCopy = service;
  sub_100059C30();
}

- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level
{
  selfCopy = self;
  sub_100059C30();
}

@end