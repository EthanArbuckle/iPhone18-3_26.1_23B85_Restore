@interface CKMentionsUtilitiesAccessibility
+ (BOOL)range:(_NSRange)range containsEmptySelectedRange:(_NSRange)selectedRange;
@end

@implementation CKMentionsUtilitiesAccessibility

+ (BOOL)range:(_NSRange)range containsEmptySelectedRange:(_NSRange)selectedRange
{
  length = selectedRange.length;
  location = selectedRange.location;
  v6 = range.length;
  v7 = range.location;
  if (UIAccessibilityIsVoiceOverRunning() && !length && v6)
  {
    return 1;
  }

  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___CKMentionsUtilitiesAccessibility;
  return objc_msgSendSuper2(&v10, sel_range_containsEmptySelectedRange_, v7, v6, location, length);
}

@end