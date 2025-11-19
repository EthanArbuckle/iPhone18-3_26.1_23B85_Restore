@interface CARDevicePickerManager
- (_TtC15CarPlaySettings22CARDevicePickerManager)init;
- (void)dealloc;
@end

@implementation CARDevicePickerManager

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15CarPlaySettings22CARDevicePickerManager_viewController);
  v3 = self;
  v4 = v2;
  dispatch thunk of CAFUIDevicePickerViewController.delegate.setter();

  v5.receiver = v3;
  v5.super_class = type metadata accessor for CARDevicePickerManager();
  [(CARDevicePickerManager *)&v5 dealloc];
}

- (_TtC15CarPlaySettings22CARDevicePickerManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end