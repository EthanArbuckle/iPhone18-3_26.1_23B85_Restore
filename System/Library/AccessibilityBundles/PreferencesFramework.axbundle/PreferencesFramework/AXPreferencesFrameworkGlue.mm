@interface AXPreferencesFrameworkGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPreferencesFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_372 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_381];

    mEMORY[0x29EDBD690] = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690] addHandler:&__block_literal_global_499 forFramework:@"Preferences"];

    _Failover = [objc_allocWithZone(AXPreferencesFrameworkGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __59__AXPreferencesFrameworkGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PSSpecifier"];
  [v2 validateClass:@"PSTableCell"];
  [v2 validateClass:@"PSControlTableCell"];
  [v2 validateClass:@"PSTextViewTableCell"];
  [v2 validateClass:@"PSSetupController"];
  [v2 validateClass:@"PSTableCell" hasInstanceVariable:@"_checked" withType:"BOOL"];
  [v2 validateClass:@"PSTextViewTableCell" hasInstanceVariable:@"_textView" withType:"PSTextView"];
  [v2 validateClass:@"PSControlTableCell" hasInstanceVariable:@"_control" withType:"UIControl"];
  [v2 validateClass:@"PSListController" hasInstanceVariable:@"_specifiers" withType:"NSArray"];
  [v2 validateClass:@"PSListController" hasInstanceVariable:@"_table" withType:"UITableView"];
  [v2 validateClass:@"PSTableCell" hasInstanceMethod:@"cellEnabled" withFullSignature:{"B", 0}];
  [v2 validateClass:@"PSTableCell" hasInstanceMethod:@"cellTarget" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PSListController" hasInstanceMethod:@"loadSpecifiersFromPlistName: target:" withFullSignature:{"@", "@", "@", 0}];
  [v2 validateClass:@"PSListController" hasInstanceMethod:@"bundle" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PSControlTableCell" hasInstanceMethod:@"control" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PSSpecifier" hasInstanceMethod:@"values" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PSListController" hasInstanceMethod:@"reloadSpecifierAtIndex: animated:" withFullSignature:{"v", "q", "B", 0}];
  [v2 validateClass:@"PSListController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"PSListController" hasInstanceMethod:@"_updateSectionContentInsetWithAnimation:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"PSTableCell" hasInstanceMethod:@"initWithStyle: reuseIdentifier: specifier:" withFullSignature:{"@", "q", "@", "@", 0}];
  [v2 validateClass:@"PSEditableTableCell" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PSEditableTableCell" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [v2 validateClass:@"UIView" hasInstanceMethod:@"_viewDelegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PSTableCell" isKindOfClass:@"UITableViewCell"];

  return 1;
}

uint64_t __59__AXPreferencesFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Preferences Framework Accessibility Bundle"];
  [v2 setOverrideProcessName:@"Preferences Framework"];

  return MEMORY[0x2A1C5E698]();
}

void __59__AXPreferencesFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PSSpecifierAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITableViewAccessibility__Preferences__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITableViewCellAccessibility__Preferences__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSControlTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSSliderTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSSpecifierToggleContentConfigurationCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSSegmentTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSEditableTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSRootControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSListControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSSetupControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSPasscodeFieldAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSSegmentableSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSUsageSizeHeaderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSUsageBundleCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSSubtitleSwitchTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSTimeRangeCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSDateTimePickerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSKeychainSyncSecurityCodeControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSFooterHyperlinkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSBadgedTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DevicePINPaneAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSCapacityBarCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PrefsUILinkLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PINViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FailureBarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DevicePINKeypadAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AlphanumericPINTextFieldAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSKeyboardNavigationSearchBarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUIKSearchResultCollectionViewListCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSReversedSubtitleDisclosureTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UISplitViewControllerPanelImplAccessibility__Preferences__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSSpecifierContentConfigurationCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSSpecifierDeleteButtonContentConfigurationCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSSpecifierSliderConfigurationCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSSpecifierTimeRangeContentConfigurationCellAccessibility" canInteractWithTargetClass:1];
}

void __59__AXPreferencesFrameworkGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 installSafeCategories:&__block_literal_global_503 afterDelay:@"Preferences Framework Accessibility Bundle" validationTargetName:0 overrideProcessName:0.25];
}

@end