@interface AXStocksAssistantUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXStocksAssistantUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_321 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_330];

    _Failover = [objc_allocWithZone(AXStocksAssistantUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __56__AXStocksAssistantUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"StocksAssistantStockListCell"];
  [v2 validateClass:@"StocksAssistantStockDetailCell"];
  [v2 validateClass:@"StocksAssistantStockListCell" hasInstanceVariable:@"_companyNameLabel" withType:"UILabel"];
  [v2 validateClass:@"StocksAssistantStockListCell" hasInstanceVariable:@"_tickerLabel" withType:"UILabel"];
  [v2 validateClass:@"StocksAssistantStockListCell" hasInstanceVariable:@"_attributeTitle" withType:"UILabel"];
  [v2 validateClass:@"StocksAssistantStockListCell" hasInstanceVariable:@"_attributeValue" withType:"UILabel"];
  [v2 validateClass:@"StocksAssistantStockCell" hasInstanceMethod:@"stock" withFullSignature:{"@", 0}];
  [v2 validateClass:@"Stock" hasInstanceMethod:@"changeIsNegative" withFullSignature:{"B", 0}];
  [v2 validateClass:@"Stock" hasInstanceMethod:@"formattedChangePercent:" withFullSignature:{"@", "B", 0}];
  [v2 validateClass:@"Stock" hasInstanceMethod:@"formattedPrice" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __56__AXStocksAssistantUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Stocks Assistant UI AX Bundle"];
  [v2 setOverrideProcessName:@"Stocks Assistant UI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __56__AXStocksAssistantUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"StocksAssistantStockListCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"StocksAssistantChartViewAccessibility" canInteractWithTargetClass:1];
}

@end