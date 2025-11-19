@interface _MKPlaceInlineMapContentView
- (CGSize)intrinsicContentSize;
- (_MKPlaceInlineMapContentView)initWithFrame:(CGRect)a3 hideLookAroundView:(BOOL)a4 showMapAttribution:(BOOL)a5 mapSnapshotAuditToken:(id)a6;
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
  v3 = [(UIView *)self mk_theme];
  v4 = [v3 separatorLineColor];
  [(MKViewWithHairline *)self->_hairlineView setHairlineColor:v4];

  v5 = [(UIView *)self mk_theme];
  LODWORD(v4) = [v5 isDarkTheme];

  v6 = 0.0;
  if (v4)
  {
    v6 = 1.0;
  }

  v7 = [MEMORY[0x1E69DC888] colorWithWhite:v6 alpha:0.100000001];
  [(UIView *)self->_mapView _mapkit_setBackgroundColor:v7];
  v8 = [(UIView *)self mk_theme];
  v9 = [v8 separatorLineColor];
  v10 = [v9 CGColor];
  v11 = [(UIView *)self->_mapView layer];
  [v11 setBorderColor:v10];
}

- (void)_contentSizeDidChange
{
  v3 = +[MKFontManager sharedManager];
  v4 = [v3 sectionHeaderFont];

  [(_MKUILabel *)self->_titleLabel setFont:v4];
  [v4 _mapkit_scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_topToTitleConstraint setConstant:?];
  [v4 _mapkit_scaledValueForValue:10.0];
  [(NSLayoutConstraint *)self->_titleToBottomConstraint setConstant:?];
}

- (double)titleHeight
{
  [(NSLayoutConstraint *)self->_topToTitleConstraint constant];
  v4 = v3;
  [(NSLayoutConstraint *)self->_titleToBottomConstraint constant];
  return v4 + v5;
}

