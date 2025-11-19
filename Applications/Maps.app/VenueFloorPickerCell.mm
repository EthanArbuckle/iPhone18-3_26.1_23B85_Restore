@interface VenueFloorPickerCell
+ (double)cellHeight;
+ (id)floorNameFont;
- (VenueFloorPickerCell)initWithFrame:(CGRect)a3;
- (void)_updateSelectedBackgroundCorners;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
- (void)setShowSelection:(BOOL)a3;
- (void)updateStyle;
@end

@implementation VenueFloorPickerCell

- (void)_updateSelectedBackgroundCorners
{
  if (_UISolariumEnabled())
  {
    [(UIView *)self->_selectionBackgroundView bounds];
    v3 = CGRectGetWidth(v6) * 0.5;
    v4 = [(UIView *)self->_selectionBackgroundView layer];
    [v4 setCornerRadius:v3];
  }
}

- (void)updateStyle
{
  v3 = +[UIColor tertiarySystemFillColor];
  v4 = [(VenueFloorPickerCell *)self selectionBackgroundView];
  [v4 setBackgroundColor:v3];

  if ([(VenueFloorPickerCell *)self isUserLocation])
  {
    v5 = [(VenueFloorPickerCell *)self theme];
    v6 = [v5 keyColor];
LABEL_5:
    v7 = v6;
    v8 = [(VenueFloorPickerCell *)self floorNameLabel];
    [v8 setTextColor:v7];

    goto LABEL_10;
  }

  if ([(VenueFloorPickerCell *)self lacksSearchResults])
  {
    v5 = [(VenueFloorPickerCell *)self theme];
    v6 = [v5 venueFloorPickerLackingSearchResultsTextColor];
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
  v5 = ;
  v7 = [(VenueFloorPickerCell *)self floorNameLabel];
  [v7 setTextColor:v5];
LABEL_10:

  v9 = [(VenueFloorPickerCell *)self floorNameLabel];
  v10 = [v9 textColor];
  v11 = [(VenueFloorPickerCell *)self floorNameLabel];
  [v11 setHighlightedTextColor:v10];

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

  v13 = [(VenueFloorPickerCell *)self selectionBackgroundView];
  [v13 setAlpha:v12];

  [(VenueFloorPickerCell *)self _updateSelectedBackgroundCorners];
}

- (void)setShowSelection:(BOOL)a3
{
  self->_showSelection = a3;
  if ([(VenueFloorPickerCell *)self isSelected])
  {

    [(VenueFloorPickerCell *)self updateStyle];
  }
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VenueFloorPickerCell;
  [(VenueFloorPickerCell *)&v4 setSelected:a3];
  [(VenueFloorPickerCell *)self updateStyle];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VenueFloorPickerCell;
  [(VenueFloorPickerCell *)&v3 layoutSubviews];
  [(VenueFloorPickerCell *)self _updateSelectedBackgroundCorners];
}

- (VenueFloorPickerCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v11 = [(VenueFloorPickerCell *)v8 contentView];
    [v11 addSubview:v8->_selectionBackgroundView];

    v12 = [[UILabel alloc] initWithFrame:{x + 5.0, y, width + -10.0, height}];
    floorNameLabel = v8->_floorNameLabel;
    v8->_floorNameLabel = v12;

    [(UILabel *)v8->_floorNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[UIColor clearColor];
    [(UILabel *)v8->_floorNameLabel setBackgroundColor:v14];

    [(UILabel *)v8->_floorNameLabel setTextAlignment:1];
    [(UILabel *)v8->_floorNameLabel setBaselineAdjustment:1];
    v15 = [objc_opt_class() floorNameFont];
    [(UILabel *)v8->_floorNameLabel setFont:v15];

    [(UILabel *)v8->_floorNameLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v8->_floorNameLabel setMinimumScaleFactor:0.25];
    v16 = [(VenueFloorPickerCell *)v8 contentView];
    [v16 addSubview:v8->_floorNameLabel];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v17 = [(VenueFloorPickerCell *)v8 contentView];
      v18 = [v17 _maps_addHairlineAtBottomWithMargin:0.0];
    }

    v19 = [MUEdgeLayout alloc];
    v20 = v8->_selectionBackgroundView;
    v21 = [(VenueFloorPickerCell *)v8 contentView];
    v22 = [v19 initWithItem:v20 container:v21];

    if (_UISolariumEnabled())
    {
      [v22 setInsets:{4.0, 4.0, 4.0, 4.0}];
    }

    v46 = v22;
    v23 = objc_alloc_init(NSMutableArray);
    v44 = [(UILabel *)v8->_floorNameLabel leadingAnchor];
    v45 = [(VenueFloorPickerCell *)v8 contentView];
    v43 = [v45 leadingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:5.0];
    v50[0] = v42;
    v40 = [(UILabel *)v8->_floorNameLabel trailingAnchor];
    v41 = [(VenueFloorPickerCell *)v8 contentView];
    v24 = [v41 trailingAnchor];
    v25 = [v40 constraintEqualToAnchor:v24 constant:-5.0];
    v50[1] = v25;
    v26 = [(UILabel *)v8->_floorNameLabel centerYAnchor];
    v27 = [(VenueFloorPickerCell *)v8 contentView];
    v28 = [v27 centerYAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v50[2] = v29;
    v30 = [NSArray arrayWithObjects:v50 count:3];
    [v23 addObjectsFromArray:v30];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v31 = [(UILabel *)v8->_floorNameLabel heightAnchor];
      v32 = [(VenueFloorPickerCell *)v8 contentView];
      v33 = [v32 heightAnchor];
      LODWORD(v34) = 1144750080;
      v35 = [v31 constraintLessThanOrEqualToAnchor:v33 constant:-16.0 priority:v34];
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
  v2 = [a1 floorNameFont];
  [v2 ascender];
  v4 = v3;
  [v2 descender];
  v6 = v4 + 16.0 - v5;

  return v6;
}

@end