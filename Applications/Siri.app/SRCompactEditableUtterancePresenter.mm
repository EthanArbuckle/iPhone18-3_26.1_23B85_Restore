@interface SRCompactEditableUtterancePresenter
- (BOOL)hasContentAtPoint:(CGPoint)a3;
- (SRCompactEditableUtterancePresenter)initWithUserEditingDataManager:(id)a3 delegate:(id)a4;
- (void)_editableUtteranceViewControllerDidDismiss:(id)a3;
- (void)_editableUtteranceViewControllerWillBePresentedWithSheetPresentationController:(id)a3;
- (void)didResignFirstResponderFromUtteranceViewController:(id)a3;
- (void)dismissEditableUtteranceViewControllerAndShouldStartNewRequest:(BOOL)a3 completion:(id)a4;
- (void)editableUtteranceViewController:(id)a3 alternativeSelectedAtIndex:(int64_t)a4;
- (void)editableUtteranceViewController:(id)a3 didFinishEditingWithText:(id)a4;
- (void)editableUtteranceViewController:(id)a3 openURL:(id)a4;
- (void)editableUtteranceViewController:(id)a3 requestsKeyboardWithCompletion:(id)a4;
- (void)presentUtteranceViewControllerFromViewController:(id)a3 animateAlongsideTransition:(id)a4 completion:(id)a5;
- (void)presentViewController:(id)a3 fromViewController:(id)a4 animateAlongsideTransition:(id)a5 completion:(id)a6;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)willBeginEditingFromUtteranceViewController:(id)a3;
@end

@implementation SRCompactEditableUtterancePresenter

- (SRCompactEditableUtterancePresenter)initWithUserEditingDataManager:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SRCompactEditableUtterancePresenter;
  v9 = [(SRCompactEditableUtterancePresenter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_userUtteranceEditingDataManager, a3);
    v11 = [SRCompactEditableUtteranceViewController alloc];
    v12 = [(SiriSharedUIUserUtteranceEditingDataManaging *)v10->_userUtteranceEditingDataManager userUtterance];
    v13 = [(SRCompactEditableUtteranceViewController *)v11 initWithUserUtterance:v12 delegate:v10 dataSource:v10];
    editableUtteranceViewController = v10->_editableUtteranceViewController;
    v10->_editableUtteranceViewController = &v13->super;
  }

  return v10;
}

- (void)presentUtteranceViewControllerFromViewController:(id)a3 animateAlongsideTransition:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SRCompactEditableUtterancePresenter presentUtteranceViewControllerFromViewController:animateAlongsideTransition:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #compact: presentingEditableUtteranceViewController", &v12, 0xCu);
  }

  [(SRCompactEditableUtterancePresenter *)self presentViewController:self->_editableUtteranceViewController fromViewController:v8 animateAlongsideTransition:v9 completion:v10];
}

- (void)dismissEditableUtteranceViewControllerAndShouldStartNewRequest:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[SRCompactEditableUtterancePresenter dismissEditableUtteranceViewControllerAndShouldStartNewRequest:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #compact: dismissing editableUtteranceViewController", buf, 0xCu);
  }

  self->_shouldStartNewRequest = a3;
  objc_initWeak(buf, self);
  editableUtteranceViewController = self->_editableUtteranceViewController;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000845D4;
  v15 = &unk_100168CC0;
  objc_copyWeak(&v17, buf);
  v9 = v6;
  v16 = v9;
  [(UIViewController *)editableUtteranceViewController dismissViewControllerAnimated:1 completion:&v12];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [(UIViewController *)self->_editableUtteranceViewController transitionCoordinator:v12];
  [WeakRetained willDismissEditableUtterancePresenter:self transitionCoordinator:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (BOOL)hasContentAtPoint:(CGPoint)a3
{
  editableUtteranceViewController = self->_editableUtteranceViewController;
  if (editableUtteranceViewController)
  {
    LOBYTE(editableUtteranceViewController) = self->_editableUtteranceViewControllerIsPresented;
  }

  return editableUtteranceViewController & 1;
}

- (void)didResignFirstResponderFromUtteranceViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didResignFirstResponderFromUtterancePresenter:self];
}

- (void)editableUtteranceViewController:(id)a3 requestsKeyboardWithCompletion:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editableUtterancePresenter:self requestsKeyboardWithCompletion:v5];
}

- (void)willBeginEditingFromUtteranceViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained willBeginEditingFromUtterancePresenter:self];
}

- (void)editableUtteranceViewController:(id)a3 alternativeSelectedAtIndex:(int64_t)a4
{
  v6 = [(SRCompactEditableUtterancePresenter *)self attributedStringAtIndex:a4];
  v9 = [v6 string];

  v7 = [(SiriSharedUIUserUtteranceEditingDataManaging *)self->_userUtteranceEditingDataManager selectionResultsForAlternateTextAtIndex:a4];
  LODWORD(v6) = [(SiriSharedUIUserUtteranceEditingDataManaging *)self->_userUtteranceEditingDataManager isEditedTextSameAsUtterance:v9];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editableUtterancePresenter:self didFinishEditingWithText:v9 selectionResults:v7 shouldStartNewRequest:v6 ^ 1];

  [(SRCompactEditableUtterancePresenter *)self dismissEditableUtteranceViewControllerAndShouldStartNewRequest:v6 ^ 1 completion:0];
}

- (void)editableUtteranceViewController:(id)a3 didFinishEditingWithText:(id)a4
{
  userUtteranceEditingDataManager = self->_userUtteranceEditingDataManager;
  v6 = a4;
  v8 = [(SiriSharedUIUserUtteranceEditingDataManaging *)userUtteranceEditingDataManager selectionResultsForEditedText:v6];
  LODWORD(userUtteranceEditingDataManager) = [(SiriSharedUIUserUtteranceEditingDataManaging *)self->_userUtteranceEditingDataManager isEditedTextSameAsUtterance:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editableUtterancePresenter:self didFinishEditingWithText:v6 selectionResults:v8 shouldStartNewRequest:userUtteranceEditingDataManager ^ 1];

  [(SRCompactEditableUtterancePresenter *)self dismissEditableUtteranceViewControllerAndShouldStartNewRequest:userUtteranceEditingDataManager ^ 1 completion:0];
}

- (void)editableUtteranceViewController:(id)a3 openURL:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editableUtterancePresenter:self openURL:v5];
}

- (void)presentViewController:(id)a3 fromViewController:(id)a4 animateAlongsideTransition:(id)a5 completion:(id)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [v20 setModalPresentationStyle:2];
  [v20 setModalPresentationCapturesStatusBarAppearance:1];
  [v20 setNeedsStatusBarAppearanceUpdate];
  v13 = [v10 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v15 = [v10 view];
    v16 = [v15 window];
    v17 = [v16 _rootSheetPresentationController];

    [(SRCompactEditableUtterancePresenter *)self _editableUtteranceViewControllerWillBePresentedWithSheetPresentationController:v17];
    [v10 presentViewController:v20 animated:1 completion:0];
    v18 = [v20 presentationController];
    [v18 setDelegate:self];

    v19 = [v20 transitionCoordinator];
    [v19 animateAlongsideTransition:v11 completion:v12];
  }
}

- (void)_editableUtteranceViewControllerWillBePresentedWithSheetPresentationController:(id)a3
{
  self->_editableUtteranceViewControllerIsPresented = 1;
  v7 = a3;
  v4 = objc_storeWeak(&self->_sheetPresentationController, v7);
  v5 = [v7 _shouldScaleDownBehindDescendantSheets];

  self->_previousShouldScaleDownBehindDescendantSheetsValue = v5;
  WeakRetained = objc_loadWeakRetained(&self->_sheetPresentationController);
  [WeakRetained _setShouldScaleDownBehindDescendantSheets:0];
}

- (void)presentationControllerWillDismiss:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [(UIViewController *)self->_editableUtteranceViewController transitionCoordinator];
  [WeakRetained willDismissEditableUtterancePresenter:self transitionCoordinator:v4];
}

- (void)_editableUtteranceViewControllerDidDismiss:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sheetPresentationController);
  [WeakRetained _setShouldScaleDownBehindDescendantSheets:self->_previousShouldScaleDownBehindDescendantSheetsValue];

  self->_previousShouldScaleDownBehindDescendantSheetsValue = 0;
  objc_storeWeak(&self->_sheetPresentationController, 0);
  self->_editableUtteranceViewControllerIsPresented = 0;
  editableUtteranceViewController = self->_editableUtteranceViewController;
  self->_editableUtteranceViewController = 0;
}

@end