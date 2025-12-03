@interface NavSignManeuverCell
+ (BOOL)_backlightSceneUpdaterOptimizationEnabled;
+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height;
- (BOOL)_shouldPostBacklightSceneRequiresUpdateNotification:(id)notification;
- (NavSignManeuverCell)initWithFrame:(CGRect)frame;
- (void)_resetManeuverItemCachedHeight;
- (void)_updateStateWithLayoutProgress:(double)progress;
- (void)redrawContent;
- (void)setHideManeuverArrow:(BOOL)arrow;
- (void)setItem:(id)item;
- (void)setSelectedWithLayoutProgress:(double)progress;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation NavSignManeuverCell

- (void)redrawContent
{
  item = [(RouteStepListCollectionCell *)self item];
  v4 = [(NavSignManeuverCell *)self _shouldPostBacklightSceneRequiresUpdateNotification:item];
  excludedFieldsMask = [item excludedFieldsMask];
  metrics = [item metrics];
  [metrics imageAreaWidth];
  v8 = v7;
  imageAreaWidthConstraint = [(NavSignManeuverCell *)self imageAreaWidthConstraint];
  [imageAreaWidthConstraint setConstant:v8];

  metrics2 = [item metrics];
  [metrics2 stepImageWidth];
  v12 = v11;
  imageWidthConstraint = [(NavSignManeuverCell *)self imageWidthConstraint];
  [imageWidthConstraint setConstant:v12];

  metrics3 = [item metrics];
  [metrics3 stepImageHeight];
  v16 = v15;
  imageHeightConstraint = [(NavSignManeuverCell *)self imageHeightConstraint];
  [imageHeightConstraint setConstant:v16];

  metrics4 = [item metrics];
  [metrics4 imageCenterXOffset];
  v20 = v19;
  guidanceManeuverViewCenterXConstraint = [(NavSignManeuverCell *)self guidanceManeuverViewCenterXConstraint];
  [guidanceManeuverViewCenterXConstraint setConstant:v20];

  metrics5 = [item metrics];
  [metrics5 exitSignPadding];
  v24 = -v23;
  primaryToExitShieldConstraint = [(NavSignManeuverCell *)self primaryToExitShieldConstraint];
  [primaryToExitShieldConstraint setConstant:v24];

  metrics6 = [item metrics];
  [metrics6 exitSignPadding];
  v28 = -v27;
  exitShieldTrailingConstraint = [(NavSignManeuverCell *)self exitShieldTrailingConstraint];
  [exitShieldTrailingConstraint setConstant:v28];

  metrics7 = [item metrics];
  [metrics7 primaryTextTopMargin];
  v32 = v31;
  primaryTopConstraint = [(NavSignManeuverCell *)self primaryTopConstraint];
  [primaryTopConstraint setConstant:v32];

  metrics8 = [item metrics];
  [metrics8 secondaryTextTopMargin];
  v36 = v35;
  secondaryTopConstraint = [(NavSignManeuverCell *)self secondaryTopConstraint];
  [secondaryTopConstraint setConstant:v36];

  if ((excludedFieldsMask & 4) != 0)
  {
    v39 = 0.0;
  }

  else
  {
    metrics8 = [item metrics];
    [metrics8 tertiaryTextTopMargin];
    v39 = v38;
  }

  tertiaryTopConstraint = [(NavSignManeuverCell *)self tertiaryTopConstraint];
  [tertiaryTopConstraint setConstant:v39];

  if ((excludedFieldsMask & 4) == 0)
  {
  }

  metrics9 = [item metrics];
  [metrics9 textBottomMargin];
  v43 = -v42;
  tertiaryBottomConstraint = [(NavSignManeuverCell *)self tertiaryBottomConstraint];
  [tertiaryBottomConstraint setConstant:v43];

  if ([(NavSignManeuverCell *)self hideManeuverArrow])
  {
    metrics10 = [item metrics];
    [metrics10 imageAreaWidth];
    v47 = -v46;
    imageLeadingConstraint = [(NavSignManeuverCell *)self imageLeadingConstraint];
    [imageLeadingConstraint setConstant:v47];

    metrics11 = [item metrics];
    [metrics11 textTrailingMargin];
    v51 = v50;
    primaryLeadingConstraint = [(NavSignManeuverCell *)self primaryLeadingConstraint];
    [primaryLeadingConstraint setConstant:v51];

    metrics12 = [item metrics];
    [metrics12 imageAreaWidth];
    v55 = -v54;
    primaryTrailingConstraint = [(NavSignManeuverCell *)self primaryTrailingConstraint];
    [primaryTrailingConstraint setConstant:v55];

    metrics13 = [item metrics];
    [metrics13 imageAreaWidth];
  }

  else
  {
    imageLeadingConstraint2 = [(NavSignManeuverCell *)self imageLeadingConstraint];
    [imageLeadingConstraint2 setConstant:0.0];

    primaryLeadingConstraint2 = [(NavSignManeuverCell *)self primaryLeadingConstraint];
    [primaryLeadingConstraint2 setConstant:0.0];

    metrics14 = [item metrics];
    [metrics14 textTrailingMargin];
    v63 = -v62;
    primaryTrailingConstraint2 = [(NavSignManeuverCell *)self primaryTrailingConstraint];
    [primaryTrailingConstraint2 setConstant:v63];

    metrics13 = [item metrics];
    [metrics13 textTrailingMargin];
  }

  v65 = -v58;
  secondaryTrailingConstraint = [(NavSignManeuverCell *)self secondaryTrailingConstraint];
  [secondaryTrailingConstraint setConstant:v65];

  primaryText = [item primaryText];
  primaryTextLabel = [(NavSignManeuverCell *)self primaryTextLabel];
  [primaryTextLabel setAttributedText:primaryText];

  secondaryText = [item secondaryText];
  secondaryTextLabel = [(NavSignManeuverCell *)self secondaryTextLabel];
  [secondaryTextLabel setAttributedText:secondaryText];

  if ((excludedFieldsMask & 4) != 0)
  {
    tertiaryText = 0;
  }

  else
  {
    tertiaryText = [item tertiaryText];
  }

  tertiaryTextLabel = [(NavSignManeuverCell *)self tertiaryTextLabel];
  [tertiaryTextLabel setAttributedText:tertiaryText];

  if ((excludedFieldsMask & 4) == 0)
  {
  }

  exitSignImage = [item exitSignImage];
  exitShieldImageView = [(NavSignManeuverCell *)self exitShieldImageView];
  [exitShieldImageView setImage:exitSignImage];

  shieldImage = [item shieldImage];

  if (shieldImage)
  {
    shieldImage2 = [item shieldImage];
    shieldImageView = [(NavSignManeuverCell *)self shieldImageView];
    [shieldImageView setImage:shieldImage2];

    guidanceManeuverView = [(NavSignManeuverCell *)self guidanceManeuverView];
    [guidanceManeuverView setManeuverArtwork:0];
  }

  else
  {
    maneuverArtwork = [item maneuverArtwork];

    if (!maneuverArtwork)
    {
      goto LABEL_25;
    }

    maneuverArtwork2 = [item maneuverArtwork];
    guidanceManeuverView2 = [(NavSignManeuverCell *)self guidanceManeuverView];
    [guidanceManeuverView2 setManeuverArtwork:maneuverArtwork2];

    metrics15 = [item metrics];
    v83 = metrics15;
    if (metrics15)
    {
      [metrics15 arrowMetrics];
    }

    else
    {
      memset(__src, 0, sizeof(__src));
    }

    guidanceManeuverView3 = [(NavSignManeuverCell *)self guidanceManeuverView];
    memcpy(__dst, __src, sizeof(__dst));
    [guidanceManeuverView3 setArrowMetrics:__dst];

    metrics16 = [item metrics];
    v86 = metrics16;
    if (metrics16)
    {
      [metrics16 junctionArrowMetrics];
    }

    else
    {
      memset(v111, 0, sizeof(v111));
    }

    v87 = [(NavSignManeuverCell *)self guidanceManeuverView:v111[0]];
    memcpy(__dst, v111, sizeof(__dst));
    [v87 setJunctionArrowMetrics:__dst];

    metrics17 = [item metrics];
    arrowColor = [metrics17 arrowColor];
    guidanceManeuverView4 = [(NavSignManeuverCell *)self guidanceManeuverView];
    [guidanceManeuverView4 setArrowColor:arrowColor];

    metrics18 = [item metrics];
    arrowAccentColor = [metrics18 arrowAccentColor];
    guidanceManeuverView5 = [(NavSignManeuverCell *)self guidanceManeuverView];
    [guidanceManeuverView5 setAccentColor:arrowAccentColor];

    guidanceManeuverView = [(NavSignManeuverCell *)self shieldImageView];
    [guidanceManeuverView setImage:0];
  }

LABEL_25:
  backgroundColor = [item backgroundColor];
  contentView = [(NavSignManeuverCell *)self contentView];
  [contentView setBackgroundColor:backgroundColor];

  exitShieldImageView2 = [(NavSignManeuverCell *)self exitShieldImageView];
  image = [exitShieldImageView2 image];

  if (image)
  {
    primaryTrailingConstraint3 = [(NavSignManeuverCell *)self primaryTrailingConstraint];
    [primaryTrailingConstraint3 setActive:0];

    [(NavSignManeuverCell *)self primaryToExitShieldConstraint];
  }

  else
  {
    primaryToExitShieldConstraint2 = [(NavSignManeuverCell *)self primaryToExitShieldConstraint];
    [primaryToExitShieldConstraint2 setActive:0];

    [(NavSignManeuverCell *)self primaryTrailingConstraint];
  }
  v100 = ;
  [v100 setActive:1];

  secondaryTextLabel2 = [(NavSignManeuverCell *)self secondaryTextLabel];
  attributedText = [secondaryTextLabel2 attributedText];
  v103 = [attributedText length];

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

  secondaryTextLabel3 = [(NavSignManeuverCell *)self secondaryTextLabel];
  [secondaryTextLabel3 setHidden:v105];

  tertiaryTextLabel2 = [(NavSignManeuverCell *)self tertiaryTextLabel];
  [tertiaryTextLabel2 setHidden:v105];

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
  item = [(RouteStepListCollectionCell *)self item];
  if (item)
  {
    v4 = item;
    item2 = [(RouteStepListCollectionCell *)self item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      item3 = [(RouteStepListCollectionCell *)self item];
      [item3 setCachedHeight:0];
    }
  }
}

