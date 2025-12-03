@interface CNQuickContactAction
- (CNQuickContactAction)initWithContactAction:(id)action;
- (CNQuickContactActionDelegate)delegate;
- (void)action:(id)action presentViewController:(id)controller sender:(id)sender;
- (void)actionDidFinish:(id)finish;
- (void)actionDidUpdate:(id)update;
- (void)actionWasCanceled:(id)canceled;
- (void)performWithCompletionBlock:(id)block;
@end

@implementation CNQuickContactAction

- (CNQuickContactActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)actionWasCanceled:(id)canceled
{
  completionBlock = [(CNQuickContactAction *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(CNQuickContactAction *)self completionBlock];
    completionBlock2[2]();
  }

  previousStyle = [(CNQuickAction *)self previousStyle];
  [CNContactStyle setCurrentStyle:previousStyle];
}

- (void)actionDidFinish:(id)finish
{
  completionBlock = [(CNQuickContactAction *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(CNQuickContactAction *)self completionBlock];
    completionBlock2[2]();
  }

  manager = [(CNQuickAction *)self manager];
  [manager actionPerformed:self];

  previousStyle = [(CNQuickAction *)self previousStyle];
  [CNContactStyle setCurrentStyle:previousStyle];
}

- (void)action:(id)action presentViewController:(id)controller sender:(id)sender
{
  controllerCopy = controller;
  delegate = [(CNQuickContactAction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    [controllerCopy setModalPresentationStyle:5];
    delegate2 = [(CNQuickContactAction *)self delegate];
    [delegate2 contactAction:self presentViewController:controllerCopy];
  }
}

- (void)actionDidUpdate:(id)update
{
  delegate = [(CNQuickContactAction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNQuickContactAction *)self delegate];
    [delegate2 contactActionDidUpdate:self];
  }
}

- (void)performWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[CNContactStyle currentStyle];
  [(CNQuickAction *)self setPreviousStyle:v5];

  v6 = +[CNContactStyle defaultStyle];
  [CNContactStyle setCurrentStyle:v6];

  [(CNQuickContactAction *)self setCompletionBlock:blockCopy];
  contactAction = [(CNQuickContactAction *)self contactAction];
  [contactAction performActionWithSender:self];
}

- (CNQuickContactAction)initWithContactAction:(id)action
{
  v6.receiver = self;
  v6.super_class = CNQuickContactAction;
  actionCopy = action;
  v4 = [(CNQuickAction *)&v6 init];
  [actionCopy setDelegate:{v4, v6.receiver, v6.super_class}];
  [(CNQuickContactAction *)v4 setContactAction:actionCopy];

  return v4;
}

@end