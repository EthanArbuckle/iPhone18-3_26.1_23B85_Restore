@interface VenueFloorPickerCell
+ (double)cellHeight;
+ (id)floorNameFont;
- (VenueFloorPickerCell)initWithFrame:(CGRect)frame;
- (void)_updateSelectedBackgroundCorners;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
- (void)setShowSelection:(BOOL)selection;
- (void)updateStyle;
@end

@implementation VenueFloorPickerCell

- (void)_updateSelectedBackgroundCorners
{
  if (_UISolariumEnabled())
  {
    [(UIView *)self->_selectionBackgroundView bounds];
    v3 = CGRectGetWidth(v6) * 0.5;
    layer = [(UIView *)self->_selectionBackgroundView layer];
    [layer setCornerRadius:v3];
  }
}

- (void)updateStyle
{
  v3 = +[UIColor tertiarySystemFillColor];
  selectionBackgroundView = [(VenueFloorPickerCell *)self selectionBackgroundView];
  [selectionBackgroundView setBackgroundColor:v3];

  if ([(VenueFloorPickerCell *)self isUserLocation])
  {
    theme = [(VenueFloorPickerCell *)self theme];
    keyColor = [theme keyColor];
LABEL_5:
    floorNameLabel2 = keyColor;
    floorNameLabel = [(VenueFloorPickerCell *)self floorNameLabel];
    [floorNameLabel setTextColor:floorNameLabel2];

    goto LABEL_10;
  }

  if ([(VenueFloorPickerCell *)self lacksSearchResults])
  {
    theme = [(VenueFloorPickerCell *)self theme];
    keyColor = [theme venueFloorPickerLackingSearchResultsTextColor];
    goto LABEL_5;
  }

  if (_UISolariumEnabled())
  {
    +[_TtC4Maps23MapsDesignConstantsShim defaultButtonTintColor];
  }

  else
  {
    +[MapsTheme floatingControlsTintColor];
  }
  theme = ;
  floorNameLabel2 = [(VenueFloorPickerCell *)self floorNameLabel];
  [floorNameLabel2 setTextColor:theme];
LABEL_10:

  floorNameLabel3 = [(VenueFloorPickerCell *)self floorNameLabel];
  textColor = [floorNameLabel3 textColor];
  floorNameLabel4 = [(VenueFloorPickerCell *)self floorNameLabel];
  [floorNameLabel4 setHighlightedTextColor:textColor];

  v12 = 0.0;
  if ([(VenueFloorPickerCell *)self isSelected])
  {
    if ([(VenueFloorPickerCell *)self showSelection])
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }
  }

  selectionBackgroundView2 = [(VenueFloorPickerCell *)self selectionBackgroundView];
  [selectionBackgroundView2 setAlpha:v12];

  [(VenueFloorPickerCell *)self _updateSelectedBackgroundCorners];
}

- (void)setShowSelection:(BOOL)selection
{
  self->_showSelection = selection;
  if ([(VenueFloorPickerCell *)self isSelected])
  {

    [(VenueFloorPickerCell *)self updateStyle];
  }
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = VenueFloorPickerCell;
  [(VenueFloorPickerCell *)&v4 setSelected:selected];
  [(VenueFloorPickerCell *)self updateStyle];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VenueFloorPickerCell;
  [(VenueFloorPickerCell *)&v3 layoutSubviews];
  [(VenueFloorPickerCell *)self _updateSelectedBackgroundCorners];
}

