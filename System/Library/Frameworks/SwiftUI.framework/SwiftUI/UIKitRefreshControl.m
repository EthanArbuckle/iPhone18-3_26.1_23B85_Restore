@interface UIKitRefreshControl
- (_TtC7SwiftUI19UIKitRefreshControl)init;
- (_TtC7SwiftUI19UIKitRefreshControl)initWithCoder:(id)a3;
- (_TtC7SwiftUI19UIKitRefreshControl)initWithFrame:(CGRect)a3;
- (void)_swiftui_handleRefreshControl;
- (void)dealloc;
@end

@implementation UIKitRefreshControl

- (_TtC7SwiftUI19UIKitRefreshControl)initWithCoder:(id)a3
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
    v4 = self;

    MEMORY[0x18D00D010](v5, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = ObjectType;
  [(UIRefreshControl *)&v7 dealloc];
}

- (void)_swiftui_handleRefreshControl
{
  v2 = self;
  UIKitRefreshControl._swiftui_handleRefreshControl()();
}

- (_TtC7SwiftUI19UIKitRefreshControl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI19UIKitRefreshControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end