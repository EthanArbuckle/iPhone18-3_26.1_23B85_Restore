@interface StocksAssistantStockListCellAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation StocksAssistantStockListCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(StocksAssistantStockListCellAccessibility *)self safeValueForKey:@"_companyNameLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(StocksAssistantStockListCellAccessibility *)self safeValueForKey:@"_tickerLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [(StocksAssistantStockListCellAccessibility *)self safeValueForKey:@"_attributeTitle"];
  accessibilityLabel3 = [v7 accessibilityLabel];

  v9 = [(StocksAssistantStockListCellAccessibility *)self safeValueForKey:@"_attributeValue"];
  accessibilityLabel4 = [v9 accessibilityLabel];

  if ([accessibilityLabel3 length] && objc_msgSend(accessibilityLabel4, "length"))
  {
    v11 = __UIAXStringForVariables();
  }

  else
  {
    v11 = 0;
  }

  v12 = __UIAXStringForVariables();

  return v12;
}

- (id)accessibilityValue
{
  v2 = [(StocksAssistantStockListCellAccessibility *)self safeValueForKey:@"stock"];
  if ([v2 safeBoolForKey:@"changeIsNegative"])
  {
    v3 = @"stock.down";
  }

  else
  {
    v3 = @"stock.up";
  }

  v4 = accessibilityLocalizedString(v3);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16 = v2;
  AXPerformSafeBlock();
  v5 = v18[5];

  _Block_object_dispose(&v17, 8);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v14 = MEMORY[0x29EDCA5F8];
  v15 = v16;
  AXPerformSafeBlock();
  v6 = v18[5];

  _Block_object_dispose(&v17, 8);
  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:v4, v5, v6, v14, 3221225472, __63__StocksAssistantStockListCellAccessibility_accessibilityValue__block_invoke_2, &unk_29F303070];
  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"stock.price");
  v10 = [v15 safeValueForKey:@"formattedPrice"];

  v11 = [v8 stringWithFormat:v9, v10];

  v12 = __UIAXStringForVariables();

  return v12;
}

uint64_t __63__StocksAssistantStockListCellAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) formattedChangePercent:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __63__StocksAssistantStockListCellAccessibility_accessibilityValue__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) formattedChangePercent:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end