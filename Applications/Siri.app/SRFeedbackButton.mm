@interface SRFeedbackButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC4Siri16SRFeedbackButton)initWithCoder:(id)a3;
- (_TtC4Siri16SRFeedbackButton)initWithFrame:(CGRect)a3;
@end

@implementation SRFeedbackButton

- (_TtC4Siri16SRFeedbackButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Siri16SRFeedbackButton_diameter) = 0x4049000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SRFeedbackButton();
  v7 = [(SRFeedbackButton *)&v9 initWithFrame:x, y, width, height];
  sub_1000BA9C0();

  return v7;
}

- (_TtC4Siri16SRFeedbackButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Siri16SRFeedbackButton_diameter) = 0x4049000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 50.0;
  v4 = 50.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end