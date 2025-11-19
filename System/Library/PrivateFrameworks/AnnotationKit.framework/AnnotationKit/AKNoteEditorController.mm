@interface AKNoteEditorController
- (AKNoteEditorControllerDelegate)delegate;
- (NSString)editedText;
- (id)_popupBackgroundColorForPopupAnnotation:(id)a3;
- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4;
- (void)beginEditing:(BOOL)a3;
- (void)finishEditing;
- (void)noteEditorViewControllerDidBeginEditing:(id)a3;
- (void)noteEditorViewControllerDidEndEditing:(id)a3;
@end

@implementation AKNoteEditorController

- (NSString)editedText
{
  v2 = [(AKNoteEditorController *)self contentViewController];
  v3 = [v2 textView];
  v4 = [v3 text];

  return v4;
}

- (void)beginEditing:(BOOL)a3
{
  v27 = [(AKNoteEditorController *)self delegate];
  [v27 stickyViewFrameForNoteEditor:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v27 stickyContainerForNoteEditor:self];
  if ([v27 edgeForNoteEditor:self])
  {
    v13 = [AKNoteEditorViewController alloc];
    v14 = +[AKController akBundle];
    v15 = [(AKNoteEditorViewController *)v13 initWithNibName:@"AKNoteEditorViewController" bundle:v14];

    [(AKNoteEditorViewController *)v15 setDelegate:self];
    v16 = [(AKNoteEditorController *)self annotation];
    [(AKNoteEditorViewController *)v15 setAnnotation:v16];

    [(AKNoteEditorViewController *)v15 setModalPresentationStyle:7];
    v17 = [MEMORY[0x277D75348] clearColor];
    v18 = [(AKNoteEditorViewController *)v15 view];
    [v18 setBackgroundColor:v17];

    [(AKNoteEditorViewController *)v15 setPreferredContentSize:320.0, 200.0];
    v19 = [(AKNoteEditorViewController *)v15 popoverPresentationController];
    [v19 setSourceView:v12];

    v20 = [(AKNoteEditorViewController *)v15 popoverPresentationController];
    [v20 setSourceRect:{v5, v7, v9, v11}];

    v21 = [(AKNoteEditorController *)self annotation];
    v22 = [(AKNoteEditorController *)self _popupBackgroundColorForPopupAnnotation:v21];
    v23 = [v22 colorWithAlphaComponent:1.0];
    v24 = [(AKNoteEditorViewController *)v15 popoverPresentationController];
    [v24 setBackgroundColor:v23];

    v25 = [(AKNoteEditorViewController *)v15 popoverPresentationController];
    [v25 setDelegate:self];

    v26 = [v27 popoverPresentingViewControllerForNoteEditor:self];
    [(AKNoteEditorController *)self setContentViewController:v15];
    [v26 presentViewController:v15 animated:1 completion:0];
  }
}

- (void)finishEditing
{
  v5 = [(AKNoteEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 noteEditorWillDismissFromFullScreen:self];
  }

  v3 = [(AKNoteEditorController *)self contentViewController];
  v4 = [v3 presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)noteEditorViewControllerDidBeginEditing:(id)a3
{
  v4 = [(AKNoteEditorController *)self delegate];
  [v4 noteEditorDidBeginEditing:self];
}

- (void)noteEditorViewControllerDidEndEditing:(id)a3
{
  v4 = [(AKNoteEditorController *)self delegate];
  [v4 noteEditorDidFinishEditing:self];
}

- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4
{
  v5 = a3;
  v6 = [(AKNoteEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 noteEditorWillPresentFullScreen:self];
  }

  v7 = [v5 presentedViewController];
  v8 = [(AKNoteEditorController *)self annotation];
  v9 = [(AKNoteEditorController *)self _popupBackgroundColorForPopupAnnotation:v8];
  v10 = [v9 colorWithAlphaComponent:1.0];
  v11 = [v7 view];
  [v11 setBackgroundColor:v10];

  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_finishEditing];
  v14 = [v12 topViewController];
  v15 = [v14 navigationItem];
  [v15 setRightBarButtonItem:v13];

  return v12;
}

- (id)_popupBackgroundColorForPopupAnnotation:(id)a3
{
  v3 = [a3 parentAnnotation];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 color];
    v7 = [AKHighlightAppearanceHelper attributeTagForHighlightOfColor:v6];
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