- (BOOL)_shouldPostBacklightSceneRequiresUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if (!+[NavSignManeuverCell _backlightSceneUpdaterOptimizationEnabled])
  {
    goto LABEL_7;
  }

  traitCollection = [(NavSignManeuverCell *)self traitCollection];
  if (![traitCollection isLuminanceReduced])
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

  excludedFieldsMask = [notificationCopy excludedFieldsMask];
  primaryTextLabel = [(NavSignManeuverCell *)self primaryTextLabel];
  attributedText = [primaryTextLabel attributedText];
  string = [attributedText string];
  primaryText = [notificationCopy primaryText];
  string2 = [primaryText string];
  v43 = [string isEqualToString:string2];

  secondaryTextLabel = [(NavSignManeuverCell *)self secondaryTextLabel];
  attributedText2 = [secondaryTextLabel attributedText];
  string3 = [attributedText2 string];
  secondaryText = [notificationCopy secondaryText];
  string4 = [secondaryText string];
  v18 = [string3 isEqualToString:string4];

  tertiaryTextLabel = [(NavSignManeuverCell *)self tertiaryTextLabel];
  attributedText3 = [tertiaryTextLabel attributedText];
  string5 = [attributedText3 string];
  v22 = string5;
  if ((excludedFieldsMask & 4) != 0)
  {
    LOBYTE(v25) = string5 != 0;
  }

  else
  {
    tertiaryText = [notificationCopy tertiaryText];
    string6 = [tertiaryText string];
    v25 = [v22 isEqualToString:string6] ^ 1;
  }

  shieldImageView = [(NavSignManeuverCell *)self shieldImageView];
  image = [shieldImageView image];
  shieldImage = [notificationCopy shieldImage];
  v31 = image != shieldImage;

  exitShieldImageView = [(NavSignManeuverCell *)self exitShieldImageView];
  image2 = [exitShieldImageView image];
  exitSignImage = [notificationCopy exitSignImage];
  v35 = image2 != exitSignImage;

  guidanceManeuverView = [(NavSignManeuverCell *)self guidanceManeuverView];
  maneuverArtwork = [guidanceManeuverView maneuverArtwork];
  maneuverArtwork2 = [notificationCopy maneuverArtwork];
  v39 = [maneuverArtwork isEqual:maneuverArtwork2];

  contentView = [(NavSignManeuverCell *)self contentView];
  backgroundColor = [contentView backgroundColor];
  backgroundColor2 = [notificationCopy backgroundColor];
  LOBYTE(maneuverArtwork) = backgroundColor != backgroundColor2;

  v26 = v43 & v18 ^ 1 | v25 | v31 | v35 | v39 ^ 1 | maneuverArtwork;
