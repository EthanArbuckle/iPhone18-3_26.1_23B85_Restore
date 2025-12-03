@interface UIImpactFeedbackGenerator(UIFeedbackGenerator_ASVFeedbackGenerator)
- (id)prepare;
@end

@implementation UIImpactFeedbackGenerator(UIFeedbackGenerator_ASVFeedbackGenerator)

- (id)prepare
{
  v2.receiver = self;
  v2.super_class = &off_285341588;
  return objc_msgSendSuper2(&v2, sel_prepare);
}

@end