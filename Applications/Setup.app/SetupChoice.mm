@interface SetupChoice
- (SetupChoice)initWithChoiceID:(id)a3 title:(id)a4 nextItemClass:(Class)a5;
- (SetupChoiceController)choiceController;
- (id)confirmationAcceptActionWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5;
- (id)confirmationCancelActionWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5;
- (void)runConfirmationIfNeeded;
- (void)setConfirmationAlert:(id)a3 condition:(id)a4;
@end

@implementation SetupChoice

- (SetupChoice)initWithChoiceID:(id)a3 title:(id)a4 nextItemClass:(Class)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = a5;
  v7 = v14;
  v14 = 0;
  v10.receiver = v7;
  v10.super_class = SetupChoice;
  v14 = [(SetupChoice *)&v10 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    [v14 setLocalizedTitle:v12];
    [v14 setNextControllerClass:v11];
    [v14 setIdentifier:location[0]];
  }

  v8 = v14;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v8;
}

- (id)confirmationAcceptActionWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = a4;
  v20 = 0;
  objc_storeStrong(&v20, a5);
  objc_initWeak(&from, v23);
  v7 = location[0];
  v8 = v21;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000FA968;
  v15 = &unk_10032CD50;
  v17 = v20;
  objc_copyWeak(&v18, &from);
  v16 = v23;
  v9 = [UIAlertAction actionWithTitle:v7 style:v8 handler:&v11];
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&v18);
  objc_storeStrong(&v17, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)confirmationCancelActionWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = a4;
  v20 = 0;
  objc_storeStrong(&v20, a5);
  objc_initWeak(&from, v23);
  v7 = location[0];
  v8 = v21;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000FABA0;
  v15 = &unk_10032CD50;
  v17 = v20;
  objc_copyWeak(&v18, &from);
  v16 = v23;
  v9 = [UIAlertAction actionWithTitle:v7 style:v8 handler:&v11];
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&v18);
  objc_storeStrong(&v17, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (void)setConfirmationAlert:(id)a3 condition:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(SetupChoice *)v7 setCondition:v5];
  [(SetupChoice *)v7 setAlertController:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)runConfirmationIfNeeded
{
  v2 = [(SetupChoice *)self alertController];
  v8 = 0;
  v6 = 0;
  v3 = 0;
  if (v2)
  {
    v9 = [(SetupChoice *)self condition];
    v8 = 1;
    v3 = 1;
    if (v9)
    {
      v7 = [(SetupChoice *)self condition];
      v6 = 1;
      v3 = v7[2]();
    }
  }

  if (v6)
  {
  }

  if (v8)
  {
  }

  v4 = [(SetupChoice *)self choiceController];
  if (v3)
  {
    v5 = [(SetupChoice *)self alertController];
    [(SetupChoiceController *)v4 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    [(SetupChoiceController *)v4 choiceConfirmed:self];
  }
}

- (SetupChoiceController)choiceController
{
  WeakRetained = objc_loadWeakRetained(&self->_choiceController);

  return WeakRetained;
}

@end