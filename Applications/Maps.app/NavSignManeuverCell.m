@interface NavSignManeuverCell
+ (BOOL)_backlightSceneUpdaterOptimizationEnabled;
+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5;
- (BOOL)_shouldPostBacklightSceneRequiresUpdateNotification:(id)a3;
- (NavSignManeuverCell)initWithFrame:(CGRect)a3;
- (void)_resetManeuverItemCachedHeight;
- (void)_updateStateWithLayoutProgress:(double)a3;
- (void)redrawContent;
- (void)setHideManeuverArrow:(BOOL)a3;
- (void)setItem:(id)a3;
- (void)setSelectedWithLayoutProgress:(double)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation NavSignManeuverCell

- (void)redrawContent
{
  v3 = [(RouteStepListCollectionCell *)self item];
  v4 = [(NavSignManeuverCell *)self _shouldPostBacklightSceneRequiresUpdateNotification:v3];
  v5 = [v3 excludedFieldsMask];
  v6 = [v3 metrics];
  [v6 imageAreaWidth];
  v8 = v7;
  v9 = [(NavSignManeuverCell *)self imageAreaWidthConstraint];
  [v9 setConstant:v8];

  v10 = [v3 metrics];
  [v10 stepImageWidth];
  v12 = v11;
  v13 = [(NavSignManeuverCell *)self imageWidthConstraint];
  [v13 setConstant:v12];

  v14 = [v3 metrics];
  [v14 stepImageHeight];
  v16 = v15;
  v17 = [(NavSignManeuverCell *)self imageHeightConstraint];
  [v17 setConstant:v16];

  v18 = [v3 metrics];
  [v18 imageCenterXOffset];
  v20 = v19;
  v21 = [(NavSignManeuverCell *)self guidanceManeuverViewCenterXConstraint];
  [v21 setConstant:v20];

  v22 = [v3 metrics];
  [v22 exitSignPadding];
  v24 = -v23;
  v25 = [(NavSignManeuverCell *)self primaryToExitShieldConstraint];
  [v25 setConstant:v24];

  v26 = [v3 metrics];
  [v26 exitSignPadding];
  v28 = -v27;
  v29 = [(NavSignManeuverCell *)self exitShieldTrailingConstraint];
  [v29 setConstant:v28];

  v30 = [v3 metrics];
  [v30 primaryTextTopMargin];
  v32 = v31;
  v33 = [(NavSignManeuverCell *)self primaryTopConstraint];
  [v33 setConstant:v32];

  v34 = [v3 metrics];
  [v34 secondaryTextTopMargin];
  v36 = v35;
  v37 = [(NavSignManeuverCell *)self secondaryTopConstraint];
  [v37 setConstant:v36];

  if ((v5 & 4) != 0)
  {
    v39 = 0.0;
  }

  else
  {
    v34 = [v3 metrics];
    [v34 tertiaryTextTopMargin];
    v39 = v38;
  }

  v40 = [(NavSignManeuverCell *)self tertiaryTopConstraint];
  [v40 setConstant:v39];

  if ((v5 & 4) == 0)
  {
  }

  v41 = [v3 metrics];
  [v41 textBottomMargin];
  v43 = -v42;
  v44 = [(NavSignManeuverCell *)self tertiaryBottomConstraint];
  [v44 setConstant:v43];

  if ([(NavSignManeuverCell *)self hideManeuverArrow])
  {
    v45 = [v3 metrics];
    [v45 imageAreaWidth];
    v47 = -v46;
    v48 = [(NavSignManeuverCell *)self imageLeadingConstraint];
    [v48 setConstant:v47];

    v49 = [v3 metrics];
    [v49 textTrailingMargin];
    v51 = v50;
    v52 = [(NavSignManeuverCell *)self primaryLeadingConstraint];
    [v52 setConstant:v51];

    v53 = [v3 metrics];
    [v53 imageAreaWidth];
    v55 = -v54;
    v56 = [(NavSignManeuverCell *)self primaryTrailingConstraint];
    [v56 setConstant:v55];

    v57 = [v3 metrics];
    [v57 imageAreaWidth];
  }

  else
  {
    v59 = [(NavSignManeuverCell *)self imageLeadingConstraint];
    [v59 setConstant:0.0];

    v60 = [(NavSignManeuverCell *)self primaryLeadingConstraint];
    [v60 setConstant:0.0];

    v61 = [v3 metrics];
    [v61 textTrailingMargin];
    v63 = -v62;
    v64 = [(NavSignManeuverCell *)self primaryTrailingConstraint];
    [v64 setConstant:v63];

    v57 = [v3 metrics];
    [v57 textTrailingMargin];
  }

  v65 = -v58;
  v66 = [(NavSignManeuverCell *)self secondaryTrailingConstraint];
  [v66 setConstant:v65];

  v67 = [v3 primaryText];
  v68 = [(NavSignManeuverCell *)self primaryTextLabel];
  [v68 setAttributedText:v67];

  v69 = [v3 secondaryText];
  v70 = [(NavSignManeuverCell *)self secondaryTextLabel];
  [v70 setAttributedText:v69];

  if ((v5 & 4) != 0)
  {
    v71 = 0;
  }

  else
  {
    v71 = [v3 tertiaryText];
  }

  v72 = [(NavSignManeuverCell *)self tertiaryTextLabel];
  [v72 setAttributedText:v71];

  if ((v5 & 4) == 0)
  {
  }

  v73 = [v3 exitSignImage];
  v74 = [(NavSignManeuverCell *)self exitShieldImageView];
  [v74 setImage:v73];

  v75 = [v3 shieldImage];

  if (v75)
  {
    v76 = [v3 shieldImage];
    v77 = [(NavSignManeuverCell *)self shieldImageView];
    [v77 setImage:v76];

    v78 = [(NavSignManeuverCell *)self guidanceManeuverView];
    [v78 setManeuverArtwork:0];
  }

  else
  {
    v79 = [v3 maneuverArtwork];

    if (!v79)
    {
      goto LABEL_25;
    }

    v80 = [v3 maneuverArtwork];
    v81 = [(NavSignManeuverCell *)self guidanceManeuverView];
    [v81 setManeuverArtwork:v80];

    v82 = [v3 metrics];
    v83 = v82;
    if (v82)
    {
      [v82 arrowMetrics];
    }

    else
    {
      memset(__src, 0, sizeof(__src));
    }

    v84 = [(NavSignManeuverCell *)self guidanceManeuverView];
    memcpy(__dst, __src, sizeof(__dst));
    [v84 setArrowMetrics:__dst];

    v85 = [v3 metrics];
    v86 = v85;
    if (v85)
    {
      [v85 junctionArrowMetrics];
    }

    else
    {
      memset(v111, 0, sizeof(v111));
    }

    v87 = [(NavSignManeuverCell *)self guidanceManeuverView:v111[0]];
    memcpy(__dst, v111, sizeof(__dst));
    [v87 setJunctionArrowMetrics:__dst];

    v88 = [v3 metrics];
    v89 = [v88 arrowColor];
    v90 = [(NavSignManeuverCell *)self guidanceManeuverView];
    [v90 setArrowColor:v89];

    v91 = [v3 metrics];
    v92 = [v91 arrowAccentColor];
    v93 = [(NavSignManeuverCell *)self guidanceManeuverView];
    [v93 setAccentColor:v92];

    v78 = [(NavSignManeuverCell *)self shieldImageView];
    [v78 setImage:0];
  }

LABEL_25:
  v94 = [v3 backgroundColor];
  v95 = [(NavSignManeuverCell *)self contentView];
  [v95 setBackgroundColor:v94];

  v96 = [(NavSignManeuverCell *)self exitShieldImageView];
  v97 = [v96 image];

  if (v97)
  {
    v98 = [(NavSignManeuverCell *)self primaryTrailingConstraint];
    [v98 setActive:0];

    [(NavSignManeuverCell *)self primaryToExitShieldConstraint];
  }

  else
  {
    v99 = [(NavSignManeuverCell *)self primaryToExitShieldConstraint];
    [v99 setActive:0];

    [(NavSignManeuverCell *)self primaryTrailingConstraint];
  }
  v100 = ;
  [v100 setActive:1];

  v101 = [(NavSignManeuverCell *)self secondaryTextLabel];
  v102 = [v101 attributedText];
  v103 = [v102 length];

  v104 = v103 == 0;
  v105 = v103 == 0;
  if (v103)
  {
    v106 = &OBJC_IVAR___NavSignManeuverCell__primaryCenteredAnchoredConstraints;
  }

  else
  {
    v106 = &OBJC_IVAR___NavSignManeuverCell__primaryTopAnchoredConstraints;
  }

  if (v104)
  {
    v107 = &OBJC_IVAR___NavSignManeuverCell__primaryCenteredAnchoredConstraints;
  }

  else
  {
    v107 = &OBJC_IVAR___NavSignManeuverCell__primaryTopAnchoredConstraints;
  }

  v108 = [(NavSignManeuverCell *)self secondaryTextLabel];
  [v108 setHidden:v105];

  v109 = [(NavSignManeuverCell *)self tertiaryTextLabel];
  [v109 setHidden:v105];

  [NSLayoutConstraint deactivateConstraints:*(&self->super.super.super.super.super.super.isa + *v106)];
  [NSLayoutConstraint activateConstraints:*(&self->super.super.super.super.super.super.isa + *v107)];
  if (v4)
  {
    v110 = +[NSNotificationCenter defaultCenter];
    [v110 postNotificationName:@"NavContainerShouldUpdateBacklightSceneEnvironmentNotification" object:self];
  }
}

