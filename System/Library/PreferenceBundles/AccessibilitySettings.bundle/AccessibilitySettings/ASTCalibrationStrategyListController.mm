@interface ASTCalibrationStrategyListController
+ (id)nameForCalibrationStrategy:(int64_t)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_currentStrategy;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ASTCalibrationStrategyListController

+ (id)nameForCalibrationStrategy:(int64_t)a3
{
  if (!a3)
  {
    v4 = @"ON_DEVICE_EYE_TRACKING_SINGULAR_MATRIX";
LABEL_5:
    v5 = settingsLocString(v4, @"HandSettings");

    return v5;
  }

  if (a3 == 1)
  {
    v4 = @"ON_DEVICE_EYE_TRACKING_DUAL_MATRIX";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithName:0];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v6 setProperty:@"CalibrationStrategyGroupID" forKey:PSIDKey];
    [v5 addObject:v6];
    v7 = kAXSEyeTrackingCalibrationStrategyFirst;
    for (i = kAXSEyeTrackingCalibrationStrategyLast; v7 <= i; ++v7)
    {
      v9 = [ASTCalibrationStrategyListController nameForCalibrationStrategy:v7];
      v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v5 addObject:v10];
    }

    v11 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (int64_t)_currentStrategy
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy];

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = ASTCalibrationStrategyListController;
  v6 = a4;
  v7 = [(ASTCalibrationStrategyListController *)&v10 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(ASTCalibrationStrategyListController *)self _calibrationStrategyForIndexPath:v6, v10.receiver, v10.super_class];

  [v7 setChecked:{v8 == -[ASTCalibrationStrategyListController _currentStrategy](self, "_currentStrategy")}];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASTCalibrationStrategyListController *)self _calibrationStrategyForIndexPath:v6];
  v9 = +[AXSettings sharedInstance];
  [v9 setAssistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy:v8];

  [(ASTCalibrationStrategyListController *)self updateTableCheckedSelection:v6];
  [v7 deselectRowAtIndexPath:v6 animated:1];

  v10 = [(ASTCalibrationStrategyListController *)self specifierForID:@"CalibrationStrategyGroupID"];
  [(ASTCalibrationStrategyListController *)self reloadSpecifier:v10 animated:1];
}

@end