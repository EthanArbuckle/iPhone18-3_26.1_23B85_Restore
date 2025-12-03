@interface ICHandwritingFeedbackNoteActivity
- (ICHandwritingFeedbackNoteActivity)initWithNote:(id)note presentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (id)activityImage;
- (id)activityTitle;
- (id)activityType;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICHandwritingFeedbackNoteActivity

- (ICHandwritingFeedbackNoteActivity)initWithNote:(id)note presentingViewController:(id)controller
{
  noteCopy = note;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = ICHandwritingFeedbackNoteActivity;
  v9 = [(ICHandwritingFeedbackNoteActivity *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, note);
    v11 = [[PKHandwritingFeedbackActivity alloc] initWithBlock:0];
    pencilKitActivity = v10->_pencilKitActivity;
    v10->_pencilKitActivity = v11;

    objc_storeWeak(&v10->_presentingViewController, controllerCopy);
  }

  return v10;
}

- (id)activityTitle
{
  pencilKitActivity = [(ICHandwritingFeedbackNoteActivity *)self pencilKitActivity];
  activityTitle = [pencilKitActivity activityTitle];

  return activityTitle;
}

- (id)activityType
{
  pencilKitActivity = [(ICHandwritingFeedbackNoteActivity *)self pencilKitActivity];
  activityType = [pencilKitActivity activityType];

  return activityType;
}

- (id)activityImage
{
  pencilKitActivity = [(ICHandwritingFeedbackNoteActivity *)self pencilKitActivity];
  activityImage = [pencilKitActivity activityImage];

  return activityImage;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICHandwritingFeedbackNoteActivity *)self presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [(ICHandwritingFeedbackNoteActivity *)self presentingViewController];
    view = [presentingViewController2 view];
    subviews = [view subviews];
    v9 = [subviews ic_objectsOfClass:objc_opt_class()];
    firstObject = [v9 firstObject];

    ic_pkTiledView = [firstObject ic_pkTiledView];
    presentingViewController3 = [(ICHandwritingFeedbackNoteActivity *)self presentingViewController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000DA244;
    v15[3] = &unk_100645BC8;
    v15[4] = self;
    v16 = ic_pkTiledView;
    v17 = completionCopy;
    v13 = ic_pkTiledView;
    [presentingViewController3 ic_dismissPresentedViewControllerAnimated:1 completion:v15];
  }

  else
  {
    [(ICHandwritingFeedbackNoteActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType = [(ICHandwritingFeedbackNoteActivity *)self activityType];
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