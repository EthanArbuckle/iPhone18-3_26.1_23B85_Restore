@interface SleepButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (_TtC5Books11SleepButton)initWithFrame:(CGRect)frame;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setImage:(id)image forState:(unint64_t)state;
@end

@implementation SleepButton

- (void)setImage:(id)image forState:(unint64_t)state
{
  selfCopy = self;
  if (image)
  {
    [image size];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_imageSize);
  *v8 = v6;
  v8[1] = v7;
  state = [(SleepButton *)selfCopy state];
  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for SleepButton();
  [(SleepButton *)&v10 setImage:image forState:state];
}

- (CGSize)intrinsicContentSize
{
  v2 = (self + OBJC_IVAR____TtC5Books11SleepButton_calculatedSize);
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_calculatedSize);
  selfCopy = self;
  if (v3 == 0.0)
  {
    sub_1003A91B0();
    v3 = *v2;
  }

  v5 = v2[1];

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003A891C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = (self + OBJC_IVAR____TtC5Books11SleepButton_calculatedSize);
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_calculatedSize);
  selfCopy = self;
  if (v4 == 0.0)
  {
    sub_1003A91B0();
    v4 = *v3;
  }

  v6 = v3[1];

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSString)accessibilityLabel
{
  if (qword_100AD14D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1007A2214();

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SleepButton();
  v2 = v7.receiver;
  accessibilityTraits = [(SleepButton *)&v7 accessibilityTraits];
  if (*(v2 + OBJC_IVAR____TtC5Books11SleepButton_showsDuration) == 1)
  {
    v4 = UIAccessibilityTraitUpdatesFrequently;

    if ((v4 & ~accessibilityTraits) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    accessibilityTraits |= v5;
  }

  else
  {
  }

  return accessibilityTraits;
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SleepButton();
  [(SleepButton *)&v4 setAccessibilityTraits:traits];
}

- (_TtC5Books11SleepButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_fixedHeight) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_internalPadding) = 0;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_calculatedSize);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_duration) = 0;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_imageSize);
  *v8 = 0;
  v8[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_showsDuration) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_showsHours) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SleepButton();
  return [(SleepButton *)&v10 initWithFrame:x, y, width, height];
}

@end