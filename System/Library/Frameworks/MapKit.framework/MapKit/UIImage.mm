@interface UIImage
@end

@implementation UIImage

uint64_t __60__UIImage_MapKitExtras___mapkit_templateImageWithTintColor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFill];
  UIRectFill(*(a1 + 48));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);

  return [v2 drawInRect:22 blendMode:v3 alpha:{v4, v5, v6, 1.0}];
}

@end