@interface ListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
@end

@implementation ListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFBrowsingAssistantListCell" isKindOfClass:@"UICollectionViewListCell"];
  [validationsCopy validateClass:@"_SFBrowsingAssistantListCell" hasSwiftField:@"isDeletable" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"_SFBrowsingAssistantListCell" hasSwiftField:@"delegate" withSwiftType:"Optional<BrowsingAssistantListCellDelegate>"];
  [validationsCopy validateClass:@"SFBrowsingAssistantCollection" hasInstanceMethod:@"listCellDidDeleteCell:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SFBrowsingAssistantCollection" hasInstanceMethod:@"listCellDidInsertCell:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)accessibilityActivate
{
  v19 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  configurationState = [v3 configurationState];
  isEditing = [configurationState isEditing];

  if (isEditing)
  {
    if ([(ListCellAccessibility *)self safeSwiftBoolForKey:@"isDeletable"])
    {
      v14 = MEMORY[0x29EDCA5F8];
      v15 = 3221225472;
      v16 = __46__ListCellAccessibility_accessibilityActivate__block_invoke;
      v17 = &unk_29F2D6938;
      selfCopy = self;
    }

    else
    {
      v9 = MEMORY[0x29EDCA5F8];
      v10 = 3221225472;
      v11 = __46__ListCellAccessibility_accessibilityActivate__block_invoke_2;
      v12 = &unk_29F2D6938;
      selfCopy2 = self;
    }

    AXPerformSafeBlock();
    accessibilityActivate = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ListCellAccessibility;
    accessibilityActivate = [(ListCellAccessibility *)&v8 accessibilityActivate];
  }

  return accessibilityActivate;
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