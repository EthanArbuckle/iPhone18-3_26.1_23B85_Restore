@interface CRLTouchTransparentUIView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC8Freeform25CRLTouchTransparentUIView)initWithCoder:(id)coder;
- (_TtC8Freeform25CRLTouchTransparentUIView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CRLTouchTransparentUIView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = sub_100B527B4(eventCopy, x, y);

  return eventCopy & 1;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_100B5297C(event, x, y);

  return v10;
}

- (_TtC8Freeform25CRLTouchTransparentUIView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLTouchTransparentUIView();
  return [(CRLTouchTransparentUIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8Freeform25CRLTouchTransparentUIView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLTouchTransparentUIView();
  coderCopy = coder;
  v5 = [(CRLTouchTransparentUIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end