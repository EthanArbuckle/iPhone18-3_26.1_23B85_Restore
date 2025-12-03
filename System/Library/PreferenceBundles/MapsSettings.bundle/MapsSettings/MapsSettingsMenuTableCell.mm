@interface MapsSettingsMenuTableCell
- (MapsSettingsMenuTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupViews;
- (void)_updateConstraints;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)willMoveToWindow:(id)window;
@end

@implementation MapsSettingsMenuTableCell

- (MapsSettingsMenuTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = MapsSettingsMenuTableCell;
  v4 = [(MapsSettingsMenuTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MapsSettingsMenuTableCell *)v4 setShouldHideTitle:1];
    [(MapsSettingsMenuTableCell *)v5 _setupViews];
    v6 = objc_opt_self();
    v11 = v6;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = [(MapsSettingsMenuTableCell *)v5 registerForTraitChanges:v7 withAction:"_updateConstraints"];
  }

  return v5;
}

- (void)willMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = MapsSettingsMenuTableCell;
  [(MapsSettingsMenuTableCell *)&v4 willMoveToWindow:window];
  [(MapsSettingsMenuTableCell *)self _updateConstraints];
}

- (void)_setupViews
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  label = self->_label;
  self->_label = v3;

  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_label setNumberOfLines:0];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_label setFont:v5];

  [(UILabel *)self->_label setAdjustsFontForContentSizeCategory:1];
  contentView = [(MapsSettingsMenuTableCell *)self contentView];
  [contentView addSubview:self->_label];

  v12 = +[UIButtonConfiguration plainButtonConfiguration];
  v7 = +[UIColor secondaryLabelColor];
  [v12 setBaseForegroundColor:v7];

  v8 = [UIButton buttonWithConfiguration:v12 primaryAction:0];
  menuButton = self->_menuButton;
  self->_menuButton = v8;

  [(UIButton *)self->_menuButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v10) = 1148846080;
  [(UIButton *)self->_menuButton setContentHuggingPriority:0 forAxis:v10];
  [(UIButton *)self->_menuButton setShowsMenuAsPrimaryAction:1];
  [(UIButton *)self->_menuButton setChangesSelectionAsPrimaryAction:1];
  contentView2 = [(MapsSettingsMenuTableCell *)self contentView];
  [contentView2 addSubview:self->_menuButton];
}

