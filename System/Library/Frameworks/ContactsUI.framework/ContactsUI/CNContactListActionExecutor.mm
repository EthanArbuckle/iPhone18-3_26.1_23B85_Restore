@interface CNContactListActionExecutor
- (BOOL)showEditAuthorizationPaneForAction:(id)action withActionType:(int64_t)type;
- (CNContactListActionExecutor)initWithUndoManager:(id)manager;
- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result;
- (void)executeAction:(id)action;
- (void)executeUndoableAction:(id)action;
- (void)showEditAuthorizationPane:(id)pane animated:(BOOL)animated forAction:(id)action;
- (void)undoAction:(id)action;
@end

@implementation CNContactListActionExecutor

- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result
{
  [(CNContactListActionExecutor *)self setEditAuthorizationController:0];
  if (result != 2)
  {
    return;
  }

  authorizationContext = [(CNContactListActionExecutor *)self authorizationContext];
  type = [authorizationContext type];

  if (type == 2)
  {
    authorizationContext2 = [(CNContactListActionExecutor *)self authorizationContext];
    action = [authorizationContext2 action];
    if ([action conformsToProtocol:&unk_1F0D8D1C0])
    {
      v12 = action;
    }

    else
    {
      v12 = 0;
    }

    authorizationContext3 = v12;

    if (authorizationContext3)
    {
      [authorizationContext3 performUndoAction];
    }

    goto LABEL_11;
  }

  if (type == 1)
  {
    authorizationContext3 = [(CNContactListActionExecutor *)self authorizationContext];
    action2 = [authorizationContext3 action];
    [action2 performAction];

LABEL_11:
  }

  [(CNContactListActionExecutor *)self setAuthorizationContext:0];
}

- (void)showEditAuthorizationPane:(id)pane animated:(BOOL)animated forAction:(id)action
{
  animatedCopy = animated;
  actionCopy = action;
  paneCopy = pane;
  v10 = objc_alloc_init(CNUIEditAuthorizationController);
  [(CNContactListActionExecutor *)self setEditAuthorizationController:v10];

  editAuthorizationController = [(CNContactListActionExecutor *)self editAuthorizationController];
  [editAuthorizationController setDelegate:self];

  editAuthorizationController2 = [(CNContactListActionExecutor *)self editAuthorizationController];
  [editAuthorizationController2 setSender:paneCopy];

  editAuthorizationController3 = [(CNContactListActionExecutor *)self editAuthorizationController];
  [editAuthorizationController3 setAnimated:animatedCopy];

  delegate = [actionCopy delegate];

  presentingViewControllerForActions = [delegate presentingViewControllerForActions];
  editAuthorizationController4 = [(CNContactListActionExecutor *)self editAuthorizationController];
  [editAuthorizationController4 setGuardedViewController:presentingViewControllerForActions];

  editAuthorizationController5 = [(CNContactListActionExecutor *)self editAuthorizationController];
  [editAuthorizationController5 presentAuthorizationUI];
}

- (BOOL)showEditAuthorizationPaneForAction:(id)action withActionType:(int64_t)type
{
  actionCopy = action;
  editRequiresAuthorization = [actionCopy editRequiresAuthorization];
  if (editRequiresAuthorization)
  {
    v8 = objc_alloc_init(CNContactListActionAuthorizationContext);
    [(CNContactListActionExecutor *)self setAuthorizationContext:v8];

    authorizationContext = [(CNContactListActionExecutor *)self authorizationContext];
    [authorizationContext setAction:actionCopy];

    authorizationContext2 = [(CNContactListActionExecutor *)self authorizationContext];
    [authorizationContext2 setType:type];

    [(CNContactListActionExecutor *)self showEditAuthorizationPane:self animated:1 forAction:actionCopy];
  }

  return editRequiresAuthorization;
}

- (void)undoAction:(id)action
{
  actionCopy = action;
  if (![CNContactListActionExecutor showEditAuthorizationPaneForAction:"showEditAuthorizationPaneForAction:withActionType:" withActionType:?])
  {
    [actionCopy performUndoAction];
  }
}

- (void)executeUndoableAction:(id)action
{
  actionCopy = action;
  undoManager = [(CNContactListActionExecutor *)self undoManager];
  [undoManager registerUndoWithTarget:self selector:sel_undoAction_ object:actionCopy];

  if (![(CNContactListActionExecutor *)self showEditAuthorizationPaneForAction:actionCopy withActionType:1])
  {
    [actionCopy performAction];
  }
}

- (void)executeAction:(id)action
{
  actionCopy = action;
  if (![CNContactListActionExecutor showEditAuthorizationPaneForAction:"showEditAuthorizationPaneForAction:withActionType:" withActionType:?])
  {
    [actionCopy performAction];
  }
}

- (CNContactListActionExecutor)initWithUndoManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = CNContactListActionExecutor;
  v6 = [(CNContactListActionExecutor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_undoManager, manager);
    v8 = v7;
  }

  return v7;
}

@end