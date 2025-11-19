@interface UITextView(LPExtras)
+ (LPInertTextView)_lp_createInertTextView;
@end

@implementation UITextView(LPExtras)

+ (LPInertTextView)_lp_createInertTextView
{
  v0 = objc_alloc_init(LPInertTextView);

  return v0;
}

@end