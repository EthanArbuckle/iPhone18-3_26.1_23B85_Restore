@interface TextViewTableViewCell
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (TextViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureToolbar;
- (void)doneButtonTapped:(id)tapped;
- (void)setupConstraints;
@end

@implementation TextViewTableViewCell

- (void)setupConstraints
{
  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  textView = [(TextViewTableViewCell *)self textView];
  firstBaselineAnchor = [textView firstBaselineAnchor];
  contentView = [(TextViewTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:18.0];

  contentView2 = [(TextViewTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leftAnchor = [layoutMarginsGuide leftAnchor];
  textView2 = [(TextViewTableViewCell *)self textView];
  leftAnchor2 = [textView2 leftAnchor];
  v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

  contentView3 = [(TextViewTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  rightAnchor = [layoutMarginsGuide2 rightAnchor];
  textView3 = [(TextViewTableViewCell *)self textView];
  rightAnchor2 = [textView3 rightAnchor];
  v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

  contentView4 = [(TextViewTableViewCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  textView4 = [(TextViewTableViewCell *)self textView];
  bottomAnchor2 = [textView4 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  contentView5 = [(TextViewTableViewCell *)self contentView];
  heightAnchor = [contentView5 heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:200.0];

  v29[0] = v7;
  v29[1] = v13;
  v29[2] = v24;
  v29[3] = v19;
  v29[4] = v27;
  v28 = [NSArray arrayWithObjects:v29 count:5];
  [NSLayoutConstraint activateConstraints:v28];
}

- (void)configureToolbar
{
  v3 = objc_alloc_init(UIToolbar);
  v4 = [UIBarButtonItem alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"reservations_done_key" value:@"localized string not found" table:0];
  v7 = [v4 initWithTitle:v6 style:0 target:self action:"doneButtonTapped:"];

  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  [v3 setItems:v8];

  [v3 sizeToFit];
  textView = [(TextViewTableViewCell *)self textView];
  [textView setInputAccessoryView:v3];
}

- (void)doneButtonTapped:(id)tapped
{
  textView = [(TextViewTableViewCell *)self textView];
  [textView resignFirstResponder];
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  viewCopy = view;
  if ([text isEqualToString:@"\n"])
  {
    [viewCopy resignFirstResponder];
  }

  return 1;
}

- (TextViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = TextViewTableViewCell;
  v4 = [(TextViewTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    textView = v4->_textView;
    v4->_textView = v5;

    [(UITextView *)v4->_textView setReturnKeyType:9];
    [(UITextView *)v4->_textView setDelegate:v4];
    contentView = [(TextViewTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_textView];

    [(TextViewTableViewCell *)v4 configureToolbar];
    [(TextViewTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end