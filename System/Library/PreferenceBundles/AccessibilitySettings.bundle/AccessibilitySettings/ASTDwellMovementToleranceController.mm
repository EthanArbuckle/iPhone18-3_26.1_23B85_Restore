@interface ASTDwellMovementToleranceController
- (id)specifiers;
@end

@implementation ASTDwellMovementToleranceController

- (id)specifiers
{
  dwellMovementToleranceHelper = [(ASTDwellMovementToleranceController *)self dwellMovementToleranceHelper];

  if (!dwellMovementToleranceHelper)
  {
    v4 = [[ASTDwellMovementToleranceHelper alloc] initWithClientType:0];
    [(ASTDwellMovementToleranceController *)self setDwellMovementToleranceHelper:v4];

    dwellMovementToleranceHelper2 = [(ASTDwellMovementToleranceController *)self dwellMovementToleranceHelper];
    [dwellMovementToleranceHelper2 setSettingsController:self];

    v6 = +[AXSettings sharedInstance];
    [v6 assistiveTouchMouseDwellControlMovementToleranceRadius];
    v8 = v7;
    dwellMovementToleranceHelper3 = [(ASTDwellMovementToleranceController *)self dwellMovementToleranceHelper];
    [dwellMovementToleranceHelper3 setDwellControlMovementToleranceRadius:v8];
  }

  v10 = OBJC_IVAR___PSListController__specifiers;
  v11 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v11)
  {
    v12 = [objc_allocWithZone(NSMutableArray) init];
    dwellMovementToleranceHelper4 = [(ASTDwellMovementToleranceController *)self dwellMovementToleranceHelper];
    dwellSpecifiers = [dwellMovementToleranceHelper4 dwellSpecifiers];
    [v12 axSafelyAddObjectsFromArray:dwellSpecifiers];

    v15 = [v12 copy];
    v16 = *&self->AXUISettingsBaseListController_opaque[v10];
    *&self->AXUISettingsBaseListController_opaque[v10] = v15;

    v11 = *&self->AXUISettingsBaseListController_opaque[v10];
  }

  return v11;
}

@end