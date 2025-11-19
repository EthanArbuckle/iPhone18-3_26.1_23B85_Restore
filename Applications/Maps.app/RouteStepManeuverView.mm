@interface RouteStepManeuverView
+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5;
- (RouteStepManeuverView)initWithFrame:(CGRect)a3;
- (void)setItem:(id)a3;
- (void)setShouldUseTextToBottomConstraint:(BOOL)a3;
- (void)setTrailingView:(id)a3;
@end

@implementation RouteStepManeuverView

- (void)setItem:(id)a3
{
  v63.receiver = self;
  v63.super_class = RouteStepManeuverView;
  [(RouteStepListView *)&v63 setItem:a3];
  v4 = [(RouteStepListView *)self item];
  v5 = [v4 trailingView];
  [(RouteStepManeuverView *)self setTrailingView:v5];

  v6 = [v4 metrics];
  [v6 imageAreaWidth];
  v8 = v7;
  v9 = [(RouteStepManeuverView *)self containerWidthConstraint];
  [v9 setConstant:v8];

  v10 = [v4 metrics];
  [v10 stepImageWidth];
  v12 = v11;
  v13 = [(RouteStepManeuverView *)self imageWidthConstraint];
  [v13 setConstant:v12];

  v14 = [v4 metrics];
  [v14 stepImageHeight];
  v16 = v15;
  v17 = [(RouteStepManeuverView *)self imageHeightConstraint];
  [v17 setConstant:v16];

  v18 = [v4 metrics];
  [v18 textTrailingMargin];
  v20 = v19;
  v21 = [(RouteStepManeuverView *)self trailingView];
  [v21 frame];
  v23 = -(v22 + v20);
  v24 = [(RouteStepManeuverView *)self primaryTrailingConstraint];
  [v24 setConstant:v23];

  v25 = [v4 metrics];
  [v25 primaryTextTopMargin];
  v27 = v26;
  v28 = [(RouteStepManeuverView *)self primaryTopConstraint];
  [v28 setConstant:v27];

  v29 = [v4 metrics];
  [v29 secondaryTextTopMargin];
  v31 = v30;
  v32 = [(RouteStepManeuverView *)self secondaryTopConstraint];
  [v32 setConstant:v31];

  v33 = [v4 metrics];
  [v33 tertiaryTextTopMargin];
  v35 = v34;
  v36 = [(RouteStepManeuverView *)self tertiaryTopConstraint];
  [v36 setConstant:v35];

  v37 = [v4 metrics];
  [v37 textBottomMargin];
  v39 = -v38;
  v40 = [(RouteStepManeuverView *)self textToBottomConstraint];
  [v40 setConstant:v39];

  v41 = [v4 primaryText];
  v42 = [(RouteStepManeuverView *)self primaryTextLabel];
  [v42 setAttributedText:v41];

  v43 = [v4 secondaryText];
  v44 = [(RouteStepManeuverView *)self secondaryTextLabel];
  [v44 setAttributedText:v43];

  v45 = [v4 tertiaryText];
  v46 = [(RouteStepManeuverView *)self tertiaryTextLabel];
  [v46 setAttributedText:v45];

  v47 = [(RouteStepManeuverView *)self shieldImageView];
  [v47 setImage:0];

  v48 = [(RouteStepManeuverView *)self guidanceManeuverView];
  [v48 setManeuverArtwork:0];

  v49 = [v4 shieldImage];

  if (v49)
  {
    v50 = [v4 shieldImage];
    v51 = [(RouteStepManeuverView *)self shieldImageView];
    [v51 setImage:v50];
LABEL_11:

    goto LABEL_12;
  }

  v52 = [v4 maneuverArtwork];

  if (v52)
  {
    v53 = [v4 maneuverArtwork];
    v54 = [(RouteStepManeuverView *)self guidanceManeuverView];
    [v54 setManeuverArtwork:v53];

    v55 = [v4 metrics];
    v56 = v55;
    if (v55)
    {
      [v55 arrowMetrics];
    }

    else
    {
      memset(__src, 0, sizeof(__src));
    }

    v57 = [(RouteStepManeuverView *)self guidanceManeuverView];
    memcpy(__dst, __src, sizeof(__dst));
    [v57 setArrowMetrics:__dst];

    v58 = [v4 metrics];
    v50 = v58;
    if (v58)
    {
      [v58 junctionArrowMetrics];
    }

    else
    {
      memset(v60, 0, sizeof(v60));
    }

    v51 = [(RouteStepManeuverView *)self guidanceManeuverView:v60[0]];
    memcpy(__dst, v60, sizeof(__dst));
    [v51 setJunctionArrowMetrics:__dst];
    goto LABEL_11;
  }

LABEL_12:
  v59 = [v4 backgroundColor];
  [(RouteStepManeuverView *)self setBackgroundColor:v59];
}

