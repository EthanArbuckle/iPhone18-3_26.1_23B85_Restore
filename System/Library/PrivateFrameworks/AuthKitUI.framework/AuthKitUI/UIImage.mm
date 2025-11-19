@interface UIImage
@end

@implementation UIImage

void __42__UIImage_AuthKitUI__ak_copyScaledToSize___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  CGRectMake_1();
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = [MEMORY[0x277D75348] clearColor];
  [v8 setFill];
  MEMORY[0x277D82BD8](v8);
  [location[0] fillRect:{v10, v11, v12, v13}];
  [*(a1 + 32) drawInRect:{v10, v11, v12, v13}];
  objc_storeStrong(location, 0);
}

@end