@interface UIKitToolbar
- (_TtC7SwiftUI12UIKitToolbar)initWithCoder:(id)a3;
- (_TtC7SwiftUI12UIKitToolbar)initWithFrame:(CGRect)a3;
- (id)initInView:(id)a3 withFrame:(CGRect)a4 withItemList:(id)a5;
@end

@implementation UIKitToolbar

- (_TtC7SwiftUI12UIKitToolbar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI12UIKitToolbar_backgroundHost) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(UIKitToolbar *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUI12UIKitToolbar)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI12UIKitToolbar_backgroundHost) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)initInView:(id)a3 withFrame:(CGRect)a4 withItemList:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end