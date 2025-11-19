@interface RidesharingAppSelectionSectionHeaderView
- (RidesharingAppSelectionSectionHeaderView)initWithFrame:(CGRect)a3;
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

  v4 = [(UILabel *)self->_majorLabel font];
  [v4 _mapkit_scaledValueForValue:30.0];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];
}

- (void)_setupConstraints
{
  v3 = [(MapsThemeCollectionReusableView *)self contentView];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v5;

  LODWORD(v7) = 1148829696;
  [(NSLayoutConstraint *)self->_heightConstraint setPriority:v7];
  v21 = [(UILabel *)self->_majorLabel leadingAnchor];
  v22 = [(MapsThemeCollectionReusableView *)self contentView];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:16.0];
  v23[0] = v19;
  v8 = [(UILabel *)self->_majorLabel trailingAnchor];
  v9 = [(MapsThemeCollectionReusableView *)self contentView];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintLessThanOrEqualToAnchor:v10 constant:-16.0];
  v12 = self->_heightConstraint;
  v23[1] = v11;
  v23[2] = v12;
  v13 = [(UILabel *)self->_majorLabel bottomAnchor];
  v14 = [(MapsThemeCollectionReusableView *)self contentView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
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

  v6 = [(MapsThemeCollectionReusableView *)self contentView];
  [v6 addSubview:self->_majorLabel];

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

- (RidesharingAppSelectionSectionHeaderView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = RidesharingAppSelectionSectionHeaderView;
  v3 = [(MapsThemeCollectionReusableView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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