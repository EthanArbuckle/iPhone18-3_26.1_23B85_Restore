@interface RouteStepWaypointView
+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5;
- (RouteStepWaypointView)initWithFrame:(CGRect)a3;
- (void)setItem:(id)a3;
- (void)setShouldUseTextToBottomConstraint:(BOOL)a3;
@end

@implementation RouteStepWaypointView

- (void)setItem:(id)a3
{
  v47.receiver = self;
  v47.super_class = RouteStepWaypointView;
  [(RouteStepListView *)&v47 setItem:a3];
  v4 = [(RouteStepListView *)self item];
  v5 = [v4 metrics];
  [v5 imageAreaWidth];
  v7 = v6;
  v8 = [(RouteStepWaypointView *)self containerWidthConstraint];
  [v8 setConstant:v7];

  v9 = [v4 metrics];
  [v9 waypointImageWidth];
  v11 = v10;
  v12 = [(RouteStepWaypointView *)self imageWidthConstraint];
  [v12 setConstant:v11];

  v13 = [v4 metrics];
  [v13 waypointImageHeight];
  v15 = v14;
  v16 = [(RouteStepWaypointView *)self imageHeightConstraint];
  [v16 setConstant:v15];

  v17 = [v4 metrics];
  [v17 primaryTextTopMargin];
  v19 = v18;
  v20 = [(RouteStepWaypointView *)self primaryTopConstraint];
  [v20 setConstant:v19];

  v21 = [v4 metrics];
  [v21 primaryTextTrailingMargin];
  v23 = -v22;
  v24 = [(RouteStepWaypointView *)self primaryTrailingConstraint];
  [v24 setConstant:v23];

  v25 = [v4 metrics];
  [v25 secondaryTextTopMargin];
  v27 = v26;
  v28 = [(RouteStepWaypointView *)self secondaryTopConstraint];
  [v28 setConstant:v27];

  v29 = [v4 metrics];
  [v29 textBottomMargin];
  v31 = -v30;
  v32 = [(RouteStepWaypointView *)self textToBottomConstraint];
  [v32 setConstant:v31];

  v33 = [v4 primaryText];
  v34 = [v4 secondaryText];
  if ([v33 length] && objc_msgSend(v34, "length"))
  {
    v35 = [(RouteStepWaypointView *)self primaryCenterYConstraint];
    [v35 setActive:0];

    v36 = [(RouteStepWaypointView *)self primaryTopConstraint];
    [v36 setActive:1];

    v37 = [(RouteStepWaypointView *)self secondaryTopConstraint];
    [v37 setActive:1];

    v38 = [(RouteStepWaypointView *)self shouldUseTextToBottomConstraint];
  }

  else
  {
    v39 = [(RouteStepWaypointView *)self primaryTopConstraint];
    [v39 setActive:0];

    v40 = [(RouteStepWaypointView *)self secondaryTopConstraint];
    [v40 setActive:0];

    v41 = [(RouteStepWaypointView *)self primaryCenterYConstraint];
    [v41 setActive:1];

    v38 = 0;
  }

  v42 = [(RouteStepWaypointView *)self textToBottomConstraint];
  [v42 setActive:v38];

  v43 = [(RouteStepWaypointView *)self primaryTextLabel];
  [v43 setAttributedText:v33];

  v44 = [(RouteStepWaypointView *)self secondaryTextLabel];
  [v44 setAttributedText:v34];

  v45 = [v4 pinImage];
  v46 = [(RouteStepWaypointView *)self pinImageView];
  [v46 setImage:v45];
}

- (void)setShouldUseTextToBottomConstraint:(BOOL)a3
{
  if (self->_shouldUseTextToBottomConstraint != a3)
  {
    self->_shouldUseTextToBottomConstraint = a3;
    [(NSLayoutConstraint *)self->_textToBottomConstraint setActive:?];
  }
}

