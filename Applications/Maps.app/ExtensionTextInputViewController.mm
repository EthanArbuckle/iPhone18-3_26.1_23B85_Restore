@interface ExtensionTextInputViewController
- (ExtensionTextInputViewController)initWithTitle:(id)a3 placeholderText:(id)a4 text:(id)a5;
- (ExtensionTextInputViewControllerDelegate)inputDelegate;
- (NSString)text;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)configureTableView;
- (void)configureTextView;
- (void)doneButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ExtensionTextInputViewController

- (ExtensionTextInputViewControllerDelegate)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);

  return WeakRetained;
}

- (NSString)text
{
  v2 = [(ExtensionTextInputViewController *)self textView];
  v3 = [v2 text];

  return v3;
}

- (void)doneButtonTapped:(id)a3
{
  v4 = [(ExtensionTextInputViewController *)self inputDelegate];
  [v4 extensionTextInputViewControllerDidComplete:self];
}

- (void)configureTextView
{
  v3 = +[UIColor clearColor];
  v4 = [(ExtensionTextInputViewController *)self textView];
  [v4 setBackgroundColor:v3];

  v5 = [UIFont systemFontOfSize:15.0];
  v6 = [(ExtensionTextInputViewController *)self textView];
  [v6 setFont:v5];

  v7 = [NSAttributedString alloc];
  v8 = [(ExtensionTextInputViewController *)self placeholderText];
  v9 = [v7 initWithString:v8];
  v10 = [(ExtensionTextInputViewController *)self textView];
  [v10 setAttributedPlaceholder:v9];

  v11 = [(ExtensionTextInputViewController *)self textView];
  v12 = [v11 text];
  if (![v12 length])
  {
    v13 = [(ExtensionTextInputViewController *)self initializedText];
    v14 = [v13 length];

    if (!v14)
    {
      goto LABEL_5;
    }

    v11 = [(ExtensionTextInputViewController *)self initializedText];
    v12 = [(ExtensionTextInputViewController *)self textView];
    [v12 setText:v11];
  }

LABEL_5:
  v16 = [(ExtensionTextInputViewController *)self textView];
  v15 = [v16 textContainer];
  [v15 setLineFragmentPadding:0.0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 dequeueReusableCellWithIdentifier:v7];

  v9 = [v8 textView];
  [(ExtensionTextInputViewController *)self setTextView:v9];

  [(ExtensionTextInputViewController *)self configureTextView];

  return v8;
}

- (void)configureTableView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v4 = [(ExtensionTextInputViewController *)self tableView];
  [v4 setTableFooterView:v3];

  v5 = [(ExtensionTextInputViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 registerClass:v6 forCellReuseIdentifier:v8];

  v9 = [(ExtensionTextInputViewController *)self tableView];
  [v9 setRowHeight:UITableViewAutomaticDimension];

  v10 = [(ExtensionTextInputViewController *)self tableView];
  [v10 setScrollEnabled:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ExtensionTextInputViewController;
  [(ExtensionTextInputViewController *)&v5 viewWillDisappear:a3];
  v4 = [(ExtensionTextInputViewController *)self inputDelegate];
  [v4 extensionTextInputViewControllerDidComplete:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ExtensionTextInputViewController;
  [(ExtensionTextInputViewController *)&v5 viewDidAppear:a3];
  v4 = [(ExtensionTextInputViewController *)self textView];
  [v4 becomeFirstResponder];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ExtensionTextInputViewController;
  [(ExtensionTextInputViewController *)&v3 viewDidLoad];
  [(ExtensionTextInputViewController *)self configureTableView];
}

- (ExtensionTextInputViewController)initWithTitle:(id)a3 placeholderText:(id)a4 text:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = ExtensionTextInputViewController;
  v11 = [(ExtensionTextInputViewController *)&v18 initWithStyle:1];
  v12 = v11;
  if (v11)
  {
    [(ExtensionTextInputViewController *)v11 setTitle:v8];
    v13 = [v9 copy];
    placeholderText = v12->_placeholderText;
    v12->_placeholderText = v13;

    v15 = [v10 copy];
    initializedText = v12->_initializedText;
    v12->_initializedText = v15;
  }

  return v12;
}

@end