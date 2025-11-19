@interface IMActionController
- (IMActionController)initWithDelegate:(id)a3;
- (IMActionControllerDelegate)delegate;
- (IMActionSheetAction)moreAction;
- (id)createMoreAction;
- (id)presentAvailableActionsFromView:(id)a3;
- (void)dismissActionSheetsAndPopovers;
- (void)prepareForReuse;
- (void)registerActions:(id)a3;
- (void)reloadActions;
- (void)setActionObject:(id)a3 reloadActions:(BOOL)a4;
- (void)setAvailableActions:(id)a3;
- (void)updateActionSheetsAndPopovers;
@end

@implementation IMActionController

- (IMActionController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMActionController;
  v5 = [(IMActionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)setActionObject:(id)a3 reloadActions:(BOOL)a4
{
  v4 = a4;
  objc_storeStrong(&self->_actionObject, a3);
  if (a3 && v4)
  {

    [(IMActionController *)self reloadActions];
  }
}

- (void)reloadActions
{
  v3 = [(IMActionController *)self allActions];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006757C;
  v6[3] = &unk_1004D8E90;
  v6[4] = self;
  v4 = [v3 indexesOfObjectsPassingTest:v6];
  v5 = [v3 objectsAtIndexes:v4];
  [(IMActionController *)self setAvailableActions:v5];
}

- (id)presentAvailableActionsFromView:(id)a3
{
  v4 = a3;
  v5 = [(IMActionController *)self moreAction];
  v6 = [v5 actionBlock];
  (v6)[2](v6, self, v4);

  v7 = [v5 alertController];

  return v7;
}

- (void)prepareForReuse
{
  [(IMActionController *)self setDelegate:0];
  [(IMActionController *)self dismissActionSheetsAndPopovers];
  v3 = [(IMActionController *)self moreAction];
  [v3 setAlertController:0];

  [(IMActionController *)self setActionObject:0];
}

- (void)updateActionSheetsAndPopovers
{
  v3 = [(IMActionController *)self availableActions];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000677A0;
  v5[3] = &unk_1004D8EF8;
  v6 = &stru_1004D8ED0;
  [v3 enumerateObjectsUsingBlock:v5];

  v4 = [(IMActionController *)self moreAction];
  sub_100067730(v4, v4);
}

- (void)dismissActionSheetsAndPopovers
{
  v3 = [(IMActionController *)self availableActions];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000678D4;
  v5[3] = &unk_1004D8EF8;
  v6 = &stru_1004D8F18;
  [v3 enumerateObjectsUsingBlock:v5];

  v4 = [(IMActionController *)self moreAction];
  sub_100067864(v4, v4);
}

- (void)setAvailableActions:(id)a3
{
  v4 = a3;
  [(IMActionController *)self registerActions:v4];
  availableActions = self->_availableActions;
  self->_availableActions = v4;
}

- (void)registerActions:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000679A4;
  v3[3] = &unk_1004D8F40;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
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
    v4 = [(IMActionController *)self createMoreAction];
    v5 = self->_moreAction;
    self->_moreAction = v4;

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