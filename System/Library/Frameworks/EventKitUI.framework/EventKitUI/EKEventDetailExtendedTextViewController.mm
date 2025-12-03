@interface EKEventDetailExtendedTextViewController
- (EKEventDetailExtendedTextViewController)initWithText:(id)text title:(id)title event:(id)event textForCopyAction:(id)action;
- (unint64_t)supportedInterfaceOrientations;
- (void)_share:(id)_share;
- (void)_updateConstraints;
- (void)loadTextView;
- (void)updateTextView;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation EKEventDetailExtendedTextViewController

- (EKEventDetailExtendedTextViewController)initWithText:(id)text title:(id)title event:(id)event textForCopyAction:(id)action
{
  textCopy = text;
  titleCopy = title;
  eventCopy = event;
  actionCopy = action;
  v20.receiver = self;
  v20.super_class = EKEventDetailExtendedTextViewController;
  v15 = [(EKEventDetailExtendedTextViewController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    [(EKEventDetailExtendedTextViewController *)v15 setTitle:titleCopy];
    objc_storeStrong(&v16->_text, text);
    objc_storeStrong(&v16->_textToCopy, action);
    objc_storeStrong(&v16->_event, event);
    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v16 action:sel__share_];
    navigationItem = [(EKEventDetailExtendedTextViewController *)v16 navigationItem];
    [navigationItem setRightBarButtonItem:v17];

    [(UIResponder *)v16 EKUI_setDataOwnersFromEvent:eventCopy];
  }

  return v16;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = EKEventDetailExtendedTextViewController;
  [(EKEventDetailExtendedTextViewController *)&v5 viewDidLoad];
  view = [(EKEventDetailExtendedTextViewController *)self view];
  [view setAutoresizesSubviews:1];

  [(EKEventDetailExtendedTextViewController *)self loadTextView];
  view2 = [(EKEventDetailExtendedTextViewController *)self view];
  [view2 addSubview:self->_textView];

  [(EKEventDetailExtendedTextViewController *)self _updateConstraints];
}

- (void)viewSafeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = EKEventDetailExtendedTextViewController;
  [(EKEventDetailExtendedTextViewController *)&v8 viewSafeAreaInsetsDidChange];
  view = [(EKEventDetailExtendedTextViewController *)self view];
  [view safeAreaInsets];
  v5 = v4 + 7.0;
  view2 = [(EKEventDetailExtendedTextViewController *)self view];
  [view2 safeAreaInsets];
  [(UITextView *)self->_textView setContentInset:4.0, v5, 4.0, v7 + 7.0];
}

- (void)_updateConstraints
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  textView = self->_textView;
  v14 = @"textView";
  v15[0] = textView;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  view = [(EKEventDetailExtendedTextViewController *)self view];
  [view safeAreaInsets];
  v7 = v6 + 7.0;
  view2 = [(EKEventDetailExtendedTextViewController *)self view];
  [view2 safeAreaInsets];
  [(UITextView *)self->_textView setContentInset:4.0, v7, 4.0, v9 + 7.0];

  v10 = MEMORY[0x1E696ACD8];
  v11 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[textView]|" options:0 metrics:0 views:v4];
  [v10 activateConstraints:v11];

  v12 = MEMORY[0x1E696ACD8];
  v13 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[textView]|" options:0 metrics:0 views:v4];
  [v12 activateConstraints:v13];
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(EKEventDetailExtendedTextViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view);

  if (IsRegularInViewHierarchy)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (void)loadTextView
{
  v3 = objc_alloc(MEMORY[0x1E69DD168]);
  view = [(EKEventDetailExtendedTextViewController *)self view];
  [view frame];
  v5 = [v3 initWithFrame:?];
  textView = self->_textView;
  self->_textView = v5;

  [(EKEventDetailExtendedTextViewController *)self updateTextView];
  textLayoutManager = [(UITextView *)self->_textView textLayoutManager];
  [textLayoutManager setLimitsLayoutForSuspiciousContents:1];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UITextView *)self->_textView setFont:v8];

  [(UITextView *)self->_textView setEditable:0];
  v9 = self->_textView;

  [(UITextView *)v9 setDataDetectorTypes:7];
}

- (void)updateTextView
{
  if ([(EKEventDetailExtendedTextViewController *)self isViewLoaded])
  {
    text = self->_text;
    textView = self->_textView;

    [(UITextView *)textView setText:text];
  }
}

- (void)_share:(id)_share
{
  v11[1] = *MEMORY[0x1E69E9840];
  _shareCopy = _share;
  navigationController = [(EKEventDetailExtendedTextViewController *)self navigationController];
  if (navigationController)
  {
    v6 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v11[0] = self->_textToCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [v6 initWithActivityItems:v7 applicationActivities:0];

    popoverPresentationController = [v8 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:_shareCopy];

    calendar = [(EKEvent *)self->_event calendar];
    [v8 setIsContentManaged:{objc_msgSend(calendar, "isManaged")}];

    [navigationController presentViewController:v8 animated:1 completion:0];
  }
}

@end