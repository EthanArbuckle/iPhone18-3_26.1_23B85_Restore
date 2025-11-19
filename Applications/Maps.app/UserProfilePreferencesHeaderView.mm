@interface UserProfilePreferencesHeaderView
- (UserProfilePreferencesHeaderView)initWithFrame:(CGRect)a3;
- (void)_updateForCollapsed;
- (void)_updateForFooter;
- (void)setCollapsed:(BOOL)a3;
- (void)setFooter:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation UserProfilePreferencesHeaderView

- (void)_updateForFooter
{
  if ([(UserProfilePreferencesHeaderView *)self isFooter])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 9.0;
  }

  [(NSLayoutConstraint *)self->_topConstraint setConstant:v3];
  bottomConstraint = self->_bottomConstraint;

  [(NSLayoutConstraint *)bottomConstraint setConstant:v3];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UserProfilePreferencesHeaderView;
  [(UserProfilePreferencesHeaderView *)&v5 setHidden:?];
  [(UserProfilePreferencesHeaderView *)self setCollapsed:v3];
}

- (void)_updateForCollapsed
{
  if (self->_collapsed)
  {
    [(NSLayoutConstraint *)self->_topConstraint setActive:0];
    [(NSLayoutConstraint *)self->_bottomConstraint setActive:0];
    p_collapsedHeightConstraint = &self->_collapsedHeightConstraint;
    [(NSLayoutConstraint *)*p_collapsedHeightConstraint setConstant:0.0];
  }

  else
  {
    [(NSLayoutConstraint *)self->_collapsedHeightConstraint setActive:0];
    [(NSLayoutConstraint *)self->_topConstraint setActive:1];
    p_collapsedHeightConstraint = &self->_bottomConstraint;
  }

  v4 = *p_collapsedHeightConstraint;

  [(NSLayoutConstraint *)v4 setActive:1];
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(UserProfilePreferencesHeaderView *)self _updateForCollapsed];
  }
}

- (void)setFooter:(BOOL)a3
{
  if (self->_footer != a3)
  {
    self->_footer = a3;
    [(UserProfilePreferencesHeaderView *)self _updateForFooter];

    [(UserProfilePreferencesHeaderView *)self _updateForCollapsed];
  }
}

- (UserProfilePreferencesHeaderView)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = UserProfilePreferencesHeaderView;
  v3 = [(MapsThemeCollectionReusableView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UserProfilePreferencesHeaderView *)v3 setAccessibilityIdentifier:@"UserProfilePreferencesHeader"];
    v5 = sub_10000FA08(v4);
    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    textLabel = v4->_textLabel;
    v4->_textLabel = v6;

    [(UILabel *)v4->_textLabel setAccessibilityIdentifier:@"TextLabel"];
    [(UILabel *)v4->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_textLabel setNumberOfLines:0];
    if (v5 == 5)
    {
      [UIFont systemFontOfSize:17.0];
    }

    else
    {
      [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline weight:UIFontWeightSemibold];
    }
    v8 = ;
    [(UILabel *)v4->_textLabel setFont:v8];

    v9 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_textLabel setTextColor:v9];

    [(UILabel *)v4->_textLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v10) = 1148846080;
    [(UILabel *)v4->_textLabel setContentHuggingPriority:1 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [(UILabel *)v4->_textLabel setContentCompressionResistancePriority:1 forAxis:v11];
    v12 = [(MapsThemeCollectionReusableView *)v4 contentView];
    [v12 addSubview:v4->_textLabel];

    [(UserProfilePreferencesHeaderView *)v4 setDirectionalLayoutMargins:0.0, 0.0, 0.0, 0.0];
    v13 = v4->_textLabel;
    v14 = [(MapsThemeCollectionReusableView *)v4 contentView];
    LODWORD(v15) = 1148846080;
    v16 = [(UILabel *)v13 _maps_constraintsEqualToEdgesOfView:v14 priority:v15];

    v17 = [v16 topConstraint];
    topConstraint = v4->_topConstraint;
    v4->_topConstraint = v17;

    v19 = [v16 bottomConstraint];
    bottomConstraint = v4->_bottomConstraint;
    v4->_bottomConstraint = v19;

    v21 = [(MapsThemeCollectionReusableView *)v4 contentView];
    v22 = [v21 heightAnchor];
    v23 = [v22 constraintEqualToConstant:0.0];
    collapsedHeightConstraint = v4->_collapsedHeightConstraint;
    v4->_collapsedHeightConstraint = v23;

    v25 = [v16 allConstraints];
    [NSLayoutConstraint activateConstraints:v25];

    [(UserProfilePreferencesHeaderView *)v4 _updateForFooter];
  }

  return v4;
}

@end