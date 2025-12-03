@interface CKAttachmentSearchResultCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKAttachmentSearchResultCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKAttachmentSearchResultCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKAttachmentSearchResultCell" hasInstanceMethod:@"dateLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axContact = [(CKAttachmentSearchResultCellAccessibility *)self _axContact];
  v4 = AXCKLocalizedFromStringWithContact(_axContact);

  v5 = [(CKAttachmentSearchResultCellAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v5 accessibilityLabel];

  v7 = [(CKAttachmentSearchResultCellAccessibility *)self safeValueForKey:@"dateLabel"];
  accessibilityLabel2 = [v7 accessibilityLabel];

  v11 = accessibilityLocalizedString(@"search.item.attachment");
  v9 = __UIAXStringForVariables();

  return v9;
}

@end