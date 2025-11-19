@interface BKSwitchAccountStorageController
- (BKSwitchAccountStorageController)init;
@end

@implementation BKSwitchAccountStorageController

- (BKSwitchAccountStorageController)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___BKSwitchAccountStorageController_cancellables) = &_swiftEmptySetSingleton;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1001F1160(&qword_100AD7920);
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR___BKSwitchAccountStorageController_accountsState) = sub_10079B954();
  v6.receiver = self;
  v6.super_class = type metadata accessor for SwitchAccountStorageController();
  v4 = [(BKSwitchAccountStorageController *)&v6 init];
  sub_1002645C8();

  return v4;
}

@end