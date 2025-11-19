@interface UIView(AuthKitUI)
- (void)ak_addMagicPocketToScrollView:()AuthKitUI;
@end

@implementation UIView(AuthKitUI)

- (void)ak_addMagicPocketToScrollView:()AuthKitUI
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v3 = objc_alloc(MEMORY[0x277D76220]);
  v4 = [v3 initWithScrollView:location[0] edge:4 style:0];
  [v6 addInteraction:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

@end