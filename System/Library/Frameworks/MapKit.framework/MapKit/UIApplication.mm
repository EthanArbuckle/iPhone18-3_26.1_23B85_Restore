@interface UIApplication
@end

@implementation UIApplication

BOOL __77__UIApplication_MKLookAroundExtras___mklookaround_possiblePrimaryWindowScene__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (![v2 activationState] || objc_msgSend(v2, "activationState") == 1))
  {
    v3 = [v2 screen];
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end