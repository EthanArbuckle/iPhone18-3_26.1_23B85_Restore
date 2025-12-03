@interface CanvasElementContainerView
- (_TtC8PaperKit26CanvasElementContainerView)initWithCoder:(id)coder;
- (_TtC8PaperKit26CanvasElementContainerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CanvasElementContainerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  CanvasElementContainerView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (_TtC8PaperKit26CanvasElementContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CanvasElementContainerView();
  return [(CanvasElementContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8PaperKit26CanvasElementContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CanvasElementContainerView();
  coderCopy = coder;
  v5 = [(CanvasElementContainerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end