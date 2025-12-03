@interface _MKPlaceInlineMapContentView
- (CGSize)intrinsicContentSize;
- (_MKPlaceInlineMapContentView)initWithFrame:(CGRect)frame hideLookAroundView:(BOOL)view showMapAttribution:(BOOL)attribution mapSnapshotAuditToken:(id)token;
- (double)titleHeight;
- (void)_contentSizeDidChange;
- (void)infoCardThemeChanged;
@end

@implementation _MKPlaceInlineMapContentView

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  [(_MKPlaceInlineMapContentView *)self mapViewHeight];
  v4 = v3 + 0.0;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)infoCardThemeChanged
{
  v12.receiver = self;
  v12.super_class = _MKPlaceInlineMapContentView;
  [(UIView *)&v12 infoCardThemeChanged];
  mk_theme = [(UIView *)self mk_theme];
  separatorLineColor = [mk_theme separatorLineColor];
  [(MKViewWithHairline *)self->_hairlineView setHairlineColor:separatorLineColor];

  mk_theme2 = [(UIView *)self mk_theme];
  LODWORD(separatorLineColor) = [mk_theme2 isDarkTheme];

  v6 = 0.0;
  if (separatorLineColor)
  {
    v6 = 1.0;
  }

  v7 = [MEMORY[0x1E69DC888] colorWithWhite:v6 alpha:0.100000001];
  [(UIView *)self->_mapView _mapkit_setBackgroundColor:v7];
  mk_theme3 = [(UIView *)self mk_theme];
  separatorLineColor2 = [mk_theme3 separatorLineColor];
  cGColor = [separatorLineColor2 CGColor];
  layer = [(UIView *)self->_mapView layer];
  [layer setBorderColor:cGColor];
}

- (void)_contentSizeDidChange
{
  v3 = +[MKFontManager sharedManager];
  sectionHeaderFont = [v3 sectionHeaderFont];

  [(_MKUILabel *)self->_titleLabel setFont:sectionHeaderFont];
  [sectionHeaderFont _mapkit_scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_topToTitleConstraint setConstant:?];
  [sectionHeaderFont _mapkit_scaledValueForValue:10.0];
  [(NSLayoutConstraint *)self->_titleToBottomConstraint setConstant:?];
}

- (double)titleHeight
{
  [(NSLayoutConstraint *)self->_topToTitleConstraint constant];
  v4 = v3;
  [(NSLayoutConstraint *)self->_titleToBottomConstraint constant];
  return v4 + v5;
}

