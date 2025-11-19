@interface MFConversationViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityMailSwipeActions;
- (id)_accessibilityMessageIndexDescription;
- (id)accessibilityCustomActions;
- (void)_accessibilityPerformMailSwipeAction:(id)a3;
@end

@implementation MFConversationViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFConversationViewCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"MFConversationViewCell" hasInstanceMethod:@"itemID" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_MFConversationViewCollectionView" isKindOfClass:@"UICollectionView"];
  [v3 validateClass:@"UIContextualAction" hasInstanceMethod:@"executePreHandlerWithView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIContextualAction" hasInstanceMethod:@"executeHandlerWithView:completionHandler:" withFullSignature:{"v", "@", "@?", 0}];
  [v3 validateClass:@"MFSwipableCollectionViewLayout" isKindOfClass:@"UICollectionViewFlowLayout"];
  [v3 validateClass:@"MFSwipableCollectionViewLayout" hasInstanceMethod:@"swipeController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFSwipableCollectionViewLayout" hasInstanceMethod:@"swipeActionController:leadingSwipeConfigurationForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"MFSwipableCollectionViewLayout" hasInstanceMethod:@"swipeActionController:trailingSwipeConfigurationForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"ConversationViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"collectionViewDataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"countOfMessages" withFullSignature:{"q", 0}];
  [v3 validateClass:@"UICollectionViewDiffableDataSource" hasInstanceMethod:@"snapshot" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NSDiffableDataSourceSnapshot" hasInstanceMethod:@"itemIdentifiers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFGeneratedSummaryCollectionItemID"];
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MFConversationViewCellAccessibility *)self _accessibilityMailSwipeActions];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __65__MFConversationViewCellAccessibility_accessibilityCustomActions__block_invoke;
  v8[3] = &unk_29F2D4100;
  v5 = v3;
  v9 = v5;
  v10 = self;
  [v4 enumerateObjectsUsingBlock:v8];

  v6 = v5;
  return v5;
}

void __65__MFConversationViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 title];
  if ([v5 length])
  {
    v3 = *(a1 + 32);
    v4 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v5 target:*(a1 + 40) selector:sel__accessibilityPerformMailSwipeAction_];
    [v3 addObject:v4];
  }
}

- (id)_accessibilityMessageIndexDescription
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uicollectionvi_0.isa)];
  v5 = [v4 safeValueForKey:@"delegate"];
  v6 = [v5 safeIntForKey:@"countOfMessages"];
  v7 = [v5 safeValueForKeyPath:@"collectionViewDataSource.snapshot.itemIdentifiers"];
  v8 = [v7 axFilterObjectsUsingBlock:&__block_literal_global_3];
  v9 = [(MFConversationViewCellAccessibility *)self safeValueForKey:@"itemID"];
  v10 = [v8 indexOfObject:v9];
  if (v6 < 2)
  {
    v15 = 0;
  }

  else
  {
    v11 = v6;
    v12 = v10 + 1;
    v13 = MEMORY[0x29EDBA0F8];
    v14 = accessibilityLocalizedString(@"thread.message.container.label");
    v15 = [v13 stringWithFormat:v14, v12, v11];
  }

  return v15;
}

BOOL __76__MFConversationViewCellAccessibility__accessibilityMessageIndexDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Mfgeneratedsum_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)_accessibilityMailSwipeActions
{
  v3 = [(MFConversationViewCellAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v4 = [v3 collectionViewLayout];

  NSClassFromString(&cfstr_Mfswipablecoll_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x29EDB8DE8] array];
    v6 = [(MFConversationViewCellAccessibility *)self _accessibilityIndexPath];
    v7 = [v4 safeValueForKey:@"swipeController"];
    v13 = MEMORY[0x29EDCA5F8];
    v14 = v4;
    v15 = v7;
    v16 = v6;
    v17 = v5;
    v8 = v5;
    v9 = v6;
    v10 = v7;
    AXPerformSafeBlock();
    v11 = [v8 axFilterObjectsUsingBlock:{&__block_literal_global_377, v13, 3221225472, __69__MFConversationViewCellAccessibility__accessibilityMailSwipeActions__block_invoke, &unk_29F2D4148}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __69__MFConversationViewCellAccessibility__accessibilityMailSwipeActions__block_invoke(uint64_t a1)
{
  v22 = 0;
  objc_opt_class();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  AXPerformSafeBlock();
  v2 = v17[5];

  _Block_object_dispose(&v16, 8);
  v3 = __UIAccessibilityCastAsClass();

  if (v22 == 1)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 56);
  v5 = [v3 actions];
  [v4 axSafelyAddObjectsFromArray:v5];

  v22 = 0;
  objc_opt_class();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  AXPerformSafeBlock();
  v6 = v17[5];

  _Block_object_dispose(&v16, 8);
  v7 = __UIAccessibilityCastAsClass();

  if (v22 == 1)
  {
LABEL_4:
    abort();
  }

  v8 = *(a1 + 56);
  v9 = [v7 actions];
  [v8 axSafelyAddObjectsFromArray:v9];
}

uint64_t __69__MFConversationViewCellAccessibility__accessibilityMailSwipeActions__block_invoke_374(uint64_t a1)
{
  v2 = [*(a1 + 32) swipeActionController:*(a1 + 40) trailingSwipeConfigurationForItemAtIndexPath:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __69__MFConversationViewCellAccessibility__accessibilityMailSwipeActions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) swipeActionController:*(a1 + 40) leadingSwipeConfigurationForItemAtIndexPath:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

BOOL __69__MFConversationViewCellAccessibility__accessibilityMailSwipeActions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 title];
  v3 = v2 != 0;

  return v3;
}

- (void)_accessibilityPerformMailSwipeAction:(id)a3
{
  v4 = a3;
  v5 = [(MFConversationViewCellAccessibility *)self _accessibilityMailSwipeActions];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __76__MFConversationViewCellAccessibility__accessibilityPerformMailSwipeAction___block_invoke;
  v7[3] = &unk_29F2D4100;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __76__MFConversationViewCellAccessibility__accessibilityPerformMailSwipeAction___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 title];
  v8 = [*(a1 + 32) name];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = v6;
    v11 = *(a1 + 40);
    AXPerformSafeBlock();
    *a4 = 1;
  }
}

uint64_t __76__MFConversationViewCellAccessibility__accessibilityPerformMailSwipeAction___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) executePreHandlerWithView:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 executeHandlerWithView:v3 completionHandler:0];
}

@end