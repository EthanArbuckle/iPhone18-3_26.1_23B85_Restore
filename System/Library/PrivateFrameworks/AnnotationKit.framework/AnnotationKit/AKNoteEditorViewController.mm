@interface AKNoteEditorViewController
- (AKNoteEditorViewControllerDelegate)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AKNoteEditorViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = AKNoteEditorViewController;
  [(AKNoteEditorViewController *)&v9 viewDidLoad];
  annotation = [(AKNoteEditorViewController *)self annotation];

  if (annotation)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    textView = [(AKNoteEditorViewController *)self textView];
    [textView setBackgroundColor:clearColor];

    annotation2 = [(AKNoteEditorViewController *)self annotation];
    contents = [annotation2 contents];
    textView2 = [(AKNoteEditorViewController *)self textView];
    [textView2 setText:contents];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AKNoteEditorViewController;
  [(AKNoteEditorViewController *)&v6 viewDidAppear:appear];
  textView = [(AKNoteEditorViewController *)self textView];
  [textView becomeFirstResponder];

  delegate = [(AKNoteEditorViewController *)self delegate];
  [delegate noteEditorViewControllerDidBeginEditing:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  delegate = [(AKNoteEditorViewController *)self delegate];
  [delegate noteEditorViewControllerDidEndEditing:self];

  v6.receiver = self;
  v6.super_class = AKNoteEditorViewController;
  [(AKNoteEditorViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (AKNoteEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end