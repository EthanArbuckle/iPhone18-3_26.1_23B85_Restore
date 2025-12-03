@interface _UIPreviewActionSheetViewAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation _UIPreviewActionSheetViewAccessibility

- (BOOL)accessibilityPerformEscape
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:@"accessibilityDismissActionSheet" object:0];
  MEMORY[0x29EDC9740](defaultCenter);
  return 1;
}

@end