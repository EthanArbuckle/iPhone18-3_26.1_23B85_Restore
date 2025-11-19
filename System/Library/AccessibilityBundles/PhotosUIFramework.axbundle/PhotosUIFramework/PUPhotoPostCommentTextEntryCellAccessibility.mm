@interface PUPhotoPostCommentTextEntryCellAccessibility
- (id)accessibilityElements;
@end

@implementation PUPhotoPostCommentTextEntryCellAccessibility

- (id)accessibilityElements
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(PUPhotoPostCommentTextEntryCellAccessibility *)self safeValueForKey:@"textEntryView"];
  NSClassFromString(&cfstr_Puphotocomment.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 safeValueForKey:@"textView"];
    v6 = [v4 safeValueForKey:@"postButton"];
    [v5 setAccessibilityContainer:self];
    [v6 setAccessibilityContainer:self];
    [v3 axSafelyAddObject:v5];
    [v3 axSafelyAddObject:v6];
  }

  return v3;
}

@end