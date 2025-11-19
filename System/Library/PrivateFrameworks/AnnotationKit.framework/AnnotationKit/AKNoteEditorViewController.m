@interface AKNoteEditorViewController
- (AKNoteEditorViewControllerDelegate)delegate;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AKNoteEditorViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = AKNoteEditorViewController;
  [(AKNoteEditorViewController *)&v9 viewDidLoad];
  v3 = [(AKNoteEditorViewController *)self annotation];

  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    v5 = [(AKNoteEditorViewController *)self textView];
    [v5 setBackgroundColor:v4];

    v6 = [(AKNoteEditorViewController *)self annotation];
    v7 = [v6 contents];
    v8 = [(AKNoteEditorViewController *)self textView];
    [v8 setText:v7];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AKNoteEditorViewController;
  [(AKNoteEditorViewController *)&v6 viewDidAppear:a3];
  v4 = [(AKNoteEditorViewController *)self textView];
  [v4 becomeFirstResponder];

  v5 = [(AKNoteEditorViewController *)self delegate];
  [v5 noteEditorViewControllerDidBeginEditing:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(AKNoteEditorViewController *)self delegate];
  [v5 noteEditorViewControllerDidEndEditing:self];

  v6.receiver = self;
  v6.super_class = AKNoteEditorViewController;
  [(AKNoteEditorViewController *)&v6 viewWillDisappear:v3];
}

- (AKNoteEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end