@interface UIKitRefreshControl
- (_TtC7SwiftUI19UIKitRefreshControl)init;
- (_TtC7SwiftUI19UIKitRefreshControl)initWithCoder:(id)coder;
- (_TtC7SwiftUI19UIKitRefreshControl)initWithFrame:(CGRect)frame;
- (void)_swiftui_handleRefreshControl;
- (void)dealloc;
@end

@implementation UIKitRefreshControl

- (_TtC7SwiftUI19UIKitRefreshControl)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask))
  {
    selfCopy = self;

    MEMORY[0x18D00D010](v5, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = ObjectType;
  [(UIRefreshControl *)&v7 dealloc];
}

- (void)_swiftui_handleRefreshControl
{
  selfCopy = self;
  UIKitRefreshControl._swiftui_handleRefreshControl()();
}

- (_TtC7SwiftUI19UIKitRefreshControl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI19UIKitRefreshControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end