- (void)_resetManeuverItemCachedHeight
{
  v3 = [(RouteStepListCollectionCell *)self item];
  if (v3)
  {
    v4 = v3;
    v5 = [(RouteStepListCollectionCell *)self item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(RouteStepListCollectionCell *)self item];
      [v7 setCachedHeight:0];
    }
  }
}

- (BOOL)_shouldPostBacklightSceneRequiresUpdateNotification:(id)a3
{
  v4 = a3;
  if (!+[NavSignManeuverCell _backlightSceneUpdaterOptimizationEnabled])
  {
    goto LABEL_7;
  }

  v5 = [(NavSignManeuverCell *)self traitCollection];
  if (![v5 isLuminanceReduced])
  {

    goto LABEL_7;
  }

  state = self->_state;

  if (state != 1)
  {
LABEL_7:
    v26 = 0;
    goto LABEL_8;
  }

  v7 = [v4 excludedFieldsMask];
  v8 = [(NavSignManeuverCell *)self primaryTextLabel];
  v9 = [v8 attributedText];
  v10 = [v9 string];
  v11 = [v4 primaryText];
  v12 = [v11 string];
  v43 = [v10 isEqualToString:v12];

  v13 = [(NavSignManeuverCell *)self secondaryTextLabel];
  v14 = [v13 attributedText];
  v15 = [v14 string];
  v16 = [v4 secondaryText];
  v17 = [v16 string];
  v18 = [v15 isEqualToString:v17];

  v19 = [(NavSignManeuverCell *)self tertiaryTextLabel];
  v20 = [v19 attributedText];
  v21 = [v20 string];
  v22 = v21;
  if ((v7 & 4) != 0)
  {
    LOBYTE(v25) = v21 != 0;
  }

  else
  {
    v23 = [v4 tertiaryText];
    v24 = [v23 string];
    v25 = [v22 isEqualToString:v24] ^ 1;
  }

  v28 = [(NavSignManeuverCell *)self shieldImageView];
  v29 = [v28 image];
  v30 = [v4 shieldImage];
  v31 = v29 != v30;

  v32 = [(NavSignManeuverCell *)self exitShieldImageView];
  v33 = [v32 image];
  v34 = [v4 exitSignImage];
  v35 = v33 != v34;

  v36 = [(NavSignManeuverCell *)self guidanceManeuverView];
  v37 = [v36 maneuverArtwork];
  v38 = [v4 maneuverArtwork];
  v39 = [v37 isEqual:v38];

  v40 = [(NavSignManeuverCell *)self contentView];
  v41 = [v40 backgroundColor];
  v42 = [v4 backgroundColor];
  LOBYTE(v37) = v41 != v42;

  v26 = v43 & v18 ^ 1 | v25 | v31 | v35 | v39 ^ 1 | v37;
LABEL_8:

  return v26 & 1;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = NavSignManeuverCell;
  [(NavSignManeuverCell *)&v6 touchesEnded:a3 withEvent:a4];
  v5 = [(NavSignManeuverCell *)self delegate];
  [v5 cell:self setPressed:0];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = NavSignManeuverCell;
  [(NavSignManeuverCell *)&v6 touchesCancelled:a3 withEvent:a4];
  v5 = [(NavSignManeuverCell *)self delegate];
  [v5 cell:self setPressed:0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = NavSignManeuverCell;
  [(NavSignManeuverCell *)&v6 touchesBegan:a3 withEvent:a4];
  v5 = [(NavSignManeuverCell *)self delegate];
  [v5 cell:self setPressed:1];
}

- (void)_updateStateWithLayoutProgress:(double)a3
{
  v5 = [(NavSignManeuverCell *)self state];
  if (v5 == 2)
  {
    [(NavSignManeuverCell *)self setSelectedWithLayoutProgress:0.0];
    v17 = [(NavSignManeuverCell *)self guidanceManeuverView];
    v7 = 1.0;
    [v17 setAlpha:1.0];

    CGAffineTransformMakeScale(&v28, 0.800000012, 0.800000012);
    v18 = [(NavSignManeuverCell *)self guidanceManeuverView];
    v29 = v28;
    [v18 setTransform:&v29];

    v19 = [(NavSignManeuverCell *)self shieldImageView];
    [v19 setAlpha:1.0];

    CGAffineTransformMakeScale(&v27, 0.800000012, 0.800000012);
    v14 = [(NavSignManeuverCell *)self shieldImageView];
    v15 = v14;
    *&v29.a = *&v27.a;
    *&v29.c = *&v27.c;
    v16 = *&v27.tx;
  }

  else
  {
    if (v5 == 1)
    {
      [(NavSignManeuverCell *)self setSelectedWithLayoutProgress:a3];
      v12 = [(NavSignManeuverCell *)self guidanceManeuverView];
      v7 = 1.0;
      [v12 setAlpha:1.0];

      v13 = [(NavSignManeuverCell *)self guidanceManeuverView];
      v25 = *&CGAffineTransformIdentity.c;
      v26 = *&CGAffineTransformIdentity.a;
      *&v29.a = *&CGAffineTransformIdentity.a;
      *&v29.c = v25;
      v24 = *&CGAffineTransformIdentity.tx;
      *&v29.tx = v24;
      [v13 setTransform:&v29];

      v9 = [(NavSignManeuverCell *)self shieldImageView];
      v10 = v9;
      v11 = 1.0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      [(NavSignManeuverCell *)self setSelectedWithLayoutProgress:0.0];
      v6 = [(NavSignManeuverCell *)self guidanceManeuverView];
      v7 = 0.150000006;
      [v6 setAlpha:0.150000006];

      v8 = [(NavSignManeuverCell *)self guidanceManeuverView];
      v25 = *&CGAffineTransformIdentity.c;
      v26 = *&CGAffineTransformIdentity.a;
      *&v29.a = *&CGAffineTransformIdentity.a;
      *&v29.c = v25;
      v24 = *&CGAffineTransformIdentity.tx;
      *&v29.tx = v24;
      [v8 setTransform:&v29];

      v9 = [(NavSignManeuverCell *)self shieldImageView];
      v10 = v9;
      v11 = 0.150000006;
    }

    [v9 setAlpha:v11];

    v14 = [(NavSignManeuverCell *)self shieldImageView];
    v15 = v14;
    *&v29.a = v26;
    *&v29.c = v25;
    v16 = v24;
  }

  *&v29.tx = v16;
  [v14 setTransform:&v29];

  v20 = [(NavSignManeuverCell *)self primaryTextLabel];
  [v20 setAlpha:v7];

  v21 = [(NavSignManeuverCell *)self exitShieldImageView];
  [v21 setAlpha:v7];

  v22 = [(NavSignManeuverCell *)self secondaryTextLabel];
  [v22 setAlpha:v7];

  v23 = [(NavSignManeuverCell *)self tertiaryTextLabel];
  [v23 setAlpha:v7];
}

- (void)setSelectedWithLayoutProgress:(double)a3
{
  if (self->_state == 1 && (-[NavSignManeuverCell traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isLuminanceReduced], v5, v6))
  {
    v7 = sub_100A5FE68();
    v11 = v7;
    v8 = a3;
  }

  else
  {
    v7 = sub_1000808D8();
    v8 = a3 * 0.239999995;
    v11 = v7;
  }

  v9 = [v7 colorWithAlphaComponent:v8];
  v10 = [(NavSignManeuverCell *)self mapsBackgroundView];
  [v10 setBackgroundColor:v9];
}

- (void)setHideManeuverArrow:(BOOL)a3
{
  if (self->_hideManeuverArrow != a3)
  {
    self->_hideManeuverArrow = a3;
    [(NavSignManeuverCell *)self redrawContent];
  }
}

- (void)setItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = NavSignManeuverCell;
  [(RouteStepListCollectionCell *)&v4 setItem:a3];
  [(NavSignManeuverCell *)self redrawContent];
}

