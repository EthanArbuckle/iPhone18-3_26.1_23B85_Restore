@interface TouchPassThroughView
- (_TtC7Measure20TouchPassThroughView)initWithCoder:(id)coder;
- (_TtC7Measure20TouchPassThroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation TouchPassThroughView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for TouchPassThroughView();
  v7 = v14.receiver;
  eventCopy = event;
  v9 = [(TouchPassThroughView *)&v14 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = v9;

  v11 = v10;
  v12 = v10 == v7;
  v7 = v10;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (_TtC7Measure20TouchPassThroughView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TouchPassThroughView();
  return [(TouchPassThroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Measure20TouchPassThroughView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TouchPassThroughView();
  coderCopy = coder;
  v5 = [(TouchPassThroughView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end