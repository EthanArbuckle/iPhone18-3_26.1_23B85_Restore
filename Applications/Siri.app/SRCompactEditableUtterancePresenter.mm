@interface SRCompactEditableUtterancePresenter
- (BOOL)hasContentAtPoint:(CGPoint)point;
- (SRCompactEditableUtterancePresenter)initWithUserEditingDataManager:(id)manager delegate:(id)delegate;
- (void)_editableUtteranceViewControllerDidDismiss:(id)dismiss;
- (void)_editableUtteranceViewControllerWillBePresentedWithSheetPresentationController:(id)controller;
- (void)didResignFirstResponderFromUtteranceViewController:(id)controller;
- (void)dismissEditableUtteranceViewControllerAndShouldStartNewRequest:(BOOL)request completion:(id)completion;
- (void)editableUtteranceViewController:(id)controller alternativeSelectedAtIndex:(int64_t)index;
- (void)editableUtteranceViewController:(id)controller didFinishEditingWithText:(id)text;
- (void)editableUtteranceViewController:(id)controller openURL:(id)l;
- (void)editableUtteranceViewController:(id)controller requestsKeyboardWithCompletion:(id)completion;
- (void)presentUtteranceViewControllerFromViewController:(id)controller animateAlongsideTransition:(id)transition completion:(id)completion;
- (void)presentViewController:(id)controller fromViewController:(id)viewController animateAlongsideTransition:(id)transition completion:(id)completion;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)willBeginEditingFromUtteranceViewController:(id)controller;
@end

@implementation SRCompactEditableUtterancePresenter

- (SRCompactEditableUtterancePresenter)initWithUserEditingDataManager:(id)manager delegate:(id)delegate
{
  managerCopy = manager;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = SRCompactEditableUtterancePresenter;
  v9 = [(SRCompactEditableUtterancePresenter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_userUtteranceEditingDataManager, manager);
    v11 = [SRCompactEditableUtteranceViewController alloc];
    userUtterance = [(SiriSharedUIUserUtteranceEditingDataManaging *)v10->_userUtteranceEditingDataManager userUtterance];
    v13 = [(SRCompactEditableUtteranceViewController *)v11 initWithUserUtterance:userUtterance delegate:v10 dataSource:v10];
    editableUtteranceViewController = v10->_editableUtteranceViewController;
    v10->_editableUtteranceViewController = &v13->super;
  }

  return v10;
}

- (void)presentUtteranceViewControllerFromViewController:(id)controller animateAlongsideTransition:(id)transition completion:(id)completion
{
  controllerCopy = controller;
  transitionCopy = transition;
  completionCopy = completion;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SRCompactEditableUtterancePresenter presentUtteranceViewControllerFromViewController:animateAlongsideTransition:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #compact: presentingEditableUtteranceViewController", &v12, 0xCu);
  }

  [(SRCompactEditableUtterancePresenter *)self presentViewController:self->_editableUtteranceViewController fromViewController:controllerCopy animateAlongsideTransition:transitionCopy completion:completionCopy];
}

- (void)dismissEditableUtteranceViewControllerAndShouldStartNewRequest:(BOOL)request completion:(id)completion
{
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[SRCompactEditableUtterancePresenter dismissEditableUtteranceViewControllerAndShouldStartNewRequest:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #compact: dismissing editableUtteranceViewController", buf, 0xCu);
  }

  self->_shouldStartNewRequest = request;
  objc_initWeak(buf, self);
  editableUtteranceViewController = self->_editableUtteranceViewController;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000845D4;
  v15 = &unk_100168CC0;
  objc_copyWeak(&v17, buf);
  v9 = completionCopy;
  v16 = v9;
  [(UIViewController *)editableUtteranceViewController dismissViewControllerAnimated:1 completion:&v12];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [(UIViewController *)self->_editableUtteranceViewController transitionCoordinator:v12];
  [WeakRetained willDismissEditableUtterancePresenter:self transitionCoordinator:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (BOOL)hasContentAtPoint:(CGPoint)point
{
  editableUtteranceViewController = self->_editableUtteranceViewController;
  if (editableUtteranceViewController)
  {
    LOBYTE(editableUtteranceViewController) = self->_editableUtteranceViewControllerIsPresented;
  }

  return editableUtteranceViewController & 1;
}

- (void)didResignFirstResponderFromUtteranceViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didResignFirstResponderFromUtterancePresenter:self];
}

