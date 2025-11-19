@interface AXRestaurantsAssistantGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXRestaurantsAssistantGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXRestaurantsAssistantGlue accessibilityInitializeBundle];
  }
}

void __59__AXRestaurantsAssistantGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_291 withPreValidationHandler:&__block_literal_global_337 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_346];
}

uint64_t __59__AXRestaurantsAssistantGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SiriRestaurantsDetailDescriptionCell" hasInstanceVariable:@"_priceLabel" withType:"UILabel"];
  [v2 validateClass:@"SiriRestaurantsOpenHoursCell" hasInstanceVariable:@"_dayRangeLabels" withType:"NSArray"];
  [v2 validateClass:@"SiriRestaurantsOpenHoursCell" hasInstanceVariable:@"_hoursLabelPerRange" withType:"NSArray"];
  [v2 validateClass:@"SiriUIContentCollectionViewCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SiriRestaurantsDetailDescriptionCell" hasInstanceMethod:@"_setPriceInfoWithRestaurant:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SiriRestaurantsOpenHoursCell" hasInstanceMethod:@"configureWithParsedOpenHoursInfo:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SiriRestaurantsDetailViewController" hasInstanceMethod:@"_configurePhoneCell: forItem:" withFullSignature:{"v", "@", "q", 0}];
  [v2 validateClass:@"SiriRestaurantsDetailViewController" hasInstanceMethod:@"_configureURLCell: forItem:" withFullSignature:{"v", "@", "q", 0}];
  [v2 validateClass:@"SiriRestaurantsDetailViewController" hasInstanceMethod:@"_configureReviewsCell: forItem:" withFullSignature:{"v", "@", "q", 0}];

  return 1;
}

uint64_t __59__AXRestaurantsAssistantGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Assistant Restaurants AX Bundle"];
  [v2 setOverrideProcessName:@"Assistant Restaurants"];

  return MEMORY[0x2A1C5E698]();
}

void __59__AXRestaurantsAssistantGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SiriRestaurantsListItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriRestaurantsDetailDescriptionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriRestaurantsOpenHoursCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriRestaurantsDetailViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriRestaurantsLogoButtonAccessibility" canInteractWithTargetClass:1];
}

@end