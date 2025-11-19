@interface _SFSettingsAlertController
- (NSArray)items;
- (_SFPopoverSourceInfo)safari_popoverSourceInfo;
- (_SFSettingsAlertContentController)_rootContentController;
- (_SFSettingsAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (_SFSettingsAlertControllerDelegate)delegate;
- (_SFSettingsAlertItem)focusedItem;
- (id)presentingViewController;
- (void)_pushSubItemsForGroup:(id)a3;
- (void)addDivider;
- (void)addItem:(id)a3;
- (void)pushViewController:(id)a3;
- (void)removeAllItems;
- (void)resizeMenu;
- (void)setFocusedItem:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)setUsesReverseOrder:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation _SFSettingsAlertController

- (_SFSettingsAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = _SFSettingsAlertController;
  v4 = [(_SFSettingsAlertController *)&v10 initWithNibName:a3 bundle:a4];
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
  v3 = [MEMORY[0x1E69DC888] labelColor];
  v4 = [(UINavigationController *)self->_navigationController navigationBar];
  [v4 setTintColor:v3];

  [(UINavigationController *)self->_navigationController willMoveToParentViewController:self];
  [(_SFSettingsAlertController *)self addChildViewController:self->_navigationController];
  v5 = [(_SFSettingsAlertController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(UINavigationController *)self->_navigationController view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(UINavigationController *)self->_navigationController view];
  [v15 setAutoresizingMask:18];

  v16 = [(_SFSettingsAlertController *)self view];
  v17 = [(UINavigationController *)self->_navigationController view];
  [v16 addSubview:v17];
}

- (_SFSettingsAlertContentController)_rootContentController
{
  v2 = [(UINavigationController *)self->_navigationController viewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (id)presentingViewController
{
  v3 = [(_SFSettingsAlertController *)self delegate];
  v4 = [v3 presentingViewControllerForAlertController:self];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFSettingsAlertController;
    v5 = [(_SFSettingsAlertController *)&v8 presentingViewController];
  }

  v6 = v5;

  return v6;
}

- (void)setUsesReverseOrder:(BOOL)a3
{
  if (self->_usesReverseOrder != a3)
  {
    v4 = a3;
    self->_usesReverseOrder = a3;
    v5 = [(_SFSettingsAlertController *)self _rootContentController];
    [v5 setUsesReverseOrder:v4];
  }
}

- (void)addItem:(id)a3
{
  v4 = a3;
  v5 = [(_SFSettingsAlertController *)self _rootContentController];
  [v5 addItem:v4];

  v6 = [(_SFSettingsAlertController *)self delegate];
  [v6 alertController:self didAddItem:v4];
}

- (void)addDivider
{
  v3 = [(_SFSettingsAlertController *)self _rootContentController];
  [v3 addDivider];

  v4 = [(_SFSettingsAlertController *)self delegate];
  [v4 alertControllerDidAddDivider:self];
}

- (_SFSettingsAlertItem)focusedItem
{
  v2 = [(_SFSettingsAlertController *)self _rootContentController];
  v3 = [v2 focusedItem];

  return v3;
}

- (void)setFocusedItem:(id)a3
{
  v4 = a3;
  v5 = [(_SFSettingsAlertController *)self _rootContentController];
  [v5 setFocusedItem:v4];
}

- (void)removeAllItems
{
  v3 = [(_SFSettingsAlertController *)self _rootContentController];
  [v3 removeAllItems];

  v4 = [(_SFSettingsAlertController *)self delegate];
  [v4 alertControllerResetSections:self];
}

- (void)resizeMenu
{
  v2 = [(_SFSettingsAlertController *)self _rootContentController];
  [v2 resizeMenu];
}

- (NSArray)items
{
  v2 = [(_SFSettingsAlertController *)self _rootContentController];
  v3 = [v2 items];

  return v3;
}

- (void)_pushSubItemsForGroup:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(_SFSettingsAlertContentController);
  v6 = [v4 title];
  v7 = [(_SFSettingsAlertContentController *)v5 navigationItem];
  [v7 setTitle:v6];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v4 subItems];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v8);
        }

        [(_SFSettingsAlertContentController *)v5 addItem:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  -[UINavigationController pushViewController:animated:](self->_navigationController, "pushViewController:animated:", v5, [MEMORY[0x1E69DD250] areAnimationsEnabled]);
}

- (void)pushViewController:(id)a3
{
  v4 = MEMORY[0x1E69DD250];
  v5 = a3;
  v6 = [v4 areAnimationsEnabled];
  [(UINavigationController *)self->_navigationController pushViewController:v5 animated:v6];
  navigationController = self->_navigationController;
  v9 = [(UINavigationController *)navigationController viewControllers];
  v8 = [v9 firstObject];

  [(UINavigationController *)navigationController setNavigationBarHidden:v8 == v5 animated:v6];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  [(UINavigationController *)self->_navigationController _adjustedContentSizeForPopover:a3.width, a3.height];
  v4.receiver = self;
  v4.super_class = _SFSettingsAlertController;
  [(_SFSettingsAlertController *)&v4 setPreferredContentSize:?];
}

- (_SFPopoverSourceInfo)safari_popoverSourceInfo
{
  v3 = [(_SFSettingsAlertController *)self delegate];
  v4 = [v3 popoverSourceInfoForAlertController:self];

  return v4;
}

- (_SFSettingsAlertControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end