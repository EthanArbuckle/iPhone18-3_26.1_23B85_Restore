@interface UIKitToolbar
- (_TtC7SwiftUI12UIKitToolbar)initWithCoder:(id)coder;
- (_TtC7SwiftUI12UIKitToolbar)initWithFrame:(CGRect)frame;
- (id)initInView:(id)view withFrame:(CGRect)frame withItemList:(id)list;
@end

@implementation UIKitToolbar

- (_TtC7SwiftUI12UIKitToolbar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI12UIKitToolbar_backgroundHost) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(UIKitToolbar *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUI12UIKitToolbar)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI12UIKitToolbar_backgroundHost) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)initInView:(id)view withFrame:(CGRect)frame withItemList:(id)list
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end