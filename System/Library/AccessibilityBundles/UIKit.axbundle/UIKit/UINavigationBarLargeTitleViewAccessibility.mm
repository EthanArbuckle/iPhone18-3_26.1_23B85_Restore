@interface UINavigationBarLargeTitleViewAccessibility
@end

@implementation UINavigationBarLargeTitleViewAccessibility

uint64_t __61___UINavigationBarLargeTitleViewAccessibility_layoutSubviews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

@end