@interface IMAction
- (BOOL)isAllowedForController:(id)a3;
- (IMAction)initWithTitle:(id)a3 icon:(id)a4;
- (IMActionController)controller;
- (id)button;
- (id)buttonItem;
- (void)buttonTapped:(id)a3;
@end

@implementation IMAction

- (IMAction)initWithTitle:(id)a3 icon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMAction;
  v9 = [(IMAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_icon, a4);
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
    v6 = [(IMAction *)self icon];
    [v5 setImage:v6 forState:0];

    v7 = [(IMAction *)self title];
    [v5 setTitle:v7 forState:0];

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
    v6 = [(IMAction *)self button];
    v4 = [v5 initWithCustomView:v6];
  }

  return v4;
}

- (BOOL)isAllowedForController:(id)a3
{
  conditionBlock = self->_conditionBlock;
  if (conditionBlock)
  {
    LOBYTE(conditionBlock) = conditionBlock[2](conditionBlock, a3);
  }

  return conditionBlock;
}

- (void)buttonTapped:(id)a3
{
  actionBlock = self->_actionBlock;
  if (actionBlock)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    actionBlock[2](actionBlock, WeakRetained, v5);
  }
}

- (IMActionController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end