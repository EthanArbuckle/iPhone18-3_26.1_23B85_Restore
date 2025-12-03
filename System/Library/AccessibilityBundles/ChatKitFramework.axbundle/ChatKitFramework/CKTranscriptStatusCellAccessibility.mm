@interface CKTranscriptStatusCellAccessibility
+ (id)statusButton;
@end

@implementation CKTranscriptStatusCellAccessibility

+ (id)statusButton
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CKTranscriptStatusCellAccessibility;
  v2 = objc_msgSendSuper2(&v4, sel_statusButton);
  [v2 accessibilitySetIdentification:@"CKTranscriptStatusButton"];

  return v2;
}

@end