@interface ListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
@end

@implementation ListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFBrowsingAssistantListCell" isKindOfClass:@"UICollectionViewListCell"];
  [v3 validateClass:@"_SFBrowsingAssistantListCell" hasSwiftField:@"isDeletable" withSwiftType:"Bool"];
  [v3 validateClass:@"_SFBrowsingAssistantListCell" hasSwiftField:@"delegate" withSwiftType:"Optional<BrowsingAssistantListCellDelegate>"];
  [v3 validateClass:@"SFBrowsingAssistantCollection" hasInstanceMethod:@"listCellDidDeleteCell:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SFBrowsingAssistantCollection" hasInstanceMethod:@"listCellDidInsertCell:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)accessibilityActivate
{
  v19 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 configurationState];
  v5 = [v4 isEditing];

  if (v5)
  {
    if ([(ListCellAccessibility *)self safeSwiftBoolForKey:@"isDeletable"])
    {
      v14 = MEMORY[0x29EDCA5F8];
      v15 = 3221225472;
      v16 = __46__ListCellAccessibility_accessibilityActivate__block_invoke;
      v17 = &unk_29F2D6938;
      v18 = self;
    }

    else
    {
      v9 = MEMORY[0x29EDCA5F8];
      v10 = 3221225472;
      v11 = __46__ListCellAccessibility_accessibilityActivate__block_invoke_2;
      v12 = &unk_29F2D6938;
      v13 = self;
    }

    AXPerformSafeBlock();
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ListCellAccessibility;
    v6 = [(ListCellAccessibility *)&v8 accessibilityActivate];
  }

  return v6;
}

void __46__ListCellAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeSwiftValueForKey:@"delegate"];
  [v2 listCellDidDeleteCell:*(a1 + 32)];
}

void __46__ListCellAccessibility_accessibilityActivate__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeSwiftValueForKey:@"delegate"];
  [v2 listCellDidInsertCell:*(a1 + 32)];
}

@end