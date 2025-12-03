@interface ICDrawingRegressionTestsActivity
- (ICDrawingRegressionTestsActivity)initWithNote:(id)note presentingViewController:(id)controller presentingBarButtonItem:(id)item;
- (UIViewController)presentingViewController;
- (id)activityViewController;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICDrawingRegressionTestsActivity

- (ICDrawingRegressionTestsActivity)initWithNote:(id)note presentingViewController:(id)controller presentingBarButtonItem:(id)item
{
  noteCopy = note;
  controllerCopy = controller;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = ICDrawingRegressionTestsActivity;
  v12 = [(ICDrawingRegressionTestsActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_note, note);
    objc_storeWeak(&v13->_presentingViewController, controllerCopy);
    objc_storeStrong(&v13->_presentingBarButtonItem, item);
  }

  return v13;
}

- (id)activityViewController
{
  note = [(ICDrawingRegressionTestsActivity *)self note];
  v3 = [note attachmentsWithUTType:ICAttachmentUTTypeDrawing];

  if ([v3 count])
  {
    v4 = [[ICDrawingRegressionTestDataCollectionViewController alloc] initWithDrawingAttachments:v3 description:@"Help us improve our regression tests by submitting these sketches to Apple. Your submission may contain erased strokes which are no longer visible."];
    ic_embedInNavigationControllerForModalPresentation = [(ICDrawingRegressionTestDataCollectionViewController *)v4 ic_embedInNavigationControllerForModalPresentation];
  }

  else
  {
    ic_embedInNavigationControllerForModalPresentation = [UIAlertController alertControllerWithTitle:@"No Sketches" message:@"This is for submitting regression test data for fullscreen Sketches." preferredStyle:1];
    v4 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
    [ic_embedInNavigationControllerForModalPresentation addAction:v4];
  }

  return ic_embedInNavigationControllerForModalPresentation;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICDrawingRegressionTestsActivity *)self presentingViewController];

  if (presentingViewController)
  {
    activityViewController = [(ICDrawingRegressionTestsActivity *)self activityViewController];
    presentingViewController2 = [(ICDrawingRegressionTestsActivity *)self presentingViewController];
    view = [presentingViewController2 view];
    popoverPresentationController = [activityViewController popoverPresentationController];
    [popoverPresentationController setSourceView:view];

    presentationSourceItem = [(ICDrawingRegressionTestsActivity *)self presentationSourceItem];
    popoverPresentationController2 = [activityViewController popoverPresentationController];
    [popoverPresentationController2 setSourceItem:presentationSourceItem];

    presentingViewController3 = [(ICDrawingRegressionTestsActivity *)self presentingViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100084BA0;
    v14[3] = &unk_100645E80;
    v14[4] = self;
    v15 = completionCopy;
    [presentingViewController3 ic_replacePresentedViewControllerWithViewController:activityViewController animated:1 completion:v14];
  }

  else
  {
    [(ICDrawingRegressionTestsActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType = [(ICDrawingRegressionTestsActivity *)self activityType];
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