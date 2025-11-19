@interface MailActionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MailActionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MailActionCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"MailActionCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailActionCell" hasInstanceMethod:@"cardAction" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailActionsViewController"];
  [v3 validateClass:@"MailActionsViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailActionsViewController" hasInstanceMethod:@"collectionViewDataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFCardAction" hasInstanceMethod:@"handlerEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MFCardAction" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MailActionCellAccessibility *)self safeValueForKey:@"cardAction"];
  v4 = [v3 safeStringForKey:@"title"];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(MailActionCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"titleLabel"];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(MailActionCellAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_6 startWithSelf:1];
  v4 = [v3 _accessibilityViewController];

  objc_opt_class();
  v5 = [v4 safeValueForKey:@"collectionViewDataSource"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [v4 safeValueForKey:@"collectionView"];
  v8 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  v10 = [v8 indexPathForCell:v9];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  v19 = MEMORY[0x29EDCA5F8];
  v20 = 3221225472;
  v21 = __50__MailActionCellAccessibility_accessibilityTraits__block_invoke_319;
  v22 = &unk_29F2D3FE8;
  v25 = &v26;
  v11 = v6;
  v23 = v11;
  v12 = v10;
  v24 = v12;
  AXPerformSafeBlock();
  v13 = v27[5];

  _Block_object_dispose(&v26, 8);
  v18.receiver = self;
  v18.super_class = MailActionCellAccessibility;
  v14 = [(MailActionCellAccessibility *)&v18 accessibilityTraits];
  v15 = [v13 safeBoolForKey:@"handlerEnabled"];

  if (v15)
  {
    v16 = *MEMORY[0x29EDC7F70] | v14;
  }

  else
  {
    v16 = v14 & ~*MEMORY[0x29EDC7FC0];
  }

  return v16;
}

uint64_t __50__MailActionCellAccessibility_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Mailactionsvie_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __50__MailActionCellAccessibility_accessibilityTraits__block_invoke_319(uint64_t a1)
{
  v2 = [*(a1 + 32) itemIdentifierForIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end