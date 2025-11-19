@interface ICExportMarkdownActivity
- (ICExportMarkdownActivity)initWithObjects:(id)a3 presentingViewController:(id)a4;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation ICExportMarkdownActivity

- (ICExportMarkdownActivity)initWithObjects:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICExportMarkdownActivity;
  v9 = [(ICExportMarkdownActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objects, a3);
    objc_storeWeak(&v10->_presentingViewController, v8);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Export as Markdown" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivity
{
  v3 = [ICExportArchiveController alloc];
  v4 = [(ICExportMarkdownActivity *)self presentingViewController];
  v5 = [(ICExportArchiveController *)v3 initForPresentingInViewController:v4 markdown:1];

  v6 = [(ICExportMarkdownActivity *)self presentingViewController];
  v7 = [v6 view];
  [v5 setSourceView:v7];

  v8 = [(ICExportMarkdownActivity *)self presentingViewController];
  v9 = [v8 view];
  [v9 bounds];
  [v5 setSourceRect:?];

  v10 = [(ICExportMarkdownActivity *)self objects];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100110EAC;
  v11[3] = &unk_100646638;
  v11[4] = self;
  [v5 exportObjects:v10 completion:v11];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end