LABEL_8:

  return v26 & 1;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = NavSignManeuverCell;
  [(NavSignManeuverCell *)&v6 touchesEnded:ended withEvent:event];
  delegate = [(NavSignManeuverCell *)self delegate];
  [delegate cell:self setPressed:0];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = NavSignManeuverCell;
  [(NavSignManeuverCell *)&v6 touchesCancelled:cancelled withEvent:event];
  delegate = [(NavSignManeuverCell *)self delegate];
  [delegate cell:self setPressed:0];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = NavSignManeuverCell;
  [(NavSignManeuverCell *)&v6 touchesBegan:began withEvent:event];
  delegate = [(NavSignManeuverCell *)self delegate];
  [delegate cell:self setPressed:1];
}

- (void)_updateStateWithLayoutProgress:(double)progress
{
  state = [(NavSignManeuverCell *)self state];
  if (state == 2)
  {
    [(NavSignManeuverCell *)self setSelectedWithLayoutProgress:0.0];
    guidanceManeuverView = [(NavSignManeuverCell *)self guidanceManeuverView];
    v7 = 1.0;
    [guidanceManeuverView setAlpha:1.0];

    CGAffineTransformMakeScale(&v28, 0.800000012, 0.800000012);
    guidanceManeuverView2 = [(NavSignManeuverCell *)self guidanceManeuverView];
    v29 = v28;
    [guidanceManeuverView2 setTransform:&v29];

    shieldImageView = [(NavSignManeuverCell *)self shieldImageView];
    [shieldImageView setAlpha:1.0];

    CGAffineTransformMakeScale(&v27, 0.800000012, 0.800000012);
    shieldImageView2 = [(NavSignManeuverCell *)self shieldImageView];
    v15 = shieldImageView2;
    *&v29.a = *&v27.a;
    *&v29.c = *&v27.c;
    v16 = *&v27.tx;
  }

  else
  {
    if (state == 1)
    {
      [(NavSignManeuverCell *)self setSelectedWithLayoutProgress:progress];
      guidanceManeuverView3 = [(NavSignManeuverCell *)self guidanceManeuverView];
      v7 = 1.0;
      [guidanceManeuverView3 setAlpha:1.0];

      guidanceManeuverView4 = [(NavSignManeuverCell *)self guidanceManeuverView];
      v25 = *&CGAffineTransformIdentity.c;
      v26 = *&CGAffineTransformIdentity.a;
      *&v29.a = *&CGAffineTransformIdentity.a;
      *&v29.c = v25;
      v24 = *&CGAffineTransformIdentity.tx;
      *&v29.tx = v24;
      [guidanceManeuverView4 setTransform:&v29];

      shieldImageView3 = [(NavSignManeuverCell *)self shieldImageView];
      v10 = shieldImageView3;
      v11 = 1.0;
    }

    else
    {
      if (state)
      {
        return;
      }

      [(NavSignManeuverCell *)self setSelectedWithLayoutProgress:0.0];
      guidanceManeuverView5 = [(NavSignManeuverCell *)self guidanceManeuverView];
      v7 = 0.150000006;
      [guidanceManeuverView5 setAlpha:0.150000006];

      guidanceManeuverView6 = [(NavSignManeuverCell *)self guidanceManeuverView];
      v25 = *&CGAffineTransformIdentity.c;
      v26 = *&CGAffineTransformIdentity.a;
      *&v29.a = *&CGAffineTransformIdentity.a;
      *&v29.c = v25;
      v24 = *&CGAffineTransformIdentity.tx;
      *&v29.tx = v24;
      [guidanceManeuverView6 setTransform:&v29];

      shieldImageView3 = [(NavSignManeuverCell *)self shieldImageView];
      v10 = shieldImageView3;
      v11 = 0.150000006;
    }

    [shieldImageView3 setAlpha:v11];

    shieldImageView2 = [(NavSignManeuverCell *)self shieldImageView];
    v15 = shieldImageView2;
    *&v29.a = v26;
    *&v29.c = v25;
    v16 = v24;
  }

  *&v29.tx = v16;
  [shieldImageView2 setTransform:&v29];

  primaryTextLabel = [(NavSignManeuverCell *)self primaryTextLabel];
  [primaryTextLabel setAlpha:v7];

  exitShieldImageView = [(NavSignManeuverCell *)self exitShieldImageView];
  [exitShieldImageView setAlpha:v7];

  secondaryTextLabel = [(NavSignManeuverCell *)self secondaryTextLabel];
  [secondaryTextLabel setAlpha:v7];

  tertiaryTextLabel = [(NavSignManeuverCell *)self tertiaryTextLabel];
  [tertiaryTextLabel setAlpha:v7];
}

