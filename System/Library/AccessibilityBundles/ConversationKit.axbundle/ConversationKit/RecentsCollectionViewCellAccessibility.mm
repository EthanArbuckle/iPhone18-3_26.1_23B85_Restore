@interface RecentsCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation RecentsCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.RecentsCollectionViewCell" isKindOfClass:@"UICollectionViewListCell"];
  [validationsCopy validateClass:@"ConversationKit.RecentsCollectionViewCell" hasInstanceMethod:@"trailingAccessoryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.RecentsCollectionViewCell" hasSwiftField:@"listItemViewHelper" withSwiftType:"Optional<RecentsListItemViewHelper>"];
  [validationsCopy validateClass:@"TelephonyUI.RecentsListItemViewHelper" hasSwiftField:@"messageIndicatorView" withSwiftType:"Optional<MessageIndicatorView>"];
  [validationsCopy validateClass:@"TelephonyUI.MessageIndicatorView" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"TelephonyUI.MessageIndicatorView" hasInstanceMethod:@"handleTapGesture" withFullSignature:{"v", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(RecentsCollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_0];
  v3 = MEMORY[0x29C2D2950]();

  return v3;
}

BOOL __60__RecentsCollectionViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = 0;
  }

  else
  {
    v2 = [v4 accessibilityIdentifier];
    if ([v2 isEqualToString:@"TelephonyUI.MessageIndicatorView.sensitive"])
    {
      v6 = 0;
    }

    else
    {
      v3 = [v4 accessibilityIdentifier];
      if (([v3 isEqualToString:@"TelephonyUI.MessageIndicatorView.unread"] & 1) == 0)
      {

        v8 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v6 = 1;
    }
  }

  v7 = [v4 accessibilityLabel];
  v8 = [v7 length] != 0;

  if (v6)
  {
  }

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = RecentsCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(RecentsCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v31 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = v4;
  accessories = [v4 accessories];
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 3221225472;
  v29[2] = __68__RecentsCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
  v29[3] = &unk_29F2B7BF0;
  v7 = array;
  v30 = v7;
  [accessories enumerateObjectsUsingBlock:v29];

  v31 = 0;
  objc_opt_class();
  v8 = [(RecentsCollectionViewCellAccessibility *)self safeValueForKey:@"trailingAccessoryView"];
  v9 = __UIAccessibilityCastAsClass();

  if (v31 == 1)
  {
    abort();
  }

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel = [v9 accessibilityLabel];
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = __68__RecentsCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_3;
    v27[3] = &unk_29F2B7BC8;
    v28 = v9;
    v12 = [v10 initWithName:accessibilityLabel actionHandler:v27];

    [v7 addObject:v12];
  }

  v13 = [(RecentsCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"listItemViewHelper"];
  v14 = [v13 safeSwiftValueForKey:@"messageIndicatorView"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 safeSwiftValueForKey:@"titleLabel"];
    accessibilityLabel2 = [v16 accessibilityLabel];

    v18 = objc_alloc(MEMORY[0x29EDC78E0]);
    v19 = MEMORY[0x29EDBA0F8];
    v20 = accessibilityLocalizedString(@"play.message");
    v21 = [v19 stringWithFormat:v20, accessibilityLabel2];
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = __68__RecentsCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_4;
    v25[3] = &unk_29F2B7BC8;
    v26 = v15;
    v22 = [v18 initWithName:v21 actionHandler:v25];

    [v7 addObject:v22];
  }

  v23 = v7;

  return v7;
}

void __68__RecentsCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v15 = 0;
  objc_opt_class();
  v5 = [v4 customView];
  v6 = __UIAccessibilityCastAsClass();

  if (v6)
  {
    [v6 setIsAccessibilityElement:0];
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = [v6 accessibilityLabel];
    v10 = MEMORY[0x29EDCA5F8];
    v11 = 3221225472;
    v12 = __68__RecentsCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_2;
    v13 = &unk_29F2B7BC8;
    v14 = v6;
    v9 = [v7 initWithName:v8 actionHandler:&v10];

    [*(a1 + 32) addObject:{v9, v10, v11, v12, v13}];
  }
}

uint64_t __68__RecentsCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();

  return 1;
}

@end