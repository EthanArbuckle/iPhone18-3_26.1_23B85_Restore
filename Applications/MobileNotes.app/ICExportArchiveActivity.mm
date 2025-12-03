@interface ICExportArchiveActivity
- (ICExportArchiveActivity)initWithObjects:(id)objects presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICExportArchiveActivity

- (ICExportArchiveActivity)initWithObjects:(id)objects presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view
{
  objectsCopy = objects;
  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = ICExportArchiveActivity;
  v15 = [(ICExportArchiveActivity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_objects, objects);
    objc_storeWeak(&v16->_presentingViewController, controllerCopy);
    objc_storeStrong(&v16->_presentingBarButtonItem, item);
    objc_storeStrong(&v16->_presentingSourceView, view);
  }

  return v16;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Export Archive" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICExportArchiveActivity *)self presentingViewController];

  if (presentingViewController)
  {
    v6 = [ICExportArchiveController alloc];
    presentingViewController2 = [(ICExportArchiveActivity *)self presentingViewController];
    v8 = [(ICExportArchiveController *)v6 initForPresentingInViewController:presentingViewController2 markdown:[(ICExportArchiveActivity *)self markdown]];

    presentingBarButtonItem = [(ICExportArchiveActivity *)self presentingBarButtonItem];
    if (presentingBarButtonItem)
    {
      [v8 setBarButtonItem:presentingBarButtonItem];
    }

    else
    {
      objc_opt_class();
      presentationSourceItem = [(ICExportArchiveActivity *)self presentationSourceItem];
      v12 = ICDynamicCast();
      [v8 setBarButtonItem:v12];
    }

    presentingSourceView = [(ICExportArchiveActivity *)self presentingSourceView];
    [v8 setSourceView:presentingSourceView];

    presentingSourceView2 = [(ICExportArchiveActivity *)self presentingSourceView];
    [presentingSourceView2 bounds];
    [v8 setSourceRect:?];

    objects = [(ICExportArchiveActivity *)self objects];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BF320;
    v16[3] = &unk_100648610;
    v16[4] = self;
    v17 = completionCopy;
    [v8 exportObjects:objects completion:v16];
  }

  else
  {
    [(ICExportArchiveActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType = [(ICExportArchiveActivity *)self activityType];
      (*(completionCopy + 2))(completionCopy, 0, activityType);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end