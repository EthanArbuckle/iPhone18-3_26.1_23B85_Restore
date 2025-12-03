@interface AddToYourRingSectionSeparatorView
- (_TtC10FitnessApp33AddToYourRingSectionSeparatorView)initWithCoder:(id)coder;
- (_TtC10FitnessApp33AddToYourRingSectionSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation AddToYourRingSectionSeparatorView

- (_TtC10FitnessApp33AddToYourRingSectionSeparatorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC10FitnessApp33AddToYourRingSectionSeparatorView_div;
  sub_1000059F8(0, &qword_1008E7580);
  *(&self->super.super.super.super.isa + v8) = sub_10065AEC8();
  v13.receiver = self;
  v13.super_class = type metadata accessor for AddToYourRingSectionSeparatorView();
  height = [(AddToYourRingSectionSeparatorView *)&v13 initWithFrame:x, y, width, height];
  v10 = *(&height->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp33AddToYourRingSectionSeparatorView_div);
  v11 = height;
  [(AddToYourRingSectionSeparatorView *)v11 addSubview:v10];
  sub_1001834A0();

  return v11;
}

- (_TtC10FitnessApp33AddToYourRingSectionSeparatorView)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC10FitnessApp33AddToYourRingSectionSeparatorView_div;
  sub_1000059F8(0, &qword_1008E7580);
  coderCopy = coder;
  *(&self->super.super.super.super.isa + v5) = sub_10065AEC8();
  v9.receiver = self;
  v9.super_class = type metadata accessor for AddToYourRingSectionSeparatorView();
  v7 = [(AddToYourRingSectionSeparatorView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end