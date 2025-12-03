@interface _UIInheritedView
- (_TtC7SwiftUI16_UIInheritedView)initWithCoder:(id)coder;
- (_TtC7SwiftUI16_UIInheritedView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UIInheritedView

- (_TtC7SwiftUI16_UIInheritedView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(_UIGraphicsView *)&v8 initWithFrame:x, y, width, height];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  _UIInheritedView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (_TtC7SwiftUI16_UIInheritedView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(_UIGraphicsView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end