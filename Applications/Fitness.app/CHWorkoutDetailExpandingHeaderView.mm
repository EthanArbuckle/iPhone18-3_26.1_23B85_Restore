@interface CHWorkoutDetailExpandingHeaderView
+ (double)preferredHeight;
- (CHWorkoutDetailExpandingHeaderView)initWithFrame:(CGRect)frame;
- (CHWorkoutDetailExpandingHeaderViewDelegate)delegate;
- (void)_buttonTapped:(id)tapped;
- (void)_createContentView;
- (void)_createExpandButton;
- (void)_createSeparator;
- (void)_createTitleLabel;
- (void)_transformButtonForExpandedState:(BOOL)state;
- (void)configureWithTitle:(id)title section:(int64_t)section expanded:(BOOL)expanded;
- (void)setExpanded:(BOOL)expanded;
- (void)setTitle:(id)title;
@end

@implementation CHWorkoutDetailExpandingHeaderView

+ (double)preferredHeight
{
  v2 = [UIFont defaultFontForTextStyle:UIFontTextStyleCallout];
  [v2 _scaledValueForValue:25.0];
  v4 = v3 + 14.0;

  return v4;
}

- (CHWorkoutDetailExpandingHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHWorkoutDetailExpandingHeaderView;
  v3 = [(CHWorkoutDetailExpandingHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor blackColor];
    [(CHWorkoutDetailExpandingHeaderView *)v3 setBackgroundColor:v4];

    [(CHWorkoutDetailExpandingHeaderView *)v3 _createContentView];
    [(CHWorkoutDetailExpandingHeaderView *)v3 _createTitleLabel];
    [(CHWorkoutDetailExpandingHeaderView *)v3 _createExpandButton];
    [(CHWorkoutDetailExpandingHeaderView *)v3 _createSeparator];
  }

  return v3;
}

- (void)_createContentView
{
  v3 = [UIView alloc];
  [(CHWorkoutDetailExpandingHeaderView *)self bounds];
  v4 = [v3 initWithFrame:?];
  contentView = self->_contentView;
  self->_contentView = v4;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor clearColor];
  [(UIView *)self->_contentView setBackgroundColor:v6];

  [(CHWorkoutDetailExpandingHeaderView *)self addSubview:self->_contentView];
  leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
  leadingAnchor2 = [(CHWorkoutDetailExpandingHeaderView *)self leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
  trailingAnchor2 = [(CHWorkoutDetailExpandingHeaderView *)self trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  topAnchor = [(UIView *)self->_contentView topAnchor];
  topAnchor2 = [(CHWorkoutDetailExpandingHeaderView *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];

  bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
  bottomAnchor2 = [(CHWorkoutDetailExpandingHeaderView *)self bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  v20[0] = v9;
  v20[1] = v12;
  v20[2] = v15;
  v20[3] = v18;
  v19 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (void)_createTitleLabel
{
  v3 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v6];

  contentView = [(CHWorkoutDetailExpandingHeaderView *)self contentView];
  [contentView addSubview:self->_titleLabel];

  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(CHWorkoutDetailExpandingHeaderView *)self leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:sub_1000B7B88()];

  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  contentView2 = [(CHWorkoutDetailExpandingHeaderView *)self contentView];
  topAnchor = [contentView2 topAnchor];
  font = [(UILabel *)self->_titleLabel font];
  [font _scaledValueForValue:25.0];
  v15 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];

  v17[0] = v10;
  v17[1] = v15;
  v16 = [NSArray arrayWithObjects:v17 count:2];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)_createExpandButton
{
  v3 = [UIButton buttonWithType:1];
  expandButton = self->_expandButton;
  self->_expandButton = v3;

  v5 = [UIImage systemImageNamed:@"chevron.down"];
  v6 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:17.0];
  v7 = [v5 imageWithSymbolConfiguration:v6];

  [(UIButton *)self->_expandButton setImage:v7 forState:0];
  [(UIButton *)self->_expandButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_expandButton addTarget:self action:"_buttonTapped:" forControlEvents:64];
  [(UIButton *)self->_expandButton sizeToFit];
  v8 = +[UIColor tertiaryLabelColor];
  [(UIButton *)self->_expandButton setTintColor:v8];

  contentView = [(CHWorkoutDetailExpandingHeaderView *)self contentView];
  [contentView addSubview:self->_expandButton];

  expandButton = [(CHWorkoutDetailExpandingHeaderView *)self expandButton];
  trailingAnchor = [expandButton trailingAnchor];
  trailingAnchor2 = [(CHWorkoutDetailExpandingHeaderView *)self trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];

  expandButton2 = [(CHWorkoutDetailExpandingHeaderView *)self expandButton];
  centerYAnchor = [expandButton2 centerYAnchor];
  titleLabel = [(CHWorkoutDetailExpandingHeaderView *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-3.0];

  expandButton3 = [(CHWorkoutDetailExpandingHeaderView *)self expandButton];
  widthAnchor = [expandButton3 widthAnchor];
  v21 = [widthAnchor constraintEqualToConstant:44.0];

  expandButton4 = [(CHWorkoutDetailExpandingHeaderView *)self expandButton];
  heightAnchor = [expandButton4 heightAnchor];
  v24 = [heightAnchor constraintEqualToConstant:44.0];

  v26[0] = v13;
  v26[1] = v18;
  v26[2] = v21;
  v26[3] = v24;
  v25 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v25];
}

