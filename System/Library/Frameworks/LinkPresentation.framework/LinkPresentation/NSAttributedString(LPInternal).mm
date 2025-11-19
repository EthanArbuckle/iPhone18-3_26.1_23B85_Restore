@interface NSAttributedString(LPInternal)
- (uint64_t)_lp_stringType;
- (void)_lp_setStringType:()LPInternal;
@end

@implementation NSAttributedString(LPInternal)

- (uint64_t)_lp_stringType
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_lp_setStringType:()LPInternal
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, sel__lp_stringType, v2, 1);
}

@end