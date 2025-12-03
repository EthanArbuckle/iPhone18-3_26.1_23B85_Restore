@interface IMAction
- (BOOL)isAllowedForController:(id)controller;
- (IMAction)initWithTitle:(id)title icon:(id)icon;
- (IMActionController)controller;
- (id)button;
- (id)buttonItem;
- (void)buttonTapped:(id)tapped;
@end

@implementation IMAction

- (IMAction)initWithTitle:(id)title icon:(id)icon
{
  titleCopy = title;
  iconCopy = icon;
  v12.receiver = self;
  v12.super_class = IMAction;
  v9 = [(IMAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_icon, icon);
  }

  return v10;
}

- (id)button
{
  buttonBlock = self->_buttonBlock;
  if (buttonBlock)
  {
    v4 = buttonBlock[2](buttonBlock, a2);
  }

  else
  {
    v5 = [UIButton buttonWithType:0];
    icon = [(IMAction *)self icon];
    [v5 setImage:icon forState:0];

    title = [(IMAction *)self title];
    [v5 setTitle:title forState:0];

    v4 = 0;
  }

  [v4 addTarget:self action:"buttonTapped:" forControlEvents:64];

  return v4;
}

- (id)buttonItem
{
  buttonItemBlock = self->_buttonItemBlock;
  if (buttonItemBlock)
  {
    v4 = buttonItemBlock[2](buttonItemBlock, a2);
    [v4 setTarget:self];
    [v4 setAction:"buttonTapped:"];
  }

  else
  {
    v5 = [UIBarButtonItem alloc];
    button = [(IMAction *)self button];
    v4 = [v5 initWithCustomView:button];
  }

  return v4;
}

- (BOOL)isAllowedForController:(id)controller
{
  conditionBlock = self->_conditionBlock;
  if (conditionBlock)
  {
    LOBYTE(conditionBlock) = conditionBlock[2](conditionBlock, controller);
  }

  return conditionBlock;
}

- (void)buttonTapped:(id)tapped
{
  actionBlock = self->_actionBlock;
  if (actionBlock)
  {
    tappedCopy = tapped;
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    actionBlock[2](actionBlock, WeakRetained, tappedCopy);
  }
}

- (IMActionController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end