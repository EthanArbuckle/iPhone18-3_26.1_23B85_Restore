@interface PlayerTimeControl.TimeLabel
- (_TtCC5Music17PlayerTimeControl9TimeLabel)initWithCoder:(id)coder;
- (_TtCC5Music17PlayerTimeControl9TimeLabel)initWithFrame:(CGRect)frame;
- (void)setTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlayerTimeControl.TimeLabel

- (void)setTextColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1003119E8(color);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1003112F0(change);
}

- (_TtCC5Music17PlayerTimeControl9TimeLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5Music17PlayerTimeControl9TimeLabel_multipliedTextColor) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlayerTimeControl.TimeLabel();
  return [(PlayerTimeControl.TimeLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5Music17PlayerTimeControl9TimeLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5Music17PlayerTimeControl9TimeLabel_multipliedTextColor) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlayerTimeControl.TimeLabel();
  coderCopy = coder;
  v5 = [(PlayerTimeControl.TimeLabel *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end