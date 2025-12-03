@interface AMSUIBundleViewController
+ (AMSBagKeySet)bagKeySet;
- (AMSUIBundleViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag;
@end

@implementation AMSUIBundleViewController

- (AMSUIBundleViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag
{
  accountCopy = account;
  bagCopy = bag;
  v10 = [bagCopy URLForKey:@"bundleDynamicUIUrl"];
  v13.receiver = self;
  v13.super_class = AMSUIBundleViewController;
  v11 = [(AMSUIDynamicViewController *)&v13 initWithBag:bagCopy bagValue:v10];

  if (v11)
  {
    [(AMSUIBundleViewController *)v11 setAccount:accountCopy];
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