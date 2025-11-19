@interface AENoteEditorViewController
- (AENoteEditorViewControllerDelegate)delegate;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CGSize)preferredContentSize;
- (UITextView)textView;
- (void)beginEditing;
- (void)endEditing;
- (void)textViewDidEndEditing:(id)a3;
- (void)viewDidLoad;
@end

@implementation AENoteEditorViewController

- (void)beginEditing
{
  v2 = [(AENoteEditorViewController *)self textView];
  [v2 becomeFirstResponder];
}

- (void)endEditing
{
  v2 = [(AENoteEditorViewController *)self textView];
  [v2 endEditing:1];
}

- (CGSize)preferredContentSize
{
  v2 = 310.0;
  v3 = 205.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = AENoteEditorViewController;
  [(AENoteEditorViewController *)&v27 viewDidLoad];
  v3 = [(AENoteEditorViewController *)self textView];
  v23 = [(AENoteEditorViewController *)self view];
  [v23 addSubview:v3];
  v4 = [v23 safeAreaLayoutGuide];
  v25 = [v3 leadingAnchor];
  v24 = [v4 leadingAnchor];
  v22 = [v25 constraintEqualToAnchor:v24 constant:14.0];
  v28[0] = v22;
  v21 = [v3 trailingAnchor];
  v20 = [v4 trailingAnchor];
  v5 = [v21 constraintEqualToAnchor:v20 constant:-14.0];
  v28[1] = v5;
  v6 = [v3 topAnchor];
  v7 = [v4 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:10.0];
  v28[2] = v8;
  v9 = [v3 bottomAnchor];
  v26 = v4;
  v10 = [v4 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-10.0];
  v28[3] = v11;
  v12 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  v13 = [(AENoteEditorViewController *)self delegate];
  v14 = [v13 noteEditorViewControllerAnnotationToEdit:self];
  v15 = [v14 annotationNote];
  [v3 setText:v15];

  [v3 setTextDragOptions:1];
  v16 = [v13 themeForNoteEditorViewController:self];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 noteTextColor];
    [v3 setTextColor:v18];

    v19 = [v17 noteBorderColor];
    [v23 setBackgroundColor:v19];
  }
}

- (UITextView)textView
{
  textView = self->_textView;
  if (!textView)
  {
    v4 = objc_alloc_init(UITextView);
    v5 = self->_textView;
    self->_textView = v4;

    [(UITextView *)self->_textView setDelegate:self];
    [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)self->_textView setShowsHorizontalScrollIndicator:0];
    [(UITextView *)self->_textView setAutocapitalizationType:2];
    v6 = [UIFont fontWithName:@"Avenir-Roman" size:17.0];
    [(UITextView *)self->_textView setFont:v6];

    [(UITextView *)self->_textView setTextAlignment:4];
    v7 = +[UIColor clearColor];
    [(UITextView *)self->_textView setBackgroundColor:v7];

    textView = self->_textView;
  }

  return textView;
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  v7 = a5;
  v8 = [a3 text];
  v9 = [v8 length] - length;
  v10 = [v7 length];

  return &v10[v9] < &loc_186A0 + 1;
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = [(AENoteEditorViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 noteEditorViewControllerDidEndEditing:self];
  }
}

- (AENoteEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end