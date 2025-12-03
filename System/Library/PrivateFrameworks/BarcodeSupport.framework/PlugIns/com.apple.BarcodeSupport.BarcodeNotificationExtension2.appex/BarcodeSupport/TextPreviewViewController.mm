@interface TextPreviewViewController
- (CGSize)preferredContentSize;
- (TextPreviewViewController)initWithPreviewText:(id)text footerTitle:(id)title footerSubtitle:(id)subtitle;
- (id)_createPreviewControllerWithText:(id)text;
@end

@implementation TextPreviewViewController

- (TextPreviewViewController)initWithPreviewText:(id)text footerTitle:(id)title footerSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  v10 = [(TextPreviewViewController *)self _createPreviewControllerWithText:text];
  v14.receiver = self;
  v14.super_class = TextPreviewViewController;
  v11 = [(PreviewWithFooterViewController *)&v14 initWithPreviewViewController:v10 footerTitle:titleCopy footerSubtitle:subtitleCopy];

  if (v11)
  {
    v12 = v11;
  }

  return v11;
}

- (id)_createPreviewControllerWithText:(id)text
{
  textCopy = text;
  v5 = objc_alloc_init(UITextView);
  textView = self->_textView;
  self->_textView = v5;

  [(UITextView *)self->_textView setText:textCopy];
  v7 = [UIFont systemFontOfSize:18.0];
  [(UITextView *)self->_textView setFont:v7];

  [(UITextView *)self->_textView setDataDetectorTypes:-1];
  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setScrollEnabled:0];
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setLineBreakMode:4];

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  linkTextAttributes = [(UITextView *)self->_textView linkTextAttributes];
  v10 = [NSMutableDictionary dictionaryWithDictionary:linkTextAttributes];

  v11 = +[UIColor blueColor];
  v32 = v10;
  [v10 setValue:v11 forKey:NSForegroundColorAttributeName];

  [v10 setValue:&off_100008460 forKey:NSUnderlineStyleAttributeName];
  v12 = [NSDictionary dictionaryWithDictionary:v10];
  [(UITextView *)self->_textView setLinkTextAttributes:v12];

  v24 = objc_alloc_init(UIViewController);
  view = [v24 view];
  [view addSubview:self->_textView];
  centerXAnchor = [(UITextView *)self->_textView centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v33[0] = v29;
  leadingAnchor = [(UITextView *)self->_textView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v26 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:40.0];
  v33[1] = v26;
  trailingAnchor = [(UITextView *)self->_textView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v15 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-40.0];
  v33[2] = v15;
  topAnchor = [(UITextView *)self->_textView topAnchor];
  topAnchor2 = [view topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v33[3] = v18;
  bottomAnchor = [(UITextView *)self->_textView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
  v33[4] = v21;
  v22 = [NSArray arrayWithObjects:v33 count:5];
  [NSLayoutConstraint activateConstraints:v22];

  return v24;
}

- (CGSize)preferredContentSize
{
  view = [(TextPreviewViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  Width = CGRectGetWidth(v21);
  footerView = [(PreviewWithFooterViewController *)self footerView];
  [footerView sizeThatFits:{Width, 1.79769313e308}];
  v15 = v14;

  [(UITextView *)self->_textView sizeThatFits:Width + -80.0, 1.79769313e308];
  v17 = v16 + 40.0;
  if (v16 + 40.0 > 312.0)
  {
    v17 = 312.0;
  }

  v18 = v15 + v17;
  v19 = Width;
  result.height = v18;
  result.width = v19;
  return result;
}

@end