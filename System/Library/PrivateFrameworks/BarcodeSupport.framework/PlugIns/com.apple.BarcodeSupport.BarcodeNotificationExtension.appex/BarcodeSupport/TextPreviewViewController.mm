@interface TextPreviewViewController
- (CGSize)preferredContentSize;
- (TextPreviewViewController)initWithPreviewText:(id)a3 footerTitle:(id)a4 footerSubtitle:(id)a5;
- (id)_createPreviewControllerWithText:(id)a3;
@end

@implementation TextPreviewViewController

- (TextPreviewViewController)initWithPreviewText:(id)a3 footerTitle:(id)a4 footerSubtitle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(TextPreviewViewController *)self _createPreviewControllerWithText:a3];
  v14.receiver = self;
  v14.super_class = TextPreviewViewController;
  v11 = [(PreviewWithFooterViewController *)&v14 initWithPreviewViewController:v10 footerTitle:v9 footerSubtitle:v8];

  if (v11)
  {
    v12 = v11;
  }

  return v11;
}

- (id)_createPreviewControllerWithText:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UITextView);
  textView = self->_textView;
  self->_textView = v5;

  [(UITextView *)self->_textView setText:v4];
  v7 = [UIFont systemFontOfSize:18.0];
  [(UITextView *)self->_textView setFont:v7];

  [(UITextView *)self->_textView setDataDetectorTypes:-1];
  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setScrollEnabled:0];
  v8 = [(UITextView *)self->_textView textContainer];
  [v8 setLineBreakMode:4];

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(UITextView *)self->_textView linkTextAttributes];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

  v11 = +[UIColor blueColor];
  v32 = v10;
  [v10 setValue:v11 forKey:NSForegroundColorAttributeName];

  [v10 setValue:&off_100008460 forKey:NSUnderlineStyleAttributeName];
  v12 = [NSDictionary dictionaryWithDictionary:v10];
  [(UITextView *)self->_textView setLinkTextAttributes:v12];

  v24 = objc_alloc_init(UIViewController);
  v13 = [v24 view];
  [v13 addSubview:self->_textView];
  v31 = [(UITextView *)self->_textView centerXAnchor];
  v30 = [v13 centerXAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v33[0] = v29;
  v28 = [(UITextView *)self->_textView leadingAnchor];
  v27 = [v13 leadingAnchor];
  v26 = [v28 constraintGreaterThanOrEqualToAnchor:v27 constant:40.0];
  v33[1] = v26;
  v25 = [(UITextView *)self->_textView trailingAnchor];
  v14 = [v13 trailingAnchor];
  v15 = [v25 constraintLessThanOrEqualToAnchor:v14 constant:-40.0];
  v33[2] = v15;
  v16 = [(UITextView *)self->_textView topAnchor];
  v17 = [v13 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:20.0];
  v33[3] = v18;
  v19 = [(UITextView *)self->_textView bottomAnchor];
  v20 = [v13 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-20.0];
  v33[4] = v21;
  v22 = [NSArray arrayWithObjects:v33 count:5];
  [NSLayoutConstraint activateConstraints:v22];

  return v24;
}

- (CGSize)preferredContentSize
{
  v3 = [(TextPreviewViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  Width = CGRectGetWidth(v21);
  v13 = [(PreviewWithFooterViewController *)self footerView];
  [v13 sizeThatFits:{Width, 1.79769313e308}];
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