- (void)_updateConstraints
{
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  traitCollection = [(MapsSettingsMenuTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  leadingAnchor = [(UILabel *)self->_label leadingAnchor];
  contentView = [(MapsSettingsMenuTableCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  [layoutMarginsGuide leadingAnchor];
  v49 = v53 = leadingAnchor;
  v9 = [leadingAnchor constraintEqualToAnchor:?];
  v67 = v9;
  if (IsAccessibilityCategory)
  {
    v69[0] = v9;
    trailingAnchor = [(UILabel *)self->_label trailingAnchor];
    contentView2 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v63 = [trailingAnchor constraintEqualToAnchor:?];
    v69[1] = v63;
    topAnchor = [(UILabel *)self->_label topAnchor];
    contentView3 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    [layoutMarginsGuide3 topAnchor];
    v59 = v62 = topAnchor;
    v58 = [topAnchor constraintEqualToAnchor:?];
    v69[2] = v58;
    leadingAnchor2 = [(UIButton *)self->_menuButton leadingAnchor];
    contentView4 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
    leadingAnchor3 = [layoutMarginsGuide4 leadingAnchor];
    v57 = leadingAnchor2;
    v14 = leadingAnchor2;
    v15 = leadingAnchor3;
    v54 = [v14 constraintEqualToAnchor:leadingAnchor3];
    v69[3] = v54;
    trailingAnchor3 = [(UIButton *)self->_menuButton trailingAnchor];
    contentView5 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
    [layoutMarginsGuide5 trailingAnchor];
    trailingAnchor4 = v52 = trailingAnchor3;
    contentView7 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    v69[4] = contentView7;
    topAnchor2 = [(UIButton *)self->_menuButton topAnchor];
    bottomAnchor = [(UILabel *)self->_label bottomAnchor];
    v47 = [topAnchor2 constraintEqualToAnchor:bottomAnchor];
    v69[5] = v47;
    bottomAnchor2 = [(UIButton *)self->_menuButton bottomAnchor];
    contentView6 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide6 = [contentView6 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide6 bottomAnchor];
    v43 = [bottomAnchor2 constraintEqualToAnchor:?];
    v69[6] = v43;
    v20 = [NSArray arrayWithObjects:v69 count:7];
    constraints = self->_constraints;
    self->_constraints = v20;
  }

  else
  {
    v68[0] = v9;
    topAnchor3 = [(UILabel *)self->_label topAnchor];
    contentView2 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 topAnchor];
    v63 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:?];
    v68[1] = v63;
    bottomAnchor4 = [(UILabel *)self->_label bottomAnchor];
    contentView3 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    [layoutMarginsGuide3 bottomAnchor];
    v59 = v62 = bottomAnchor4;
    v58 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:?];
    v68[2] = v58;
    centerYAnchor = [(UILabel *)self->_label centerYAnchor];
    contentView4 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide4 centerYAnchor];
    v57 = centerYAnchor;
    v54 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v68[3] = v54;
    leadingAnchor4 = [(UIButton *)self->_menuButton leadingAnchor];
    contentView5 = [(UILabel *)self->_label trailingAnchor];
    v52 = leadingAnchor4;
    layoutMarginsGuide5 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:8.0 constant:?];
    v68[4] = layoutMarginsGuide5;
    trailingAnchor4 = [(UIButton *)self->_menuButton trailingAnchor];
    contentView7 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide7 = [contentView7 layoutMarginsGuide];
    trailingAnchor5 = [layoutMarginsGuide7 trailingAnchor];
    v47 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v68[5] = v47;
    bottomAnchor2 = [(UIButton *)self->_menuButton topAnchor];
    contentView6 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide6 = [contentView6 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide6 topAnchor];
    v43 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:?];
    v68[6] = v43;
    constraints = [(UIButton *)self->_menuButton bottomAnchor];
    contentView8 = [(MapsSettingsMenuTableCell *)self contentView];
    layoutMarginsGuide8 = [contentView8 layoutMarginsGuide];
    bottomAnchor5 = [layoutMarginsGuide8 bottomAnchor];
    v33 = [constraints constraintLessThanOrEqualToAnchor:bottomAnchor5];
    v68[7] = v33;
    centerYAnchor3 = [(UIButton *)self->_menuButton centerYAnchor];
    [(MapsSettingsMenuTableCell *)self contentView];
    v26 = v41 = layoutMarginsGuide;
    layoutMarginsGuide9 = [v26 layoutMarginsGuide];
    [layoutMarginsGuide9 centerYAnchor];
    v29 = v28 = contentView;
    v30 = [centerYAnchor3 constraintEqualToAnchor:v29];
    v68[8] = v30;
    v31 = [NSArray arrayWithObjects:v68 count:9];
    v32 = self->_constraints;
    self->_constraints = v31;

    bottomAnchor = trailingAnchor5;
    contentView = v28;
    topAnchor2 = layoutMarginsGuide7;

    v15 = centerYAnchor2;
    layoutMarginsGuide = v41;

    trailingAnchor = topAnchor3;
  }

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MapsSettingsMenuTableCell;
  [(MapsSettingsMenuTableCell *)&v3 prepareForReuse];
  [(UIButton *)self->_menuButton setMenu:0];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = MapsSettingsMenuTableCell;
  [(MapsSettingsMenuTableCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  name = [specifierCopy name];
  [(UILabel *)self->_label setText:name];

  userInfo = [specifierCopy userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    userInfo2 = [specifierCopy userInfo];
  }

  else
  {
    userInfo2 = 0;
  }

  [(UIButton *)self->_menuButton setMenu:userInfo2];
  [(MapsSettingsMenuTableCell *)self _setPopupMenuButton:self->_menuButton];
  [(MapsSettingsMenuTableCell *)self setSelectionStyle:3];
}

@end