@interface RouteStepWaypointView
+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height;
- (RouteStepWaypointView)initWithFrame:(CGRect)frame;
- (void)setItem:(id)item;
- (void)setShouldUseTextToBottomConstraint:(BOOL)constraint;
@end

@implementation RouteStepWaypointView

- (void)setItem:(id)item
{
  v47.receiver = self;
  v47.super_class = RouteStepWaypointView;
  [(RouteStepListView *)&v47 setItem:item];
  item = [(RouteStepListView *)self item];
  metrics = [item metrics];
  [metrics imageAreaWidth];
  v7 = v6;
  containerWidthConstraint = [(RouteStepWaypointView *)self containerWidthConstraint];
  [containerWidthConstraint setConstant:v7];

  metrics2 = [item metrics];
  [metrics2 waypointImageWidth];
  v11 = v10;
  imageWidthConstraint = [(RouteStepWaypointView *)self imageWidthConstraint];
  [imageWidthConstraint setConstant:v11];

  metrics3 = [item metrics];
  [metrics3 waypointImageHeight];
  v15 = v14;
  imageHeightConstraint = [(RouteStepWaypointView *)self imageHeightConstraint];
  [imageHeightConstraint setConstant:v15];

  metrics4 = [item metrics];
  [metrics4 primaryTextTopMargin];
  v19 = v18;
  primaryTopConstraint = [(RouteStepWaypointView *)self primaryTopConstraint];
  [primaryTopConstraint setConstant:v19];

  metrics5 = [item metrics];
  [metrics5 primaryTextTrailingMargin];
  v23 = -v22;
  primaryTrailingConstraint = [(RouteStepWaypointView *)self primaryTrailingConstraint];
  [primaryTrailingConstraint setConstant:v23];

  metrics6 = [item metrics];
  [metrics6 secondaryTextTopMargin];
  v27 = v26;
  secondaryTopConstraint = [(RouteStepWaypointView *)self secondaryTopConstraint];
  [secondaryTopConstraint setConstant:v27];

  metrics7 = [item metrics];
  [metrics7 textBottomMargin];
  v31 = -v30;
  textToBottomConstraint = [(RouteStepWaypointView *)self textToBottomConstraint];
  [textToBottomConstraint setConstant:v31];

  primaryText = [item primaryText];
  secondaryText = [item secondaryText];
  if ([primaryText length] && objc_msgSend(secondaryText, "length"))
  {
    primaryCenterYConstraint = [(RouteStepWaypointView *)self primaryCenterYConstraint];
    [primaryCenterYConstraint setActive:0];

    primaryTopConstraint2 = [(RouteStepWaypointView *)self primaryTopConstraint];
    [primaryTopConstraint2 setActive:1];

    secondaryTopConstraint2 = [(RouteStepWaypointView *)self secondaryTopConstraint];
    [secondaryTopConstraint2 setActive:1];

    shouldUseTextToBottomConstraint = [(RouteStepWaypointView *)self shouldUseTextToBottomConstraint];
  }

  else
  {
    primaryTopConstraint3 = [(RouteStepWaypointView *)self primaryTopConstraint];
    [primaryTopConstraint3 setActive:0];

    secondaryTopConstraint3 = [(RouteStepWaypointView *)self secondaryTopConstraint];
    [secondaryTopConstraint3 setActive:0];

    primaryCenterYConstraint2 = [(RouteStepWaypointView *)self primaryCenterYConstraint];
    [primaryCenterYConstraint2 setActive:1];

    shouldUseTextToBottomConstraint = 0;
  }

  textToBottomConstraint2 = [(RouteStepWaypointView *)self textToBottomConstraint];
  [textToBottomConstraint2 setActive:shouldUseTextToBottomConstraint];

  primaryTextLabel = [(RouteStepWaypointView *)self primaryTextLabel];
  [primaryTextLabel setAttributedText:primaryText];

  secondaryTextLabel = [(RouteStepWaypointView *)self secondaryTextLabel];
  [secondaryTextLabel setAttributedText:secondaryText];

  pinImage = [item pinImage];
  pinImageView = [(RouteStepWaypointView *)self pinImageView];
  [pinImageView setImage:pinImage];
}

- (void)setShouldUseTextToBottomConstraint:(BOOL)constraint
{
  if (self->_shouldUseTextToBottomConstraint != constraint)
  {
    self->_shouldUseTextToBottomConstraint = constraint;
    [(NSLayoutConstraint *)self->_textToBottomConstraint setActive:?];
  }
}

