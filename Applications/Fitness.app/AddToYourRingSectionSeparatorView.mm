@interface AddToYourRingSectionSeparatorView
- (_TtC10FitnessApp33AddToYourRingSectionSeparatorView)initWithCoder:(id)a3;
- (_TtC10FitnessApp33AddToYourRingSectionSeparatorView)initWithFrame:(CGRect)a3;
@end

@implementation AddToYourRingSectionSeparatorView

- (_TtC10FitnessApp33AddToYourRingSectionSeparatorView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC10FitnessApp33AddToYourRingSectionSeparatorView_div;
  sub_1000059F8(0, &qword_1008E7580);
  *(&self->super.super.super.super.isa + v8) = sub_10065AEC8();
  v13.receiver = self;
  v13.super_class = type metadata accessor for AddToYourRingSectionSeparatorView();
  v9 = [(AddToYourRingSectionSeparatorView *)&v13 initWithFrame:x, y, width, height];
  v10 = *(&v9->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp33AddToYourRingSectionSeparatorView_div);
  v11 = v9;
  [(AddToYourRingSectionSeparatorView *)v11 addSubview:v10];
  sub_1001834A0();

  return v11;
}

- (_TtC10FitnessApp33AddToYourRingSectionSeparatorView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC10FitnessApp33AddToYourRingSectionSeparatorView_div;
  sub_1000059F8(0, &qword_1008E7580);
  v6 = a3;
  *(&self->super.super.super.super.isa + v5) = sub_10065AEC8();
  v9.receiver = self;
  v9.super_class = type metadata accessor for AddToYourRingSectionSeparatorView();
  v7 = [(AddToYourRingSectionSeparatorView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end