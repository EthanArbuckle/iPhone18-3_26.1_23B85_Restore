@interface ARQLTapSegmentedControl
- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithCoder:(id)a3;
- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithFrame:(CGRect)a3;
- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithItems:(id)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation ARQLTapSegmentedControl

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_241246158(0, &qword_27E538A40);
  sub_2412FC7FC();
  v6 = sub_241353FFC();
  v7 = a4;
  v8 = self;
  sub_2412FBA78(v6, a4);
}

- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ARQLTapSegmentedControl();
  return [(ARQLTapSegmentedControl *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ARQLTapSegmentedControl();
  v4 = a3;
  v5 = [(ARQLTapSegmentedControl *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithItems:(id)a3
{
  if (a3)
  {
    sub_241353E2C();
    v4 = sub_241353E1C();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for ARQLTapSegmentedControl();
  v5 = [(ARQLTapSegmentedControl *)&v7 initWithItems:v4];

  return v5;
}

@end