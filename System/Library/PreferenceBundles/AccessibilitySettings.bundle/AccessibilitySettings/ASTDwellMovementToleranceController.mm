@interface ASTDwellMovementToleranceController
- (id)specifiers;
@end

@implementation ASTDwellMovementToleranceController

- (id)specifiers
{
  v3 = [(ASTDwellMovementToleranceController *)self dwellMovementToleranceHelper];

  if (!v3)
  {
    v4 = [[ASTDwellMovementToleranceHelper alloc] initWithClientType:0];
    [(ASTDwellMovementToleranceController *)self setDwellMovementToleranceHelper:v4];

    v5 = [(ASTDwellMovementToleranceController *)self dwellMovementToleranceHelper];
    [v5 setSettingsController:self];

    v6 = +[AXSettings sharedInstance];
    [v6 assistiveTouchMouseDwellControlMovementToleranceRadius];
    v8 = v7;
    v9 = [(ASTDwellMovementToleranceController *)self dwellMovementToleranceHelper];
    [v9 setDwellControlMovementToleranceRadius:v8];
  }

  v10 = OBJC_IVAR___PSListController__specifiers;
  v11 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v11)
  {
    v12 = [objc_allocWithZone(NSMutableArray) init];
    v13 = [(ASTDwellMovementToleranceController *)self dwellMovementToleranceHelper];
    v14 = [v13 dwellSpecifiers];
    [v12 axSafelyAddObjectsFromArray:v14];

    v15 = [v12 copy];
    v16 = *&self->AXUISettingsBaseListController_opaque[v10];
    *&self->AXUISettingsBaseListController_opaque[v10] = v15;

    v11 = *&self->AXUISettingsBaseListController_opaque[v10];
  }

  return v11;
}

@end