@interface UIAlertController
@end

@implementation UIAlertController

uint64_t __68__UIAlertController_AppleAccountUI___handlerWithMultiActionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 style] == 1;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

@end