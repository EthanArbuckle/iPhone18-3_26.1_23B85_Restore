@interface ASTDwellMovementToleranceHelper
- (ASTDwellMovementToleranceHelper)initWithClientType:(unint64_t)type;
- (PSListController)settingsController;
- (id)dwellSpecifiers;
- (void)_updateSpecifierState:(id)state;
@end

@implementation ASTDwellMovementToleranceHelper

- (ASTDwellMovementToleranceHelper)initWithClientType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = ASTDwellMovementToleranceHelper;
  result = [(ASTDwellMovementToleranceHelper *)&v5 init];
  if (result)
  {
    result->_clientType = type;
  }

  return result;
}

- (id)dwellSpecifiers
{
  v3 = +[NSMutableArray array];
  toleranceSpecifierGroupTitle = [(ASTDwellMovementToleranceHelper *)self toleranceSpecifierGroupTitle];
  v5 = [toleranceSpecifierGroupTitle length];

  if (v5)
  {
    toleranceSpecifierGroupTitle2 = [(ASTDwellMovementToleranceHelper *)self toleranceSpecifierGroupTitle];
    v7 = [PSSpecifier groupSpecifierWithName:toleranceSpecifierGroupTitle2];
  }

  else
  {
    v7 = +[PSSpecifier emptyGroupSpecifier];
  }

  v8 = settingsLocString(@"DWELL_MOVEMENT_TOLERANCE_FOOTER", @"HandSettings");
  [v7 setProperty:v8 forKey:PSFooterTextGroupKey];

  [v3 addObject:v7];
  v9 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v9 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v10 = [NSNumber numberWithUnsignedInteger:[(ASTDwellMovementToleranceHelper *)self clientType]];
  [v9 setProperty:v10 forKey:@"DwellMovementToleranceClientType"];

  [v3 addObject:v9];
  v11 = +[PSSpecifier emptyGroupSpecifier];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v11 setProperty:v13 forKey:PSHeaderCellClassGroupKey];

  v14 = [NSNumber numberWithUnsignedInteger:[(ASTDwellMovementToleranceHelper *)self clientType]];
  [v11 setProperty:v14 forKey:@"DwellMovementToleranceClientType"];

  [v3 addObject:v11];

  return v3;
}

- (void)_updateSpecifierState:(id)state
{
  stateCopy = state;
  settingsController = [(ASTDwellMovementToleranceHelper *)self settingsController];
  [settingsController reloadSpecifier:stateCopy];
}

- (PSListController)settingsController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);

  return WeakRetained;
}

@end