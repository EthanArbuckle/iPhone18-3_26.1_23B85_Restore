@interface TableViewSelectableFooterView
- (TableViewSelectableFooterView)initWithReuseIdentifier:(id)identifier options:(id)options;
- (double)bottomPadding;
- (id)_initialConstraints;
- (void)_createSubviews;
- (void)contentSizeDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFooterLabelText:(id)text;
@end

@implementation TableViewSelectableFooterView

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TableViewSelectableFooterView;
  [(TableViewSelectableFooterView *)&v4 prepareForReuse];
  titleLabel = [(UIButton *)self->_footerButton titleLabel];
  [titleLabel setText:0];

  [(UIButton *)self->_footerButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = TableViewSelectableFooterView;
  [(TableViewSelectableFooterView *)&v2 layoutSubviews];
}

- (void)setFooterLabelText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_footerLabelText] & 1) == 0)
  {
    v4 = [textCopy copy];
    footerLabelText = self->_footerLabelText;
    self->_footerLabelText = v4;
  }
}

- (id)_initialConstraints
{
  v3 = +[NSMutableArray array];
  trailingAnchor = [(UIButton *)self->_footerButton trailingAnchor];
  contentView = [(TableViewSelectableFooterView *)self contentView];
  trailingAnchor2 = [contentView trailingAnchor];
  v7 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-15.0];

  LODWORD(v8) = 1148829696;
  [v7 setPriority:v8];
  topAnchor = [(UIButton *)self->_footerButton topAnchor];
  contentView2 = [(TableViewSelectableFooterView *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  topToFirstBaselineConstraint = self->_topToFirstBaselineConstraint;
  self->_topToFirstBaselineConstraint = v12;

  lastBaselineAnchor = [(UIButton *)self->_footerButton lastBaselineAnchor];
  contentView3 = [(TableViewSelectableFooterView *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  v17 = +[RAPFontManager tableFooterViewFont];
  [v17 _mapkit_scaledValueForValue:-11.0];
  v18 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  lastBaselineToBottomConstraint = self->_lastBaselineToBottomConstraint;
  self->_lastBaselineToBottomConstraint = v18;

  v27[0] = self->_topToFirstBaselineConstraint;
  leadingAnchor = [(UIButton *)self->_footerButton leadingAnchor];
  contentView4 = [(TableViewSelectableFooterView *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  v24 = self->_lastBaselineToBottomConstraint;
  v27[1] = v23;
  v27[2] = v24;
  v27[3] = v7;
  v25 = [NSArray arrayWithObjects:v27 count:4];
  [v3 addObjectsFromArray:v25];

  return v3;
}

- (double)bottomPadding
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = -1.0 / v3;

  return v4 + 7.0;
}

- (void)_createSubviews
{
  v3 = [UIButton buttonWithType:0];
  footerButton = self->_footerButton;
  self->_footerButton = v3;

  [(UIButton *)self->_footerButton setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [(UIButton *)self->_footerButton titleLabel];
  [titleLabel setLineBreakMode:0];

  v17 = objc_alloc_init(NSMutableParagraphStyle);
  [v17 setLineBreakMode:0];
  v21[0] = v17;
  v20[0] = NSParagraphStyleAttributeName;
  v20[1] = NSFontAttributeName;
  v6 = +[RAPFontManager tableFooterViewFont];
  v21[1] = v6;
  v20[2] = NSForegroundColorAttributeName;
  v7 = +[UIColor systemGrayColor];
  v21[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

  v18[0] = NSFontAttributeName;
  v9 = +[RAPFontManager tableFooterViewFont];
  v18[1] = NSForegroundColorAttributeName;
  v19[0] = v9;
  v10 = +[UIColor systemBlueColor];
  v19[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = [[NSMutableAttributedString alloc] initWithString:self->_footerLabelText attributes:v8];
  v13 = [[NSMutableAttributedString alloc] initWithString:self->_footerLinkText attributes:v11];
  v14 = [NSMutableAttributedString localizedAttributedStringWithFormat:v12, v13];
  [(UIButton *)self->_footerButton setAttributedTitle:v14 forState:0];
  titleLabel2 = [(UIButton *)self->_footerButton titleLabel];
  [titleLabel2 setNumberOfLines:0];

  [(UIButton *)self->_footerButton setContentHorizontalAlignment:4];
  contentView = [(TableViewSelectableFooterView *)self contentView];
  [contentView addSubview:self->_footerButton];
}

- (void)contentSizeDidChange
{
  v3 = +[RAPFontManager tableFooterViewFont];
  [v3 _mapkit_scaledValueForValue:38.0];
  [(NSLayoutConstraint *)self->_topToFirstBaselineConstraint setConstant:?];

  v4 = +[RAPFontManager tableFooterViewFont];
  [v4 _mapkit_scaledValueForValue:-11.0];
  [(NSLayoutConstraint *)self->_lastBaselineToBottomConstraint setConstant:?];

  [(TableViewSelectableFooterView *)self setNeedsLayout];
}

- (TableViewSelectableFooterView)initWithReuseIdentifier:(id)identifier options:(id)options
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = TableViewSelectableFooterView;
  v7 = [(TableViewSelectableFooterView *)&v15 initWithReuseIdentifier:identifier];
  if (v7)
  {
    labelText = [optionsCopy labelText];
    footerLabelText = v7->_footerLabelText;
    v7->_footerLabelText = labelText;

    linkText = [optionsCopy linkText];
    footerLinkText = v7->_footerLinkText;
    v7->_footerLinkText = linkText;

    [(TableViewSelectableFooterView *)v7 _createSubviews];
    _initialConstraints = [(TableViewSelectableFooterView *)v7 _initialConstraints];
    [NSLayoutConstraint activateConstraints:_initialConstraints];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v7 selector:"contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v7;
}

@end