@interface AXMapsAssistantUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMapsAssistantUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXMapsAssistantUIGlue accessibilityInitializeBundle];
  }
}

void __54__AXMapsAssistantUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_295 withPreValidationHandler:&__block_literal_global_320 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_329];
}

uint64_t __54__AXMapsAssistantUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"MAListSnippetView" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v2 validateClass:@"SALocalSearchMapItem" hasInstanceMethod:@"detailType" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SALocalSearchMapItem" hasInstanceMethod:@"detail" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MAResultView" hasInstanceVariable:@"_mapItem" withType:"SALocalSearchMapItem"];

  return 1;
}

uint64_t __54__AXMapsAssistantUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"MapsAssistantUI"];
  [v2 setValidationTargetName:@"Maps AssistantUI Accessibility Bundle"];

  return MEMORY[0x2A1C5E698]();
}

void __54__AXMapsAssistantUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MAListSnippetViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MAResultViewAccessibility" canInteractWithTargetClass:1];
}

@end