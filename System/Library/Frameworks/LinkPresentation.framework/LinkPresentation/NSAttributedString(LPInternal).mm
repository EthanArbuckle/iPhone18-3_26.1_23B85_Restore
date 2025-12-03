@interface NSAttributedString(LPInternal)
- (uint64_t)_lp_stringType;
- (void)_lp_setStringType:()LPInternal;
@end

@implementation NSAttributedString(LPInternal)

- (uint64_t)_lp_stringType
{
  v2 = objc_getAssociatedObject(self, a2);
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)_lp_setStringType:()LPInternal
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, sel__lp_stringType, v2, 1);
}

@end