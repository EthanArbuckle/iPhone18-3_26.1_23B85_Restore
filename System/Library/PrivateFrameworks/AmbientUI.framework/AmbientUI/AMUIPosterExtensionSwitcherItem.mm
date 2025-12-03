@interface AMUIPosterExtensionSwitcherItem
+ (id)itemWithProviderBundleIdentifier:(void *)identifier configurations:(void *)configurations posterCategoryViewControllerDelegate:(void *)delegate dateProvider:;
- (AMUIPosterExtensionSwitcherItem)initWithProviderBundleIdentifier:(id)identifier configurations:(id)configurations posterCategoryViewControllerDelegate:(id)delegate dateProvider:(id)provider;
- (NSObject)identifier;
- (UIView)itemView;
- (id)posterCategoryViewController;
- (uint64_t)configurations;
- (uint64_t)dateProvider;
- (uint64_t)setConfigurations:(uint64_t)result;
- (void)dealloc;
- (void)invalidate;
- (void)setDateProvider:(uint64_t)provider;
- (void)switcherItemDidAppear:(id)appear;
- (void)switcherItemDidDisappear:(id)disappear;
- (void)switcherItemWillAppear:(id)appear;
- (void)switcherItemWillDisappear:(id)disappear;
@end

@implementation AMUIPosterExtensionSwitcherItem

+ (id)itemWithProviderBundleIdentifier:(void *)identifier configurations:(void *)configurations posterCategoryViewControllerDelegate:(void *)delegate dateProvider:
{
  delegateCopy = delegate;
  configurationsCopy = configurations;
  identifierCopy = identifier;
  v11 = a2;
  v12 = [objc_alloc(objc_opt_self()) initWithProviderBundleIdentifier:v11 configurations:identifierCopy posterCategoryViewControllerDelegate:configurationsCopy dateProvider:delegateCopy];

  return v12;
}

- (AMUIPosterExtensionSwitcherItem)initWithProviderBundleIdentifier:(id)identifier configurations:(id)configurations posterCategoryViewControllerDelegate:(id)delegate dateProvider:(id)provider
{
  identifierCopy = identifier;
  configurationsCopy = configurations;
  delegateCopy = delegate;
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = AMUIPosterExtensionSwitcherItem;
  v14 = [(AMUIPosterExtensionSwitcherItem *)&v20 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    providerBundleIdentifier = v14->_providerBundleIdentifier;
    v14->_providerBundleIdentifier = v15;

    v17 = [configurationsCopy copy];
    configurations = v14->_configurations;
    v14->_configurations = v17;

    objc_storeWeak(&v14->_posterCategoryViewControllerDelegate, delegateCopy);
    objc_storeStrong(&v14->_dateProvider, provider);
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

- (void)switcherItemWillAppear:(id)appear
{
  appearCopy = appear;
  itemView = [(AMUIPosterExtensionSwitcherItem *)self itemView];
  traitCollection = [appearCopy traitCollection];

  [traitCollection displayCornerRadius];
  [itemView _setContinuousCornerRadius:?];

  itemView2 = [(AMUIPosterExtensionSwitcherItem *)self itemView];
  [itemView2 setClipsToBounds:1];
}

- (void)switcherItemDidAppear:(id)appear
{
  itemView = [(AMUIPosterExtensionSwitcherItem *)self itemView];
  [itemView setClipsToBounds:0];
}

- (void)switcherItemWillDisappear:(id)disappear
{
  itemView = [(AMUIPosterExtensionSwitcherItem *)self itemView];
  [itemView setClipsToBounds:1];
}

- (void)switcherItemDidDisappear:(id)disappear
{
  itemView = [(AMUIPosterExtensionSwitcherItem *)self itemView];
  [itemView setClipsToBounds:0];
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
  if (self)
  {
    selfCopy = self;
    v3 = self[1];
    if (!v3)
    {
      v4 = objc_alloc_init(AMUIPosterCategoryViewController);
      v5 = selfCopy[1];
      selfCopy[1] = v4;

      [selfCopy[1] setConfigurations:selfCopy[2]];
      v6 = selfCopy[1];
      WeakRetained = objc_loadWeakRetained(selfCopy + 5);
      [v6 setDelegate:WeakRetained];

      [selfCopy[1] setDateProvider:selfCopy[3]];
      v3 = selfCopy[1];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)setDateProvider:(uint64_t)provider
{
  v4 = a2;
  if (provider)
  {
    objc_storeStrong((provider + 24), a2);
    [*(provider + 8) setDateProvider:*(provider + 24)];
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
  posterCategoryViewController = [(AMUIPosterExtensionSwitcherItem *)&self->super.isa posterCategoryViewController];
  view = [posterCategoryViewController view];

  layer = [view layer];
  [layer setAllowsGroupOpacity:1];

  return view;
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