- (void)_createSeparator
{
  v3 = objc_alloc_init(UIView);
  separatorView = self->_separatorView;
  self->_separatorView = v3;

  v5 = +[UIColor separatorColor];
  [(UIView *)self->_separatorView setBackgroundColor:v5];

  [(UIView *)self->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CHWorkoutDetailExpandingHeaderView *)self contentView];
  [contentView addSubview:self->_separatorView];

  separatorView = [(CHWorkoutDetailExpandingHeaderView *)self separatorView];
  heightAnchor = [separatorView heightAnchor];
  v9 = +[UIScreen mainScreen];
  [v9 scale];
  v11 = [heightAnchor constraintEqualToConstant:1.0 / v10];

  separatorView2 = [(CHWorkoutDetailExpandingHeaderView *)self separatorView];
  leadingAnchor = [separatorView2 leadingAnchor];
  contentView2 = [(CHWorkoutDetailExpandingHeaderView *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:sub_1000B7B88()];

  separatorView3 = [(CHWorkoutDetailExpandingHeaderView *)self separatorView];
  trailingAnchor = [separatorView3 trailingAnchor];
  contentView3 = [(CHWorkoutDetailExpandingHeaderView *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  separatorView4 = [(CHWorkoutDetailExpandingHeaderView *)self separatorView];
  topAnchor = [separatorView4 topAnchor];
  contentView4 = [(CHWorkoutDetailExpandingHeaderView *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];

  v28[0] = v11;
  v28[1] = v16;
  v28[2] = v21;
  v28[3] = v26;
  v27 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v27];
}

- (void)configureWithTitle:(id)title section:(int64_t)section expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  titleCopy = title;
  [(CHWorkoutDetailExpandingHeaderView *)self setExpanded:expandedCopy];
  [(CHWorkoutDetailExpandingHeaderView *)self setSection:section];
  [(CHWorkoutDetailExpandingHeaderView *)self setTitle:titleCopy];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = [titleCopy copy];
  title = self->_title;
  self->_title = v5;

  v8 = [titleCopy copy];
  titleLabel = [(CHWorkoutDetailExpandingHeaderView *)self titleLabel];
  [titleLabel setText:v8];
}

- (void)_buttonTapped:(id)tapped
{
  v4 = [(CHWorkoutDetailExpandingHeaderView *)self expanded]^ 1;

  [(CHWorkoutDetailExpandingHeaderView *)self setExpanded:v4];
}

- (void)setExpanded:(BOOL)expanded
{
  self->_expanded = expanded;
  [(CHWorkoutDetailExpandingHeaderView *)self _transformButtonForExpandedState:?];
  delegate = [(CHWorkoutDetailExpandingHeaderView *)self delegate];
  [delegate expandingHeaderView:self didChangeExpanded:self->_expanded];
}

- (void)_transformButtonForExpandedState:(BOOL)state
{
  memset(&v7, 0, sizeof(v7));
  if (state)
  {
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
  }

  else
  {
    v4 = *&CGAffineTransformIdentity.c;
    *&v7.a = *&CGAffineTransformIdentity.a;
    *&v7.c = v4;
    *&v7.tx = *&CGAffineTransformIdentity.tx;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = v7;
  v5[2] = sub_10013CD10;
  v5[3] = &unk_10083D438;
  v5[4] = self;
  [UIView animateWithDuration:v5 animations:0.15];
}

- (CHWorkoutDetailExpandingHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end