- (RouteStepWaypointView)initWithFrame:(CGRect)frame
{
  v71.receiver = self;
  v71.super_class = RouteStepWaypointView;
  v3 = [(RouteStepListView *)&v71 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    widthAnchor = [v6 widthAnchor];
    v14 = [widthAnchor constraintEqualToConstant:0.0];
    containerWidthConstraint = v3->_containerWidthConstraint;
    v3->_containerWidthConstraint = v14;

    widthAnchor2 = [(UIImageView *)v3->_pinImageView widthAnchor];
    v17 = [widthAnchor2 constraintEqualToConstant:0.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v17;

    heightAnchor = [(UIImageView *)v3->_pinImageView heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:0.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v20;

    topAnchor = [(UILabel *)v3->_primaryTextLabel topAnchor];
    topAnchor2 = [(RouteStepWaypointView *)v3 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    primaryTopConstraint = v3->_primaryTopConstraint;
    v3->_primaryTopConstraint = v24;

    trailingAnchor = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    safeAreaLayoutGuide = [(RouteStepWaypointView *)v3 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    primaryTrailingConstraint = v3->_primaryTrailingConstraint;
    v3->_primaryTrailingConstraint = v29;

    topAnchor3 = [(UILabel *)v3->_secondaryTextLabel topAnchor];
    bottomAnchor = [(UILabel *)v3->_primaryTextLabel bottomAnchor];
    v33 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    secondaryTopConstraint = v3->_secondaryTopConstraint;
    v3->_secondaryTopConstraint = v33;

    centerYAnchor = [(UILabel *)v3->_primaryTextLabel centerYAnchor];
    centerYAnchor2 = [v70 centerYAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    primaryCenterYConstraint = v3->_primaryCenterYConstraint;
    v3->_primaryCenterYConstraint = v37;

    bottomAnchor2 = [(UILabel *)v3->_secondaryTextLabel bottomAnchor];
    bottomAnchor3 = [(RouteStepWaypointView *)v3 bottomAnchor];
    v41 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    textToBottomConstraint = v3->_textToBottomConstraint;
    v3->_textToBottomConstraint = v41;

    leadingAnchor = [v70 leadingAnchor];
    safeAreaLayoutGuide2 = [(RouteStepWaypointView *)v3 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v65 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v72[0] = v65;
    v72[1] = v3->_containerWidthConstraint;
    topAnchor4 = [v70 topAnchor];
    topAnchor5 = [(RouteStepWaypointView *)v3 topAnchor];
    v62 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v72[2] = v62;
    bottomAnchor4 = [v70 bottomAnchor];
    bottomAnchor5 = [(RouteStepWaypointView *)v3 bottomAnchor];
    v59 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v72[3] = v59;
    centerXAnchor = [(UIImageView *)v3->_pinImageView centerXAnchor];
    centerXAnchor2 = [v70 centerXAnchor];
    v56 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v72[4] = v56;
    centerYAnchor3 = [(UIImageView *)v3->_pinImageView centerYAnchor];
    centerYAnchor4 = [v70 centerYAnchor];
    v53 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v72[5] = v53;
    v72[6] = v3->_imageWidthConstraint;
    v72[7] = v3->_imageHeightConstraint;
    leadingAnchor3 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    trailingAnchor3 = [v70 trailingAnchor];
    v44 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3];
    v72[8] = v44;
    v72[9] = v3->_primaryTrailingConstraint;
    leadingAnchor4 = [(UILabel *)v3->_secondaryTextLabel leadingAnchor];
    leadingAnchor5 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v47 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v72[10] = v47;
    trailingAnchor4 = [(UILabel *)v3->_secondaryTextLabel trailingAnchor];
    trailingAnchor5 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    v50 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v72[11] = v50;
    v51 = [NSArray arrayWithObjects:v72 count:12];
    [NSLayoutConstraint activateConstraints:v51];
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
  v14 = width - (v11 + v13);

  metrics3 = [v8 metrics];
  [metrics3 imageTopMargin];
  v17 = v16;
  metrics4 = [v8 metrics];
  [metrics4 waypointImageHeight];
  v20 = v19;
  metrics5 = [v8 metrics];
  [metrics5 imageBottomMargin];
  v23 = v22;

  primaryText = [v8 primaryText];
  if (primaryText)
  {
    metrics6 = [v8 metrics];
    [metrics6 primaryTextTopMargin];
    v27 = v26;

    [primaryText boundingRectWithSize:1 options:0 context:{v14, 1.79769313e308}];
    v29 = ceil(v28) + v27;
  }

  else
  {
    v29 = 0.0;
  }

  secondaryText = [v8 secondaryText];
  if (secondaryText)
  {
    metrics7 = [v8 metrics];
    [metrics7 secondaryTextTopMargin];
    v33 = v32 + v29;

    [secondaryText boundingRectWithSize:1 options:0 context:{v14, 1.79769313e308}];
    v29 = v33 + ceil(v34);
  }

  v35 = v20 + v17 + v23;
  metrics8 = [v8 metrics];
  [metrics8 textBottomMargin];
  v38 = v37 + v29;

  return fmax(v35, v38);
}

@end