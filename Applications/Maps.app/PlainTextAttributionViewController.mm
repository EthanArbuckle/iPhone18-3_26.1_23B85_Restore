@interface PlainTextAttributionViewController
- (PlainTextAttributionViewController)initWithFileURL:(id)l;
- (void)viewDidLoad;
@end

@implementation PlainTextAttributionViewController

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = PlainTextAttributionViewController;
  [(PlainTextAttributionViewController *)&v21 viewDidLoad];
  v3 = objc_alloc_init(UITextView);
  textView = self->_textView;
  self->_textView = v3;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_textView setEditable:0];
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v6 = [UIFont fontWithDescriptor:v5 size:0.0];
  [(UITextView *)self->_textView setFont:v6];

  v7 = +[UIColor labelColor];
  [(UITextView *)self->_textView setTextColor:v7];

  [(UITextView *)self->_textView setTextContainerInset:0.0, 16.0, 0.0, 16.0];
  view = [(PlainTextAttributionViewController *)self view];
  [view addSubview:self->_textView];

  v9 = self->_textView;
  view2 = [(PlainTextAttributionViewController *)self view];
  LODWORD(v11) = 1148846080;
  v12 = [(UITextView *)v9 _maps_constraintsEqualToEdgesOfView:view2 priority:v11];

  allConstraints = [v12 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];

  v14 = [NSData dataWithContentsOfURL:self->_fileURL options:0 error:0];
  v15 = v14;
  if (v14)
  {
    v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v14 bytes]);
    [(UITextView *)self->_textView setText:v16];
  }

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"ATTRIBUTION_TITLE" value:@"localized string not found" table:0];
  [(PlainTextAttributionViewController *)self setTitle:v18];

  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismiss"];
  navigationItem = [(PlainTextAttributionViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v19];
}

- (PlainTextAttributionViewController)initWithFileURL:(id)l
{
  lCopy = l;
  v6 = [(PlainTextAttributionViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, l);
    v8 = v7;
  }

  return v7;
}

@end