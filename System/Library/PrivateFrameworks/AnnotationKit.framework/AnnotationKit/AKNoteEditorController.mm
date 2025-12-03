@interface AKNoteEditorController
- (AKNoteEditorControllerDelegate)delegate;
- (NSString)editedText;
- (id)_popupBackgroundColorForPopupAnnotation:(id)annotation;
- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style;
- (void)beginEditing:(BOOL)editing;
- (void)finishEditing;
- (void)noteEditorViewControllerDidBeginEditing:(id)editing;
- (void)noteEditorViewControllerDidEndEditing:(id)editing;
@end

@implementation AKNoteEditorController

- (NSString)editedText
{
  contentViewController = [(AKNoteEditorController *)self contentViewController];
  textView = [contentViewController textView];
  text = [textView text];

  return text;
}

- (void)beginEditing:(BOOL)editing
{
  delegate = [(AKNoteEditorController *)self delegate];
  [delegate stickyViewFrameForNoteEditor:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [delegate stickyContainerForNoteEditor:self];
  if ([delegate edgeForNoteEditor:self])
  {
    v13 = [AKNoteEditorViewController alloc];
    v14 = +[AKController akBundle];
    v15 = [(AKNoteEditorViewController *)v13 initWithNibName:@"AKNoteEditorViewController" bundle:v14];

    [(AKNoteEditorViewController *)v15 setDelegate:self];
    annotation = [(AKNoteEditorController *)self annotation];
    [(AKNoteEditorViewController *)v15 setAnnotation:annotation];

    [(AKNoteEditorViewController *)v15 setModalPresentationStyle:7];
    clearColor = [MEMORY[0x277D75348] clearColor];
    view = [(AKNoteEditorViewController *)v15 view];
    [view setBackgroundColor:clearColor];

    [(AKNoteEditorViewController *)v15 setPreferredContentSize:320.0, 200.0];
    popoverPresentationController = [(AKNoteEditorViewController *)v15 popoverPresentationController];
    [popoverPresentationController setSourceView:v12];

    popoverPresentationController2 = [(AKNoteEditorViewController *)v15 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v5, v7, v9, v11}];

    annotation2 = [(AKNoteEditorController *)self annotation];
    v22 = [(AKNoteEditorController *)self _popupBackgroundColorForPopupAnnotation:annotation2];
    v23 = [v22 colorWithAlphaComponent:1.0];
    popoverPresentationController3 = [(AKNoteEditorViewController *)v15 popoverPresentationController];
    [popoverPresentationController3 setBackgroundColor:v23];

    popoverPresentationController4 = [(AKNoteEditorViewController *)v15 popoverPresentationController];
    [popoverPresentationController4 setDelegate:self];

    v26 = [delegate popoverPresentingViewControllerForNoteEditor:self];
    [(AKNoteEditorController *)self setContentViewController:v15];
    [v26 presentViewController:v15 animated:1 completion:0];
  }
}

- (void)finishEditing
{
  delegate = [(AKNoteEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate noteEditorWillDismissFromFullScreen:self];
  }

  contentViewController = [(AKNoteEditorController *)self contentViewController];
  presentingViewController = [contentViewController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)noteEditorViewControllerDidBeginEditing:(id)editing
{
  delegate = [(AKNoteEditorController *)self delegate];
  [delegate noteEditorDidBeginEditing:self];
}

- (void)noteEditorViewControllerDidEndEditing:(id)editing
{
  delegate = [(AKNoteEditorController *)self delegate];
  [delegate noteEditorDidFinishEditing:self];
}

- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style
{
  controllerCopy = controller;
  delegate = [(AKNoteEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate noteEditorWillPresentFullScreen:self];
  }

  presentedViewController = [controllerCopy presentedViewController];
  annotation = [(AKNoteEditorController *)self annotation];
  v9 = [(AKNoteEditorController *)self _popupBackgroundColorForPopupAnnotation:annotation];
  v10 = [v9 colorWithAlphaComponent:1.0];
  view = [presentedViewController view];
  [view setBackgroundColor:v10];

  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:presentedViewController];
  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_finishEditing];
  topViewController = [v12 topViewController];
  navigationItem = [topViewController navigationItem];
  [navigationItem setRightBarButtonItem:v13];

  return v12;
}

- (id)_popupBackgroundColorForPopupAnnotation:(id)annotation
{
  parentAnnotation = [annotation parentAnnotation];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    color = [parentAnnotation color];
    v7 = [AKHighlightAppearanceHelper attributeTagForHighlightOfColor:color];
  }

  else
  {
    v7 = 765200;
  }

  v8 = [AKHighlightAppearanceHelper colorForNoteOfHighlightAttributeTag:v7];

  return v8;
}

- (AKNoteEditorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end