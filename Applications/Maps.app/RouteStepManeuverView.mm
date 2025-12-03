@interface RouteStepManeuverView
+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height;
- (RouteStepManeuverView)initWithFrame:(CGRect)frame;
- (void)setItem:(id)item;
- (void)setShouldUseTextToBottomConstraint:(BOOL)constraint;
- (void)setTrailingView:(id)view;
@end

@implementation RouteStepManeuverView

- (void)setItem:(id)item
{
  v63.receiver = self;
  v63.super_class = RouteStepManeuverView;
  [(RouteStepListView *)&v63 setItem:item];
  item = [(RouteStepListView *)self item];
  trailingView = [item trailingView];
  [(RouteStepManeuverView *)self setTrailingView:trailingView];

  metrics = [item metrics];
  [metrics imageAreaWidth];
  v8 = v7;
  containerWidthConstraint = [(RouteStepManeuverView *)self containerWidthConstraint];
  [containerWidthConstraint setConstant:v8];

  metrics2 = [item metrics];
  [metrics2 stepImageWidth];
  v12 = v11;
  imageWidthConstraint = [(RouteStepManeuverView *)self imageWidthConstraint];
  [imageWidthConstraint setConstant:v12];

  metrics3 = [item metrics];
  [metrics3 stepImageHeight];
  v16 = v15;
  imageHeightConstraint = [(RouteStepManeuverView *)self imageHeightConstraint];
  [imageHeightConstraint setConstant:v16];

  metrics4 = [item metrics];
  [metrics4 textTrailingMargin];
  v20 = v19;
  trailingView2 = [(RouteStepManeuverView *)self trailingView];
  [trailingView2 frame];
  v23 = -(v22 + v20);
  primaryTrailingConstraint = [(RouteStepManeuverView *)self primaryTrailingConstraint];
  [primaryTrailingConstraint setConstant:v23];

  metrics5 = [item metrics];
  [metrics5 primaryTextTopMargin];
  v27 = v26;
  primaryTopConstraint = [(RouteStepManeuverView *)self primaryTopConstraint];
  [primaryTopConstraint setConstant:v27];

  metrics6 = [item metrics];
  [metrics6 secondaryTextTopMargin];
  v31 = v30;
  secondaryTopConstraint = [(RouteStepManeuverView *)self secondaryTopConstraint];
  [secondaryTopConstraint setConstant:v31];

  metrics7 = [item metrics];
  [metrics7 tertiaryTextTopMargin];
  v35 = v34;
  tertiaryTopConstraint = [(RouteStepManeuverView *)self tertiaryTopConstraint];
  [tertiaryTopConstraint setConstant:v35];

  metrics8 = [item metrics];
  [metrics8 textBottomMargin];
  v39 = -v38;
  textToBottomConstraint = [(RouteStepManeuverView *)self textToBottomConstraint];
  [textToBottomConstraint setConstant:v39];

  primaryText = [item primaryText];
  primaryTextLabel = [(RouteStepManeuverView *)self primaryTextLabel];
  [primaryTextLabel setAttributedText:primaryText];

  secondaryText = [item secondaryText];
  secondaryTextLabel = [(RouteStepManeuverView *)self secondaryTextLabel];
  [secondaryTextLabel setAttributedText:secondaryText];

  tertiaryText = [item tertiaryText];
  tertiaryTextLabel = [(RouteStepManeuverView *)self tertiaryTextLabel];
  [tertiaryTextLabel setAttributedText:tertiaryText];

  shieldImageView = [(RouteStepManeuverView *)self shieldImageView];
  [shieldImageView setImage:0];

  guidanceManeuverView = [(RouteStepManeuverView *)self guidanceManeuverView];
  [guidanceManeuverView setManeuverArtwork:0];

  shieldImage = [item shieldImage];

  if (shieldImage)
  {
    shieldImage2 = [item shieldImage];
    shieldImageView2 = [(RouteStepManeuverView *)self shieldImageView];
    [shieldImageView2 setImage:shieldImage2];
LABEL_11:

    goto LABEL_12;
  }

  maneuverArtwork = [item maneuverArtwork];

  if (maneuverArtwork)
  {
    maneuverArtwork2 = [item maneuverArtwork];
    guidanceManeuverView2 = [(RouteStepManeuverView *)self guidanceManeuverView];
    [guidanceManeuverView2 setManeuverArtwork:maneuverArtwork2];

    metrics9 = [item metrics];
    v56 = metrics9;
    if (metrics9)
    {
      [metrics9 arrowMetrics];
    }

    else
    {
      memset(__src, 0, sizeof(__src));
    }

    guidanceManeuverView3 = [(RouteStepManeuverView *)self guidanceManeuverView];
    memcpy(__dst, __src, sizeof(__dst));
    [guidanceManeuverView3 setArrowMetrics:__dst];

    metrics10 = [item metrics];
    shieldImage2 = metrics10;
    if (metrics10)
    {
      [metrics10 junctionArrowMetrics];
    }

    else
    {
      memset(v60, 0, sizeof(v60));
    }

    shieldImageView2 = [(RouteStepManeuverView *)self guidanceManeuverView:v60[0]];
    memcpy(__dst, v60, sizeof(__dst));
    [shieldImageView2 setJunctionArrowMetrics:__dst];
    goto LABEL_11;
  }

LABEL_12:
  backgroundColor = [item backgroundColor];
  [(RouteStepManeuverView *)self setBackgroundColor:backgroundColor];
}

