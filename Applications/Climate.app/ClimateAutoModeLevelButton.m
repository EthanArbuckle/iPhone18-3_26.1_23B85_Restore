@interface ClimateAutoModeLevelButton
- (BOOL)isHighlighted;
- (void)autoClimateControlService:(id)a3 didUpdateLevel:(unsigned __int8)a4;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation ClimateAutoModeLevelButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateAutoModeLevelButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateAutoModeLevelButton();
  v4 = v7.receiver;
  [(ClimateButton *)&v7 setHighlighted:v3];
  v5 = *&v4[OBJC_IVAR____TtC7Climate26ClimateAutoModeLevelButton_progressView];
  v6 = [v4 isHighlighted];
  (*((swift_isaMask & *v5) + 0xB8))(v6);
}

- (void)autoClimateControlService:(id)a3 didUpdateLevel:(unsigned __int8)a4
{
  v4 = a4;
  v6 = *((swift_isaMask & **&self->super.super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate26ClimateAutoModeLevelButton_progressView]) + 0x88);
  v7 = a3;
  v8 = self;
  v6(v4);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for ClimateAutoModeLevelButton();
  [(ClimateAutoControlServiceButton *)&v9 autoClimateControlService:v7 didUpdateLevel:v4];
}

@end