@interface SRFeedbackButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC4Siri16SRFeedbackButton)initWithCoder:(id)coder;
- (_TtC4Siri16SRFeedbackButton)initWithFrame:(CGRect)frame;
@end

@implementation SRFeedbackButton

- (_TtC4Siri16SRFeedbackButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Siri16SRFeedbackButton_diameter) = 0x4049000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SRFeedbackButton();
  height = [(SRFeedbackButton *)&v9 initWithFrame:x, y, width, height];
  sub_1000BA9C0();

  return height;
}

- (_TtC4Siri16SRFeedbackButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Siri16SRFeedbackButton_diameter) = 0x4049000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 50.0;
  v4 = 50.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end