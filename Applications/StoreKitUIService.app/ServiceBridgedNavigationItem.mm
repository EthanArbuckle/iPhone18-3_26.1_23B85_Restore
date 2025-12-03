@interface ServiceBridgedNavigationItem
+ (id)itemFromItem:(id)item;
- (ServiceBridgedNavigationItemProxy)proxyHandler;
- (id)rightBarButtonItem;
- (void)setBackButtonTitle:(id)title;
- (void)setTitle:(id)title;
@end

@implementation ServiceBridgedNavigationItem

+ (id)itemFromItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(objc_opt_class());
  if (itemCopy)
  {
    backButtonTitle = [itemCopy backButtonTitle];
    [v4 setBackButtonTitle:backButtonTitle];

    [v4 setHidesBackButton:{objc_msgSend(itemCopy, "hidesBackButton")}];
    leftBarButtonItems = [itemCopy leftBarButtonItems];
    [v4 setLeftBarButtonItems:leftBarButtonItems];

    [v4 setLeftItemsSupplementBackButton:{objc_msgSend(itemCopy, "leftItemsSupplementBackButton")}];
    prompt = [itemCopy prompt];
    [v4 setPrompt:prompt];

    rightBarButtonItems = [itemCopy rightBarButtonItems];
    [v4 setRightBarButtonItems:rightBarButtonItems];

    title = [itemCopy title];
    [v4 setTitle:title];

    titleView = [itemCopy titleView];
    [v4 setTitleView:titleView];
  }

  return v4;
}

- (id)rightBarButtonItem
{
  v7.receiver = self;
  v7.super_class = ServiceBridgedNavigationItem;
  rightBarButtonItem = [(ServiceBridgedNavigationItem *)&v7 rightBarButtonItem];
  v4 = [ServiceBridgedBarButtonItem itemFromItem:rightBarButtonItem];

  proxyHandler = [(ServiceBridgedNavigationItem *)self proxyHandler];
  [v4 setProxyHandler:proxyHandler];

  return v4;
}

- (void)setBackButtonTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = ServiceBridgedNavigationItem;
  [(ServiceBridgedNavigationItem *)&v5 setBackButtonTitle:title];
  proxyHandler = [(ServiceBridgedNavigationItem *)self proxyHandler];
  [proxyHandler navigationItemUpdated];
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = ServiceBridgedNavigationItem;
  [(ServiceBridgedNavigationItem *)&v5 setTitle:title];
  proxyHandler = [(ServiceBridgedNavigationItem *)self proxyHandler];
  [proxyHandler navigationItemUpdated];
}

- (ServiceBridgedNavigationItemProxy)proxyHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyHandler);

  return WeakRetained;
}

@end