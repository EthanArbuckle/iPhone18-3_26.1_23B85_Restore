@interface CNAccountsAndGroupsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsEditing;
- (BOOL)_axIsPlaceholderCell;
- (BOOL)isAccessibilityElement;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)beginEditingName;
@end

@implementation CNAccountsAndGroupsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNAccountsAndGroupsCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAccountsAndGroupsCell" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAccountsAndGroupsCell" hasInstanceMethod:@"titleTextView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAccountsAndGroupsCell" hasInstanceMethod:@"beginEditingName" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CNAccountsAndGroupsItem" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAccountsAndGroupsItem" hasInstanceMethod:@"contactCountString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAccountsAndGroupsItem" hasInstanceMethod:@"identifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAccountsAndGroupsViewController" hasInstanceMethod:@"isCollectionViewEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CNAccountsAndGroupsViewController" hasInstanceMethod:@"actionsProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAccountsAndGroupsActionsProvider" hasInstanceMethod:@"actionsForItem:cell:" withFullSignature:{"@", "@", "@", 0}];
}

- (id)accessibilityValue
{
  if ([(CNAccountsAndGroupsCellAccessibility *)self _axIsPlaceholderCell]|| [(CNAccountsAndGroupsCellAccessibility *)self _axIsEditing])
  {
    _accessibilityTextViewTextOperationResponder = [(CNAccountsAndGroupsCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
    accessibilityValue = [_accessibilityTextViewTextOperationResponder accessibilityValue];
  }

  else
  {
    _accessibilityTextViewTextOperationResponder = [(CNAccountsAndGroupsCellAccessibility *)self _accessibilitySafeItem];
    v5 = [_accessibilityTextViewTextOperationResponder safeValueForKey:@"contactCountString"];
    integerValue = [v5 integerValue];

    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"lists.contacts.count");
    accessibilityValue = [v7 localizedStringWithFormat:v8, integerValue];
  }

  return accessibilityValue;
}

- (BOOL)isAccessibilityElement
{
  if ([(CNAccountsAndGroupsCellAccessibility *)self _axIsEditing])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    _accessibilitySafeDelegate = [(CNAccountsAndGroupsCellAccessibility *)self _accessibilitySafeDelegate];
    v3 = [_accessibilitySafeDelegate safeBoolForKey:@"isCollectionViewEditing"] ^ 1;
  }

  return v3;
}

- (BOOL)_axIsEditing
{
  objc_opt_class();
  v3 = [(CNAccountsAndGroupsCellAccessibility *)self safeValueForKey:@"titleTextView"];
  v4 = __UIAccessibilityCastAsClass();

  isEditing = [v4 isEditing];
  return isEditing;
}

- (BOOL)_axIsPlaceholderCell
{
  _accessibilitySafeItem = [(CNAccountsAndGroupsCellAccessibility *)self _accessibilitySafeItem];
  v3 = [_accessibilitySafeItem safeValueForKey:@"identifier"];
  v4 = [v3 isEqualToString:@"groupPlaceholderIdentifier"];

  return v4;
}

- (id)accessibilityLabel
{
  if ([(CNAccountsAndGroupsCellAccessibility *)self _axIsPlaceholderCell])
  {
    v3 = @"list.name";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  if ([(CNAccountsAndGroupsCellAccessibility *)self _axIsEditing])
  {
    v3 = @"contact.name.for.editing";
    goto LABEL_5;
  }

  _accessibilitySafeItem = [(CNAccountsAndGroupsCellAccessibility *)self _accessibilitySafeItem];
  v4 = [_accessibilitySafeItem safeValueForKey:@"name"];

LABEL_7:

  return v4;
}

- (unint64_t)accessibilityTraits
{
  if (![(CNAccountsAndGroupsCellAccessibility *)self _axIsPlaceholderCell]&& ![(CNAccountsAndGroupsCellAccessibility *)self _axIsEditing])
  {
    return *MEMORY[0x29EDC7F70];
  }

  _accessibilityTextViewTextOperationResponder = [(CNAccountsAndGroupsCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [_accessibilityTextViewTextOperationResponder accessibilityTraits];

  _AXTraitsRemoveTrait();

  return _AXTraitsRemoveTrait();
}

- (void)beginEditingName
{
  v7.receiver = self;
  v7.super_class = CNAccountsAndGroupsCellAccessibility;
  [(CNAccountsAndGroupsCellAccessibility *)&v7 beginEditingName];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = accessibilityLocalizedString(@"editing.contact.format");
  accessibilityValue = [(CNAccountsAndGroupsCellAccessibility *)self accessibilityValue];
  v6 = AXCFormattedString();
  UIAccessibilityPostNotification(v3, v6);
}

- (id)accessibilityCustomActions
{
  if ([(CNAccountsAndGroupsCellAccessibility *)self _axIsEditing])
  {
    v3 = 0;
  }

  else
  {
    _accessibilitySafeDelegate = [(CNAccountsAndGroupsCellAccessibility *)self _accessibilitySafeDelegate];
    v5 = [_accessibilitySafeDelegate safeValueForKey:@"actionsProvider"];

    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__0;
    v13 = __Block_byref_object_dispose__0;
    v14 = 0;
    v8 = v5;
    AXPerformSafeBlock();
    v6 = v10[5];

    _Block_object_dispose(&v9, 8);
    v3 = [v6 ax_mappedArrayUsingBlock:&__block_literal_global_1];
  }

  return v3;
}

void __66__CNAccountsAndGroupsCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) _accessibilitySafeItem];
  v3 = [v2 actionsForItem:v6 cell:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __66__CNAccountsAndGroupsCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = [v2 title];
  v5 = [v2 image];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __66__CNAccountsAndGroupsCellAccessibility_accessibilityCustomActions__block_invoke_3;
  v9[3] = &unk_29F2B5B88;
  v10 = v2;
  v6 = v2;
  v7 = [v3 initWithName:v4 image:v5 actionHandler:v9];

  return v7;
}

uint64_t __66__CNAccountsAndGroupsCellAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();

  return 1;
}

@end