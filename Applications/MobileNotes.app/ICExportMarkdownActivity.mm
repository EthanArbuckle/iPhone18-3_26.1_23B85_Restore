@interface ICExportMarkdownActivity
- (ICExportMarkdownActivity)initWithObjects:(id)objects presentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation ICExportMarkdownActivity

- (ICExportMarkdownActivity)initWithObjects:(id)objects presentingViewController:(id)controller
{
  objectsCopy = objects;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = ICExportMarkdownActivity;
  v9 = [(ICExportMarkdownActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objects, objects);
    objc_storeWeak(&v10->_presentingViewController, controllerCopy);
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
  presentingViewController = [(ICExportMarkdownActivity *)self presentingViewController];
  v5 = [(ICExportArchiveController *)v3 initForPresentingInViewController:presentingViewController markdown:1];

  presentingViewController2 = [(ICExportMarkdownActivity *)self presentingViewController];
  view = [presentingViewController2 view];
  [v5 setSourceView:view];

  presentingViewController3 = [(ICExportMarkdownActivity *)self presentingViewController];
  view2 = [presentingViewController3 view];
  [view2 bounds];
  [v5 setSourceRect:?];

  objects = [(ICExportMarkdownActivity *)self objects];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100110EAC;
  v11[3] = &unk_100646638;
  v11[4] = self;
  [v5 exportObjects:objects completion:v11];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end