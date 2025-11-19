@interface _UIPreviewActionSheetViewAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation _UIPreviewActionSheetViewAccessibility

- (BOOL)accessibilityPerformEscape
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 postNotificationName:@"accessibilityDismissActionSheet" object:0];
  MEMORY[0x29EDC9740](v3);
  return 1;
}

@end