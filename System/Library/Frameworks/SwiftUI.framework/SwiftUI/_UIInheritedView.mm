@interface _UIInheritedView
- (_TtC7SwiftUI16_UIInheritedView)initWithCoder:(id)a3;
- (_TtC7SwiftUI16_UIInheritedView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UIInheritedView

- (_TtC7SwiftUI16_UIInheritedView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(_UIGraphicsView *)&v8 initWithFrame:x, y, width, height];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  _UIInheritedView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (_TtC7SwiftUI16_UIInheritedView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(_UIGraphicsView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end