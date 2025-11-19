@interface PXComposeRecipientTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (unint64_t)accessibilityTraits;
- (void)selectCheckbox;
- (void)unselectCheckbox;
@end

@implementation PXComposeRecipientTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXComposeRecipientTableViewCell" hasInstanceVariable:@"_cellModel" withType:"PXComposeRecipientTableCellModel"];
  [v3 validateClass:@"PXComposeRecipientTableCellModel" hasInstanceMethod:@"showsCheckbox" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXComposeRecipientTableCellModel" hasInstanceMethod:@"checked" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXComposeRecipientTableViewCell" hasInstanceMethod:@"_updateAccessoryImageView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PXComposeRecipientTableViewCell" isKindOfClass:@"UITableViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = PXComposeRecipientTableViewCellAccessibility;
  v3 = [(PXComposeRecipientTableViewCellAccessibility *)&v6 accessibilityTraits];
  v4 = [(PXComposeRecipientTableViewCellAccessibility *)self safeValueForKey:@"_cellModel"];
  if ([v4 safeBoolForKey:@"showsCheckbox"] && objc_msgSend(v4, "safeBoolForKey:", @"checked"))
  {
    v3 |= *MEMORY[0x29EDC7FC0];
  }

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(PXComposeRecipientTableViewCellAccessibility *)self safeValueForKey:@"_cellModel"];
  if ([v4 safeBoolForKey:@"showsCheckbox"])
  {
    v5 = [v4 safeBoolForKey:@"checked"];
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    if (v5)
    {
      v7 = @"unselect";
    }

    else
    {
      v7 = @"select";
    }

    if (v5)
    {
      v8 = &selRef_unselectCheckbox;
    }

    else
    {
      v8 = &selRef_selectCheckbox;
    }

    v9 = accessibilityPhotosUICoreLocalizedString(v7);
    v10 = [v6 initWithName:v9 target:self selector:*v8];

    [v3 addObject:v10];
    [(PXComposeRecipientTableViewCellAccessibility *)self _updateAccessoryImageView];
  }

  return v3;
}

- (void)selectCheckbox
{
  v3 = [(PXComposeRecipientTableViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 indexPathForCell:self];
    [v6 contentOffset];
    [v6 selectRowAtIndexPath:v4 animated:1 scrollPosition:v5];

    v3 = v6;
  }
}

- (void)unselectCheckbox
{
  v3 = [(PXComposeRecipientTableViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 indexPathForCell:self];
    [v5 deselectRowAtIndexPath:v4 animated:1];

    v3 = v5;
  }
}

@end