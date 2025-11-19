@interface ICMoveFolderActivity
+ (BOOL)canShowMoveActionForFolder:(id)a3 viewControllerManager:(id)a4;
- (ICMoveFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICMoveFolderActivity

- (ICMoveFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICMoveFolderActivity;
  v9 = [(ICMoveFolderActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_folder, a3);
    objc_storeWeak(&v10->_presentingViewController, v8);
  }

  return v10;
}

+ (BOOL)canShowMoveActionForFolder:(id)a3 viewControllerManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isMovable])
  {
    v7 = [v6 hasMultipleModernAccounts];
    v8 = [v5 isSmartFolder] ^ 1 | v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move This Folder" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICMoveFolderActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [ICMoveDecisionController alloc];
    v7 = [(ICMoveFolderActivity *)self folder];
    v14 = v7;
    v8 = [NSArray arrayWithObjects:&v14 count:1];
    v9 = [(ICMoveFolderActivity *)self presentingViewController];
    v10 = [(ICMoveDecisionController *)v6 initWithSourceObjects:v8 presentingViewController:v9];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000ACE28;
    v12[3] = &unk_100648068;
    v12[4] = self;
    v13 = v4;
    [(ICMoveDecisionController *)v10 performDecisionWithCompletion:v12];
  }

  else
  {
    [(ICMoveFolderActivity *)self activityDidFinish:0];
    if (v4)
    {
      v11 = [(ICMoveFolderActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v11);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end