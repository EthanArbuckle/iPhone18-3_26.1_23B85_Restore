@interface UIKitButtonAdaptorCoordinator
- (_TtC7SwiftUI29UIKitButtonAdaptorCoordinator)init;
- (void)menuActionTriggered:(id)a3;
- (void)primaryActionTriggered:(id)a3;
@end

@implementation UIKitButtonAdaptorCoordinator

- (void)primaryActionTriggered:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](self);
    v5 = v4;
    outlined copy of AppIntentExecutor?(v3);
    static Update.dispatchImmediately<A>(reason:_:)();

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3);
  }
}

- (void)menuActionTriggered:(id)a3
{
  v4 = a3;
  v8 = self;
  UIKitButtonAdaptorCoordinator.makeMenu()(v5);
  v7 = v6;
  [(UIButton *)v4 setMenu:v6];

  UIKitButtonAdaptorCoordinator.setupNotifications(_:)(v4);
}

- (_TtC7SwiftUI29UIKitButtonAdaptorCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end