- (void)setTrailingView:(id)a3
{
  v5 = a3;
  trailingView = self->_trailingView;
  if (trailingView != v5)
  {
    [(UIView *)trailingView removeFromSuperview];
    if (v5)
    {
      [(RouteStepManeuverView *)self addSubview:v5];
      v13 = [(UIView *)v5 trailingAnchor];
      v7 = [(RouteStepManeuverView *)self trailingAnchor];
      v8 = [v13 constraintEqualToAnchor:v7];
      v14[0] = v8;
      v9 = [(UIView *)v5 centerYAnchor];
      v10 = [(RouteStepManeuverView *)self centerYAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v14[1] = v11;
      v12 = [NSArray arrayWithObjects:v14 count:2];
      [NSLayoutConstraint activateConstraints:v12];
    }

    objc_storeStrong(&self->_trailingView, a3);
  }
}

- (void)setShouldUseTextToBottomConstraint:(BOOL)a3
{
  if (self->_shouldUseTextToBottomConstraint != a3)
  {
    self->_shouldUseTextToBottomConstraint = a3;
    [(NSLayoutConstraint *)self->_textToBottomConstraint setActive:?];
  }
}

- (RouteStepManeuverView)initWithFrame:(CGRect)a3
{
  v106.receiver = self;
  v106.super_class = RouteStepManeuverView;
  v3 = [(RouteStepListView *)&v106 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v104 = v4;
    [(RouteStepManeuverView *)v3 addSubview:v4];
    v5 = objc_opt_new();
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setAccessibilityIdentifier:@"ImageContainer"];
    [(RouteStepManeuverView *)v3 addSubview:v5];
    v6 = [[GuidanceManeuverView alloc] initWithFrame:0 textureProvider:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    guidanceManeuverView = v3->_guidanceManeuverView;
    v3->_guidanceManeuverView = v6;

    [(GuidanceManeuverView *)v3->_guidanceManeuverView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GuidanceManeuverView *)v3->_guidanceManeuverView setFraming:1];
    [v5 addSubview:v3->_guidanceManeuverView];
    v8 = objc_opt_new();
    shieldImageView = v3->_shieldImageView;
    v3->_shieldImageView = v8;

    [(UIImageView *)v3->_shieldImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_shieldImageView setContentMode:1];
    [(UIImageView *)v3->_shieldImageView setAccessibilityIdentifier:@"ShieldImage"];
    v10 = v5;
    [v5 addSubview:v3->_shieldImageView];
    v11 = objc_opt_new();
    primaryTextLabel = v3->_primaryTextLabel;
    v3->_primaryTextLabel = v11;

    [(UILabel *)v3->_primaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_primaryTextLabel setNumberOfLines:0];
    [(UILabel *)v3->_primaryTextLabel setAccessibilityIdentifier:@"PrimaryTextLabel"];
    [(RouteStepManeuverView *)v3 addSubview:v3->_primaryTextLabel];
    v13 = objc_opt_new();
    secondaryTextLabel = v3->_secondaryTextLabel;
    v3->_secondaryTextLabel = v13;

    [(UILabel *)v3->_secondaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_secondaryTextLabel setNumberOfLines:0];
    [(UILabel *)v3->_secondaryTextLabel setAccessibilityIdentifier:@"SecondaryTextLabel"];
    [(RouteStepManeuverView *)v3 addSubview:v3->_secondaryTextLabel];
    v15 = objc_opt_new();
    tertiaryTextLabel = v3->_tertiaryTextLabel;
    v3->_tertiaryTextLabel = v15;

    [(UILabel *)v3->_tertiaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_tertiaryTextLabel setNumberOfLines:0];
    [(UILabel *)v3->_tertiaryTextLabel setAccessibilityIdentifier:@"TertiaryTextLabel"];
    [(RouteStepManeuverView *)v3 addSubview:v3->_tertiaryTextLabel];
    v17 = [v4 widthAnchor];
    v18 = [v17 constraintEqualToConstant:0.0];
    containerWidthConstraint = v3->_containerWidthConstraint;
    v3->_containerWidthConstraint = v18;

    v105 = v10;
    v20 = [v10 widthAnchor];
    v21 = [v20 constraintEqualToConstant:0.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v21;

    v23 = [v10 heightAnchor];
    v24 = [v23 constraintEqualToConstant:0.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v24;

    v26 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    v27 = [(RouteStepManeuverView *)v3 safeAreaLayoutGuide];
    v28 = [v27 trailingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    primaryTrailingConstraint = v3->_primaryTrailingConstraint;
    v3->_primaryTrailingConstraint = v29;

    v31 = [(UILabel *)v3->_primaryTextLabel topAnchor];
    v32 = [(RouteStepManeuverView *)v3 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    primaryTopConstraint = v3->_primaryTopConstraint;
    v3->_primaryTopConstraint = v33;

    v35 = [(UILabel *)v3->_secondaryTextLabel topAnchor];
    v36 = [(UILabel *)v3->_primaryTextLabel bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    secondaryTopConstraint = v3->_secondaryTopConstraint;
    v3->_secondaryTopConstraint = v37;

    v39 = [(UILabel *)v3->_tertiaryTextLabel topAnchor];
    v40 = [(UILabel *)v3->_secondaryTextLabel bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    tertiaryTopConstraint = v3->_tertiaryTopConstraint;
    v3->_tertiaryTopConstraint = v41;

    v43 = [(UILabel *)v3->_tertiaryTextLabel bottomAnchor];
    v44 = [(RouteStepManeuverView *)v3 bottomAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    textToBottomConstraint = v3->_textToBottomConstraint;
    v3->_textToBottomConstraint = v45;

    v102 = [v104 leadingAnchor];
    v103 = [(RouteStepManeuverView *)v3 safeAreaLayoutGuide];
    v101 = [v103 leadingAnchor];
    v100 = [v102 constraintEqualToAnchor:v101];
    v107[0] = v100;
    v107[1] = v3->_containerWidthConstraint;
    v99 = [v104 topAnchor];
    v98 = [(RouteStepManeuverView *)v3 topAnchor];
    v97 = [v99 constraintEqualToAnchor:v98];
    v107[2] = v97;
    v96 = [v104 bottomAnchor];
    v95 = [(RouteStepManeuverView *)v3 bottomAnchor];
    v94 = [v96 constraintEqualToAnchor:v95];
    v107[3] = v94;
    v93 = [v105 centerXAnchor];
    v92 = [v104 centerXAnchor];
    v91 = [v93 constraintEqualToAnchor:v92];
    v107[4] = v91;
    v90 = [v105 centerYAnchor];
    v89 = [v104 centerYAnchor];
    v88 = [v90 constraintEqualToAnchor:v89];
    v107[5] = v88;
    v107[6] = v3->_imageWidthConstraint;
    v107[7] = v3->_imageHeightConstraint;
    v86 = [(GuidanceManeuverView *)v3->_guidanceManeuverView leadingAnchor];
    v85 = [v105 leadingAnchor];
    v84 = [v86 constraintEqualToAnchor:v85];
    v107[8] = v84;
    v83 = [(GuidanceManeuverView *)v3->_guidanceManeuverView trailingAnchor];
    v82 = [v105 trailingAnchor];
    v81 = [v83 constraintEqualToAnchor:v82];
    v107[9] = v81;
    v80 = [(GuidanceManeuverView *)v3->_guidanceManeuverView topAnchor];
    v79 = [v105 topAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v107[10] = v78;
    v77 = [(GuidanceManeuverView *)v3->_guidanceManeuverView bottomAnchor];
    v76 = [v105 bottomAnchor];
    v75 = [v77 constraintEqualToAnchor:v76];
    v107[11] = v75;
    v74 = [(UIImageView *)v3->_shieldImageView leadingAnchor];
    v73 = [v105 leadingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73];
    v107[12] = v72;
    v71 = [(UIImageView *)v3->_shieldImageView trailingAnchor];
    v70 = [v105 trailingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v107[13] = v69;
    v68 = [(UIImageView *)v3->_shieldImageView topAnchor];
    v67 = [v105 topAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v107[14] = v66;
    v65 = [(UIImageView *)v3->_shieldImageView bottomAnchor];
    v64 = [v105 bottomAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v107[15] = v63;
    v62 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v61 = [v104 trailingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v107[16] = v60;
    v107[17] = v3->_primaryTrailingConstraint;
    v107[18] = v3->_primaryTopConstraint;
    v87 = [(UILabel *)v3->_secondaryTextLabel leadingAnchor];
    v59 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v58 = [v87 constraintEqualToAnchor:v59];
    v107[19] = v58;
    v57 = [(UILabel *)v3->_secondaryTextLabel trailingAnchor];
    v47 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    v48 = [v57 constraintEqualToAnchor:v47];
    v107[20] = v48;
    v107[21] = v3->_secondaryTopConstraint;
    v49 = [(UILabel *)v3->_tertiaryTextLabel leadingAnchor];
    v50 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v107[22] = v51;
    v52 = [(UILabel *)v3->_tertiaryTextLabel trailingAnchor];
    v53 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    v107[23] = v54;
    v107[24] = v3->_tertiaryTopConstraint;
    v55 = [NSArray arrayWithObjects:v107 count:25];
    [NSLayoutConstraint activateConstraints:v55];
  }

  return v3;
}

+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 metrics];
  [v9 imageAreaWidth];
  v11 = v10;
  v12 = [v8 metrics];
  [v12 textTrailingMargin];
  v14 = v13;
  v15 = [v8 trailingView];
  [v15 frame];
  v17 = a4 - (v11 + v14 + v16);

  v18 = [v8 metrics];
  [v18 imageTopMargin];
  v20 = v19;
  v21 = [v8 metrics];
  [v21 stepImageHeight];
  v23 = v22;
  v24 = [v8 metrics];
  [v24 imageBottomMargin];
  v26 = v25;

  v27 = [v8 primaryText];
  if (v27)
  {
    v28 = [v8 metrics];
    [v28 primaryTextTopMargin];
    v30 = v29;

    [v27 boundingRectWithSize:1 options:0 context:{v17, 1.79769313e308}];
    v32 = ceil(v31) + v30;
  }

  else
  {
    v32 = 0.0;
  }

  v33 = [v8 secondaryText];
  if (v33)
  {
    v34 = [v8 metrics];
    [v34 secondaryTextTopMargin];
    v36 = v35 + v32;

    [v33 boundingRectWithSize:1 options:0 context:{v17, 1.79769313e308}];
    v32 = v36 + ceil(v37);
  }

  v38 = [v8 tertiaryText];
  if (v38)
  {
    v39 = [v8 metrics];
    [v39 tertiaryTextTopMargin];
    v41 = v40 + v32;

    [v38 boundingRectWithSize:1 options:0 context:{v17, 1.79769313e308}];
    v32 = v41 + ceil(v42);
  }

  v43 = v23 + v20 + v26;
  v44 = [v8 metrics];
  [v44 textBottomMargin];
  v46 = v45 + v32;

  return fmax(v43, v46);
}

@end