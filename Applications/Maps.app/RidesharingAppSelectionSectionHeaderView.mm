@interface RidesharingAppSelectionSectionHeaderView
- (RidesharingAppSelectionSectionHeaderView)initWithFrame:(CGRect)frame;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateContentSizeCategoryDependentFontsAndConstraints;
- (void)dealloc;
@end

@implementation RidesharingAppSelectionSectionHeaderView

- (void)_updateContentSizeCategoryDependentFontsAndConstraints
{
  v3 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 addingSymbolicTraits:2];
  [(UILabel *)self->_majorLabel setFont:v3];

  font = [(UILabel *)self->_majorLabel font];
  [font _mapkit_scaledValueForValue:30.0];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];
}

- (void)_setupConstraints
{
  contentView = [(MapsThemeCollectionReusableView *)self contentView];
  heightAnchor = [contentView heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v5;

  LODWORD(v7) = 1148829696;
  [(NSLayoutConstraint *)self->_heightConstraint setPriority:v7];
  leadingAnchor = [(UILabel *)self->_majorLabel leadingAnchor];
  contentView2 = [(MapsThemeCollectionReusableView *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v23[0] = v19;
  trailingAnchor = [(UILabel *)self->_majorLabel trailingAnchor];
  contentView3 = [(MapsThemeCollectionReusableView *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v11 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-16.0];
  v12 = self->_heightConstraint;
  v23[1] = v11;
  v23[2] = v12;
  bottomAnchor = [(UILabel *)self->_majorLabel bottomAnchor];
  contentView4 = [(MapsThemeCollectionReusableView *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[3] = v16;
  v17 = [NSArray arrayWithObjects:v23 count:4];
  v18 = [NSMutableArray arrayWithArray:v17];

  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_setupViews
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  majorLabel = self->_majorLabel;
  self->_majorLabel = v3;

  [(UILabel *)self->_majorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_majorLabel setTextColor:v5];

  contentView = [(MapsThemeCollectionReusableView *)self contentView];
  [contentView addSubview:self->_majorLabel];

  [(MapsThemeCollectionReusableView *)self updateTheme];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RidesharingAppSelectionSectionHeaderView;
  [(RidesharingAppSelectionSectionHeaderView *)&v4 dealloc];
}

- (RidesharingAppSelectionSectionHeaderView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = RidesharingAppSelectionSectionHeaderView;
  v3 = [(MapsThemeCollectionReusableView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RidesharingAppSelectionSectionHeaderView *)v3 _setupViews];
    [(RidesharingAppSelectionSectionHeaderView *)v4 _setupConstraints];
    [(RidesharingAppSelectionSectionHeaderView *)v4 _updateContentSizeCategoryDependentFontsAndConstraints];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_updateContentSizeCategoryDependentFontsAndConstraints" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

@end