- (void)setSelectedWithLayoutProgress:(double)progress
{
  if (self->_state == 1 && (-[NavSignManeuverCell traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isLuminanceReduced], v5, v6))
  {
    v7 = sub_100A5FE68();
    v11 = v7;
    progressCopy = progress;
  }

  else
  {
    v7 = sub_1000808D8();
    progressCopy = progress * 0.239999995;
    v11 = v7;
  }

  v9 = [v7 colorWithAlphaComponent:progressCopy];
  mapsBackgroundView = [(NavSignManeuverCell *)self mapsBackgroundView];
  [mapsBackgroundView setBackgroundColor:v9];
}

- (void)setHideManeuverArrow:(BOOL)arrow
{
  if (self->_hideManeuverArrow != arrow)
  {
    self->_hideManeuverArrow = arrow;
    [(NavSignManeuverCell *)self redrawContent];
  }
}

- (void)setItem:(id)item
{
  v4.receiver = self;
  v4.super_class = NavSignManeuverCell;
  [(RouteStepListCollectionCell *)&v4 setItem:item];
  [(NavSignManeuverCell *)self redrawContent];
}

- (NavSignManeuverCell)initWithFrame:(CGRect)frame
{
  v164.receiver = self;
  v164.super_class = NavSignManeuverCell;
  v3 = [(RouteStepListCollectionCell *)&v164 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavSignManeuverCell *)v3 setAccessibilityIdentifier:v5];

    v6 = objc_opt_new();
    mapsBackgroundView = v3->_mapsBackgroundView;
    v3->_mapsBackgroundView = v6;

    [(UIView *)v3->_mapsBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(NavSignManeuverCell *)v3 contentView];
    [contentView setAccessibilityIdentifier:@"NavSignManeuverCellContent"];

    contentView2 = [(NavSignManeuverCell *)v3 contentView];
    [contentView2 addSubview:v3->_mapsBackgroundView];

    v10 = objc_opt_new();
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAccessibilityIdentifier:@"ImageContainerView"];
    contentView3 = [(NavSignManeuverCell *)v3 contentView];
    [contentView3 addSubview:v10];

    v12 = [GuidanceManeuverView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(GuidanceManeuverView *)v12 initWithFrame:0 textureProvider:CGRectZero.origin.x, y, width, height];
    guidanceManeuverView = v3->_guidanceManeuverView;
    v3->_guidanceManeuverView = height;

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
    contentView4 = [(NavSignManeuverCell *)v3 contentView];
    [contentView4 addSubview:v3->_primaryTextLabel];

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
    contentView5 = [(NavSignManeuverCell *)v3 contentView];
    [contentView5 addSubview:v3->_exitShieldImageView];

    v30 = objc_opt_new();
    secondaryTextLabel = v3->_secondaryTextLabel;
    v3->_secondaryTextLabel = v30;

    [(UILabel *)v3->_secondaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_secondaryTextLabel setNumberOfLines:0];
    [(UILabel *)v3->_secondaryTextLabel setAccessibilityIdentifier:@"SecondaryTextLabel"];
    contentView6 = [(NavSignManeuverCell *)v3 contentView];
    [contentView6 addSubview:v3->_secondaryTextLabel];

    v33 = objc_opt_new();
    tertiaryTextLabel = v3->_tertiaryTextLabel;
    v3->_tertiaryTextLabel = v33;

    [(UILabel *)v3->_tertiaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_tertiaryTextLabel setNumberOfLines:0];
    [(UILabel *)v3->_tertiaryTextLabel setAccessibilityIdentifier:@"TertiaryTextLabel"];
    contentView7 = [(NavSignManeuverCell *)v3 contentView];
    [contentView7 addSubview:v3->_tertiaryTextLabel];

    leadingAnchor = [v10 leadingAnchor];
    contentView8 = [(NavSignManeuverCell *)v3 contentView];
    leadingAnchor2 = [contentView8 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    imageLeadingConstraint = v3->_imageLeadingConstraint;
    v3->_imageLeadingConstraint = v39;

    v163 = v20;
    widthAnchor = [v20 widthAnchor];
    v42 = [widthAnchor constraintEqualToConstant:0.0];
    imageAreaWidthConstraint = v3->_imageAreaWidthConstraint;
    v3->_imageAreaWidthConstraint = v42;

    widthAnchor2 = [(GuidanceManeuverView *)v3->_guidanceManeuverView widthAnchor];
    v45 = [widthAnchor2 constraintEqualToConstant:0.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v45;

    heightAnchor = [(GuidanceManeuverView *)v3->_guidanceManeuverView heightAnchor];
    v48 = [heightAnchor constraintEqualToConstant:0.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v48;

    centerXAnchor = [(GuidanceManeuverView *)v3->_guidanceManeuverView centerXAnchor];
    centerXAnchor2 = [v20 centerXAnchor];
    v52 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    guidanceManeuverViewCenterXConstraint = v3->_guidanceManeuverViewCenterXConstraint;
    v3->_guidanceManeuverViewCenterXConstraint = v52;

    leadingAnchor3 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    trailingAnchor = [v20 trailingAnchor];
    v56 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
    primaryLeadingConstraint = v3->_primaryLeadingConstraint;
    v3->_primaryLeadingConstraint = v56;

    trailingAnchor2 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    contentView9 = [(NavSignManeuverCell *)v3 contentView];
    trailingAnchor3 = [contentView9 trailingAnchor];
    v61 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    primaryTrailingConstraint = v3->_primaryTrailingConstraint;
    v3->_primaryTrailingConstraint = v61;

    trailingAnchor4 = [(UILabel *)v3->_primaryTextLabel trailingAnchor];
    leadingAnchor4 = [(UIImageView *)v3->_exitShieldImageView leadingAnchor];
    v65 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor4];
    primaryToExitShieldConstraint = v3->_primaryToExitShieldConstraint;
    v3->_primaryToExitShieldConstraint = v65;

    trailingAnchor5 = [(UIImageView *)v3->_exitShieldImageView trailingAnchor];
    contentView10 = [(NavSignManeuverCell *)v3 contentView];
    trailingAnchor6 = [contentView10 trailingAnchor];
    v70 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    exitShieldTrailingConstraint = v3->_exitShieldTrailingConstraint;
    v3->_exitShieldTrailingConstraint = v70;

    trailingAnchor7 = [(UILabel *)v3->_secondaryTextLabel trailingAnchor];
    contentView11 = [(NavSignManeuverCell *)v3 contentView];
    trailingAnchor8 = [contentView11 trailingAnchor];
    v75 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    secondaryTrailingConstraint = v3->_secondaryTrailingConstraint;
    v3->_secondaryTrailingConstraint = v75;

    bottomAnchor = [(UILabel *)v3->_tertiaryTextLabel bottomAnchor];
    contentView12 = [(NavSignManeuverCell *)v3 contentView];
    bottomAnchor2 = [contentView12 bottomAnchor];
    v80 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    tertiaryBottomConstraint = v3->_tertiaryBottomConstraint;
    v3->_tertiaryBottomConstraint = v80;

    topAnchor = [(UILabel *)v3->_primaryTextLabel topAnchor];
    contentView13 = [(NavSignManeuverCell *)v3 contentView];
    topAnchor2 = [contentView13 topAnchor];
    v85 = [topAnchor constraintEqualToAnchor:topAnchor2];
    primaryTopConstraint = v3->_primaryTopConstraint;
    v3->_primaryTopConstraint = v85;

    topAnchor3 = [(UILabel *)v3->_secondaryTextLabel topAnchor];
    bottomAnchor3 = [(UILabel *)v3->_primaryTextLabel bottomAnchor];
    v89 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
    secondaryTopConstraint = v3->_secondaryTopConstraint;
    v3->_secondaryTopConstraint = v89;

    topAnchor4 = [(UILabel *)v3->_tertiaryTextLabel topAnchor];
    bottomAnchor4 = [(UILabel *)v3->_secondaryTextLabel bottomAnchor];
    v93 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4];
    tertiaryTopConstraint = v3->_tertiaryTopConstraint;
    v3->_tertiaryTopConstraint = v93;

    v168[0] = v3->_primaryTopConstraint;
    v168[1] = v3->_tertiaryBottomConstraint;
    v95 = [NSArray arrayWithObjects:v168 count:2];
    primaryTopAnchoredConstraints = v3->_primaryTopAnchoredConstraints;
    v3->_primaryTopAnchoredConstraints = v95;

    centerYAnchor = [(UILabel *)v3->_primaryTextLabel centerYAnchor];
    contentView14 = [(NavSignManeuverCell *)v3 contentView];
    centerYAnchor2 = [contentView14 centerYAnchor];
    v100 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v167 = v100;
    v101 = [NSArray arrayWithObjects:&v167 count:1];
    primaryCenteredAnchoredConstraints = v3->_primaryCenteredAnchoredConstraints;
    v3->_primaryCenteredAnchoredConstraints = v101;

    leadingAnchor5 = [(UIView *)v3->_mapsBackgroundView leadingAnchor];
    contentView15 = [(NavSignManeuverCell *)v3 contentView];
    leadingAnchor6 = [contentView15 leadingAnchor];
    v150 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v166[0] = v150;
    trailingAnchor9 = [(UIView *)v3->_mapsBackgroundView trailingAnchor];
    contentView16 = [(NavSignManeuverCell *)v3 contentView];
    trailingAnchor10 = [contentView16 trailingAnchor];
    v145 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v166[1] = v145;
    topAnchor5 = [(UIView *)v3->_mapsBackgroundView topAnchor];
    contentView17 = [(NavSignManeuverCell *)v3 contentView];
    topAnchor6 = [contentView17 topAnchor];
    v141 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v166[2] = v141;
    bottomAnchor5 = [(UIView *)v3->_mapsBackgroundView bottomAnchor];
    contentView18 = [(NavSignManeuverCell *)v3 contentView];
    bottomAnchor6 = [contentView18 bottomAnchor];
    v138 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v166[3] = v138;
    v166[4] = v3->_imageLeadingConstraint;
    topAnchor7 = [v20 topAnchor];
    contentView19 = [(NavSignManeuverCell *)v3 contentView];
    topAnchor8 = [contentView19 topAnchor];
    v134 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v166[5] = v134;
    bottomAnchor7 = [v20 bottomAnchor];
    contentView20 = [(NavSignManeuverCell *)v3 contentView];
    bottomAnchor8 = [contentView20 bottomAnchor];
    v130 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v166[6] = v130;
    v166[7] = v3->_imageAreaWidthConstraint;
    v166[8] = v3->_guidanceManeuverViewCenterXConstraint;
    centerYAnchor3 = [(GuidanceManeuverView *)v3->_guidanceManeuverView centerYAnchor];
    centerYAnchor4 = [v20 centerYAnchor];
    v129 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v166[9] = v129;
    v166[10] = v3->_imageWidthConstraint;
    v166[11] = v3->_imageHeightConstraint;
    topAnchor9 = [(UIImageView *)v3->_shieldImageView topAnchor];
    topAnchor10 = [(GuidanceManeuverView *)v3->_guidanceManeuverView topAnchor];
    v128 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v166[12] = v128;
    bottomAnchor9 = [(UIImageView *)v3->_shieldImageView bottomAnchor];
    bottomAnchor10 = [(GuidanceManeuverView *)v3->_guidanceManeuverView bottomAnchor];
    v125 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    v166[13] = v125;
    leadingAnchor7 = [(UIImageView *)v3->_shieldImageView leadingAnchor];
    leadingAnchor8 = [(GuidanceManeuverView *)v3->_guidanceManeuverView leadingAnchor];
    v122 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v166[14] = v122;
    trailingAnchor11 = [(UIImageView *)v3->_shieldImageView trailingAnchor];
    trailingAnchor12 = [(GuidanceManeuverView *)v3->_guidanceManeuverView trailingAnchor];
    v121 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v166[15] = v121;
    v166[16] = v3->_primaryLeadingConstraint;
    v166[17] = v3->_primaryTrailingConstraint;
    v166[18] = v3->_primaryTopConstraint;
    v166[19] = v3->_exitShieldTrailingConstraint;
    widthAnchor3 = [(UIImageView *)v3->_exitShieldImageView widthAnchor];
    contentView21 = [(NavSignManeuverCell *)v3 contentView];
    widthAnchor4 = [contentView21 widthAnchor];
    v120 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4 multiplier:0.349999994];
    v166[20] = v120;
    centerYAnchor5 = [(UIImageView *)v3->_exitShieldImageView centerYAnchor];
    centerYAnchor6 = [(UILabel *)v3->_primaryTextLabel centerYAnchor];
    v117 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v166[21] = v117;
    leadingAnchor9 = [(UILabel *)v3->_secondaryTextLabel leadingAnchor];
    leadingAnchor10 = [(UILabel *)v3->_primaryTextLabel leadingAnchor];
    v104 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v166[22] = v104;
    v166[23] = v3->_secondaryTrailingConstraint;
    v166[24] = v3->_secondaryTopConstraint;
    leadingAnchor11 = [(UILabel *)v3->_tertiaryTextLabel leadingAnchor];
    leadingAnchor12 = [(UILabel *)v3->_secondaryTextLabel leadingAnchor];
    v107 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v166[25] = v107;
    trailingAnchor13 = [(UILabel *)v3->_tertiaryTextLabel trailingAnchor];
    trailingAnchor14 = [(UILabel *)v3->_secondaryTextLabel trailingAnchor];
    v110 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
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