- (NavSignManeuverCell)initWithFrame:(CGRect)a3
{
  v164.receiver = self;
  v164.super_class = NavSignManeuverCell;
  v3 = [(RouteStepListCollectionCell *)&v164 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavSignManeuverCell *)v3 setAccessibilityIdentifier:v5];

    v6 = objc_opt_new();
    mapsBackgroundView = v3->_mapsBackgroundView;
    v3->_mapsBackgroundView = v6;

    [(UIView *)v3->_mapsBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(NavSignManeuverCell *)v3 contentView];
    [v8 setAccessibilityIdentifier:@"NavSignManeuverCellContent"];

    v9 = [(NavSignManeuverCell *)v3 contentView];
    [v9 addSubview:v3->_mapsBackgroundView];

    v10 = objc_opt_new();
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAccessibilityIdentifier:@"ImageContainerView"];
    v11 = [(NavSignManeuverCell *)v3 contentView];
    [v11 addSubview:v10];

    v12 = [GuidanceManeuverView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v16 = [(GuidanceManeuverView *)v12 initWithFrame:0 textureProvider:CGRectZero.origin.x, y, width, height];
    guidanceManeuverView = v3->_guidanceManeuverView;
    v3->_guidanceManeuverView = v16;

    [(GuidanceManeuverView *)v3->_guidanceManeuverView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GuidanceManeuverView *)v3->_guidanceManeuverView setFraming:1];
    [v10 addSubview:v3->_guidanceManeuverView];
    v18 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    shieldImageView = v3->_shieldImageView;
    v3->_shieldImageView = v18;

    [(UIImageView *)v3->_shieldImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_shieldImageView setAccessibilityIdentifier:@"ShieldImageView"];
    v20 = v10;
    [v10 addSubview:v3->_shieldImageView];
    v21 = objc_opt_new();
    primaryTextLabel = v3->_primaryTextLabel;
    v3->_primaryTextLabel = v21;

    [(UILabel *)v3->_primaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_primaryTextLabel setNumberOfLines:0];
    [(UILabel *)v3->_primaryTextLabel setAccessibilityIdentifier:@"PrimaryTextLabel"];
    LODWORD(v23) = 1148829696;
    [(UILabel *)v3->_primaryTextLabel setContentCompressionResistancePriority:1 forAxis:v23];
    v24 = [(NavSignManeuverCell *)v3 contentView];
    [v24 addSubview:v3->_primaryTextLabel];

    v25 = objc_opt_new();
    exitShieldImageView = v3->_exitShieldImageView;
    v3->_exitShieldImageView = v25;

    [(UIImageView *)v3->_exitShieldImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_exitShieldImageView setContentMode:1];
    [(UIImageView *)v3->_exitShieldImageView setIsAccessibilityElement:1];
    [(UIImageView *)v3->_exitShieldImageView setAccessibilityIdentifier:@"ExitShieldImageView"];
    LODWORD(v27) = 1148846080;
    [(UIImageView *)v3->_exitShieldImageView setContentHuggingPriority:0 forAxis:v27];
    LODWORD(v28) = 1148829696;
    [(UIImageView *)v3->_exitShieldImageView setContentCompressionResistancePriority:1 forAxis:v28];
    v29 = [(NavSignManeuverCell *)v3 contentView];
    [v29 addSubview:v3->_exitShieldImageView];

    v30 = objc_opt_new();
    secondaryTextLabel = v3->_secondaryTextLabel;
    v3->_secondaryTextLabel = v30;

    [(UILabel *)v3->_secondaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_secondaryTextLabel setNumberOfLines:0];
    [(UILabel *)v3->_secondaryTextLabel setAccessibilityIdentifier:@"SecondaryTextLabel"];
    v32 = [(NavSignManeuverCell *)v3 contentView];
    [v32 addSubview:v3->_secondaryTextLabel];

    v33 = objc_opt_new();
    tertiaryTextLabel = v3->_tertiaryTextLabel;
    v3->_tertiaryTextLabel = v33;

    [(UILabel *)v3->_tertiaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_tertiaryTextLabel setNumberOfLines:0];
    [(UILabel *)v3->_tertiaryTextLabel setAccessibilityIdentifier:@"TertiaryTextLabel"];
    v35 = [(NavSignManeuverCell *)v3 contentView];
    [v35 addSubview:v3->_tertiaryTextLabel];

    v36 = [v10 leadingAnchor];
    v37 = [(NavSignManeuverCell *)v3 contentView];
    v38 = [v37 leadingAnchor];
    v39 = [v36 constraintEqualToAnchor:v38];
    imageLeadingConstraint = v3->_imageLeadingConstraint;
    v3->_imageLeadingConstraint = v39;

    v163 = v20;
    v41 = [v20 widthAnchor];
    v42 = [v41 constraintEqualToConstant:0.0];
    imageAreaWidthConstraint = v3->_imageAreaWidthConstraint;
    v3->_imageAreaWidthConstraint = v42;

    v44 = [(GuidanceManeuverView *)v3->_guidanceManeuverView widthAnchor];
    v45 = [v44 constraintEqualToConstant:0.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v45;

    v47 = [(GuidanceManeuverView *)v3->_guidanceManeuverView heightAnchor];
    v48 = [v47 constraintEqualToConstant:0.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v48;

    v50 = [(GuidanceManeuverView *)v3->_guidanceManeuverView centerXAnchor];
    v51 = [v20 centerXAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    guidanceManeuverViewCenterXConstraint = v3->_guidanceManeuverViewCenterXConstraint;
    v3->_guidanceManeuverViewCenterXConstraint = v52;

    v54 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v55 = [v20 trailingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];
    primaryLeadingConstraint = v3->_primaryLeadingConstraint;
    v3->_primaryLeadingConstraint = v56;

    v58 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    v59 = [(NavSignManeuverCell *)v3 contentView];
    v60 = [v59 trailingAnchor];
    v61 = [v58 constraintEqualToAnchor:v60];
    primaryTrailingConstraint = v3->_primaryTrailingConstraint;
    v3->_primaryTrailingConstraint = v61;

    v63 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    v64 = [(UIImageView *)v3->_exitShieldImageView leadingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];
    primaryToExitShieldConstraint = v3->_primaryToExitShieldConstraint;
    v3->_primaryToExitShieldConstraint = v65;

    v67 = [(UIImageView *)v3->_exitShieldImageView trailingAnchor];
    v68 = [(NavSignManeuverCell *)v3 contentView];
    v69 = [v68 trailingAnchor];
    v70 = [v67 constraintEqualToAnchor:v69];
    exitShieldTrailingConstraint = v3->_exitShieldTrailingConstraint;
    v3->_exitShieldTrailingConstraint = v70;

    v72 = [(UILabel *)v3->_secondaryTextLabel trailingAnchor];
    v73 = [(NavSignManeuverCell *)v3 contentView];
    v74 = [v73 trailingAnchor];
    v75 = [v72 constraintEqualToAnchor:v74];
    secondaryTrailingConstraint = v3->_secondaryTrailingConstraint;
    v3->_secondaryTrailingConstraint = v75;

    v77 = [(UILabel *)v3->_tertiaryTextLabel bottomAnchor];
    v78 = [(NavSignManeuverCell *)v3 contentView];
    v79 = [v78 bottomAnchor];
    v80 = [v77 constraintLessThanOrEqualToAnchor:v79];
    tertiaryBottomConstraint = v3->_tertiaryBottomConstraint;
    v3->_tertiaryBottomConstraint = v80;

    v82 = [(UILabel *)v3->_primaryTextLabel topAnchor];
    v83 = [(NavSignManeuverCell *)v3 contentView];
    v84 = [v83 topAnchor];
    v85 = [v82 constraintEqualToAnchor:v84];
    primaryTopConstraint = v3->_primaryTopConstraint;
    v3->_primaryTopConstraint = v85;

    v87 = [(UILabel *)v3->_secondaryTextLabel topAnchor];
    v88 = [(UILabel *)v3->_primaryTextLabel bottomAnchor];
    v89 = [v87 constraintEqualToAnchor:v88];
    secondaryTopConstraint = v3->_secondaryTopConstraint;
    v3->_secondaryTopConstraint = v89;

    v91 = [(UILabel *)v3->_tertiaryTextLabel topAnchor];
    v92 = [(UILabel *)v3->_secondaryTextLabel bottomAnchor];
    v93 = [v91 constraintEqualToAnchor:v92];
    tertiaryTopConstraint = v3->_tertiaryTopConstraint;
    v3->_tertiaryTopConstraint = v93;

    v168[0] = v3->_primaryTopConstraint;
    v168[1] = v3->_tertiaryBottomConstraint;
    v95 = [NSArray arrayWithObjects:v168 count:2];
    primaryTopAnchoredConstraints = v3->_primaryTopAnchoredConstraints;
    v3->_primaryTopAnchoredConstraints = v95;

    v97 = [(UILabel *)v3->_primaryTextLabel centerYAnchor];
    v98 = [(NavSignManeuverCell *)v3 contentView];
    v99 = [v98 centerYAnchor];
    v100 = [v97 constraintEqualToAnchor:v99];
    v167 = v100;
    v101 = [NSArray arrayWithObjects:&v167 count:1];
    primaryCenteredAnchoredConstraints = v3->_primaryCenteredAnchoredConstraints;
    v3->_primaryCenteredAnchoredConstraints = v101;

    v152 = [(UIView *)v3->_mapsBackgroundView leadingAnchor];
    v153 = [(NavSignManeuverCell *)v3 contentView];
    v151 = [v153 leadingAnchor];
    v150 = [v152 constraintEqualToAnchor:v151];
    v166[0] = v150;
    v148 = [(UIView *)v3->_mapsBackgroundView trailingAnchor];
    v149 = [(NavSignManeuverCell *)v3 contentView];
    v146 = [v149 trailingAnchor];
    v145 = [v148 constraintEqualToAnchor:v146];
    v166[1] = v145;
    v143 = [(UIView *)v3->_mapsBackgroundView topAnchor];
    v144 = [(NavSignManeuverCell *)v3 contentView];
    v142 = [v144 topAnchor];
    v141 = [v143 constraintEqualToAnchor:v142];
    v166[2] = v141;
    v140 = [(UIView *)v3->_mapsBackgroundView bottomAnchor];
    v161 = [(NavSignManeuverCell *)v3 contentView];
    v139 = [v161 bottomAnchor];
    v138 = [v140 constraintEqualToAnchor:v139];
    v166[3] = v138;
    v166[4] = v3->_imageLeadingConstraint;
    v137 = [v20 topAnchor];
    v157 = [(NavSignManeuverCell *)v3 contentView];
    v136 = [v157 topAnchor];
    v134 = [v137 constraintEqualToAnchor:v136];
    v166[5] = v134;
    v132 = [v20 bottomAnchor];
    v133 = [(NavSignManeuverCell *)v3 contentView];
    v131 = [v133 bottomAnchor];
    v130 = [v132 constraintEqualToAnchor:v131];
    v166[6] = v130;
    v166[7] = v3->_imageAreaWidthConstraint;
    v166[8] = v3->_guidanceManeuverViewCenterXConstraint;
    v160 = [(GuidanceManeuverView *)v3->_guidanceManeuverView centerYAnchor];
    v154 = [v20 centerYAnchor];
    v129 = [v160 constraintEqualToAnchor:v154];
    v166[9] = v129;
    v166[10] = v3->_imageWidthConstraint;
    v166[11] = v3->_imageHeightConstraint;
    v159 = [(UIImageView *)v3->_shieldImageView topAnchor];
    v156 = [(GuidanceManeuverView *)v3->_guidanceManeuverView topAnchor];
    v128 = [v159 constraintEqualToAnchor:v156];
    v166[12] = v128;
    v127 = [(UIImageView *)v3->_shieldImageView bottomAnchor];
    v126 = [(GuidanceManeuverView *)v3->_guidanceManeuverView bottomAnchor];
    v125 = [v127 constraintEqualToAnchor:v126];
    v166[13] = v125;
    v124 = [(UIImageView *)v3->_shieldImageView leadingAnchor];
    v123 = [(GuidanceManeuverView *)v3->_guidanceManeuverView leadingAnchor];
    v122 = [v124 constraintEqualToAnchor:v123];
    v166[14] = v122;
    v162 = [(UIImageView *)v3->_shieldImageView trailingAnchor];
    v135 = [(GuidanceManeuverView *)v3->_guidanceManeuverView trailingAnchor];
    v121 = [v162 constraintEqualToAnchor:v135];
    v166[15] = v121;
    v166[16] = v3->_primaryLeadingConstraint;
    v166[17] = v3->_primaryTrailingConstraint;
    v166[18] = v3->_primaryTopConstraint;
    v166[19] = v3->_exitShieldTrailingConstraint;
    v155 = [(UIImageView *)v3->_exitShieldImageView widthAnchor];
    v158 = [(NavSignManeuverCell *)v3 contentView];
    v147 = [v158 widthAnchor];
    v120 = [v155 constraintLessThanOrEqualToAnchor:v147 multiplier:0.349999994];
    v166[20] = v120;
    v119 = [(UIImageView *)v3->_exitShieldImageView centerYAnchor];
    v118 = [(UILabel *)v3->_primaryTextLabel centerYAnchor];
    v117 = [v119 constraintEqualToAnchor:v118];
    v166[21] = v117;
    v116 = [(UILabel *)v3->_secondaryTextLabel leadingAnchor];
    v103 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v104 = [v116 constraintEqualToAnchor:v103];
    v166[22] = v104;
    v166[23] = v3->_secondaryTrailingConstraint;
    v166[24] = v3->_secondaryTopConstraint;
    v105 = [(UILabel *)v3->_tertiaryTextLabel leadingAnchor];
    v106 = [(UILabel *)v3->_secondaryTextLabel leadingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];
    v166[25] = v107;
    v108 = [(UILabel *)v3->_tertiaryTextLabel trailingAnchor];
    v109 = [(UILabel *)v3->_secondaryTextLabel trailingAnchor];
    v110 = [v108 constraintEqualToAnchor:v109];
    v166[26] = v110;
    v166[27] = v3->_tertiaryTopConstraint;
    v166[28] = v3->_tertiaryBottomConstraint;
    v111 = [NSArray arrayWithObjects:v166 count:29];
    [NSLayoutConstraint activateConstraints:v111];

    [(NavSignManeuverCell *)v3 setSelectedWithLayoutProgress:0.0];
    v112 = objc_opt_self();
    v165 = v112;
    v113 = [NSArray arrayWithObjects:&v165 count:1];
    v114 = [(NavSignManeuverCell *)v3 registerForTraitChanges:v113 withAction:"_resetManeuverItemCachedHeight"];
  }

  return v3;
}

+ (BOOL)_backlightSceneUpdaterOptimizationEnabled
{
  if (qword_10195EFD8 != -1)
  {
    dispatch_once(&qword_10195EFD8, &stru_1016511A0);
  }

  return byte_10195EFD0;
}

+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 cachedHeight];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 cachedWidth];
    if (v12)
    {
      v13 = v12;
      v14 = [v9 cachedWidth];
      [v14 cgFloatValue];
      v16 = vabdd_f64(a4, v15);

      if (v16 < 0.00001)
      {
        v17 = [v9 cachedHeight];
        [v17 cgFloatValue];
        v19 = v18;
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  v20 = [v9 metrics];
  [v20 imageAreaWidth];
  v22 = a4 - v21;

  v23 = [v9 metrics];
  [v23 textTrailingMargin];
  v25 = v24;

  v26 = [v9 metrics];
  [v26 imageTopMargin];
  v28 = v27;
  v29 = [v9 metrics];
  [v29 stepImageHeight];
  v31 = v30;
  v32 = [v9 metrics];
  [v32 imageBottomMargin];
  v79 = v33;

  v17 = [v9 primaryText];
  v78 = a5;
  if (v17)
  {
    v77 = v31;
    v34 = v25;
    v35 = a4;
    v36 = a4 * 0.349999994;
    v37 = [v9 exitSignImage];
    [v37 size];
    v39 = v38;
    v40 = v36;
    if (v36 >= v38)
    {
      v32 = [v9 exitSignImage];
      [v32 size];
      v40 = v41;
    }

    v42 = [v9 metrics];
    [v42 exitSignPadding];
    v44 = v43;

    if (v36 >= v39)
    {
    }

    v45 = [v9 exitSignImage];
    a4 = v35;
    if (v45)
    {
      v46 = v40 + v44 * 2.0;
    }

    else
    {
      v48 = [v9 metrics];
      [v48 textTrailingMargin];
      v46 = v49;
    }

    v25 = v34;

    v50 = [v9 metrics];
    [v50 primaryTextTopMargin];
    v52 = v51;

    [v17 boundingRectWithSize:1 options:0 context:{v22 - v46, 1.79769313e308}];
    v47 = ceil(v80.origin.y + CGRectGetHeight(v80)) + v52;
    v31 = v77;
  }

  else
  {
    v47 = 0.0;
  }

  v53 = v31 + v28;
  v54 = v22 - v25;
  v55 = [v9 secondaryText];
  if (v55)
  {
    v56 = [v9 metrics];
    [v56 secondaryTextTopMargin];
    v58 = v57 + v47;

    [v55 boundingRectWithSize:1 options:0 context:{v54, 1.79769313e308}];
    v47 = v58 + ceil(v81.origin.y + CGRectGetHeight(v81));
  }

  v59 = v53 + v79;
  v60 = [v9 tertiaryText];
  v61 = v60;
  if (v60)
  {
    [v60 boundingRectWithSize:1 options:0 context:{v54, 1.79769313e308}];
    y = v82.origin.y;
    Height = CGRectGetHeight(v82);
    v64 = [v9 metrics];
    [v64 tertiaryTextTopMargin];
    v66 = v65;
    v67 = ceil(y + Height);

    v68 = v67 + v47 + v66;
    v69 = 4 * (v68 > v78);
    if (v68 <= v78)
    {
      v47 = v67 + v47 + v66;
    }
  }

  else
  {
    v69 = 4;
  }

  [v9 setExcludedFieldsMask:v69];
  v70 = [v9 metrics];
  [v70 textBottomMargin];
  v72 = v71 + v47;

  v19 = fmax(v59, v72);
  if (qword_10195F520 != -1)
  {
    dispatch_once(&qword_10195F520, &stru_101657A70);
  }

  if (byte_10195F518)
  {
    v73 = 98.0;
  }

  else
  {
    v73 = 110.0;
  }

  if (v19 <= v73)
  {
    if (byte_10195F518)
    {
      v19 = 98.0;
    }

    else
    {
      v19 = 110.0;
    }
  }

  v74 = [NSNumber numberWithDouble:v19];
  [v9 setCachedHeight:v74];

  v75 = [NSNumber numberWithDouble:a4];
  [v9 setCachedWidth:v75];

LABEL_35:
  return v19;
}

@end