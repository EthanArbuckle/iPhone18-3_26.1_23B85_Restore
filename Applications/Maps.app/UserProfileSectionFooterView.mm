@interface UserProfileSectionFooterView
- (void)_footerLinkHandler;
- (void)_setupView;
- (void)_updateForCollapsed;
- (void)_updateForFooter;
- (void)configureWithViewModel:(id)model;
@end

@implementation UserProfileSectionFooterView

- (void)_footerLinkHandler
{
  v3 = [UITapGestureRecognizer alloc];
  viewModel = [(UserProfileSectionFooterView *)self viewModel];
  target = [viewModel target];
  viewModel2 = [(UserProfileSectionFooterView *)self viewModel];
  v7 = [v3 initWithTarget:target action:{objc_msgSend(viewModel2, "action")}];

  [v7 setNumberOfTapsRequired:1];
  [(UserProfileSectionFooterView *)self addGestureRecognizer:v7];
  [(UserProfileSectionFooterView *)self setUserInteractionEnabled:1];
}

- (void)_updateForFooter
{
  v3 = sub_10000FA08(self);
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote];
  [(UILabel *)self->_textLabel setFont:v4];

  viewModel = [(UserProfileSectionFooterView *)self viewModel];
  containsLink = [viewModel containsLink];

  if (containsLink)
  {
    [(UserProfileSectionFooterView *)self _footerLinkHandler];
  }

  else
  {
    v7 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_textLabel setTextColor:v7];
  }

  v8 = 0.0;
  [(UserProfileSectionFooterView *)self setDirectionalLayoutMargins:0.0, 16.0, 0.0, 16.0];
  v9 = 4.0;
  if (v3 == 5)
  {
    v8 = 6.0;
  }

  else
  {
    v9 = 0.0;
  }

  [(NSLayoutConstraint *)self->_topConstraint setConstant:v9];
  [(NSLayoutConstraint *)self->_bottomConstraint setConstant:v8];

  [(UserProfileSectionFooterView *)self _updateForCollapsed];
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

- (void)_setupView
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  textLabel = self->_textLabel;
  self->_textLabel = v3;

  [(UILabel *)self->_textLabel setAccessibilityIdentifier:@"TextLabel"];
  [(UILabel *)self->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_textLabel setNumberOfLines:0];
  contentView = [(MapsThemeCollectionReusableView *)self contentView];
  [contentView addSubview:self->_textLabel];

  [(UserProfileSectionFooterView *)self setDirectionalLayoutMargins:0.0, 0.0, 0.0, 0.0];
  v6 = self->_textLabel;
  contentView2 = [(MapsThemeCollectionReusableView *)self contentView];
  LODWORD(v8) = 1148846080;
  v18 = [(UILabel *)v6 _maps_constraintsEqualToEdgesOfView:contentView2 priority:v8];

  topConstraint = [v18 topConstraint];
  topConstraint = self->_topConstraint;
  self->_topConstraint = topConstraint;

  bottomConstraint = [v18 bottomConstraint];
  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = bottomConstraint;

  contentView3 = [(MapsThemeCollectionReusableView *)self contentView];
  heightAnchor = [contentView3 heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:0.0];
  collapsedHeightConstraint = self->_collapsedHeightConstraint;
  self->_collapsedHeightConstraint = v15;

  allConstraints = [v18 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (void)configureWithViewModel:(id)model
{
  modelCopy = model;
  objc_storeStrong(&self->_viewModel, model);
  viewModel = [(UserProfileSectionFooterView *)self viewModel];
  self->_collapsed = [viewModel isCollapsed];

  [(UserProfileSectionFooterView *)self setAccessibilityIdentifier:@"UserProfileSectionFooter"];
  if (!self->_textLabel)
  {
    [(UserProfileSectionFooterView *)self _setupView];
  }

  viewModel2 = [(UserProfileSectionFooterView *)self viewModel];
  contentString = [viewModel2 contentString];
  [(UILabel *)self->_textLabel setAttributedText:contentString];

  text = [(UILabel *)self->_textLabel text];

  if (!text)
  {
    self->_collapsed = 1;
  }

  [(UserProfileSectionFooterView *)self _updateForFooter];
}

@end