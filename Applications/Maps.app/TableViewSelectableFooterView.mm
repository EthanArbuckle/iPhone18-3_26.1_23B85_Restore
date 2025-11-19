@interface TableViewSelectableFooterView
- (TableViewSelectableFooterView)initWithReuseIdentifier:(id)a3 options:(id)a4;
- (double)bottomPadding;
- (id)_initialConstraints;
- (void)_createSubviews;
- (void)contentSizeDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFooterLabelText:(id)a3;
@end

@implementation TableViewSelectableFooterView

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TableViewSelectableFooterView;
  [(TableViewSelectableFooterView *)&v4 prepareForReuse];
  v3 = [(UIButton *)self->_footerButton titleLabel];
  [v3 setText:0];

  [(UIButton *)self->_footerButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = TableViewSelectableFooterView;
  [(TableViewSelectableFooterView *)&v2 layoutSubviews];
}

- (void)setFooterLabelText:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_footerLabelText] & 1) == 0)
  {
    v4 = [v6 copy];
    footerLabelText = self->_footerLabelText;
    self->_footerLabelText = v4;
  }
}

- (id)_initialConstraints
{
  v3 = +[NSMutableArray array];
  v4 = [(UIButton *)self->_footerButton trailingAnchor];
  v5 = [(TableViewSelectableFooterView *)self contentView];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintLessThanOrEqualToAnchor:v6 constant:-15.0];

  LODWORD(v8) = 1148829696;
  [v7 setPriority:v8];
  v9 = [(UIButton *)self->_footerButton topAnchor];
  v10 = [(TableViewSelectableFooterView *)self contentView];
  v11 = [v10 topAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:8.0];
  topToFirstBaselineConstraint = self->_topToFirstBaselineConstraint;
  self->_topToFirstBaselineConstraint = v12;

  v14 = [(UIButton *)self->_footerButton lastBaselineAnchor];
  v15 = [(TableViewSelectableFooterView *)self contentView];
  v16 = [v15 bottomAnchor];
  v17 = +[RAPFontManager tableFooterViewFont];
  [v17 _mapkit_scaledValueForValue:-11.0];
  v18 = [v14 constraintEqualToAnchor:v16 constant:?];
  lastBaselineToBottomConstraint = self->_lastBaselineToBottomConstraint;
  self->_lastBaselineToBottomConstraint = v18;

  v27[0] = self->_topToFirstBaselineConstraint;
  v20 = [(UIButton *)self->_footerButton leadingAnchor];
  v21 = [(TableViewSelectableFooterView *)self contentView];
  v22 = [v21 leadingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:15.0];
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
  v5 = [(UIButton *)self->_footerButton titleLabel];
  [v5 setLineBreakMode:0];

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
  v15 = [(UIButton *)self->_footerButton titleLabel];
  [v15 setNumberOfLines:0];

  [(UIButton *)self->_footerButton setContentHorizontalAlignment:4];
  v16 = [(TableViewSelectableFooterView *)self contentView];
  [v16 addSubview:self->_footerButton];
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

- (TableViewSelectableFooterView)initWithReuseIdentifier:(id)a3 options:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = TableViewSelectableFooterView;
  v7 = [(TableViewSelectableFooterView *)&v15 initWithReuseIdentifier:a3];
  if (v7)
  {
    v8 = [v6 labelText];
    footerLabelText = v7->_footerLabelText;
    v7->_footerLabelText = v8;

    v10 = [v6 linkText];
    footerLinkText = v7->_footerLinkText;
    v7->_footerLinkText = v10;

    [(TableViewSelectableFooterView *)v7 _createSubviews];
    v12 = [(TableViewSelectableFooterView *)v7 _initialConstraints];
    [NSLayoutConstraint activateConstraints:v12];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v7 selector:"contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v7;
}

@end