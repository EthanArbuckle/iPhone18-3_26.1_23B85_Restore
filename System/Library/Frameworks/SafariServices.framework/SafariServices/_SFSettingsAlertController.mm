@interface _SFSettingsAlertController
- (NSArray)items;
- (_SFPopoverSourceInfo)safari_popoverSourceInfo;
- (_SFSettingsAlertContentController)_rootContentController;
- (_SFSettingsAlertController)initWithNibName:(id)name bundle:(id)bundle;
- (_SFSettingsAlertControllerDelegate)delegate;
- (_SFSettingsAlertItem)focusedItem;
- (id)presentingViewController;
- (void)_pushSubItemsForGroup:(id)group;
- (void)addDivider;
- (void)addItem:(id)item;
- (void)pushViewController:(id)controller;
- (void)removeAllItems;
- (void)resizeMenu;
- (void)setFocusedItem:(id)item;
- (void)setPreferredContentSize:(CGSize)size;
- (void)setUsesReverseOrder:(BOOL)order;
- (void)viewDidLoad;
@end

@implementation _SFSettingsAlertController

- (_SFSettingsAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = _SFSettingsAlertController;
  v4 = [(_SFSettingsAlertController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(_SFSettingsAlertContentController);
    [(_SFSettingsAlertContentController *)v5 setAlertController:v4];
    v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
    navigationController = v4->_navigationController;
    v4->_navigationController = v6;

    v8 = v4;
  }

  return v4;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = _SFSettingsAlertController;
  [(_SFSettingsAlertController *)&v18 viewDidLoad];
  [(UINavigationController *)self->_navigationController _setClipUnderlapWhileTransitioning:1];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  navigationBar = [(UINavigationController *)self->_navigationController navigationBar];
  [navigationBar setTintColor:labelColor];

  [(UINavigationController *)self->_navigationController willMoveToParentViewController:self];
  [(_SFSettingsAlertController *)self addChildViewController:self->_navigationController];
  view = [(_SFSettingsAlertController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(UINavigationController *)self->_navigationController view];
  [view2 setFrame:{v7, v9, v11, v13}];

  view3 = [(UINavigationController *)self->_navigationController view];
  [view3 setAutoresizingMask:18];

  view4 = [(_SFSettingsAlertController *)self view];
  view5 = [(UINavigationController *)self->_navigationController view];
  [view4 addSubview:view5];
}

- (_SFSettingsAlertContentController)_rootContentController
{
  viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (id)presentingViewController
{
  delegate = [(_SFSettingsAlertController *)self delegate];
  v4 = [delegate presentingViewControllerForAlertController:self];

  if (v4)
  {
    presentingViewController = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFSettingsAlertController;
    presentingViewController = [(_SFSettingsAlertController *)&v8 presentingViewController];
  }

  v6 = presentingViewController;

  return v6;
}

- (void)setUsesReverseOrder:(BOOL)order
{
  if (self->_usesReverseOrder != order)
  {
    orderCopy = order;
    self->_usesReverseOrder = order;
    _rootContentController = [(_SFSettingsAlertController *)self _rootContentController];
    [_rootContentController setUsesReverseOrder:orderCopy];
  }
}

- (void)addItem:(id)item
{
  itemCopy = item;
  _rootContentController = [(_SFSettingsAlertController *)self _rootContentController];
  [_rootContentController addItem:itemCopy];

  delegate = [(_SFSettingsAlertController *)self delegate];
  [delegate alertController:self didAddItem:itemCopy];
}

- (void)addDivider
{
  _rootContentController = [(_SFSettingsAlertController *)self _rootContentController];
  [_rootContentController addDivider];

  delegate = [(_SFSettingsAlertController *)self delegate];
  [delegate alertControllerDidAddDivider:self];
}

- (_SFSettingsAlertItem)focusedItem
{
  _rootContentController = [(_SFSettingsAlertController *)self _rootContentController];
  focusedItem = [_rootContentController focusedItem];

  return focusedItem;
}

- (void)setFocusedItem:(id)item
{
  itemCopy = item;
  _rootContentController = [(_SFSettingsAlertController *)self _rootContentController];
  [_rootContentController setFocusedItem:itemCopy];
}

- (void)removeAllItems
{
  _rootContentController = [(_SFSettingsAlertController *)self _rootContentController];
  [_rootContentController removeAllItems];

  delegate = [(_SFSettingsAlertController *)self delegate];
  [delegate alertControllerResetSections:self];
}

- (void)resizeMenu
{
  _rootContentController = [(_SFSettingsAlertController *)self _rootContentController];
  [_rootContentController resizeMenu];
}

- (NSArray)items
{
  _rootContentController = [(_SFSettingsAlertController *)self _rootContentController];
  items = [_rootContentController items];

  return items;
}

- (void)_pushSubItemsForGroup:(id)group
{
  v18 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v5 = objc_alloc_init(_SFSettingsAlertContentController);
  title = [groupCopy title];
  navigationItem = [(_SFSettingsAlertContentController *)v5 navigationItem];
  [navigationItem setTitle:title];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  subItems = [groupCopy subItems];
  v9 = [subItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(subItems);
        }

        [(_SFSettingsAlertContentController *)v5 addItem:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [subItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  -[UINavigationController pushViewController:animated:](self->_navigationController, "pushViewController:animated:", v5, [MEMORY[0x1E69DD250] areAnimationsEnabled]);
}

- (void)pushViewController:(id)controller
{
  v4 = MEMORY[0x1E69DD250];
  controllerCopy = controller;
  areAnimationsEnabled = [v4 areAnimationsEnabled];
  [(UINavigationController *)self->_navigationController pushViewController:controllerCopy animated:areAnimationsEnabled];
  navigationController = self->_navigationController;
  viewControllers = [(UINavigationController *)navigationController viewControllers];
  firstObject = [viewControllers firstObject];

  [(UINavigationController *)navigationController setNavigationBarHidden:firstObject == controllerCopy animated:areAnimationsEnabled];
}

- (void)setPreferredContentSize:(CGSize)size
{
  [(UINavigationController *)self->_navigationController _adjustedContentSizeForPopover:size.width, size.height];
  v4.receiver = self;
  v4.super_class = _SFSettingsAlertController;
  [(_SFSettingsAlertController *)&v4 setPreferredContentSize:?];
}

- (_SFPopoverSourceInfo)safari_popoverSourceInfo
{
  delegate = [(_SFSettingsAlertController *)self delegate];
  v4 = [delegate popoverSourceInfoForAlertController:self];

  return v4;
}

- (_SFSettingsAlertControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end