- (_MKPlaceInlineMapContentView)initWithFrame:(CGRect)a3 hideLookAroundView:(BOOL)a4 showMapAttribution:(BOOL)a5 mapSnapshotAuditToken:(id)a6
{
  v6 = a5;
  v7 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v84[7] = *MEMORY[0x1E69E9840];
  v13 = a6;
  v81.receiver = self;
  v81.super_class = _MKPlaceInlineMapContentView;
  v14 = [(_MKUIViewControllerRootView *)&v81 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    [(_MKPlaceInlineMapContentView *)v14 setPreservesSuperviewLayoutMargins:1];
    v16 = [[MKViewWithHairline alloc] initWithFrame:x, y, width, height];
    hairlineView = v15->_hairlineView;
    v15->_hairlineView = v16;

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
    v21 = [v20 sectionHeaderFont];
    [(_MKUILabel *)v15->_titleLabel setFont:v21];

    [(MKViewWithHairline *)v15->_hairlineView addSubview:v15->_titleLabel];
    v22 = [(_MKPlaceInlineMapContentView *)v15 useImageView];
    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
      mapImageView = v15->_mapImageView;
      v15->_mapImageView = v23;

      objc_storeStrong(&v15->_mapView, v15->_mapImageView);
    }

    else
    {
      v25 = [[MKMapItemView alloc] initWithFrame:x, y, width, height];
      mapItemView = v15->_mapItemView;
      v15->_mapItemView = v25;

      [(MKMapItemView *)v15->_mapItemView setShouldShowBorders:1];
      [(MKMapItemView *)v15->_mapItemView setShouldResolveMapItem:0];
      [(MKMapItemView *)v15->_mapItemView setHideLookAroundView:v7];
      [(MKMapItemView *)v15->_mapItemView setShouldShowMapAttribution:v6];
      [(MKMapItemView *)v15->_mapItemView _setAuditToken:v13];
      objc_storeStrong(&v15->_mapView, v15->_mapItemView);
      [(_MKUIViewControllerClickableRootView *)v15 setTarget:0 action:0];
    }

    [(UIView *)v15->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v15->_mapView setPreservesSuperviewLayoutMargins:1];
    v27 = [(_MKPlaceInlineMapContentView *)v15 window];
    v28 = [v27 screen];
    v29 = v28;
    if (v28)
    {
      [v28 nativeScale];
      v31 = v30;
    }

    else
    {
      v32 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v32 nativeScale];
      v31 = v33;
    }

    v78 = v13;

    v34 = [(UIView *)v15->_mapView layer];
    [v34 setCornerRadius:8.0];

    if (v22)
    {
      v35 = [(UIView *)v15->_mapView layer];
      [v35 setBorderWidth:{1.0 / fmax(v31, 1.0)}];
    }

    [(UIView *)v15->_mapView setClipsToBounds:1];
    [(UIView *)v15->_mapView setUserInteractionEnabled:1];
    [(UIImageView *)v15->_mapImageView _mapkit_setImageContentMode:2];
    [(MKViewWithHairline *)v15->_hairlineView addSubview:v15->_mapView];
    [(_MKPlaceInlineMapContentView *)v15 infoCardThemeChanged];
    v79 = MEMORY[0x1E695DF70];
    v76 = [(MKViewWithHairline *)v15->_hairlineView leadingAnchor];
    v77 = [(_MKPlaceInlineMapContentView *)v15 layoutMarginsGuide];
    v75 = [v77 leadingAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v84[0] = v74;
    v73 = [(_MKPlaceInlineMapContentView *)v15 layoutMarginsGuide];
    v72 = [v73 trailingAnchor];
    v71 = [(MKViewWithHairline *)v15->_hairlineView trailingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71];
    v84[1] = v70;
    v69 = [(MKViewWithHairline *)v15->_hairlineView topAnchor];
    v68 = [(_MKPlaceInlineMapContentView *)v15 topAnchor];
    v67 = [v69 constraintEqualToAnchor:v68];
    v84[2] = v67;
    v66 = [(_MKPlaceInlineMapContentView *)v15 bottomAnchor];
    v65 = [(MKViewWithHairline *)v15->_hairlineView bottomAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v84[3] = v64;
    v63 = [(UIView *)v15->_mapView leadingAnchor];
    v62 = [(MKViewWithHairline *)v15->_hairlineView leadingAnchor];
    v36 = [v63 constraintEqualToAnchor:v62];
    v84[4] = v36;
    v37 = [(MKViewWithHairline *)v15->_hairlineView trailingAnchor];
    v38 = [(UIView *)v15->_mapView trailingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    v84[5] = v39;
    v40 = [(MKViewWithHairline *)v15->_hairlineView bottomAnchor];
    v41 = [(UIView *)v15->_mapView bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:0.0];
    v84[6] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:7];
    v80 = [v79 arrayWithArray:v43];

    if ([(_MKPlaceInlineMapContentView *)v15 hasTitle])
    {
      v44 = [(_MKUILabel *)v15->_titleLabel firstBaselineAnchor];
      v45 = [(_MKPlaceInlineMapContentView *)v15 topAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];
      topToTitleConstraint = v15->_topToTitleConstraint;
      v15->_topToTitleConstraint = v46;

      v48 = [(UIView *)v15->_mapView topAnchor];
      v49 = [(_MKUILabel *)v15->_titleLabel lastBaselineAnchor];
      v50 = [v48 constraintEqualToAnchor:v49];
      titleToBottomConstraint = v15->_titleToBottomConstraint;
      v15->_titleToBottomConstraint = v50;

      v83[0] = v15->_topToTitleConstraint;
      v83[1] = v15->_titleToBottomConstraint;
      v52 = [(_MKUILabel *)v15->_titleLabel leadingAnchor];
      v53 = [(_MKPlaceInlineMapContentView *)v15 layoutMarginsGuide];
      v54 = [v53 leadingAnchor];
      v55 = [v52 constraintEqualToAnchor:v54];
      v83[2] = v55;
      v56 = [(_MKPlaceInlineMapContentView *)v15 layoutMarginsGuide];
      v57 = [v56 trailingAnchor];
      v58 = [(_MKUILabel *)v15->_titleLabel trailingAnchor];
      v59 = [v57 constraintEqualToAnchor:v58];
      v83[3] = v59;
      v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
      [v80 addObjectsFromArray:v60];
    }

    else
    {
      v52 = [(UIView *)v15->_mapView topAnchor];
      v53 = [(MKViewWithHairline *)v15->_hairlineView topAnchor];
      v54 = [v52 constraintEqualToAnchor:v53];
      v82 = v54;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
      [v80 addObjectsFromArray:v55];
    }

    v13 = v78;

    [MEMORY[0x1E696ACD8] activateConstraints:v80];
  }

  return v15;
}

@end