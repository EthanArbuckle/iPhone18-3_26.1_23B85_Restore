@interface PKPencilInteraction
+ (PKPencilInteraction)fallbackPencilInteraction;
+ (PKPencilInteraction)observerPencilInteraction;
@end

@implementation PKPencilInteraction

+ (PKPencilInteraction)fallbackPencilInteraction
{
  objc_opt_self();
  v0 = [PKPencilInteraction alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = PKPencilInteraction;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_dispatchBehavior = 1;
      v0->_wantsDoubleTap = 1;
    }
  }

  return v0;
}

+ (PKPencilInteraction)observerPencilInteraction
{
  objc_opt_self();
  v0 = [PKPencilInteraction alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = PKPencilInteraction;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_dispatchBehavior = 2;
      v0->_wantsDoubleTap = 1;
    }
  }

  return v0;
}

@end