- (VenueFloorPickerCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v47.receiver = self;
  v47.super_class = VenueFloorPickerCell;
  v7 = [(VenueFloorPickerCell *)&v47 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(VenueFloorPickerCell *)v7 setAccessibilityIdentifier:@"VenueFloorPickerCell"];
    v9 = objc_alloc_init(UIView);
    selectionBackgroundView = v8->_selectionBackgroundView;
    v8->_selectionBackgroundView = v9;

    [(UIView *)v8->_selectionBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v8->_selectionBackgroundView setAlpha:0.0];
    [(UIView *)v8->_selectionBackgroundView setClipsToBounds:1];
    contentView = [(VenueFloorPickerCell *)v8 contentView];
    [contentView addSubview:v8->_selectionBackgroundView];

    v12 = [[UILabel alloc] initWithFrame:{x + 5.0, y, width + -10.0, height}];
    floorNameLabel = v8->_floorNameLabel;
    v8->_floorNameLabel = v12;

    [(UILabel *)v8->_floorNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[UIColor clearColor];
    [(UILabel *)v8->_floorNameLabel setBackgroundColor:v14];

    [(UILabel *)v8->_floorNameLabel setTextAlignment:1];
    [(UILabel *)v8->_floorNameLabel setBaselineAdjustment:1];
    floorNameFont = [objc_opt_class() floorNameFont];
    [(UILabel *)v8->_floorNameLabel setFont:floorNameFont];

    [(UILabel *)v8->_floorNameLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v8->_floorNameLabel setMinimumScaleFactor:0.25];
    contentView2 = [(VenueFloorPickerCell *)v8 contentView];
    [contentView2 addSubview:v8->_floorNameLabel];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      contentView3 = [(VenueFloorPickerCell *)v8 contentView];
      v18 = [contentView3 _maps_addHairlineAtBottomWithMargin:0.0];
    }

    v19 = [MUEdgeLayout alloc];
    v20 = v8->_selectionBackgroundView;
    contentView4 = [(VenueFloorPickerCell *)v8 contentView];
    v22 = [v19 initWithItem:v20 container:contentView4];

    if (_UISolariumEnabled())
    {
      [v22 setInsets:{4.0, 4.0, 4.0, 4.0}];
    }

    v46 = v22;
    v23 = objc_alloc_init(NSMutableArray);
    leadingAnchor = [(UILabel *)v8->_floorNameLabel leadingAnchor];
    contentView5 = [(VenueFloorPickerCell *)v8 contentView];
    leadingAnchor2 = [contentView5 leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
    v50[0] = v42;
    trailingAnchor = [(UILabel *)v8->_floorNameLabel trailingAnchor];
    contentView6 = [(VenueFloorPickerCell *)v8 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
    v50[1] = v25;
    centerYAnchor = [(UILabel *)v8->_floorNameLabel centerYAnchor];
    contentView7 = [(VenueFloorPickerCell *)v8 contentView];
    centerYAnchor2 = [contentView7 centerYAnchor];
    v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v50[2] = v29;
    v30 = [NSArray arrayWithObjects:v50 count:3];
    [v23 addObjectsFromArray:v30];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      heightAnchor = [(UILabel *)v8->_floorNameLabel heightAnchor];
      contentView8 = [(VenueFloorPickerCell *)v8 contentView];
      heightAnchor2 = [contentView8 heightAnchor];
      LODWORD(v34) = 1144750080;
      v35 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 constant:-16.0 priority:v34];
      v49 = v35;
      v36 = [NSArray arrayWithObjects:&v49 count:1];
      [v23 addObjectsFromArray:v36];
    }

    v48 = v46;
    v37 = [NSArray arrayWithObjects:&v48 count:1];
    v38 = [v23 copy];
    [NSLayoutConstraint _mapsui_activateLayouts:v37 constraints:v38];

    [(VenueFloorPickerCell *)v8 updateStyle];
  }

  return v8;
}

+ (id)floorNameFont
{
  if (_UISolariumEnabled())
  {
    [UIFont systemFontOfSize:UIFontSystemFontDesignRounded weight:18.0 design:UIFontWeightMedium];
  }

  else
  {
    [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:UIContentSizeCategoryLarge contentSizeCategory:0 symbolicTraits:UIFontWeightMedium];
  }
  v2 = ;

  return v2;
}

+ (double)cellHeight
{
  floorNameFont = [self floorNameFont];
  [floorNameFont ascender];
  v4 = v3;
  [floorNameFont descender];
  v6 = v4 + 16.0 - v5;

  return v6;
}

@end