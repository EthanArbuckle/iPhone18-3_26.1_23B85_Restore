@interface CNContactTargetActionWrapper
- (CNContactTargetActionWrapper)initWithTarget:(id)target action:(SEL)action;
- (SEL)action;
- (id)description;
- (id)target;
- (void)performActionWithSender:(id)sender;
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
  target = [(CNContactTargetActionWrapper *)self target];
  v5 = [v3 appendName:@"target" object:target];

  v6 = [v3 appendName:@"action" selector:{-[CNContactTargetActionWrapper action](self, "action")}];
  build = [v3 build];

  return build;
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  target = [(CNContactTargetActionWrapper *)self target];
  [(CNContactTargetActionWrapper *)self action];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    target2 = [(CNContactTargetActionWrapper *)self target];
    [target2 -[CNContactTargetActionWrapper action](self];
  }
}

- (CNContactTargetActionWrapper)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = CNContactTargetActionWrapper;
  v7 = [(CNContactTargetActionWrapper *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v8->_action = actionCopy;
  }

  return v8;
}

@end