- (void)editableUtteranceViewController:(id)controller requestsKeyboardWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editableUtterancePresenter:self requestsKeyboardWithCompletion:completionCopy];
}

- (void)willBeginEditingFromUtteranceViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained willBeginEditingFromUtterancePresenter:self];
}

- (void)editableUtteranceViewController:(id)controller alternativeSelectedAtIndex:(int64_t)index
{
  v6 = [(SRCompactEditableUtterancePresenter *)self attributedStringAtIndex:index];
  string = [v6 string];

  v7 = [(SiriSharedUIUserUtteranceEditingDataManaging *)self->_userUtteranceEditingDataManager selectionResultsForAlternateTextAtIndex:index];
  LODWORD(v6) = [(SiriSharedUIUserUtteranceEditingDataManaging *)self->_userUtteranceEditingDataManager isEditedTextSameAsUtterance:string];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editableUtterancePresenter:self didFinishEditingWithText:string selectionResults:v7 shouldStartNewRequest:v6 ^ 1];

  [(SRCompactEditableUtterancePresenter *)self dismissEditableUtteranceViewControllerAndShouldStartNewRequest:v6 ^ 1 completion:0];
}

- (void)editableUtteranceViewController:(id)controller didFinishEditingWithText:(id)text
{
  userUtteranceEditingDataManager = self->_userUtteranceEditingDataManager;
  textCopy = text;
  v8 = [(SiriSharedUIUserUtteranceEditingDataManaging *)userUtteranceEditingDataManager selectionResultsForEditedText:textCopy];
  LODWORD(userUtteranceEditingDataManager) = [(SiriSharedUIUserUtteranceEditingDataManaging *)self->_userUtteranceEditingDataManager isEditedTextSameAsUtterance:textCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editableUtterancePresenter:self didFinishEditingWithText:textCopy selectionResults:v8 shouldStartNewRequest:userUtteranceEditingDataManager ^ 1];

  [(SRCompactEditableUtterancePresenter *)self dismissEditableUtteranceViewControllerAndShouldStartNewRequest:userUtteranceEditingDataManager ^ 1 completion:0];
}

- (void)editableUtteranceViewController:(id)controller openURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editableUtterancePresenter:self openURL:lCopy];
}

- (void)presentViewController:(id)controller fromViewController:(id)viewController animateAlongsideTransition:(id)transition completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  transitionCopy = transition;
  completionCopy = completion;
  [controllerCopy setModalPresentationStyle:2];
  [controllerCopy setModalPresentationCapturesStatusBarAppearance:1];
  [controllerCopy setNeedsStatusBarAppearanceUpdate];
  presentedViewController = [viewControllerCopy presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    view = [viewControllerCopy view];
    window = [view window];
    _rootSheetPresentationController = [window _rootSheetPresentationController];

    [(SRCompactEditableUtterancePresenter *)self _editableUtteranceViewControllerWillBePresentedWithSheetPresentationController:_rootSheetPresentationController];
    [viewControllerCopy presentViewController:controllerCopy animated:1 completion:0];
    presentationController = [controllerCopy presentationController];
    [presentationController setDelegate:self];

    transitionCoordinator = [controllerCopy transitionCoordinator];
    [transitionCoordinator animateAlongsideTransition:transitionCopy completion:completionCopy];
  }
}

- (void)_editableUtteranceViewControllerWillBePresentedWithSheetPresentationController:(id)controller
{
  self->_editableUtteranceViewControllerIsPresented = 1;
  controllerCopy = controller;
  v4 = objc_storeWeak(&self->_sheetPresentationController, controllerCopy);
  _shouldScaleDownBehindDescendantSheets = [controllerCopy _shouldScaleDownBehindDescendantSheets];

  self->_previousShouldScaleDownBehindDescendantSheetsValue = _shouldScaleDownBehindDescendantSheets;
  WeakRetained = objc_loadWeakRetained(&self->_sheetPresentationController);
  [WeakRetained _setShouldScaleDownBehindDescendantSheets:0];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  transitionCoordinator = [(UIViewController *)self->_editableUtteranceViewController transitionCoordinator];
  [WeakRetained willDismissEditableUtterancePresenter:self transitionCoordinator:transitionCoordinator];
}

- (void)_editableUtteranceViewControllerDidDismiss:(id)dismiss
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