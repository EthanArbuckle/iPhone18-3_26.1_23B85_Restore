@interface SetupChoice
- (SetupChoice)initWithChoiceID:(id)d title:(id)title nextItemClass:(Class)class;
- (SetupChoiceController)choiceController;
- (id)confirmationAcceptActionWithTitle:(id)title style:(int64_t)style action:(id)action;
- (id)confirmationCancelActionWithTitle:(id)title style:(int64_t)style action:(id)action;
- (void)runConfirmationIfNeeded;
- (void)setConfirmationAlert:(id)alert condition:(id)condition;
@end

@implementation SetupChoice

- (SetupChoice)initWithChoiceID:(id)d title:(id)title nextItemClass:(Class)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v12 = 0;
  objc_storeStrong(&v12, title);
  classCopy = class;
  v7 = selfCopy;
  selfCopy = 0;
  v10.receiver = v7;
  v10.super_class = SetupChoice;
  selfCopy = [(SetupChoice *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [selfCopy setLocalizedTitle:v12];
    [selfCopy setNextControllerClass:classCopy];
    [selfCopy setIdentifier:location[0]];
  }

  v8 = selfCopy;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (id)confirmationAcceptActionWithTitle:(id)title style:(int64_t)style action:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  styleCopy = style;
  v20 = 0;
  objc_storeStrong(&v20, action);
  objc_initWeak(&from, selfCopy);
  v7 = location[0];
  v8 = styleCopy;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000FA968;
  v15 = &unk_10032CD50;
  v17 = v20;
  objc_copyWeak(&v18, &from);
  v16 = selfCopy;
  v9 = [UIAlertAction actionWithTitle:v7 style:v8 handler:&v11];
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&v18);
  objc_storeStrong(&v17, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)confirmationCancelActionWithTitle:(id)title style:(int64_t)style action:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  styleCopy = style;
  v20 = 0;
  objc_storeStrong(&v20, action);
  objc_initWeak(&from, selfCopy);
  v7 = location[0];
  v8 = styleCopy;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000FABA0;
  v15 = &unk_10032CD50;
  v17 = v20;
  objc_copyWeak(&v18, &from);
  v16 = selfCopy;
  v9 = [UIAlertAction actionWithTitle:v7 style:v8 handler:&v11];
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&v18);
  objc_storeStrong(&v17, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (void)setConfirmationAlert:(id)alert condition:(id)condition
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v5 = 0;
  objc_storeStrong(&v5, condition);
  [(SetupChoice *)selfCopy setCondition:v5];
  [(SetupChoice *)selfCopy setAlertController:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)runConfirmationIfNeeded
{
  alertController = [(SetupChoice *)self alertController];
  v8 = 0;
  v6 = 0;
  v3 = 0;
  if (alertController)
  {
    condition = [(SetupChoice *)self condition];
    v8 = 1;
    v3 = 1;
    if (condition)
    {
      condition2 = [(SetupChoice *)self condition];
      v6 = 1;
      v3 = condition2[2]();
    }
  }

  if (v6)
  {
  }

  if (v8)
  {
  }

  choiceController = [(SetupChoice *)self choiceController];
  if (v3)
  {
    alertController2 = [(SetupChoice *)self alertController];
    [(SetupChoiceController *)choiceController presentViewController:alertController2 animated:1 completion:0];
  }

  else
  {
    [(SetupChoiceController *)choiceController choiceConfirmed:self];
  }
}

- (SetupChoiceController)choiceController
{
  WeakRetained = objc_loadWeakRetained(&self->_choiceController);

  return WeakRetained;
}

@end