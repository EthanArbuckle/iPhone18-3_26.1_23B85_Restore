@interface CKAttachmentCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CKAttachmentCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKAttachmentCellAccessibility *)self safeValueForKey:@"representedObject"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end