+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = itemCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  cachedHeight = [v9 cachedHeight];
  if (cachedHeight)
  {
    v11 = cachedHeight;
    cachedWidth = [v9 cachedWidth];
    if (cachedWidth)
    {
      v13 = cachedWidth;
      cachedWidth2 = [v9 cachedWidth];
      [cachedWidth2 cgFloatValue];
      v16 = vabdd_f64(width, v15);

      if (v16 < 0.00001)
      {
        cachedHeight2 = [v9 cachedHeight];
        [cachedHeight2 cgFloatValue];
        v19 = v18;
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  metrics = [v9 metrics];
  [metrics imageAreaWidth];
  v22 = width - v21;

  metrics2 = [v9 metrics];
  [metrics2 textTrailingMargin];
  v25 = v24;

  metrics3 = [v9 metrics];
  [metrics3 imageTopMargin];
  v28 = v27;
  metrics4 = [v9 metrics];
  [metrics4 stepImageHeight];
  v31 = v30;
  metrics5 = [v9 metrics];
  [metrics5 imageBottomMargin];
  v79 = v33;

  cachedHeight2 = [v9 primaryText];
  heightCopy = height;
  if (cachedHeight2)
  {
    v77 = v31;
    v34 = v25;
    widthCopy = width;
    v36 = width * 0.349999994;
    exitSignImage = [v9 exitSignImage];
    [exitSignImage size];
    v39 = v38;
    v40 = v36;
    if (v36 >= v38)
    {
      metrics5 = [v9 exitSignImage];
      [metrics5 size];
      v40 = v41;
    }

    metrics6 = [v9 metrics];
    [metrics6 exitSignPadding];
    v44 = v43;

    if (v36 >= v39)
    {
    }

    exitSignImage2 = [v9 exitSignImage];
    width = widthCopy;
    if (exitSignImage2)
    {
      v46 = v40 + v44 * 2.0;
    }

    else
    {
      metrics7 = [v9 metrics];
      [metrics7 textTrailingMargin];
      v46 = v49;
    }

    v25 = v34;

    metrics8 = [v9 metrics];
    [metrics8 primaryTextTopMargin];
    v52 = v51;

    [cachedHeight2 boundingRectWithSize:1 options:0 context:{v22 - v46, 1.79769313e308}];
    v47 = ceil(v80.origin.y + CGRectGetHeight(v80)) + v52;
    v31 = v77;
  }

  else
  {
    v47 = 0.0;
  }

  v53 = v31 + v28;
  v54 = v22 - v25;
  secondaryText = [v9 secondaryText];
  if (secondaryText)
  {
    metrics9 = [v9 metrics];
    [metrics9 secondaryTextTopMargin];
    v58 = v57 + v47;

    [secondaryText boundingRectWithSize:1 options:0 context:{v54, 1.79769313e308}];
    v47 = v58 + ceil(v81.origin.y + CGRectGetHeight(v81));
  }

  v59 = v53 + v79;
  tertiaryText = [v9 tertiaryText];
  v61 = tertiaryText;
  if (tertiaryText)
  {
    [tertiaryText boundingRectWithSize:1 options:0 context:{v54, 1.79769313e308}];
    y = v82.origin.y;
    Height = CGRectGetHeight(v82);
    metrics10 = [v9 metrics];
    [metrics10 tertiaryTextTopMargin];
    v66 = v65;
    v67 = ceil(y + Height);

    v68 = v67 + v47 + v66;
    v69 = 4 * (v68 > heightCopy);
    if (v68 <= heightCopy)
    {
      v47 = v67 + v47 + v66;
    }
  }

  else
  {
    v69 = 4;
  }

  [v9 setExcludedFieldsMask:v69];
  metrics11 = [v9 metrics];
  [metrics11 textBottomMargin];
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

  v75 = [NSNumber numberWithDouble:width];
  [v9 setCachedWidth:v75];

LABEL_35:
  return v19;
}

@end