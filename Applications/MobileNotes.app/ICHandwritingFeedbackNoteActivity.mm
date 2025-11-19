@interface ICHandwritingFeedbackNoteActivity
- (ICHandwritingFeedbackNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4;
- (UIViewController)presentingViewController;
- (id)activityImage;
- (id)activityTitle;
- (id)activityType;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICHandwritingFeedbackNoteActivity

- (ICHandwritingFeedbackNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ICHandwritingFeedbackNoteActivity;
  v9 = [(ICHandwritingFeedbackNoteActivity *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, a3);
    v11 = [[PKHandwritingFeedbackActivity alloc] initWithBlock:0];
    pencilKitActivity = v10->_pencilKitActivity;
    v10->_pencilKitActivity = v11;

    objc_storeWeak(&v10->_presentingViewController, v8);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = [(ICHandwritingFeedbackNoteActivity *)self pencilKitActivity];
  v3 = [v2 activityTitle];

  return v3;
}

- (id)activityType
{
  v2 = [(ICHandwritingFeedbackNoteActivity *)self pencilKitActivity];
  v3 = [v2 activityType];

  return v3;
}

- (id)activityImage
{
  v2 = [(ICHandwritingFeedbackNoteActivity *)self pencilKitActivity];
  v3 = [v2 activityImage];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICHandwritingFeedbackNoteActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [(ICHandwritingFeedbackNoteActivity *)self presentingViewController];
    v7 = [v6 view];
    v8 = [v7 subviews];
    v9 = [v8 ic_objectsOfClass:objc_opt_class()];
    v10 = [v9 firstObject];

    v11 = [v10 ic_pkTiledView];
    v12 = [(ICHandwritingFeedbackNoteActivity *)self presentingViewController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000DA244;
    v15[3] = &unk_100645BC8;
    v15[4] = self;
    v16 = v11;
    v17 = v4;
    v13 = v11;
    [v12 ic_dismissPresentedViewControllerAnimated:1 completion:v15];
  }

  else
  {
    [(ICHandwritingFeedbackNoteActivity *)self activityDidFinish:0];
    if (v4)
    {
      v14 = [(ICHandwritingFeedbackNoteActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v14);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end