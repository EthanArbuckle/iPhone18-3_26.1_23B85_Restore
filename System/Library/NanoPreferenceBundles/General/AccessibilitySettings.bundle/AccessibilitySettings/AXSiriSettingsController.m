@interface AXSiriSettingsController
- (id)_localizedStringForAccessibleEndpointerThreshold:(int64_t)a3;
- (id)isTypeToSiriEnabled;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AXSiriSettingsController

- (id)_localizedStringForAccessibleEndpointerThreshold:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v3 = @"siri.endpointer.unknown";
  }

  else
  {
    v3 = off_278B90E40[a3 - 1];
  }

  return settingsLocString(v3, @"AccessibilitySettings");
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v6 setProperty:@"TYPE_TO_SIRI_GROUP_ID" forKey:*MEMORY[0x277D3FFB8]];
    v7 = settingsLocString(@"TYPE_TO_SIRI_FOOTER_TEXT", @"AccessibilitySettings");
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [v5 addObject:v6];
    v8 = MEMORY[0x277D3FAD8];
    v9 = settingsLocString(@"TYPE_TO_SIRI_LABEL", @"AccessibilitySettings");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel_setTypeToSiriEnabled_ get:sel_isTypeToSiriEnabled detail:0 cell:6 edit:0];

    [v5 addObject:v10];
    v11 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = AXSiriSettingsController;
  v6 = a4;
  [(AXSiriSettingsController *)&v15 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXSiriSettingsController *)self indexForIndexPath:v6, v15.receiver, v15.super_class];
  v8 = [(AXSiriSettingsController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(AXSiriSettingsController *)self specifierAtIndex:[(AXSiriSettingsController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  LODWORD(v6) = [v12 BOOLValue];

  if (v6)
  {
    v13 = [v11 identifier];
    v14 = [v13 isEqualToString:@"SIRI_ENDPOINTER_GROUP_ID"];

    if (v14)
    {
      [v9 propertyForKey:*MEMORY[0x277D401A8]];
    }
  }
}

- (id)isTypeToSiriEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "BOOLForKey:", *MEMORY[0x277D81EC0])}];

  return v4;
}

@end