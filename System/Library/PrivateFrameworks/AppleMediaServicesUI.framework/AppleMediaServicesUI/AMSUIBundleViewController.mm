@interface AMSUIBundleViewController
+ (AMSBagKeySet)bagKeySet;
- (AMSUIBundleViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6;
@end

@implementation AMSUIBundleViewController

- (AMSUIBundleViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [v9 URLForKey:@"bundleDynamicUIUrl"];
  v13.receiver = self;
  v13.super_class = AMSUIBundleViewController;
  v11 = [(AMSUIDynamicViewController *)&v13 initWithBag:v9 bagValue:v10];

  if (v11)
  {
    [(AMSUIBundleViewController *)v11 setAccount:v8];
  }

  return v11;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  [v2 addBagKey:@"bundleDynamicUIUrl" valueType:5 defaultValue:@"bundle"];
  v3 = +[AMSUIDynamicViewController bagKeySet];
  [v2 unionBagKeySet:v3];

  return v2;
}

@end