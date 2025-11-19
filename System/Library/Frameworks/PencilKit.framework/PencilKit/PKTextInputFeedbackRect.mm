@interface PKTextInputFeedbackRect
+ (PKTextInputFeedbackRect)rectWithFrame:(CGFloat)a3;
- (CGRect)rect;
@end

@implementation PKTextInputFeedbackRect

+ (PKTextInputFeedbackRect)rectWithFrame:(CGFloat)a3
{
  objc_opt_self();
  v8 = objc_alloc_init(PKTextInputFeedbackRect);
  v8->_rect.origin.x = a1;
  v8->_rect.origin.y = a2;
  v8->_rect.size.width = a3;
  v8->_rect.size.height = a4;

  return v8;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end