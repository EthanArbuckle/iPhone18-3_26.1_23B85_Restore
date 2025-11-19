@interface CNContactTargetActionWrapper
- (CNContactTargetActionWrapper)initWithTarget:(id)a3 action:(SEL)a4;
- (SEL)action;
- (id)description;
- (id)target;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNContactTargetActionWrapper

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

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNContactTargetActionWrapper *)self target];
  v5 = [v3 appendName:@"target" object:v4];

  v6 = [v3 appendName:@"action" selector:{-[CNContactTargetActionWrapper action](self, "action")}];
  v7 = [v3 build];

  return v7;
}

- (void)performActionWithSender:(id)a3
{
  v7 = a3;
  v4 = [(CNContactTargetActionWrapper *)self target];
  [(CNContactTargetActionWrapper *)self action];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactTargetActionWrapper *)self target];
    [v6 -[CNContactTargetActionWrapper action](self];
  }
}

- (CNContactTargetActionWrapper)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CNContactTargetActionWrapper;
  v7 = [(CNContactTargetActionWrapper *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, v6);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v8->_action = v9;
  }

  return v8;
}

@end