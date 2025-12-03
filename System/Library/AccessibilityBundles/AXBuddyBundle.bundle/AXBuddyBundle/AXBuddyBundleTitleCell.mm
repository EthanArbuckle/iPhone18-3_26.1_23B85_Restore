@interface AXBuddyBundleTitleCell
- (AXBuddyBundleTitleCell)initWithCoder:(id)coder;
- (AXBuddyBundleTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_commonInit;
- (void)setSeparatorStyle:(int64_t)style;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AXBuddyBundleTitleCell

- (id)_commonInit
{
  [(AXBuddyBundleTitleCell *)self setSeparatorStyle:0];
  self->_separatorStyleLocked = 1;
  v3 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  v5 = AXBuddyBundleLocString(@"TITLE_CELL_TITLE");
  [(UILabel *)self->_titleLabel setText:v5];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:_UISolariumEnabled() ^ 1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = sub_3BD8();
  [v6 applyThemeToTitleLabel:self->_titleLabel];

  contentView = [(AXBuddyBundleTitleCell *)self contentView];
  [contentView addSubview:self->_titleLabel];

  v8 = objc_opt_new();
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v8;

  v10 = AXLocStringKeyForModel();
  v11 = AXBuddyBundleLocString(v10);
  [(UILabel *)self->_subtitleLabel setText:v11];

  v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_subtitleLabel setFont:v12];

  [(UILabel *)self->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setTextAlignment:_UISolariumEnabled() ^ 1];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(AXBuddyBundleTitleCell *)self contentView];
  [contentView2 addSubview:self->_subtitleLabel];

  v14 = _NSDictionaryOfVariableBindings(@"_titleLabel, _subtitleLabel", self->_titleLabel, self->_subtitleLabel, 0);
  v15 = +[NSMutableArray array];
  v16 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-[_titleLabel]-|", 0, 0, v14);
  [v15 addObjectsFromArray:v16];

  v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-[_subtitleLabel]-|", 0, 0, v14);
  [v15 addObjectsFromArray:v17];

  v18 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[_titleLabel]-[_subtitleLabel]-|", 0, 0, v14);
  [v15 addObjectsFromArray:v18];

  [NSLayoutConstraint activateConstraints:v15];
  v19 = sub_3BD8();
  backgroundColor = [v19 backgroundColor];
  [(AXBuddyBundleTitleCell *)self setBackgroundColor:backgroundColor];

  return self;
}

- (void)traitCollectionDidChange:(id)change
{
  v4 = sub_3BD8();
  [v4 applyThemeToTitleLabel:self->_titleLabel];
}

- (void)setSeparatorStyle:(int64_t)style
{
  if (!self->_separatorStyleLocked)
  {
    v3.receiver = self;
    v3.super_class = AXBuddyBundleTitleCell;
    [(AXBuddyBundleTitleCell *)&v3 setSeparatorStyle:style];
  }
}

- (AXBuddyBundleTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AXBuddyBundleTitleCell;
  v4 = [(AXBuddyBundleTitleCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  _commonInit = [(AXBuddyBundleTitleCell *)v4 _commonInit];

  return _commonInit;
}

- (AXBuddyBundleTitleCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AXBuddyBundleTitleCell;
  v3 = [(AXBuddyBundleTitleCell *)&v6 initWithCoder:coder];
  _commonInit = [(AXBuddyBundleTitleCell *)v3 _commonInit];

  return _commonInit;
}

@end