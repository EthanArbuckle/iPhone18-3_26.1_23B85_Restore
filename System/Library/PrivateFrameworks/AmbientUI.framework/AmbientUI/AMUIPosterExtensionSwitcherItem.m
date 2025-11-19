@interface AMUIPosterExtensionSwitcherItem
+ (id)itemWithProviderBundleIdentifier:(void *)a3 configurations:(void *)a4 posterCategoryViewControllerDelegate:(void *)a5 dateProvider:;
- (AMUIPosterExtensionSwitcherItem)initWithProviderBundleIdentifier:(id)a3 configurations:(id)a4 posterCategoryViewControllerDelegate:(id)a5 dateProvider:(id)a6;
- (NSObject)identifier;
- (UIView)itemView;
- (id)posterCategoryViewController;
- (uint64_t)configurations;
- (uint64_t)dateProvider;
- (uint64_t)setConfigurations:(uint64_t)result;
- (void)dealloc;
- (void)invalidate;
- (void)setDateProvider:(uint64_t)a1;
- (void)switcherItemDidAppear:(id)a3;
- (void)switcherItemDidDisappear:(id)a3;
- (void)switcherItemWillAppear:(id)a3;
- (void)switcherItemWillDisappear:(id)a3;
@end

@implementation AMUIPosterExtensionSwitcherItem

+ (id)itemWithProviderBundleIdentifier:(void *)a3 configurations:(void *)a4 posterCategoryViewControllerDelegate:(void *)a5 dateProvider:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [objc_alloc(objc_opt_self()) initWithProviderBundleIdentifier:v11 configurations:v10 posterCategoryViewControllerDelegate:v9 dateProvider:v8];

  return v12;
}

- (AMUIPosterExtensionSwitcherItem)initWithProviderBundleIdentifier:(id)a3 configurations:(id)a4 posterCategoryViewControllerDelegate:(id)a5 dateProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = AMUIPosterExtensionSwitcherItem;
  v14 = [(AMUIPosterExtensionSwitcherItem *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    providerBundleIdentifier = v14->_providerBundleIdentifier;
    v14->_providerBundleIdentifier = v15;

    v17 = [v11 copy];
    configurations = v14->_configurations;
    v14->_configurations = v17;

    objc_storeWeak(&v14->_posterCategoryViewControllerDelegate, v12);
    objc_storeStrong(&v14->_dateProvider, a6);
  }

  return v14;
}

- (void)dealloc
{
  [(AMUIPosterExtensionSwitcherItem *)self invalidate];
  v3.receiver = self;
  v3.super_class = AMUIPosterExtensionSwitcherItem;
  [(AMUIPosterExtensionSwitcherItem *)&v3 dealloc];
}

- (void)invalidate
{
  [(AMUIPosterCategoryViewController *)self->_posterCategoryViewController invalidate];
  posterCategoryViewController = self->_posterCategoryViewController;
  self->_posterCategoryViewController = 0;
}

- (void)switcherItemWillAppear:(id)a3
{
  v4 = a3;
  v7 = [(AMUIPosterExtensionSwitcherItem *)self itemView];
  v5 = [v4 traitCollection];

  [v5 displayCornerRadius];
  [v7 _setContinuousCornerRadius:?];

  v6 = [(AMUIPosterExtensionSwitcherItem *)self itemView];
  [v6 setClipsToBounds:1];
}

- (void)switcherItemDidAppear:(id)a3
{
  v3 = [(AMUIPosterExtensionSwitcherItem *)self itemView];
  [v3 setClipsToBounds:0];
}

- (void)switcherItemWillDisappear:(id)a3
{
  v3 = [(AMUIPosterExtensionSwitcherItem *)self itemView];
  [v3 setClipsToBounds:1];
}

- (void)switcherItemDidDisappear:(id)a3
{
  v3 = [(AMUIPosterExtensionSwitcherItem *)self itemView];
  [v3 setClipsToBounds:0];
}

- (uint64_t)setConfigurations:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = [a2 copy];
    v4 = *(v2 + 16);
    *(v2 + 16) = v3;

    v5 = *(v2 + 8);
    v6 = *(v2 + 16);

    return [v5 setConfigurations:v6];
  }

  return result;
}

- (id)posterCategoryViewController
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (!v3)
    {
      v4 = objc_alloc_init(AMUIPosterCategoryViewController);
      v5 = v2[1];
      v2[1] = v4;

      [v2[1] setConfigurations:v2[2]];
      v6 = v2[1];
      WeakRetained = objc_loadWeakRetained(v2 + 5);
      [v6 setDelegate:WeakRetained];

      [v2[1] setDateProvider:v2[3]];
      v3 = v2[1];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)setDateProvider:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
    [*(a1 + 8) setDateProvider:*(a1 + 24)];
  }
}

- (uint64_t)configurations
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (NSObject)identifier
{
  if (self)
  {
    self = self->_providerBundleIdentifier;
  }

  return self;
}

- (UIView)itemView
{
  v2 = [(AMUIPosterExtensionSwitcherItem *)&self->super.isa posterCategoryViewController];
  v3 = [v2 view];

  v4 = [v3 layer];
  [v4 setAllowsGroupOpacity:1];

  return v3;
}

- (uint64_t)dateProvider
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

@end