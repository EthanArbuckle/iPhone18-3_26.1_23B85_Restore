@interface ARQLTapSegmentedControl
- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithCoder:(id)coder;
- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithFrame:(CGRect)frame;
- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithItems:(id)items;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation ARQLTapSegmentedControl

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_241246158(0, &qword_27E538A40);
  sub_2412FC7FC();
  v6 = sub_241353FFC();
  eventCopy = event;
  selfCopy = self;
  sub_2412FBA78(v6, event);
}

- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ARQLTapSegmentedControl();
  return [(ARQLTapSegmentedControl *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ARQLTapSegmentedControl();
  coderCopy = coder;
  v5 = [(ARQLTapSegmentedControl *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC11AssetViewerP33_43D6C362842EB5C9CDE45D41C7CDC69D23ARQLTapSegmentedControl)initWithItems:(id)items
{
  if (items)
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