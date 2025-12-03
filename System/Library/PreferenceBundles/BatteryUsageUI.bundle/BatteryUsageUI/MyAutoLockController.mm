@interface MyAutoLockController
- (id)specifiers;
@end

@implementation MyAutoLockController

- (id)specifiers
{
  v3 = BatteryUILocalization(@"AUTOLOCK");
  [(MyAutoLockController *)self setTitle:v3];

  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v5)
  {
    v6 = +[NSMutableArray array];
    v10.receiver = self;
    v10.super_class = MyAutoLockController;
    specifiers = [(MyAutoLockController *)&v10 specifiers];
    [v6 addObjectsFromArray:specifiers];

    v8 = *&self->PSListItemsController_opaque[v4];
    *&self->PSListItemsController_opaque[v4] = v6;

    v5 = *&self->PSListItemsController_opaque[v4];
  }

  return v5;
}

@end