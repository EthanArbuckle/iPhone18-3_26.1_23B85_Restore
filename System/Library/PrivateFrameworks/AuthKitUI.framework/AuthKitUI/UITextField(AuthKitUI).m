@interface UITextField(AuthKitUI)
- (id)ak_addActivityIndicator;
- (id)ak_addForgotButtonWithTarget:()AuthKitUI action:;
- (void)ak_clearActivityIndicatorIfExist;
@end

@implementation UITextField(AuthKitUI)

- (id)ak_addForgotButtonWithTarget:()AuthKitUI action:
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7[1] = a4;
  v7[0] = [MEMORY[0x277D75220] ak_passwordRecoveryButton];
  [v7[0] addTarget:location[0] action:a4 forControlEvents:64];
  [v9 setRightView:v7[0]];
  [v9 setRightViewMode:3];
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)ak_addActivityIndicator
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v4[0] startAnimating];
  [v5 setRightView:v4[0]];
  [v5 setRightViewMode:3];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)ak_clearActivityIndicatorIfExist
{
  v6 = a1;
  location[1] = a2;
  v3 = objc_opt_class();
  v4 = [v6 rightView];
  location[0] = _AKSafeCast_3(v3, v4);
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (location[0])
  {
    [location[0] stopAnimating];
    [v6 setRightView:0];
    [v6 setRightViewMode:0];
  }

  objc_storeStrong(location, 0);
}

@end