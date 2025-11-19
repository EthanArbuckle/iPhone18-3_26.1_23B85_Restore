@interface CNQuickContactAction
- (CNQuickContactAction)initWithContactAction:(id)a3;
- (CNQuickContactActionDelegate)delegate;
- (void)action:(id)a3 presentViewController:(id)a4 sender:(id)a5;
- (void)actionDidFinish:(id)a3;
- (void)actionDidUpdate:(id)a3;
- (void)actionWasCanceled:(id)a3;
- (void)performWithCompletionBlock:(id)a3;
@end

@implementation CNQuickContactAction

- (CNQuickContactActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)actionWasCanceled:(id)a3
{
  v4 = [(CNQuickContactAction *)self completionBlock];

  if (v4)
  {
    v5 = [(CNQuickContactAction *)self completionBlock];
    v5[2]();
  }

  v6 = [(CNQuickAction *)self previousStyle];
  [CNContactStyle setCurrentStyle:v6];
}

- (void)actionDidFinish:(id)a3
{
  v4 = [(CNQuickContactAction *)self completionBlock];

  if (v4)
  {
    v5 = [(CNQuickContactAction *)self completionBlock];
    v5[2]();
  }

  v6 = [(CNQuickAction *)self manager];
  [v6 actionPerformed:self];

  v7 = [(CNQuickAction *)self previousStyle];
  [CNContactStyle setCurrentStyle:v7];
}

- (void)action:(id)a3 presentViewController:(id)a4 sender:(id)a5
{
  v9 = a4;
  v6 = [(CNQuickContactAction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    [v9 setModalPresentationStyle:5];
    v8 = [(CNQuickContactAction *)self delegate];
    [v8 contactAction:self presentViewController:v9];
  }
}

- (void)actionDidUpdate:(id)a3
{
  v4 = [(CNQuickContactAction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNQuickContactAction *)self delegate];
    [v6 contactActionDidUpdate:self];
  }
}

- (void)performWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[CNContactStyle currentStyle];
  [(CNQuickAction *)self setPreviousStyle:v5];

  v6 = +[CNContactStyle defaultStyle];
  [CNContactStyle setCurrentStyle:v6];

  [(CNQuickContactAction *)self setCompletionBlock:v4];
  v7 = [(CNQuickContactAction *)self contactAction];
  [v7 performActionWithSender:self];
}

- (CNQuickContactAction)initWithContactAction:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNQuickContactAction;
  v3 = a3;
  v4 = [(CNQuickAction *)&v6 init];
  [v3 setDelegate:{v4, v6.receiver, v6.super_class}];
  [(CNQuickContactAction *)v4 setContactAction:v3];

  return v4;
}

@end