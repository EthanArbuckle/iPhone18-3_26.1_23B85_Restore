@interface ReadingListTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityDeleteReadingListItem;
- (id)_privateAccessibilityCustomActions;
@end

@implementation ReadingListTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ReadingListTableViewCell" hasInstanceMethod:@"siteName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ReadingListTableViewCell" hasInstanceMethod:@"previewText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ReadingListViewController" hasInstanceMethod:@"_readingListItemAtIndexPathDelete:" withFullSignature:{"v", "@", 0}];
}

- (id)_privateAccessibilityCustomActions
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = accessibilityLocalizedString(@"delete");
  v5 = [v3 initWithName:v4 target:self selector:sel__accessibilityDeleteReadingListItem];

  [v5 setSortPriority:*MEMORY[0x29EDC72F8]];
  v6 = _UIAccessibilityCustomActionDeleteImage();
  [v5 setImage:v6];

  v10[0] = v5;
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (BOOL)_accessibilityDeleteReadingListItem
{
  v2 = [(ReadingListTableViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  dataSource = [v2 dataSource];
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    v6 = dataSource;
    AXPerformSafeBlock();
  }

  return v4 & 1;
}

void __76__ReadingListTableViewCellAccessibility__accessibilityDeleteReadingListItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _accessibilityIndexPath];
  [v1 _readingListItemAtIndexPathDelete:v2];
}

@end