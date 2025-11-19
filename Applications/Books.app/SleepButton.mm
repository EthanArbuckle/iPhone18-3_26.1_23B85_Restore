@interface SleepButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (_TtC5Books11SleepButton)initWithFrame:(CGRect)a3;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
@end

@implementation SleepButton

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v5 = self;
  if (a3)
  {
    [a3 size];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (&v5->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_imageSize);
  *v8 = v6;
  v8[1] = v7;
  v9 = [(SleepButton *)v5 state];
  v10.receiver = v5;
  v10.super_class = type metadata accessor for SleepButton();
  [(SleepButton *)&v10 setImage:a3 forState:v9];
}

- (CGSize)intrinsicContentSize
{
  v2 = (self + OBJC_IVAR____TtC5Books11SleepButton_calculatedSize);
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_calculatedSize);
  v4 = self;
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
  v2 = self;
  sub_1003A891C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = (self + OBJC_IVAR____TtC5Books11SleepButton_calculatedSize);
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books11SleepButton_calculatedSize);
  v5 = self;
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
  v3 = [(SleepButton *)&v7 accessibilityTraits];
  if (*(v2 + OBJC_IVAR____TtC5Books11SleepButton_showsDuration) == 1)
  {
    v4 = UIAccessibilityTraitUpdatesFrequently;

    if ((v4 & ~v3) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v3 |= v5;
  }

  else
  {
  }

  return v3;
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SleepButton();
  [(SleepButton *)&v4 setAccessibilityTraits:a3];
}

- (_TtC5Books11SleepButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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