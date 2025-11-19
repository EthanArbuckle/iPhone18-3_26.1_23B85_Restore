@interface CNContactListActionExecutor
- (BOOL)showEditAuthorizationPaneForAction:(id)a3 withActionType:(int64_t)a4;
- (CNContactListActionExecutor)initWithUndoManager:(id)a3;
- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4;
- (void)executeAction:(id)a3;
- (void)executeUndoableAction:(id)a3;
- (void)showEditAuthorizationPane:(id)a3 animated:(BOOL)a4 forAction:(id)a5;
- (void)undoAction:(id)a3;
@end

@implementation CNContactListActionExecutor

- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4
{
  [(CNContactListActionExecutor *)self setEditAuthorizationController:0];
  if (a4 != 2)
  {
    return;
  }

  v6 = [(CNContactListActionExecutor *)self authorizationContext];
  v7 = [v6 type];

  if (v7 == 2)
  {
    v10 = [(CNContactListActionExecutor *)self authorizationContext];
    v11 = [v10 action];
    if ([v11 conformsToProtocol:&unk_1F0D8D1C0])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v8 = v12;

    if (v8)
    {
      [v8 performUndoAction];
    }

    goto LABEL_11;
  }

  if (v7 == 1)
  {
    v8 = [(CNContactListActionExecutor *)self authorizationContext];
    v9 = [v8 action];
    [v9 performAction];

LABEL_11:
  }

  [(CNContactListActionExecutor *)self setAuthorizationContext:0];
}

- (void)showEditAuthorizationPane:(id)a3 animated:(BOOL)a4 forAction:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(CNUIEditAuthorizationController);
  [(CNContactListActionExecutor *)self setEditAuthorizationController:v10];

  v11 = [(CNContactListActionExecutor *)self editAuthorizationController];
  [v11 setDelegate:self];

  v12 = [(CNContactListActionExecutor *)self editAuthorizationController];
  [v12 setSender:v9];

  v13 = [(CNContactListActionExecutor *)self editAuthorizationController];
  [v13 setAnimated:v5];

  v14 = [v8 delegate];

  v15 = [v14 presentingViewControllerForActions];
  v16 = [(CNContactListActionExecutor *)self editAuthorizationController];
  [v16 setGuardedViewController:v15];

  v17 = [(CNContactListActionExecutor *)self editAuthorizationController];
  [v17 presentAuthorizationUI];
}

- (BOOL)showEditAuthorizationPaneForAction:(id)a3 withActionType:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 editRequiresAuthorization];
  if (v7)
  {
    v8 = objc_alloc_init(CNContactListActionAuthorizationContext);
    [(CNContactListActionExecutor *)self setAuthorizationContext:v8];

    v9 = [(CNContactListActionExecutor *)self authorizationContext];
    [v9 setAction:v6];

    v10 = [(CNContactListActionExecutor *)self authorizationContext];
    [v10 setType:a4];

    [(CNContactListActionExecutor *)self showEditAuthorizationPane:self animated:1 forAction:v6];
  }

  return v7;
}

- (void)undoAction:(id)a3
{
  v4 = a3;
  if (![CNContactListActionExecutor showEditAuthorizationPaneForAction:"showEditAuthorizationPaneForAction:withActionType:" withActionType:?])
  {
    [v4 performUndoAction];
  }
}

- (void)executeUndoableAction:(id)a3
{
  v5 = a3;
  v4 = [(CNContactListActionExecutor *)self undoManager];
  [v4 registerUndoWithTarget:self selector:sel_undoAction_ object:v5];

  if (![(CNContactListActionExecutor *)self showEditAuthorizationPaneForAction:v5 withActionType:1])
  {
    [v5 performAction];
  }
}

- (void)executeAction:(id)a3
{
  v4 = a3;
  if (![CNContactListActionExecutor showEditAuthorizationPaneForAction:"showEditAuthorizationPaneForAction:withActionType:" withActionType:?])
  {
    [v4 performAction];
  }
}

- (CNContactListActionExecutor)initWithUndoManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNContactListActionExecutor;
  v6 = [(CNContactListActionExecutor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_undoManager, a3);
    v8 = v7;
  }

  return v7;
}

@end