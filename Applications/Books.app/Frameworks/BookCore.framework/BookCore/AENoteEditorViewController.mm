@interface AENoteEditorViewController
- (AENoteEditorViewControllerDelegate)delegate;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (CGSize)preferredContentSize;
- (UITextView)textView;
- (void)beginEditing;
- (void)endEditing;
- (void)textViewDidEndEditing:(id)editing;
- (void)viewDidLoad;
@end

@implementation AENoteEditorViewController

- (void)beginEditing
{
  textView = [(AENoteEditorViewController *)self textView];
  [textView becomeFirstResponder];
}

- (void)endEditing
{
  textView = [(AENoteEditorViewController *)self textView];
  [textView endEditing:1];
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
  textView = [(AENoteEditorViewController *)self textView];
  view = [(AENoteEditorViewController *)self view];
  [view addSubview:textView];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  leadingAnchor = [textView leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:14.0];
  v28[0] = v22;
  trailingAnchor = [textView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-14.0];
  v28[1] = v5;
  topAnchor = [textView topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v28[2] = v8;
  bottomAnchor = [textView bottomAnchor];
  v26 = safeAreaLayoutGuide;
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v28[3] = v11;
  v12 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  delegate = [(AENoteEditorViewController *)self delegate];
  v14 = [delegate noteEditorViewControllerAnnotationToEdit:self];
  annotationNote = [v14 annotationNote];
  [textView setText:annotationNote];

  [textView setTextDragOptions:1];
  v16 = [delegate themeForNoteEditorViewController:self];
  v17 = v16;
  if (v16)
  {
    noteTextColor = [v16 noteTextColor];
    [textView setTextColor:noteTextColor];

    noteBorderColor = [v17 noteBorderColor];
    [view setBackgroundColor:noteBorderColor];
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

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  textCopy = text;
  text = [view text];
  v9 = [text length] - length;
  v10 = [textCopy length];

  return &v10[v9] < &loc_186A0 + 1;
}

- (void)textViewDidEndEditing:(id)editing
{
  delegate = [(AENoteEditorViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate noteEditorViewControllerDidEndEditing:self];
  }
}

- (AENoteEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end