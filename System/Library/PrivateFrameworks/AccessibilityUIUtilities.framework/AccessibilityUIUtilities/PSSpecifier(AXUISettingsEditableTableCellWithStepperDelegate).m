@interface PSSpecifier(AXUISettingsEditableTableCellWithStepperDelegate)
+ (id)ax_stepperSpecifierWithDelegate:()AXUISettingsEditableTableCellWithStepperDelegate;
@end

@implementation PSSpecifier(AXUISettingsEditableTableCellWithStepperDelegate)

+ (id)ax_stepperSpecifierWithDelegate:()AXUISettingsEditableTableCellWithStepperDelegate
{
  v3 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:0 target:a3 set:0 get:sel_stringValueForSpecifier_ detail:0 cell:4 edit:0];
  [v3 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];

  return v3;
}

@end