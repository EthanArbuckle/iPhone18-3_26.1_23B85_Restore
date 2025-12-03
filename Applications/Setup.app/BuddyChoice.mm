@interface BuddyChoice
- (BuddyChoice)initWithTitle:(id)title nextItemClass:(Class)class;
- (UIViewController)choiceController;
- (id)confirmationAcceptActionWithTitle:(id)title style:(int64_t)style action:(id)action;
- (id)confirmationCancelActionWithTitle:(id)title style:(int64_t)style action:(id)action;
- (void)_choiceConfirmed:(BOOL)confirmed;
- (void)runConfirmationIfNeededCompletion:(id)completion;
- (void)setConfirmationAlert:(id)alert condition:(id)condition;
@end

@implementation BuddyChoice

- (BuddyChoice)initWithTitle:(id)title nextItemClass:(Class)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  classCopy = class;
  v5 = selfCopy;
  selfCopy = 0;
  v8.receiver = v5;
  v8.super_class = BuddyChoice;
  selfCopy = [(BuddyChoice *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [selfCopy setTitle:location[0]];
    [selfCopy setNextControllerClass:classCopy];
  }

  v6 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)confirmationAcceptActionWithTitle:(id)title style:(int64_t)style action:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  styleCopy = style;
  v19 = 0;
  objc_storeStrong(&v19, action);
  objc_initWeak(&from, selfCopy);
  v7 = location[0];
  v8 = styleCopy;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10012A834;
  v15 = &unk_10032D380;
  v16 = v19;
  objc_copyWeak(&v17, &from);
  v9 = [UIAlertAction actionWithTitle:v7 style:v8 handler:&v11];
  objc_destroyWeak(&v17);
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v19, 0);
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
  v19 = 0;
  objc_storeStrong(&v19, action);
  objc_initWeak(&from, selfCopy);
  v7 = location[0];
  v8 = styleCopy;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10012AA30;
  v15 = &unk_10032D380;
  v16 = v19;
  objc_copyWeak(&v17, &from);
  v9 = [UIAlertAction actionWithTitle:v7 style:v8 handler:&v11];
  objc_destroyWeak(&v17);
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v19, 0);
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
  [(BuddyChoice *)selfCopy setCondition:v5];
  [(BuddyChoice *)selfCopy setAlertController:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)runConfirmationIfNeededCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  alertController = [(BuddyChoice *)selfCopy alertController];
  v9 = 0;
  v7 = 0;
  v4 = 0;
  if (alertController)
  {
    condition = [(BuddyChoice *)selfCopy condition];
    v9 = 1;
    v4 = 1;
    if (condition)
    {
      condition2 = [(BuddyChoice *)selfCopy condition];
      v7 = 1;
      v4 = condition2[2]();
    }
  }

  if (v7)
  {
  }

  if (v9)
  {
  }

  if (v4)
  {
    [(BuddyChoice *)selfCopy setConfirmationCompletion:location[0]];
    choiceController = [(BuddyChoice *)selfCopy choiceController];
    alertController2 = [(BuddyChoice *)selfCopy alertController];
    [(UIViewController *)choiceController presentViewController:alertController2 animated:1 completion:0];
  }

  else if (location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(location, 0);
}

- (void)_choiceConfirmed:(BOOL)confirmed
{
  confirmationCompletion = [(BuddyChoice *)self confirmationCompletion];

  if (confirmationCompletion)
  {
    confirmationCompletion2 = [(BuddyChoice *)self confirmationCompletion];
    confirmationCompletion2[2](confirmationCompletion2, confirmed);

    [(BuddyChoice *)self setConfirmationCompletion:0];
  }
}

- (UIViewController)choiceController
{
  WeakRetained = objc_loadWeakRetained(&self->_choiceController);

  return WeakRetained;
}

@end