- (void)setTrailingView:(id)view
{
  viewCopy = view;
  trailingView = self->_trailingView;
  if (trailingView != viewCopy)
  {
    [(UIView *)trailingView removeFromSuperview];
    if (viewCopy)
    {
      [(RouteStepManeuverView *)self addSubview:viewCopy];
      trailingAnchor = [(UIView *)viewCopy trailingAnchor];
      trailingAnchor2 = [(RouteStepManeuverView *)self trailingAnchor];
      v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v14[0] = v8;
      centerYAnchor = [(UIView *)viewCopy centerYAnchor];
      centerYAnchor2 = [(RouteStepManeuverView *)self centerYAnchor];
      v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v14[1] = v11;
      v12 = [NSArray arrayWithObjects:v14 count:2];
      [NSLayoutConstraint activateConstraints:v12];
    }

    objc_storeStrong(&self->_trailingView, view);
  }
}

- (void)setShouldUseTextToBottomConstraint:(BOOL)constraint
{
  if (self->_shouldUseTextToBottomConstraint != constraint)
  {
    self->_shouldUseTextToBottomConstraint = constraint;
    [(NSLayoutConstraint *)self->_textToBottomConstraint setActive:?];
  }
}

- (RouteStepManeuverView)initWithFrame:(CGRect)frame
{
  v106.receiver = self;
  v106.super_class = RouteStepManeuverView;
  v3 = [(RouteStepListView *)&v106 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    widthAnchor = [v4 widthAnchor];
    v18 = [widthAnchor constraintEqualToConstant:0.0];
    containerWidthConstraint = v3->_containerWidthConstraint;
    v3->_containerWidthConstraint = v18;

    v105 = v10;
    widthAnchor2 = [v10 widthAnchor];
    v21 = [widthAnchor2 constraintEqualToConstant:0.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v21;

    heightAnchor = [v10 heightAnchor];
    v24 = [heightAnchor constraintEqualToConstant:0.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v24;

    trailingAnchor = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    safeAreaLayoutGuide = [(RouteStepManeuverView *)v3 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    primaryTrailingConstraint = v3->_primaryTrailingConstraint;
    v3->_primaryTrailingConstraint = v29;

    topAnchor = [(UILabel *)v3->_primaryTextLabel topAnchor];
    topAnchor2 = [(RouteStepManeuverView *)v3 topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    primaryTopConstraint = v3->_primaryTopConstraint;
    v3->_primaryTopConstraint = v33;

    topAnchor3 = [(UILabel *)v3->_secondaryTextLabel topAnchor];
    bottomAnchor = [(UILabel *)v3->_primaryTextLabel bottomAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    secondaryTopConstraint = v3->_secondaryTopConstraint;
    v3->_secondaryTopConstraint = v37;

    topAnchor4 = [(UILabel *)v3->_tertiaryTextLabel topAnchor];
    bottomAnchor2 = [(UILabel *)v3->_secondaryTextLabel bottomAnchor];
    v41 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
    tertiaryTopConstraint = v3->_tertiaryTopConstraint;
    v3->_tertiaryTopConstraint = v41;

    bottomAnchor3 = [(UILabel *)v3->_tertiaryTextLabel bottomAnchor];
    bottomAnchor4 = [(RouteStepManeuverView *)v3 bottomAnchor];
    v45 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    textToBottomConstraint = v3->_textToBottomConstraint;
    v3->_textToBottomConstraint = v45;

    leadingAnchor = [v104 leadingAnchor];
    safeAreaLayoutGuide2 = [(RouteStepManeuverView *)v3 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v100 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v107[0] = v100;
    v107[1] = v3->_containerWidthConstraint;
    topAnchor5 = [v104 topAnchor];
    topAnchor6 = [(RouteStepManeuverView *)v3 topAnchor];
    v97 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v107[2] = v97;
    bottomAnchor5 = [v104 bottomAnchor];
    bottomAnchor6 = [(RouteStepManeuverView *)v3 bottomAnchor];
    v94 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v107[3] = v94;
    centerXAnchor = [v105 centerXAnchor];
    centerXAnchor2 = [v104 centerXAnchor];
    v91 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v107[4] = v91;
    centerYAnchor = [v105 centerYAnchor];
    centerYAnchor2 = [v104 centerYAnchor];
    v88 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v107[5] = v88;
    v107[6] = v3->_imageWidthConstraint;
    v107[7] = v3->_imageHeightConstraint;
    leadingAnchor3 = [(GuidanceManeuverView *)v3->_guidanceManeuverView leadingAnchor];
    leadingAnchor4 = [v105 leadingAnchor];
    v84 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v107[8] = v84;
    trailingAnchor3 = [(GuidanceManeuverView *)v3->_guidanceManeuverView trailingAnchor];
    trailingAnchor4 = [v105 trailingAnchor];
    v81 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v107[9] = v81;
    topAnchor7 = [(GuidanceManeuverView *)v3->_guidanceManeuverView topAnchor];
    topAnchor8 = [v105 topAnchor];
    v78 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v107[10] = v78;
    bottomAnchor7 = [(GuidanceManeuverView *)v3->_guidanceManeuverView bottomAnchor];
    bottomAnchor8 = [v105 bottomAnchor];
    v75 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v107[11] = v75;
    leadingAnchor5 = [(UIImageView *)v3->_shieldImageView leadingAnchor];
    leadingAnchor6 = [v105 leadingAnchor];
    v72 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v107[12] = v72;
    trailingAnchor5 = [(UIImageView *)v3->_shieldImageView trailingAnchor];
    trailingAnchor6 = [v105 trailingAnchor];
    v69 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v107[13] = v69;
    topAnchor9 = [(UIImageView *)v3->_shieldImageView topAnchor];
    topAnchor10 = [v105 topAnchor];
    v66 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v107[14] = v66;
    bottomAnchor9 = [(UIImageView *)v3->_shieldImageView bottomAnchor];
    bottomAnchor10 = [v105 bottomAnchor];
    v63 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    v107[15] = v63;
    leadingAnchor7 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    trailingAnchor7 = [v104 trailingAnchor];
    v60 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor7];
    v107[16] = v60;
    v107[17] = v3->_primaryTrailingConstraint;
    v107[18] = v3->_primaryTopConstraint;
    leadingAnchor8 = [(UILabel *)v3->_secondaryTextLabel leadingAnchor];
    leadingAnchor9 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v58 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v107[19] = v58;
    trailingAnchor8 = [(UILabel *)v3->_secondaryTextLabel trailingAnchor];
    trailingAnchor9 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    v48 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v107[20] = v48;
    v107[21] = v3->_secondaryTopConstraint;
    leadingAnchor10 = [(UILabel *)v3->_tertiaryTextLabel leadingAnchor];
    leadingAnchor11 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v51 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
    v107[22] = v51;
    trailingAnchor10 = [(UILabel *)v3->_tertiaryTextLabel trailingAnchor];
    trailingAnchor11 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    v54 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v107[23] = v54;
    v107[24] = v3->_tertiaryTopConstraint;
    v55 = [NSArray arrayWithObjects:v107 count:25];
    [NSLayoutConstraint activateConstraints:v55];
  }

  return v3;
}

+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = itemCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  metrics = [v8 metrics];
  [metrics imageAreaWidth];
  v11 = v10;
  metrics2 = [v8 metrics];
  [metrics2 textTrailingMargin];
  v14 = v13;
  trailingView = [v8 trailingView];
  [trailingView frame];
  v17 = width - (v11 + v14 + v16);

  metrics3 = [v8 metrics];
  [metrics3 imageTopMargin];
  v20 = v19;
  metrics4 = [v8 metrics];
  [metrics4 stepImageHeight];
  v23 = v22;
  metrics5 = [v8 metrics];
  [metrics5 imageBottomMargin];
  v26 = v25;

  primaryText = [v8 primaryText];
  if (primaryText)
  {
    metrics6 = [v8 metrics];
    [metrics6 primaryTextTopMargin];
    v30 = v29;

    [primaryText boundingRectWithSize:1 options:0 context:{v17, 1.79769313e308}];
    v32 = ceil(v31) + v30;
  }

  else
  {
    v32 = 0.0;
  }

  secondaryText = [v8 secondaryText];
  if (secondaryText)
  {
    metrics7 = [v8 metrics];
    [metrics7 secondaryTextTopMargin];
    v36 = v35 + v32;

    [secondaryText boundingRectWithSize:1 options:0 context:{v17, 1.79769313e308}];
    v32 = v36 + ceil(v37);
  }

  tertiaryText = [v8 tertiaryText];
  if (tertiaryText)
  {
    metrics8 = [v8 metrics];
    [metrics8 tertiaryTextTopMargin];
    v41 = v40 + v32;

    [tertiaryText boundingRectWithSize:1 options:0 context:{v17, 1.79769313e308}];
    v32 = v41 + ceil(v42);
  }

  v43 = v23 + v20 + v26;
  metrics9 = [v8 metrics];
  [metrics9 textBottomMargin];
  v46 = v45 + v32;

  return fmax(v43, v46);
}

@end