- (_MKPlaceInlineMapContentView)initWithFrame:(CGRect)frame hideLookAroundView:(BOOL)view showMapAttribution:(BOOL)attribution mapSnapshotAuditToken:(id)token
{
  attributionCopy = attribution;
  viewCopy = view;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v84[7] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v81.receiver = self;
  v81.super_class = _MKPlaceInlineMapContentView;
  height = [(_MKUIViewControllerRootView *)&v81 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    [(_MKPlaceInlineMapContentView *)height setPreservesSuperviewLayoutMargins:1];
    height2 = [[MKViewWithHairline alloc] initWithFrame:x, y, width, height];
    hairlineView = v15->_hairlineView;
    v15->_hairlineView = height2;

    [(MKViewWithHairline *)v15->_hairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKViewWithHairline *)v15->_hairlineView setTopHairlineHidden:1];
    [(MKViewWithHairline *)v15->_hairlineView setBottomHairlineHidden:0];
    [(_MKPlaceInlineMapContentView *)v15 addSubview:v15->_hairlineView];
    v18 = [[MKVibrantLabel alloc] initWithStyle:1];
    titleLabel = v15->_titleLabel;
    v15->_titleLabel = v18;

    [(_MKUILabel *)v15->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKUILabel *)v15->_titleLabel setPreservesSuperviewLayoutMargins:1];
    v20 = +[MKFontManager sharedManager];
    sectionHeaderFont = [v20 sectionHeaderFont];
    [(_MKUILabel *)v15->_titleLabel setFont:sectionHeaderFont];

    [(MKViewWithHairline *)v15->_hairlineView addSubview:v15->_titleLabel];
    useImageView = [(_MKPlaceInlineMapContentView *)v15 useImageView];
    if (useImageView)
    {
      v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
      mapImageView = v15->_mapImageView;
      v15->_mapImageView = v23;

      objc_storeStrong(&v15->_mapView, v15->_mapImageView);
    }

    else
    {
      height3 = [[MKMapItemView alloc] initWithFrame:x, y, width, height];
      mapItemView = v15->_mapItemView;
      v15->_mapItemView = height3;

      [(MKMapItemView *)v15->_mapItemView setShouldShowBorders:1];
      [(MKMapItemView *)v15->_mapItemView setShouldResolveMapItem:0];
      [(MKMapItemView *)v15->_mapItemView setHideLookAroundView:viewCopy];
      [(MKMapItemView *)v15->_mapItemView setShouldShowMapAttribution:attributionCopy];
      [(MKMapItemView *)v15->_mapItemView _setAuditToken:tokenCopy];
      objc_storeStrong(&v15->_mapView, v15->_mapItemView);
      [(_MKUIViewControllerClickableRootView *)v15 setTarget:0 action:0];
    }

    [(UIView *)v15->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v15->_mapView setPreservesSuperviewLayoutMargins:1];
    window = [(_MKPlaceInlineMapContentView *)v15 window];
    screen = [window screen];
    v29 = screen;
    if (screen)
    {
      [screen nativeScale];
      v31 = v30;
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen nativeScale];
      v31 = v33;
    }

    v78 = tokenCopy;

    layer = [(UIView *)v15->_mapView layer];
    [layer setCornerRadius:8.0];

    if (useImageView)
    {
      layer2 = [(UIView *)v15->_mapView layer];
      [layer2 setBorderWidth:{1.0 / fmax(v31, 1.0)}];
    }

    [(UIView *)v15->_mapView setClipsToBounds:1];
    [(UIView *)v15->_mapView setUserInteractionEnabled:1];
    [(UIImageView *)v15->_mapImageView _mapkit_setImageContentMode:2];
    [(MKViewWithHairline *)v15->_hairlineView addSubview:v15->_mapView];
    [(_MKPlaceInlineMapContentView *)v15 infoCardThemeChanged];
    v79 = MEMORY[0x1E695DF70];
    leadingAnchor = [(MKViewWithHairline *)v15->_hairlineView leadingAnchor];
    layoutMarginsGuide = [(_MKPlaceInlineMapContentView *)v15 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v84[0] = v74;
    layoutMarginsGuide2 = [(_MKPlaceInlineMapContentView *)v15 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
    trailingAnchor2 = [(MKViewWithHairline *)v15->_hairlineView trailingAnchor];
    v70 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v84[1] = v70;
    topAnchor = [(MKViewWithHairline *)v15->_hairlineView topAnchor];
    topAnchor2 = [(_MKPlaceInlineMapContentView *)v15 topAnchor];
    v67 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v84[2] = v67;
    bottomAnchor = [(_MKPlaceInlineMapContentView *)v15 bottomAnchor];
    bottomAnchor2 = [(MKViewWithHairline *)v15->_hairlineView bottomAnchor];
    v64 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v84[3] = v64;
    leadingAnchor3 = [(UIView *)v15->_mapView leadingAnchor];
    leadingAnchor4 = [(MKViewWithHairline *)v15->_hairlineView leadingAnchor];
    v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v84[4] = v36;
    trailingAnchor3 = [(MKViewWithHairline *)v15->_hairlineView trailingAnchor];
    trailingAnchor4 = [(UIView *)v15->_mapView trailingAnchor];
    v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v84[5] = v39;
    bottomAnchor3 = [(MKViewWithHairline *)v15->_hairlineView bottomAnchor];
    bottomAnchor4 = [(UIView *)v15->_mapView bottomAnchor];
    v42 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
    v84[6] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:7];
    v80 = [v79 arrayWithArray:v43];

    if ([(_MKPlaceInlineMapContentView *)v15 hasTitle])
    {
      firstBaselineAnchor = [(_MKUILabel *)v15->_titleLabel firstBaselineAnchor];
      topAnchor3 = [(_MKPlaceInlineMapContentView *)v15 topAnchor];
      v46 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3];
      topToTitleConstraint = v15->_topToTitleConstraint;
      v15->_topToTitleConstraint = v46;

      topAnchor4 = [(UIView *)v15->_mapView topAnchor];
      lastBaselineAnchor = [(_MKUILabel *)v15->_titleLabel lastBaselineAnchor];
      v50 = [topAnchor4 constraintEqualToAnchor:lastBaselineAnchor];
      titleToBottomConstraint = v15->_titleToBottomConstraint;
      v15->_titleToBottomConstraint = v50;

      v83[0] = v15->_topToTitleConstraint;
      v83[1] = v15->_titleToBottomConstraint;
      leadingAnchor5 = [(_MKUILabel *)v15->_titleLabel leadingAnchor];
      layoutMarginsGuide3 = [(_MKPlaceInlineMapContentView *)v15 layoutMarginsGuide];
      leadingAnchor6 = [layoutMarginsGuide3 leadingAnchor];
      v55 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v83[2] = v55;
      layoutMarginsGuide4 = [(_MKPlaceInlineMapContentView *)v15 layoutMarginsGuide];
      trailingAnchor5 = [layoutMarginsGuide4 trailingAnchor];
      trailingAnchor6 = [(_MKUILabel *)v15->_titleLabel trailingAnchor];
      v59 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v83[3] = v59;
      v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
      [v80 addObjectsFromArray:v60];
    }

    else
    {
      leadingAnchor5 = [(UIView *)v15->_mapView topAnchor];
      layoutMarginsGuide3 = [(MKViewWithHairline *)v15->_hairlineView topAnchor];
      leadingAnchor6 = [leadingAnchor5 constraintEqualToAnchor:layoutMarginsGuide3];
      v82 = leadingAnchor6;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
      [v80 addObjectsFromArray:v55];
    }

    tokenCopy = v78;

    [MEMORY[0x1E696ACD8] activateConstraints:v80];
  }

  return v15;
}

@end