@interface IMActionController
- (IMActionController)initWithDelegate:(id)delegate;
- (IMActionControllerDelegate)delegate;
- (IMActionSheetAction)moreAction;
- (id)createMoreAction;
- (id)presentAvailableActionsFromView:(id)view;
- (void)dismissActionSheetsAndPopovers;
- (void)prepareForReuse;
- (void)registerActions:(id)actions;
- (void)reloadActions;
- (void)setActionObject:(id)object reloadActions:(BOOL)actions;
- (void)setAvailableActions:(id)actions;
- (void)updateActionSheetsAndPopovers;
@end

@implementation IMActionController

- (IMActionController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = IMActionController;
  v5 = [(IMActionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)setActionObject:(id)object reloadActions:(BOOL)actions
{
  actionsCopy = actions;
  objc_storeStrong(&self->_actionObject, object);
  if (object && actionsCopy)
  {

    [(IMActionController *)self reloadActions];
  }
}

- (void)reloadActions
{
  allActions = [(IMActionController *)self allActions];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006757C;
  v6[3] = &unk_1004D8E90;
  v6[4] = self;
  v4 = [allActions indexesOfObjectsPassingTest:v6];
  v5 = [allActions objectsAtIndexes:v4];
  [(IMActionController *)self setAvailableActions:v5];
}

- (id)presentAvailableActionsFromView:(id)view
{
  viewCopy = view;
  moreAction = [(IMActionController *)self moreAction];
  actionBlock = [moreAction actionBlock];
  (actionBlock)[2](actionBlock, self, viewCopy);

  alertController = [moreAction alertController];

  return alertController;
}

- (void)prepareForReuse
{
  [(IMActionController *)self setDelegate:0];
  [(IMActionController *)self dismissActionSheetsAndPopovers];
  moreAction = [(IMActionController *)self moreAction];
  [moreAction setAlertController:0];

  [(IMActionController *)self setActionObject:0];
}

- (void)updateActionSheetsAndPopovers
{
  availableActions = [(IMActionController *)self availableActions];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000677A0;
  v5[3] = &unk_1004D8EF8;
  v6 = &stru_1004D8ED0;
  [availableActions enumerateObjectsUsingBlock:v5];

  moreAction = [(IMActionController *)self moreAction];
  sub_100067730(moreAction, moreAction);
}

- (void)dismissActionSheetsAndPopovers
{
  availableActions = [(IMActionController *)self availableActions];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000678D4;
  v5[3] = &unk_1004D8EF8;
  v6 = &stru_1004D8F18;
  [availableActions enumerateObjectsUsingBlock:v5];

  moreAction = [(IMActionController *)self moreAction];
  sub_100067864(moreAction, moreAction);
}

- (void)setAvailableActions:(id)actions
{
  actionsCopy = actions;
  [(IMActionController *)self registerActions:actionsCopy];
  availableActions = self->_availableActions;
  self->_availableActions = actionsCopy;
}

- (void)registerActions:(id)actions
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000679A4;
  v3[3] = &unk_1004D8F40;
  v3[4] = self;
  [actions enumerateObjectsUsingBlock:v3];
}

- (id)createMoreAction
{
  v2 = [[IMActionSheetAction alloc] initWithTitle:0 icon:0];
  objc_initWeak(&location, v2);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100067AAC;
  v7 = &unk_1004D8260;
  objc_copyWeak(&v8, &location);
  [(IMAction *)v2 setActionBlock:&v4];
  [(IMAction *)v2 setConditionBlock:&stru_1004D8F60, v4, v5, v6, v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v2;
}

- (IMActionSheetAction)moreAction
{
  moreAction = self->_moreAction;
  if (!moreAction)
  {
    createMoreAction = [(IMActionController *)self createMoreAction];
    v5 = self->_moreAction;
    self->_moreAction = createMoreAction;

    [(IMAction *)self->_moreAction setController:self];
    moreAction = self->_moreAction;
  }

  return moreAction;
}

- (IMActionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end