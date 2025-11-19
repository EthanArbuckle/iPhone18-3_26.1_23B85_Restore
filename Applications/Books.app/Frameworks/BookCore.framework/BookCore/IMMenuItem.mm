@interface IMMenuItem
+ (id)menuItemWithTitle:(id)a3 actionBlock:(id)a4;
+ (id)menuItemWithTitle:(id)a3 target:(id)a4 action:(SEL)a5;
- (IMMenuItem)initWithTitle:(id)a3 actionBlock:(id)a4;
- (IMMenuItem)initWithTitle:(id)a3 target:(id)a4 action:(SEL)a5;
- (SEL)action;
- (id)target;
- (void)dealloc;
- (void)performActionBlock:(id)a3;
@end

@implementation IMMenuItem

+ (id)menuItemWithTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithTitle:v9 target:v8 action:a5];

  return v10;
}

+ (id)menuItemWithTitle:(id)a3 actionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 actionBlock:v6];

  return v8;
}

- (IMMenuItem)initWithTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = IMMenuItem;
  v10 = [(IMMenuItem *)&v15 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    objc_storeWeak(&v10->_target, v9);
    if (a5)
    {
      v13 = a5;
    }

    else
    {
      v13 = 0;
    }

    v10->_action = v13;
  }

  return v10;
}

- (IMMenuItem)initWithTitle:(id)a3 actionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMMenuItem *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
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

- (void)performActionBlock:(id)a3
{
  v4 = [(IMMenuItem *)self actionBlock];

  if (v4)
  {
    v5 = [(IMMenuItem *)self actionBlock];
    v5[2]();
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