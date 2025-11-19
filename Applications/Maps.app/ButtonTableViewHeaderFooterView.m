@interface ButtonTableViewHeaderFooterView
- (BOOL)shouldStack;
- (ButtonTableViewHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (void)_contentSizeChanged:(id)a3;
- (void)_setConstraints:(BOOL)a3;
- (void)_updateConstraintsIfNeeded;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateAXIdentifiersWithPrefix:(id)a3;
@end

@implementation ButtonTableViewHeaderFooterView

- (void)updateAXIdentifiersWithPrefix:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingString:@"TableHeaderFooter"];
  [(ButtonTableViewHeaderFooterView *)self setAccessibilityIdentifier:v5];

  v6 = [v4 stringByAppendingString:@"TableHeaderFooterTitle"];
  v7 = [(MapsGroupedTableHeaderView *)self titleLabel];
  [v7 setAccessibilityIdentifier:v6];

  v8 = [v4 stringByAppendingString:@"TableHeaderFooterButton"];
  [(UIButton *)self->_button setAccessibilityIdentifier:v8];

  v10 = [v4 stringByAppendingString:@"TableHeaderFooterButtonLabel"];

  v9 = [(UIButton *)self->_button titleLabel];
  [v9 setAccessibilityIdentifier:v10];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = ButtonTableViewHeaderFooterView;
  [(ButtonTableViewHeaderFooterView *)&v5 prepareForReuse];
  v3 = [(MapsGroupedTableHeaderView *)self titleLabel];
  [v3 setText:0];

  v4 = [(UIButton *)self->_button titleLabel];
  [v4 setText:0];

  [(UIButton *)self->_button removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
}

- (void)layoutSubviews
{
  [(ButtonTableViewHeaderFooterView *)self _updateConstraintsIfNeeded];
  v3.receiver = self;
  v3.super_class = ButtonTableViewHeaderFooterView;
  [(ButtonTableViewHeaderFooterView *)&v3 layoutSubviews];
}

- (void)_contentSizeChanged:(id)a3
{
  v6.receiver = self;
  v6.super_class = ButtonTableViewHeaderFooterView;
  [(MapsGroupedTableHeaderView *)&v6 _contentSizeChanged:a3];
  v4 = +[RAPFontManager tableHeaderViewButtonFont];
  v5 = [(UIButton *)self->_button titleLabel];
  [v5 setFont:v4];

  [(ButtonTableViewHeaderFooterView *)self _updateConstraintsIfNeeded];
}

- (void)_updateConstraintsIfNeeded
{
  v3 = [(ButtonTableViewHeaderFooterView *)self shouldStack];
  if (self->_stacking != v3 || !self->_constraints)
  {

    [(ButtonTableViewHeaderFooterView *)self _setConstraints:v3];
  }
}

- (void)_setConstraints:(BOOL)a3
{
  v3 = a3;
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  self->_stacking = v3;
  v5 = [(UIButton *)self->_button trailingAnchor];
  v6 = [(ButtonTableViewHeaderFooterView *)self contentView];
  v7 = [v6 layoutMarginsGuide];
  v8 = [v7 trailingAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];
  v28 = v9;
  v10 = [NSArray arrayWithObjects:&v28 count:1];
  v11 = [NSMutableArray arrayWithArray:v10];
  constraints = self->_constraints;
  self->_constraints = v11;

  v25 = self->_constraints;
  button = self->_button;
  if (v3)
  {
    v14 = [(UIButton *)button topAnchor];
    v15 = [(MapsGroupedTableHeaderView *)self titleLabel];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v27[0] = v17;
    v18 = [(UIButton *)self->_button bottomAnchor];
    v19 = [(ButtonTableViewHeaderFooterView *)self contentView];
    v20 = [v19 bottomAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v27[1] = v21;
    v22 = [NSArray arrayWithObjects:v27 count:2];
    [(NSMutableArray *)v25 addObjectsFromArray:v22];
  }

  else
  {
    v24 = [(UIButton *)button leadingAnchor];
    v15 = [(MapsGroupedTableHeaderView *)self titleLabel];
    v16 = [v15 trailingAnchor];
    v17 = [v24 constraintGreaterThanOrEqualToAnchor:v16 constant:5.0];
    v26[0] = v17;
    v18 = [(UIButton *)self->_button titleLabel];
    v19 = [v18 firstBaselineAnchor];
    v20 = [(MapsGroupedTableHeaderView *)self titleLabel];
    v21 = [v20 lastBaselineAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    v26[1] = v22;
    v23 = [NSArray arrayWithObjects:v26 count:2];
    [(NSMutableArray *)v25 addObjectsFromArray:v23];

    v14 = v24;
  }

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (BOOL)shouldStack
{
  v3 = [(ButtonTableViewHeaderFooterView *)self button];
  v4 = [v3 titleLabel];
  v5 = [v4 text];
  v6 = [v5 length];

  if (!v6)
  {
    return 0;
  }

  [(ButtonTableViewHeaderFooterView *)self frame];
  v8 = v7 + -37.0;
  v9 = [(MapsGroupedTableHeaderView *)self titleLabel];
  v10 = [v9 text];
  v24 = NSFontAttributeName;
  v11 = +[RAPFontManager tableHeaderViewFont];
  v25 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [v10 sizeWithAttributes:v12];
  v14 = v13;

  v15 = [(UIButton *)self->_button titleLabel];
  v16 = [v15 text];
  v22 = NSFontAttributeName;
  v17 = +[RAPFontManager tableHeaderViewButtonFont];
  v23 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [v16 sizeWithAttributes:v18];
  v20 = v19;

  return v8 < v20 + v14;
}

- (ButtonTableViewHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v20.receiver = self;
  v20.super_class = ButtonTableViewHeaderFooterView;
  v3 = [(MapsGroupedTableHeaderView *)&v20 initWithReuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(ButtonTableViewHeaderFooterView *)v3 setAccessibilityIdentifier:@"ButtonTableViewHeaderFooter"];
    v5 = [UIButton buttonWithType:0];
    [(UIButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[RAPFontManager tableHeaderViewButtonFont];
    v7 = [(UIButton *)v5 titleLabel];
    [v7 setFont:v6];

    v8 = [(ButtonTableViewHeaderFooterView *)v4 theme];
    v9 = [v8 keyColor];
    [(UIButton *)v5 setTitleColor:v9 forState:0];

    LODWORD(v10) = 1148846080;
    [(UIButton *)v5 setContentHuggingPriority:1 forAxis:v10];
    v11 = [(UIButton *)v5 titleLabel];
    LODWORD(v12) = 1148846080;
    [v11 setContentHuggingPriority:1 forAxis:v12];

    LODWORD(v13) = 1148846080;
    [(UIButton *)v5 setContentCompressionResistancePriority:1 forAxis:v13];
    v14 = [(UIButton *)v5 titleLabel];
    LODWORD(v15) = 1148846080;
    [v14 setContentCompressionResistancePriority:1 forAxis:v15];

    [(UIButton *)v5 setAccessibilityIdentifier:@"ButtonTableViewHeaderFooterButton"];
    v16 = [(UIButton *)v5 titleLabel];
    [v16 setAccessibilityIdentifier:@"ButtonTableViewHeaderFooterButtonLabel"];

    v17 = [(ButtonTableViewHeaderFooterView *)v4 contentView];
    [v17 addSubview:v5];

    button = v4->_button;
    v4->_button = v5;

    [(ButtonTableViewHeaderFooterView *)v4 _contentSizeChanged:0];
  }

  return v4;
}

@end