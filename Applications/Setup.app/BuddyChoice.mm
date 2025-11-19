@interface BuddyChoice
- (BuddyChoice)initWithTitle:(id)a3 nextItemClass:(Class)a4;
- (UIViewController)choiceController;
- (id)confirmationAcceptActionWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5;
- (id)confirmationCancelActionWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5;
- (void)_choiceConfirmed:(BOOL)a3;
- (void)runConfirmationIfNeededCompletion:(id)a3;
- (void)setConfirmationAlert:(id)a3 condition:(id)a4;
@end

@implementation BuddyChoice

- (BuddyChoice)initWithTitle:(id)a3 nextItemClass:(Class)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v5 = v11;
  v11 = 0;
  v8.receiver = v5;
  v8.super_class = BuddyChoice;
  v11 = [(BuddyChoice *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    [v11 setTitle:location[0]];
    [v11 setNextControllerClass:v9];
  }

  v6 = v11;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (id)confirmationAcceptActionWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a4;
  v19 = 0;
  objc_storeStrong(&v19, a5);
  objc_initWeak(&from, v22);
  v7 = location[0];
  v8 = v20;
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

- (id)confirmationCancelActionWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a4;
  v19 = 0;
  objc_storeStrong(&v19, a5);
  objc_initWeak(&from, v22);
  v7 = location[0];
  v8 = v20;
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

- (void)setConfirmationAlert:(id)a3 condition:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyChoice *)v7 setCondition:v5];
  [(BuddyChoice *)v7 setAlertController:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)runConfirmationIfNeededCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyChoice *)v12 alertController];
  v9 = 0;
  v7 = 0;
  v4 = 0;
  if (v3)
  {
    v10 = [(BuddyChoice *)v12 condition];
    v9 = 1;
    v4 = 1;
    if (v10)
    {
      v8 = [(BuddyChoice *)v12 condition];
      v7 = 1;
      v4 = v8[2]();
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
    [(BuddyChoice *)v12 setConfirmationCompletion:location[0]];
    v5 = [(BuddyChoice *)v12 choiceController];
    v6 = [(BuddyChoice *)v12 alertController];
    [(UIViewController *)v5 presentViewController:v6 animated:1 completion:0];
  }

  else if (location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(location, 0);
}

- (void)_choiceConfirmed:(BOOL)a3
{
  v3 = [(BuddyChoice *)self confirmationCompletion];

  if (v3)
  {
    v4 = [(BuddyChoice *)self confirmationCompletion];
    v4[2](v4, a3);

    [(BuddyChoice *)self setConfirmationCompletion:0];
  }
}

- (UIViewController)choiceController
{
  WeakRetained = objc_loadWeakRetained(&self->_choiceController);

  return WeakRetained;
}

@end