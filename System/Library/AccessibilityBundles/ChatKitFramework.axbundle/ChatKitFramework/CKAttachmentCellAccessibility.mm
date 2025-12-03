@interface CKAttachmentCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CKAttachmentCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKAttachmentCellAccessibility *)self safeValueForKey:@"representedObject"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end