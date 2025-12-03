@interface ExtensionTextInputViewController
- (ExtensionTextInputViewController)initWithTitle:(id)title placeholderText:(id)text text:(id)a5;
- (ExtensionTextInputViewControllerDelegate)inputDelegate;
- (NSString)text;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)configureTableView;
- (void)configureTextView;
- (void)doneButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ExtensionTextInputViewController

- (ExtensionTextInputViewControllerDelegate)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);

  return WeakRetained;
}

- (NSString)text
{
  textView = [(ExtensionTextInputViewController *)self textView];
  text = [textView text];

  return text;
}

- (void)doneButtonTapped:(id)tapped
{
  inputDelegate = [(ExtensionTextInputViewController *)self inputDelegate];
  [inputDelegate extensionTextInputViewControllerDidComplete:self];
}

- (void)configureTextView
{
  v3 = +[UIColor clearColor];
  textView = [(ExtensionTextInputViewController *)self textView];
  [textView setBackgroundColor:v3];

  v5 = [UIFont systemFontOfSize:15.0];
  textView2 = [(ExtensionTextInputViewController *)self textView];
  [textView2 setFont:v5];

  v7 = [NSAttributedString alloc];
  placeholderText = [(ExtensionTextInputViewController *)self placeholderText];
  v9 = [v7 initWithString:placeholderText];
  textView3 = [(ExtensionTextInputViewController *)self textView];
  [textView3 setAttributedPlaceholder:v9];

  textView4 = [(ExtensionTextInputViewController *)self textView];
  text = [textView4 text];
  if (![text length])
  {
    initializedText = [(ExtensionTextInputViewController *)self initializedText];
    v14 = [initializedText length];

    if (!v14)
    {
      goto LABEL_5;
    }

    textView4 = [(ExtensionTextInputViewController *)self initializedText];
    text = [(ExtensionTextInputViewController *)self textView];
    [text setText:textView4];
  }

LABEL_5:
  textView5 = [(ExtensionTextInputViewController *)self textView];
  textContainer = [textView5 textContainer];
  [textContainer setLineFragmentPadding:0.0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [viewCopy dequeueReusableCellWithIdentifier:v7];

  textView = [v8 textView];
  [(ExtensionTextInputViewController *)self setTextView:textView];

  [(ExtensionTextInputViewController *)self configureTextView];

  return v8;
}

- (void)configureTableView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = [(ExtensionTextInputViewController *)self tableView];
  [tableView setTableFooterView:v3];

  tableView2 = [(ExtensionTextInputViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [tableView2 registerClass:v6 forCellReuseIdentifier:v8];

  tableView3 = [(ExtensionTextInputViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(ExtensionTextInputViewController *)self tableView];
  [tableView4 setScrollEnabled:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ExtensionTextInputViewController;
  [(ExtensionTextInputViewController *)&v5 viewWillDisappear:disappear];
  inputDelegate = [(ExtensionTextInputViewController *)self inputDelegate];
  [inputDelegate extensionTextInputViewControllerDidComplete:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ExtensionTextInputViewController;
  [(ExtensionTextInputViewController *)&v5 viewDidAppear:appear];
  textView = [(ExtensionTextInputViewController *)self textView];
  [textView becomeFirstResponder];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ExtensionTextInputViewController;
  [(ExtensionTextInputViewController *)&v3 viewDidLoad];
  [(ExtensionTextInputViewController *)self configureTableView];
}

- (ExtensionTextInputViewController)initWithTitle:(id)title placeholderText:(id)text text:(id)a5
{
  titleCopy = title;
  textCopy = text;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = ExtensionTextInputViewController;
  v11 = [(ExtensionTextInputViewController *)&v18 initWithStyle:1];
  v12 = v11;
  if (v11)
  {
    [(ExtensionTextInputViewController *)v11 setTitle:titleCopy];
    v13 = [textCopy copy];
    placeholderText = v12->_placeholderText;
    v12->_placeholderText = v13;

    v15 = [v10 copy];
    initializedText = v12->_initializedText;
    v12->_initializedText = v15;
  }

  return v12;
}

@end