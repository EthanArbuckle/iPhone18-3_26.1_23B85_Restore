@interface AAUINavigationItemSpinnerController
- (AAUINavigationItemSpinnerController)initWithNavigationItem:(id)item hideBackButton:(BOOL)button;
- (void)startSpinning;
- (void)stopSpinning;
@end

@implementation AAUINavigationItemSpinnerController

- (AAUINavigationItemSpinnerController)initWithNavigationItem:(id)item hideBackButton:(BOOL)button
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = AAUINavigationItemSpinnerController;
  v8 = [(AAUINavigationItemSpinnerController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_navigationItem, item);
    v9->_shouldHideBackButton = button;
  }

  return v9;
}

- (void)startSpinning
{
  v11[1] = *MEMORY[0x1E69E9840];
  rightBarButtonItems = [(UINavigationItem *)self->_navigationItem rightBarButtonItems];
  rightBarItems = self->_rightBarItems;
  self->_rightBarItems = rightBarButtonItems;

  leftBarButtonItems = [(UINavigationItem *)self->_navigationItem leftBarButtonItems];
  leftBarItems = self->_leftBarItems;
  self->_leftBarItems = leftBarButtonItems;

  if (self->_shouldHideBackButton)
  {
    self->_hidesBackButton = [(UINavigationItem *)self->_navigationItem hidesBackButton];
  }

  v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v7 setHidesWhenStopped:1];
  [v7 startAnimating];
  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v7];
  navigationItem = self->_navigationItem;
  v11[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(UINavigationItem *)navigationItem setRightBarButtonItems:v10 animated:1];

  if (self->_shouldHideBackButton)
  {
    [(UINavigationItem *)self->_navigationItem setHidesBackButton:1 animated:1];
  }
}

- (void)stopSpinning
{
  [(UINavigationItem *)self->_navigationItem setLeftBarButtonItems:self->_leftBarItems animated:1];
  [(UINavigationItem *)self->_navigationItem setRightBarButtonItems:self->_rightBarItems animated:1];
  if (self->_shouldHideBackButton)
  {
    navigationItem = self->_navigationItem;
    hidesBackButton = self->_hidesBackButton;

    [(UINavigationItem *)navigationItem setHidesBackButton:hidesBackButton animated:1];
  }
}

@end