- (RouteStepWaypointView)initWithFrame:(CGRect)a3
{
  v71.receiver = self;
  v71.super_class = RouteStepWaypointView;
  v3 = [(RouteStepListView *)&v71 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(RouteStepWaypointView *)v3 setAccessibilityIdentifier:v5];

    v6 = objc_opt_new();
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setAccessibilityIdentifier:@"LeadingContainer"];
    [(RouteStepWaypointView *)v3 addSubview:v6];
    v7 = objc_opt_new();
    pinImageView = v3->_pinImageView;
    v3->_pinImageView = v7;

    [(UIImageView *)v3->_pinImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_pinImageView setContentMode:1];
    [(UIImageView *)v3->_pinImageView setAccessibilityIdentifier:@"PinImageView"];
    v70 = v6;
    [v6 addSubview:v3->_pinImageView];
    v9 = objc_opt_new();
    primaryTextLabel = v3->_primaryTextLabel;
    v3->_primaryTextLabel = v9;

    [(UILabel *)v3->_primaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_primaryTextLabel setNumberOfLines:0];
    [(UILabel *)v3->_primaryTextLabel setAccessibilityIdentifier:@"PrimaryTextLabel"];
    [(RouteStepWaypointView *)v3 addSubview:v3->_primaryTextLabel];
    v11 = objc_opt_new();
    secondaryTextLabel = v3->_secondaryTextLabel;
    v3->_secondaryTextLabel = v11;

    [(UILabel *)v3->_secondaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_secondaryTextLabel setNumberOfLines:0];
    [(UILabel *)v3->_secondaryTextLabel setAccessibilityIdentifier:@"SecondaryTextLabel"];
    [(RouteStepWaypointView *)v3 addSubview:v3->_secondaryTextLabel];
    v13 = [v6 widthAnchor];
    v14 = [v13 constraintEqualToConstant:0.0];
    containerWidthConstraint = v3->_containerWidthConstraint;
    v3->_containerWidthConstraint = v14;

    v16 = [(UIImageView *)v3->_pinImageView widthAnchor];
    v17 = [v16 constraintEqualToConstant:0.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v17;

    v19 = [(UIImageView *)v3->_pinImageView heightAnchor];
    v20 = [v19 constraintEqualToConstant:0.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v20;

    v22 = [(UILabel *)v3->_primaryTextLabel topAnchor];
    v23 = [(RouteStepWaypointView *)v3 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    primaryTopConstraint = v3->_primaryTopConstraint;
    v3->_primaryTopConstraint = v24;

    v26 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    v27 = [(RouteStepWaypointView *)v3 safeAreaLayoutGuide];
    v28 = [v27 trailingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    primaryTrailingConstraint = v3->_primaryTrailingConstraint;
    v3->_primaryTrailingConstraint = v29;

    v31 = [(UILabel *)v3->_secondaryTextLabel topAnchor];
    v32 = [(UILabel *)v3->_primaryTextLabel bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    secondaryTopConstraint = v3->_secondaryTopConstraint;
    v3->_secondaryTopConstraint = v33;

    v35 = [(UILabel *)v3->_primaryTextLabel centerYAnchor];
    v36 = [v70 centerYAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    primaryCenterYConstraint = v3->_primaryCenterYConstraint;
    v3->_primaryCenterYConstraint = v37;

    v39 = [(UILabel *)v3->_secondaryTextLabel bottomAnchor];
    v40 = [(RouteStepWaypointView *)v3 bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    textToBottomConstraint = v3->_textToBottomConstraint;
    v3->_textToBottomConstraint = v41;

    v67 = [v70 leadingAnchor];
    v68 = [(RouteStepWaypointView *)v3 safeAreaLayoutGuide];
    v66 = [v68 leadingAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v72[0] = v65;
    v72[1] = v3->_containerWidthConstraint;
    v64 = [v70 topAnchor];
    v63 = [(RouteStepWaypointView *)v3 topAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v72[2] = v62;
    v61 = [v70 bottomAnchor];
    v60 = [(RouteStepWaypointView *)v3 bottomAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v72[3] = v59;
    v58 = [(UIImageView *)v3->_pinImageView centerXAnchor];
    v57 = [v70 centerXAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v72[4] = v56;
    v55 = [(UIImageView *)v3->_pinImageView centerYAnchor];
    v54 = [v70 centerYAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v72[5] = v53;
    v72[6] = v3->_imageWidthConstraint;
    v72[7] = v3->_imageHeightConstraint;
    v69 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v43 = [v70 trailingAnchor];
    v44 = [v69 constraintEqualToAnchor:v43];
    v72[8] = v44;
    v72[9] = v3->_primaryTrailingConstraint;
    v45 = [(UILabel *)v3->_secondaryTextLabel leadingAnchor];
    v46 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    v72[10] = v47;
    v48 = [(UILabel *)v3->_secondaryTextLabel trailingAnchor];
    v49 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
    v72[11] = v50;
    v51 = [NSArray arrayWithObjects:v72 count:12];
    [NSLayoutConstraint activateConstraints:v51];
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
  v14 = a4 - (v11 + v13);

  v15 = [v8 metrics];
  [v15 imageTopMargin];
  v17 = v16;
  v18 = [v8 metrics];
  [v18 waypointImageHeight];
  v20 = v19;
  v21 = [v8 metrics];
  [v21 imageBottomMargin];
  v23 = v22;

  v24 = [v8 primaryText];
  if (v24)
  {
    v25 = [v8 metrics];
    [v25 primaryTextTopMargin];
    v27 = v26;

    [v24 boundingRectWithSize:1 options:0 context:{v14, 1.79769313e308}];
    v29 = ceil(v28) + v27;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = [v8 secondaryText];
  if (v30)
  {
    v31 = [v8 metrics];
    [v31 secondaryTextTopMargin];
    v33 = v32 + v29;

    [v30 boundingRectWithSize:1 options:0 context:{v14, 1.79769313e308}];
    v29 = v33 + ceil(v34);
  }

  v35 = v20 + v17 + v23;
  v36 = [v8 metrics];
  [v36 textBottomMargin];
  v38 = v37 + v29;

  return fmax(v35, v38);
}

@end