@interface CKMentionsUtilitiesAccessibility
+ (BOOL)range:(_NSRange)a3 containsEmptySelectedRange:(_NSRange)a4;
@end

@implementation CKMentionsUtilitiesAccessibility

+ (BOOL)range:(_NSRange)a3 containsEmptySelectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3.length;
  v7 = a3.location;
  if (UIAccessibilityIsVoiceOverRunning() && !length && v6)
  {
    return 1;
  }

  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___CKMentionsUtilitiesAccessibility;
  return objc_msgSendSuper2(&v10, sel_range_containsEmptySelectedRange_, v7, v6, location, length);
}

@end