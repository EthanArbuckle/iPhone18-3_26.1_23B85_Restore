@interface ClimateTransparentView
- (_TtC7Climate22ClimateTransparentView)initWithCoder:(id)coder;
- (_TtC7Climate22ClimateTransparentView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation ClimateTransparentView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ClimateTransparentView();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(ClimateTransparentView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_100005AA0();
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC7Climate22ClimateTransparentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateTransparentView();
  return [(ClimateTransparentView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Climate22ClimateTransparentView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateTransparentView();
  coderCopy = coder;
  v5 = [(ClimateTransparentView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end