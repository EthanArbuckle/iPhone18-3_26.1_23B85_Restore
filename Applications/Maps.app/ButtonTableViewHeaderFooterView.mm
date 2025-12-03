@interface ButtonTableViewHeaderFooterView
- (BOOL)shouldStack;
- (ButtonTableViewHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (void)_contentSizeChanged:(id)changed;
- (void)_setConstraints:(BOOL)constraints;
- (void)_updateConstraintsIfNeeded;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateAXIdentifiersWithPrefix:(id)prefix;
@end

@implementation ButtonTableViewHeaderFooterView

- (void)updateAXIdentifiersWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [prefixCopy stringByAppendingString:@"TableHeaderFooter"];
  [(ButtonTableViewHeaderFooterView *)self setAccessibilityIdentifier:v5];

  v6 = [prefixCopy stringByAppendingString:@"TableHeaderFooterTitle"];
  titleLabel = [(MapsGroupedTableHeaderView *)self titleLabel];
  [titleLabel setAccessibilityIdentifier:v6];

  v8 = [prefixCopy stringByAppendingString:@"TableHeaderFooterButton"];
  [(UIButton *)self->_button setAccessibilityIdentifier:v8];

  v10 = [prefixCopy stringByAppendingString:@"TableHeaderFooterButtonLabel"];

  titleLabel2 = [(UIButton *)self->_button titleLabel];
  [titleLabel2 setAccessibilityIdentifier:v10];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = ButtonTableViewHeaderFooterView;
  [(ButtonTableViewHeaderFooterView *)&v5 prepareForReuse];
  titleLabel = [(MapsGroupedTableHeaderView *)self titleLabel];
  [titleLabel setText:0];

  titleLabel2 = [(UIButton *)self->_button titleLabel];
  [titleLabel2 setText:0];

  [(UIButton *)self->_button removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
}

- (void)layoutSubviews
{
  [(ButtonTableViewHeaderFooterView *)self _updateConstraintsIfNeeded];
  v3.receiver = self;
  v3.super_class = ButtonTableViewHeaderFooterView;
  [(ButtonTableViewHeaderFooterView *)&v3 layoutSubviews];
}

- (void)_contentSizeChanged:(id)changed
{
  v6.receiver = self;
  v6.super_class = ButtonTableViewHeaderFooterView;
  [(MapsGroupedTableHeaderView *)&v6 _contentSizeChanged:changed];
  v4 = +[RAPFontManager tableHeaderViewButtonFont];
  titleLabel = [(UIButton *)self->_button titleLabel];
  [titleLabel setFont:v4];

  [(ButtonTableViewHeaderFooterView *)self _updateConstraintsIfNeeded];
}

- (void)_updateConstraintsIfNeeded
{
  shouldStack = [(ButtonTableViewHeaderFooterView *)self shouldStack];
  if (self->_stacking != shouldStack || !self->_constraints)
  {

    [(ButtonTableViewHeaderFooterView *)self _setConstraints:shouldStack];
  }
}

- (void)_setConstraints:(BOOL)constraints
{
  constraintsCopy = constraints;
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  self->_stacking = constraintsCopy;
  trailingAnchor = [(UIButton *)self->_button trailingAnchor];
  contentView = [(ButtonTableViewHeaderFooterView *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v28 = v9;
  v10 = [NSArray arrayWithObjects:&v28 count:1];
  v11 = [NSMutableArray arrayWithArray:v10];
  constraints = self->_constraints;
  self->_constraints = v11;

  v25 = self->_constraints;
  button = self->_button;
  if (constraintsCopy)
  {
    topAnchor = [(UIButton *)button topAnchor];
    titleLabel = [(MapsGroupedTableHeaderView *)self titleLabel];
    bottomAnchor = [titleLabel bottomAnchor];
    v17 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v27[0] = v17;
    bottomAnchor2 = [(UIButton *)self->_button bottomAnchor];
    contentView2 = [(ButtonTableViewHeaderFooterView *)self contentView];
    bottomAnchor3 = [contentView2 bottomAnchor];
    lastBaselineAnchor = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v27[1] = lastBaselineAnchor;
    v22 = [NSArray arrayWithObjects:v27 count:2];
    [(NSMutableArray *)v25 addObjectsFromArray:v22];
  }

  else
  {
    leadingAnchor = [(UIButton *)button leadingAnchor];
    titleLabel = [(MapsGroupedTableHeaderView *)self titleLabel];
    bottomAnchor = [titleLabel trailingAnchor];
    v17 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:5.0];
    v26[0] = v17;
    bottomAnchor2 = [(UIButton *)self->_button titleLabel];
    contentView2 = [bottomAnchor2 firstBaselineAnchor];
    bottomAnchor3 = [(MapsGroupedTableHeaderView *)self titleLabel];
    lastBaselineAnchor = [bottomAnchor3 lastBaselineAnchor];
    v22 = [contentView2 constraintEqualToAnchor:lastBaselineAnchor];
    v26[1] = v22;
    v23 = [NSArray arrayWithObjects:v26 count:2];
    [(NSMutableArray *)v25 addObjectsFromArray:v23];

    topAnchor = leadingAnchor;
  }

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (BOOL)shouldStack
{
  button = [(ButtonTableViewHeaderFooterView *)self button];
  titleLabel = [button titleLabel];
  text = [titleLabel text];
  v6 = [text length];

  if (!v6)
  {
    return 0;
  }

  [(ButtonTableViewHeaderFooterView *)self frame];
  v8 = v7 + -37.0;
  titleLabel2 = [(MapsGroupedTableHeaderView *)self titleLabel];
  text2 = [titleLabel2 text];
  v24 = NSFontAttributeName;
  v11 = +[RAPFontManager tableHeaderViewFont];
  v25 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [text2 sizeWithAttributes:v12];
  v14 = v13;

  titleLabel3 = [(UIButton *)self->_button titleLabel];
  text3 = [titleLabel3 text];
  v22 = NSFontAttributeName;
  v17 = +[RAPFontManager tableHeaderViewButtonFont];
  v23 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [text3 sizeWithAttributes:v18];
  v20 = v19;

  return v8 < v20 + v14;
}

- (ButtonTableViewHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v20.receiver = self;
  v20.super_class = ButtonTableViewHeaderFooterView;
  v3 = [(MapsGroupedTableHeaderView *)&v20 initWithReuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(ButtonTableViewHeaderFooterView *)v3 setAccessibilityIdentifier:@"ButtonTableViewHeaderFooter"];
    v5 = [UIButton buttonWithType:0];
    [(UIButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[RAPFontManager tableHeaderViewButtonFont];
    titleLabel = [(UIButton *)v5 titleLabel];
    [titleLabel setFont:v6];

    theme = [(ButtonTableViewHeaderFooterView *)v4 theme];
    keyColor = [theme keyColor];
    [(UIButton *)v5 setTitleColor:keyColor forState:0];

    LODWORD(v10) = 1148846080;
    [(UIButton *)v5 setContentHuggingPriority:1 forAxis:v10];
    titleLabel2 = [(UIButton *)v5 titleLabel];
    LODWORD(v12) = 1148846080;
    [titleLabel2 setContentHuggingPriority:1 forAxis:v12];

    LODWORD(v13) = 1148846080;
    [(UIButton *)v5 setContentCompressionResistancePriority:1 forAxis:v13];
    titleLabel3 = [(UIButton *)v5 titleLabel];
    LODWORD(v15) = 1148846080;
    [titleLabel3 setContentCompressionResistancePriority:1 forAxis:v15];

    [(UIButton *)v5 setAccessibilityIdentifier:@"ButtonTableViewHeaderFooterButton"];
    titleLabel4 = [(UIButton *)v5 titleLabel];
    [titleLabel4 setAccessibilityIdentifier:@"ButtonTableViewHeaderFooterButtonLabel"];

    contentView = [(ButtonTableViewHeaderFooterView *)v4 contentView];
    [contentView addSubview:v5];

    button = v4->_button;
    v4->_button = v5;

    [(ButtonTableViewHeaderFooterView *)v4 _contentSizeChanged:0];
  }

  return v4;
}

@end