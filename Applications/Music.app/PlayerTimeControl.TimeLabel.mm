@interface PlayerTimeControl.TimeLabel
- (_TtCC5Music17PlayerTimeControl9TimeLabel)initWithCoder:(id)a3;
- (_TtCC5Music17PlayerTimeControl9TimeLabel)initWithFrame:(CGRect)a3;
- (void)setTextColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PlayerTimeControl.TimeLabel

- (void)setTextColor:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1003119E8(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1003112F0(a3);
}

- (_TtCC5Music17PlayerTimeControl9TimeLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5Music17PlayerTimeControl9TimeLabel_multipliedTextColor) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlayerTimeControl.TimeLabel();
  return [(PlayerTimeControl.TimeLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5Music17PlayerTimeControl9TimeLabel)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5Music17PlayerTimeControl9TimeLabel_multipliedTextColor) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlayerTimeControl.TimeLabel();
  v4 = a3;
  v5 = [(PlayerTimeControl.TimeLabel *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end