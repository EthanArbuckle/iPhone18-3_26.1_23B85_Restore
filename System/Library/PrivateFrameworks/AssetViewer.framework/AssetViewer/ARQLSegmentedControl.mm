@interface ARQLSegmentedControl
- (_TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl)initWithCoder:(id)coder;
- (_TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl)initWithFrame:(CGRect)frame;
- (_TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl)initWithItems:(id)items;
@end

@implementation ARQLSegmentedControl

- (_TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl_currentState;
  *v7 = 0;
  v7[8] = 0;
  *(v7 + 2) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ARQLSegmentedControl();
  return [(ARQLSegmentedControl *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl_currentState;
  *v4 = 0;
  v4[8] = 0;
  *(v4 + 2) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ARQLSegmentedControl();
  coderCopy = coder;
  v6 = [(ARQLSegmentedControl *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (_TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl)initWithItems:(id)items
{
  if (items)
  {
    sub_241353E2C();
    v4 = self + OBJC_IVAR____TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl_currentState;
    *v4 = 0;
    v4[8] = 0;
    *(v4 + 2) = 0;
    v5 = sub_241353E1C();
  }

  else
  {
    v5 = 0;
    v6 = self + OBJC_IVAR____TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl_currentState;
    *v6 = 0;
    v6[8] = 0;
    *(v6 + 2) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for ARQLSegmentedControl();
  v7 = [(ARQLSegmentedControl *)&v9 initWithItems:v5];

  return v7;
}

@end