@interface UIApplication
@end

@implementation UIApplication

uint64_t __69__UIApplication_AVAdditions__avkit_windowSceneWithSessionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 persistentIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL __62__UIApplication_AVAdditions__avkit_possiblePrimaryWindowScene__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (![v2 activationState] || objc_msgSend(v2, "activationState") == 1))
  {
    v3 = [v2 screen];
    v4 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end