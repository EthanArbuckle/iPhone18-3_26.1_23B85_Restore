@interface ICExportArchiveActivity
- (ICExportArchiveActivity)initWithObjects:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 presentingSourceView:(id)a6;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICExportArchiveActivity

- (ICExportArchiveActivity)initWithObjects:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 presentingSourceView:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICExportArchiveActivity;
  v15 = [(ICExportArchiveActivity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_objects, a3);
    objc_storeWeak(&v16->_presentingViewController, v12);
    objc_storeStrong(&v16->_presentingBarButtonItem, a5);
    objc_storeStrong(&v16->_presentingSourceView, a6);
  }

  return v16;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Export Archive" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICExportArchiveActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [ICExportArchiveController alloc];
    v7 = [(ICExportArchiveActivity *)self presentingViewController];
    v8 = [(ICExportArchiveController *)v6 initForPresentingInViewController:v7 markdown:[(ICExportArchiveActivity *)self markdown]];

    v9 = [(ICExportArchiveActivity *)self presentingBarButtonItem];
    if (v9)
    {
      [v8 setBarButtonItem:v9];
    }

    else
    {
      objc_opt_class();
      v11 = [(ICExportArchiveActivity *)self presentationSourceItem];
      v12 = ICDynamicCast();
      [v8 setBarButtonItem:v12];
    }

    v13 = [(ICExportArchiveActivity *)self presentingSourceView];
    [v8 setSourceView:v13];

    v14 = [(ICExportArchiveActivity *)self presentingSourceView];
    [v14 bounds];
    [v8 setSourceRect:?];

    v15 = [(ICExportArchiveActivity *)self objects];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BF320;
    v16[3] = &unk_100648610;
    v16[4] = self;
    v17 = v4;
    [v8 exportObjects:v15 completion:v16];
  }

  else
  {
    [(ICExportArchiveActivity *)self activityDidFinish:0];
    if (v4)
    {
      v10 = [(ICExportArchiveActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v10);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end