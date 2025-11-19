@interface CKAttachmentSearchResultCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CKAttachmentSearchResultCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKAttachmentSearchResultCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKAttachmentSearchResultCell" hasInstanceMethod:@"dateLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKAttachmentSearchResultCellAccessibility *)self _axContact];
  v4 = AXCKLocalizedFromStringWithContact(v3);

  v5 = [(CKAttachmentSearchResultCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [(CKAttachmentSearchResultCellAccessibility *)self safeValueForKey:@"dateLabel"];
  v8 = [v7 accessibilityLabel];

  v11 = accessibilityLocalizedString(@"search.item.attachment");
  v9 = __UIAXStringForVariables();

  return v9;
}

@end