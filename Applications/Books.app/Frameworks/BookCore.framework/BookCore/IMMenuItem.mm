@interface IMMenuItem
+ (id)menuItemWithTitle:(id)title actionBlock:(id)block;
+ (id)menuItemWithTitle:(id)title target:(id)target action:(SEL)action;
- (IMMenuItem)initWithTitle:(id)title actionBlock:(id)block;
- (IMMenuItem)initWithTitle:(id)title target:(id)target action:(SEL)action;
- (SEL)action;
- (id)target;
- (void)dealloc;
- (void)performActionBlock:(id)block;
@end

@implementation IMMenuItem

+ (id)menuItemWithTitle:(id)title target:(id)target action:(SEL)action
{
  targetCopy = target;
  titleCopy = title;
  v10 = [[self alloc] initWithTitle:titleCopy target:targetCopy action:action];

  return v10;
}

+ (id)menuItemWithTitle:(id)title actionBlock:(id)block
{
  blockCopy = block;
  titleCopy = title;
  v8 = [[self alloc] initWithTitle:titleCopy actionBlock:blockCopy];

  return v8;
}

- (IMMenuItem)initWithTitle:(id)title target:(id)target action:(SEL)action
{
  titleCopy = title;
  targetCopy = target;
  v15.receiver = self;
  v15.super_class = IMMenuItem;
  v10 = [(IMMenuItem *)&v15 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    objc_storeWeak(&v10->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v10->_action = actionCopy;
  }

  return v10;
}

- (IMMenuItem)initWithTitle:(id)title actionBlock:(id)block
{
  titleCopy = title;
  blockCopy = block;
  v8 = [(IMMenuItem *)self init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [blockCopy copy];
    actionBlock = v8->_actionBlock;
    v8->_actionBlock = v11;
  }

  return v8;
}

- (void)dealloc
{
  actionBlock = self->_actionBlock;
  self->_actionBlock = 0;

  v4.receiver = self;
  v4.super_class = IMMenuItem;
  [(IMMenuItem *)&v4 dealloc];
}

- (void)performActionBlock:(id)block
{
  actionBlock = [(IMMenuItem *)self actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [(IMMenuItem *)self actionBlock];
    actionBlock2[2]();
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

@end