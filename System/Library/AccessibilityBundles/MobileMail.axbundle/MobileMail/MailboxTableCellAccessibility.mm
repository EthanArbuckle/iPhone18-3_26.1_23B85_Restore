@interface MailboxTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityMailboxUsesUnreadCount;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_accessibilityScannerActivateBehavior;
- (unint64_t)accessibilityTraits;
- (void)_setUnreadCount:(unint64_t)count;
- (void)setDetailsDisclosureButton:(id)button;
@end

@implementation MailboxTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MailboxTableCell" hasInstanceMethod:@"_setUnreadCount:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MailboxTableCell" hasInstanceMethod:@"isExpandable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MailboxTableCell" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MailboxPickerOutlineController" hasInstanceMethod:@"scene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailMainScene" hasInstanceMethod:@"splitViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIDimmingView"];
  [validationsCopy validateClass:@"MailSplitViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MailboxTableCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"MailboxPickerOutlineController" hasInstanceMethod:@"favoritesManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailboxPickerOutlineController" hasInstanceMethod:@"collectionHelper" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailboxPickerOutlineController"];
  [validationsCopy validateClass:@"FavoriteItem" hasInstanceMethod:@"representingMailbox" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailboxPickerCollectionHelper" hasInstanceMethod:@"favoriteItemAtIndexPath:" withFullSignature:{"@", "@", 0}];
}

- (void)setDetailsDisclosureButton:(id)button
{
  v9.receiver = self;
  v9.super_class = MailboxTableCellAccessibility;
  buttonCopy = button;
  [(MailboxTableCellAccessibility *)&v9 setDetailsDisclosureButton:buttonCopy];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"more.info.for.mail.cell");
  accessibilityLabel = [(MailboxTableCellAccessibility *)self accessibilityLabel];
  v8 = [v5 stringWithFormat:v6, accessibilityLabel];
  [buttonCopy setAccessibilityLabel:v8];
}

- (void)_setUnreadCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = MailboxTableCellAccessibility;
  [(MailboxTableCellAccessibility *)&v5 _setUnreadCount:count];
  v4 = [(MailboxTableCellAccessibility *)self safeValueForKey:@"_accessibilityClearChildren"];
}

- (BOOL)_accessibilityMailboxUsesUnreadCount
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  AXPerformSafeBlock();
  type = [v7[5] type];
  v3 = 0;
  if ((type - 5) >= 2 && (type - 105) >= 2)
  {
    v4 = v13[5];
    NSClassFromString(&cfstr_FavoriteitemSh.isa);
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
  return v3 & 1;
}

void __69__MailboxTableCellAccessibility__accessibilityMailboxUsesUnreadCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  if (v2)
  {
    v3 = [*(a1 + 32) _accessibilityFindAncestor:&__block_literal_global_8 startWithSelf:1];
    v4 = [v3 _accessibilityViewController];

    v5 = [v2 indexPathForCell:*(a1 + 32)];
    v6 = [v4 safeValueForKey:@"collectionHelper"];
    v7 = [v6 favoriteItemAtIndexPath:v5];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    objc_opt_class();
    v10 = [*(*(*(a1 + 40) + 8) + 40) safeValueForKey:@"representingMailbox"];
    v11 = __UIAccessibilityCastAsClass();

    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

uint64_t __69__MailboxTableCellAccessibility__accessibilityMailboxUsesUnreadCount__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Mailboxpickero_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  v3 = [(MailboxTableCellAccessibility *)self safeValueForKey:@"_textLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(MailboxTableCellAccessibility *)self safeValueForKey:@"_detailTextLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(MailboxTableCellAccessibility *)self safeValueForKey:@"_unreadCountLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  integerValue = [accessibilityLabel integerValue];

  _accessibilityMailboxUsesUnreadCount = [(MailboxTableCellAccessibility *)self _accessibilityMailboxUsesUnreadCount];
  if (integerValue < 1)
  {
    v10 = 0;
  }

  else
  {
    v7 = MEMORY[0x29EDBA0F8];
    if (_accessibilityMailboxUsesUnreadCount)
    {
      v8 = @"unread.count";
    }

    else
    {
      v8 = @"num.messages";
    }

    v9 = accessibilityLocalizedString(v8);
    v10 = [v7 localizedStringWithFormat:v9, integerValue];
  }

  if ([(MailboxTableCellAccessibility *)self safeBoolForKey:@"isExpandable"])
  {
    if ([(MailboxTableCellAccessibility *)self safeBoolForKey:@"isExpanded"])
    {
      v11 = @"mailbox.cell.expanded";
    }

    else
    {
      v11 = @"mailbox.cell.collapsed";
    }

    v12 = accessibilityLocalizedString(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = __UIAXStringForVariables();

  return v13;
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = MailboxTableCellAccessibility;
  accessibilityTraits = [(MailboxTableCellAccessibility *)&v10 accessibilityTraits];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  tintAdjustmentMode = [v4 tintAdjustmentMode];
  v6 = *MEMORY[0x29EDC7FA8];
  if (tintAdjustmentMode != 2)
  {
    v6 = 0;
  }

  v7 = v6 | accessibilityTraits;
  if ([v4 isSelected] && objc_msgSend(v4, "isEditing"))
  {
    v7 |= *MEMORY[0x29EDC7FC0];
  }

  if ([(MailboxTableCellAccessibility *)self safeBoolForKey:@"isExpandable"])
  {
    v8 = *MEMORY[0x29EDC7F80];
  }

  else
  {
    v8 = 0;
  }

  return v8 | v7;
}

- (int64_t)_accessibilityScannerActivateBehavior
{
  if (([(MailboxTableCellAccessibility *)self isEditing]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = MailboxTableCellAccessibility;
  return [(MailboxTableCellAccessibility *)&v4 _accessibilityScannerActivateBehavior];
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(MailboxTableCellAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_388 startWithSelf:1];
  _accessibilityViewController = [v2 _accessibilityViewController];

  objc_opt_class();
  v4 = [_accessibilityViewController safeValueForKeyPath:@"scene.splitViewController"];
  v5 = __UIAccessibilityCastAsClass();

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  view = [v5 view];
  subviews = [view subviews];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __59__MailboxTableCellAccessibility_accessibilityPerformEscape__block_invoke_2;
  v9[3] = &unk_29F2D4238;
  v9[4] = &v10;
  [subviews enumerateObjectsUsingBlock:v9];

  LOBYTE(view) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return view;
}

uint64_t __59__MailboxTableCellAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Mailboxpickero_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __59__MailboxTableCellAccessibility_accessibilityPerformEscape__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  NSClassFromString(&cfstr_Uidimmingview.isa);
  if (objc_opt_isKindOfClass())
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    [v6 accessibilityActivate];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

@end