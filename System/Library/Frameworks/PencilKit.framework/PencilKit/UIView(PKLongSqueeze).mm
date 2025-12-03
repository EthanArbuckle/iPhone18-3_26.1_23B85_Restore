@interface UIView(PKLongSqueeze)
- (void)_set_pk_longSqueezeAction:()PKLongSqueeze;
@end

@implementation UIView(PKLongSqueeze)

- (void)_set_pk_longSqueezeAction:()PKLongSqueeze
{
  v4 = _Block_copy(aBlock);
  objc_setAssociatedObject(self, &kUIViewPKLongSqueezeActionKey, v4, 3);
}

@end