@interface ICDrawingRegressionTestsActivity
- (ICDrawingRegressionTestsActivity)initWithNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5;
- (UIViewController)presentingViewController;
- (id)activityViewController;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICDrawingRegressionTestsActivity

- (ICDrawingRegressionTestsActivity)initWithNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICDrawingRegressionTestsActivity;
  v12 = [(ICDrawingRegressionTestsActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_note, a3);
    objc_storeWeak(&v13->_presentingViewController, v10);
    objc_storeStrong(&v13->_presentingBarButtonItem, a5);
  }

  return v13;
}

- (id)activityViewController
{
  v2 = [(ICDrawingRegressionTestsActivity *)self note];
  v3 = [v2 attachmentsWithUTType:ICAttachmentUTTypeDrawing];

  if ([v3 count])
  {
    v4 = [[ICDrawingRegressionTestDataCollectionViewController alloc] initWithDrawingAttachments:v3 description:@"Help us improve our regression tests by submitting these sketches to Apple. Your submission may contain erased strokes which are no longer visible."];
    v5 = [(ICDrawingRegressionTestDataCollectionViewController *)v4 ic_embedInNavigationControllerForModalPresentation];
  }

  else
  {
    v5 = [UIAlertController alertControllerWithTitle:@"No Sketches" message:@"This is for submitting regression test data for fullscreen Sketches." preferredStyle:1];
    v4 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
    [v5 addAction:v4];
  }

  return v5;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICDrawingRegressionTestsActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [(ICDrawingRegressionTestsActivity *)self activityViewController];
    v7 = [(ICDrawingRegressionTestsActivity *)self presentingViewController];
    v8 = [v7 view];
    v9 = [v6 popoverPresentationController];
    [v9 setSourceView:v8];

    v10 = [(ICDrawingRegressionTestsActivity *)self presentationSourceItem];
    v11 = [v6 popoverPresentationController];
    [v11 setSourceItem:v10];

    v12 = [(ICDrawingRegressionTestsActivity *)self presentingViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100084BA0;
    v14[3] = &unk_100645E80;
    v14[4] = self;
    v15 = v4;
    [v12 ic_replacePresentedViewControllerWithViewController:v6 animated:1 completion:v14];
  }

  else
  {
    [(ICDrawingRegressionTestsActivity *)self activityDidFinish:0];
    if (v4)
    {
      v13 = [(ICDrawingRegressionTestsActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v13);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end