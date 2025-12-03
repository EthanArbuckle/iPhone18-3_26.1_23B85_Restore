@interface AXSiriSettingsController
- (id)_localizedStringForAccessibleEndpointerThreshold:(int64_t)threshold;
- (id)isTypeToSiriEnabled;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AXSiriSettingsController

- (id)_localizedStringForAccessibleEndpointerThreshold:(int64_t)threshold
{
  if ((threshold - 1) > 2)
  {
    v3 = @"siri.endpointer.unknown";
  }

  else
  {
    v3 = off_278B90E40[threshold - 1];
  }

  return settingsLocString(v3, @"AccessibilitySettings");
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:@"TYPE_TO_SIRI_GROUP_ID" forKey:*MEMORY[0x277D3FFB8]];
    v7 = settingsLocString(@"TYPE_TO_SIRI_FOOTER_TEXT", @"AccessibilitySettings");
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier];
    v8 = MEMORY[0x277D3FAD8];
    v9 = settingsLocString(@"TYPE_TO_SIRI_LABEL", @"AccessibilitySettings");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel_setTypeToSiriEnabled_ get:sel_isTypeToSiriEnabled detail:0 cell:6 edit:0];

    [array addObject:v10];
    v11 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = AXSiriSettingsController;
  pathCopy = path;
  [(AXSiriSettingsController *)&v15 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXSiriSettingsController *)self indexForIndexPath:pathCopy, v15.receiver, v15.super_class];
  specifiers = [(AXSiriSettingsController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(AXSiriSettingsController *)self specifierAtIndex:[(AXSiriSettingsController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  LODWORD(pathCopy) = [v12 BOOLValue];

  if (pathCopy)
  {
    identifier = [v11 identifier];
    v14 = [identifier isEqualToString:@"SIRI_ENDPOINTER_GROUP_ID"];

    if (v14)
    {
      [v9 propertyForKey:*MEMORY[0x277D401A8]];
    }
  }
}

- (id)isTypeToSiriEnabled
{
  v2 = MEMORY[0x277CCABB0];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v2 numberWithBool:{objc_msgSend(accessibilityDomainAccessor, "BOOLForKey:", *MEMORY[0x277D81EC0])}];

  return v4;
}

@end