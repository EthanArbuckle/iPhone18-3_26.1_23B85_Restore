@interface ICDeleteFolderActivity
- (ICDeleteFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4 sender:(id)a5;
- (UIViewController)presentingViewController;
- (id)actionWithCompletion:(id)a3;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICDeleteFolderActivity

- (ICDeleteFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4 sender:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICDeleteFolderActivity;
  v12 = [(ICDeleteFolderActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_folder, a3);
    objc_storeWeak(&v13->_presentingViewController, v10);
    objc_storeStrong(&v13->_sender, a5);
  }

  return v13;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Delete" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)actionWithCompletion:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICDeleteFolderActivity;
  v3 = [(ICDeleteFolderActivity *)&v5 actionWithCompletion:a3];
  [v3 setIc_destructive:1];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICDeleteFolderActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [ICDeleteDecisionController alloc];
    v7 = [(ICDeleteFolderActivity *)self folder];
    v20 = v7;
    v8 = [NSArray arrayWithObjects:&v20 count:1];
    v9 = [(ICDeleteFolderActivity *)self presentingViewController];
    v10 = [v9 view];
    v11 = [v10 window];
    v12 = [(ICDeleteFolderActivity *)self sender];
    v13 = [(ICDeleteDecisionController *)v6 initWithSourceObjects:v8 window:v11 sender:v12 eventReporter:0];

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000F01C8;
    v17 = &unk_100649A80;
    v18 = self;
    v19 = v4;
    [(ICDeleteDecisionController *)v13 performDecisionWithCompletion:&v14];
  }

  [(ICDeleteFolderActivity *)self activityDidFinish:1, v14, v15, v16, v17];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end