@interface ClimateAutoModeLevelButton
- (BOOL)isHighlighted;
- (void)autoClimateControlService:(id)service didUpdateLevel:(unsigned __int8)level;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ClimateAutoModeLevelButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateAutoModeLevelButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateAutoModeLevelButton();
  v4 = v7.receiver;
  [(ClimateButton *)&v7 setHighlighted:highlightedCopy];
  v5 = *&v4[OBJC_IVAR____TtC7Climate26ClimateAutoModeLevelButton_progressView];
  isHighlighted = [v4 isHighlighted];
  (*((swift_isaMask & *v5) + 0xB8))(isHighlighted);
}

- (void)autoClimateControlService:(id)service didUpdateLevel:(unsigned __int8)level
{
  levelCopy = level;
  v6 = *((swift_isaMask & **&self->super.super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate26ClimateAutoModeLevelButton_progressView]) + 0x88);
  serviceCopy = service;
  selfCopy = self;
  v6(levelCopy);
  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for ClimateAutoModeLevelButton();
  [(ClimateAutoControlServiceButton *)&v9 autoClimateControlService:serviceCopy didUpdateLevel:levelCopy];
}

@end