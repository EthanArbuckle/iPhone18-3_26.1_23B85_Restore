@interface CarShareTripContactCell
- (CarShareTripContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CarShareTripContactCellDelegate)delegate;
- (id)_sharingLabelColor:(BOOL)color;
- (id)_sharingRingColor:(BOOL)color;
- (id)_subtitleString;
- (void)_redrawContactImage;
- (void)_setContactIdentifier:(id)identifier;
- (void)_setSharingState:(unint64_t)state animated:(BOOL)animated;
- (void)_updateAppearance;
- (void)_updateSharingRingAnimated:(BOOL)animated;
- (void)_updateSubtitleLabel;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)configureWithMSPSharedTripContact:(id)contact;
- (void)configureWithSharedTrip:(id)trip;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)setCapabilityType:(unint64_t)type serviceName:(id)name;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setSharingState:(unint64_t)state animated:(BOOL)animated;
- (void)setShowsSubtitleWhenNotSharing:(BOOL)sharing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CarShareTripContactCell

- (CarShareTripContactCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    delegate = [(CarShareTripContactCell *)self delegate];
    [delegate carShareTripContactCellDidFinishRingAnimation:self];
  }
}

- (void)setShowsSubtitleWhenNotSharing:(BOOL)sharing
{
  if (self->_showsSubtitleWhenNotSharing != sharing)
  {
    self->_showsSubtitleWhenNotSharing = sharing;
    [(CarShareTripContactCell *)self _updateSubtitleLabel];
  }
}

- (void)setCapabilityType:(unint64_t)type serviceName:(id)name
{
  nameCopy = name;
  if (self->_capabilityType != type || (v6 = self->_serviceName, v7 = nameCopy, v8 = nameCopy, v7 | v6) && (v9 = [v6 isEqual:v7], v7, v6, v8 = nameCopy, (v9 & 1) == 0))
  {
    self->_capabilityType = type;
    v10 = sub_100D12CE0();
    serviceName = self->_serviceName;
    self->_serviceName = v10;

    [(SharedTripCapabilityBadgeView *)self->_capabilityBadgeView setCapabilityType:type];
    [(CarShareTripContactCell *)self _updateSubtitleLabel];
    [(CarShareTripContactCell *)self _updateAppearance];
    v8 = nameCopy;
  }
}

- (void)_setSharingState:(unint64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_sharingState = state;
  [(CarShareTripContactCell *)self _updateSubtitleLabel];
  [(CarShareTripContactCell *)self _updateAppearance];

  [(CarShareTripContactCell *)self _updateSharingRingAnimated:animatedCopy];
}

- (void)setSharingState:(unint64_t)state animated:(BOOL)animated
{
  if (self->_sharingState != state)
  {
    [CarShareTripContactCell _setSharingState:"_setSharingState:animated:" animated:?];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CarShareTripContactCell;
  [(CarShareTripContactCell *)&v4 traitCollectionDidChange:change];
  [(CarShareTripContactCell *)self _updateAppearance];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = CarShareTripContactCell;
  [(CarShareTripContactCell *)&v10 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];
  v8 = nextFocusedItem;
  if (nextFocusedItem == self)
  {

LABEL_5:
    [(CarShareTripContactCell *)self _updateAppearance];
    goto LABEL_6;
  }

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];

  if (previouslyFocusedItem == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = CarShareTripContactCell;
  [(CarShareTripContactCell *)&v5 setSelected:selected animated:animated];
  [(CarShareTripContactCell *)self _updateAppearance];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = CarShareTripContactCell;
  [(CarShareTripContactCell *)&v5 setHighlighted:highlighted animated:animated];
  [(CarShareTripContactCell *)self _updateAppearance];
}

- (id)_sharingRingColor:(BOOL)color
{
  if (color)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor _carSystemFocusColor];
  }
  v3 = ;

  return v3;
}

- (id)_sharingLabelColor:(BOOL)color
{
  if (color)
  {
    sharingState = +[UIColor _carSystemFocusLabelColor];
    goto LABEL_8;
  }

  sharingState = [(CarShareTripContactCell *)self sharingState];
  if ((sharingState - 1) < 3)
  {
    goto LABEL_4;
  }

  if (!sharingState)
  {
    capabilityType = self->_capabilityType;
    if (capabilityType == 2)
    {
      sharingState = +[UIColor externalSystemGreenColor];
    }

    else
    {
      if (self->_showsSubtitleWhenNotSharing || capabilityType > 1)
      {
LABEL_4:
        sharingState = +[UIColor _carSystemFocusColor];
        goto LABEL_8;
      }

      sharingState = +[UIColor secondaryLabelColor];
    }
  }

LABEL_8:

  return sharingState;
}

- (void)_redrawContactImage
{
  v3 = +[AddressBookManager sharedManager];
  v4 = [v3 contactForCNContactIdentifier:self->_contactIdentifier];

  if (v4)
  {
    v5 = self->_contactIdentifier;
    monogrammerStyle = self->_monogrammerStyle;
    objc_initWeak(&location, self);
    v7 = +[MapsUIImageCache sharedCache];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100BB5660;
    v10[3] = &unk_10164C798;
    objc_copyWeak(v12, &location);
    v8 = v5;
    v11 = v8;
    v12[1] = monogrammerStyle;
    [v7 getImageForContact:v4 style:monogrammerStyle tintColor:0 size:v10 completion:34.0];

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [UIImage imageNamed:@"SharedTrip"];
    [(CarShareTripContactCell *)self setContactImage:v9];
  }
}

- (void)_setContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactIdentifier = self->_contactIdentifier;
  v10 = identifierCopy;
  v7 = contactIdentifier;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_contactIdentifier, identifier);
      [(CarShareTripContactCell *)self _redrawContactImage];
      v8 = v10;
    }
  }
}

- (id)_subtitleString
{
  sharingState = self->_sharingState;
  if (sharingState < 2)
  {
    if (self->_capabilityType == 2)
    {
      serviceName = self->_serviceName;
      if (serviceName)
      {
        v7 = serviceName;
        goto LABEL_15;
      }
    }

    if (self->_showsSubtitleWhenNotSharing)
    {
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"[Shared Trip] Start Sharing";
      goto LABEL_14;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_15;
  }

  if (sharingState == 2)
  {
    v8 = +[CarDisplayController sharedInstance];
    supportsTouchInteractionModel = [v8 supportsTouchInteractionModel];

    v3 = +[NSBundle mainBundle];
    v4 = v3;
    if (supportsTouchInteractionModel)
    {
      v5 = @"CarPlay_SharedTrip_AlreadySharing";
    }

    else
    {
      v5 = @"CarPlay_SharedTrip_AlreadySharing_NoTouchInput";
    }

    goto LABEL_14;
  }

  if (sharingState != 3)
  {
    goto LABEL_10;
  }

  v3 = +[NSBundle mainBundle];
  v4 = v3;
  v5 = @"CarPlay_SharedTrip_JustStartedSharing";
LABEL_14:
  v7 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

LABEL_15:

  return v7;
}

- (void)_updateSubtitleLabel
{
  _subtitleString = [(CarShareTripContactCell *)self _subtitleString];
  [(UILabel *)self->_subtitleLabel setText:_subtitleString];

  text = [(UILabel *)self->_subtitleLabel text];
  [(UILabel *)self->_subtitleLabel setHidden:text == 0];

  if (self->_capabilityType == 2)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  subtitleLabel = self->_subtitleLabel;

  [(UILabel *)subtitleLabel setLineBreakMode:v5];
}

- (void)_updateAppearance
{
  if (([(CarShareTripContactCell *)self isFocused]& 1) != 0 || ([(CarShareTripContactCell *)self isSelected]& 1) != 0 || ([(CarShareTripContactCell *)self isHighlighted]& 1) != 0)
  {
    v3 = +[UIColor _carSystemFocusLabelColor];
    v4 = 1;
  }

  else
  {
    v3 = +[UIColor labelColor];
    v4 = 0;
  }

  [(UILabel *)self->_contactNameLabel setTextColor:v3];

  v5 = [(CarShareTripContactCell *)self _sharingLabelColor:v4];
  [(UILabel *)self->_subtitleLabel setTextColor:v5];

  self->_monogrammerStyle = v4;
  [(CarShareTripContactCell *)self _redrawContactImage];
  v9 = +[UITraitCollection _currentTraitCollection];
  traitCollection = [(CarShareTripContactCell *)self traitCollection];
  [UITraitCollection _setCurrentTraitCollection:traitCollection];

  v7 = [(CarShareTripContactCell *)self _sharingRingColor:v4];
  cGColor = [v7 CGColor];

  [UITraitCollection _setCurrentTraitCollection:v9];
  [(CarSharingRingView *)self->_sharingRingView setColor:cGColor];
}

- (void)_updateSharingRingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  sharingState = [(CarShareTripContactCell *)self sharingState];
  if (sharingState - 2 < 2)
  {
    sharingRingView = self->_sharingRingView;
    v7 = 1;
LABEL_6:

    [(CarSharingRingView *)sharingRingView setFilled:v7];
    return;
  }

  if (sharingState != 1)
  {
    if (sharingState)
    {
      return;
    }

    sharingRingView = self->_sharingRingView;
    v7 = 0;
    goto LABEL_6;
  }

  v8 = self->_sharingRingView;

  [(CarSharingRingView *)v8 setFilled:1 animated:animatedCopy];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CarShareTripContactCell;
  [(CarShareTripContactCell *)&v5 prepareForReuse];
  [(CarShareTripContactCell *)self _setSharingState:0 animated:0];
  [(CarShareTripContactCell *)self _setContactIdentifier:0];
  [(UILabel *)self->_contactNameLabel setText:0];
  [(UILabel *)self->_subtitleLabel setText:0];
  self->_showsSubtitleWhenNotSharing = 0;
  contactValue = self->_contactValue;
  self->_contactValue = 0;

  serviceName = self->_serviceName;
  self->_serviceName = 0;

  self->_capabilityType = 0;
  [(CarShareTripContactCell *)self setSharingHandle:0];
}

- (CarShareTripContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v121.receiver = self;
  v121.super_class = CarShareTripContactCell;
  v4 = [(CarShareTripContactCell *)&v121 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CarShareTripContactCell *)v4 setAccessibilityIdentifier:@"CarShareTripContactCell"];
    v6 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    contactImageView = v5->_contactImageView;
    v5->_contactImageView = v10;

    [(UIImageView *)v5->_contactImageView setAccessibilityIdentifier:@"ContactImageView"];
    [(UIImageView *)v5->_contactImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(CarShareTripContactCell *)v5 contentView];
    [contentView addSubview:v5->_contactImageView];

    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    contactNameLabel = v5->_contactNameLabel;
    v5->_contactNameLabel = v13;

    [(UILabel *)v5->_contactNameLabel setAccessibilityIdentifier:@"ContactNameLabel"];
    [(UILabel *)v5->_contactNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [UIFont boldSystemFontOfSize:17.0];
    [(UILabel *)v5->_contactNameLabel setFont:v15];

    [(UILabel *)v5->_contactNameLabel setMinimumScaleFactor:0.764705882];
    [(UILabel *)v5->_contactNameLabel setAdjustsFontSizeToFitWidth:1];
    v16 = objc_alloc_init(SharedTripCapabilityBadgeView);
    capabilityBadgeView = v5->_capabilityBadgeView;
    v5->_capabilityBadgeView = v16;

    [(SharedTripCapabilityBadgeView *)v5->_capabilityBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(CarShareTripContactCell *)v5 contentView];
    [contentView2 addSubview:v5->_capabilityBadgeView];

    height = [[CarSharingRingView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    sharingRingView = v5->_sharingRingView;
    v5->_sharingRingView = height;

    [(CarSharingRingView *)v5->_sharingRingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarSharingRingView *)v5->_sharingRingView setAnimationDelegate:v5];
    contentView3 = [(CarShareTripContactCell *)v5 contentView];
    [contentView3 insertSubview:v5->_sharingRingView aboveSubview:v5->_contactImageView];

    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v22;

    [(UILabel *)v5->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
    [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [UIFont systemFontOfSize:13.0];
    [(UILabel *)v5->_subtitleLabel setFont:v24];

    [(UILabel *)v5->_subtitleLabel setMinimumScaleFactor:0.769230769];
    [(UILabel *)v5->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v5->_subtitleLabel setHidden:1];
    [(CarShareTripContactCell *)v5 _updateAppearance];
    v25 = [UIStackView alloc];
    v123[0] = v5->_contactNameLabel;
    v123[1] = v5->_subtitleLabel;
    v26 = [NSArray arrayWithObjects:v123 count:2];
    v27 = [v25 initWithArrangedSubviews:v26];

    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v27 setAlignment:0];
    [v27 setDistribution:2];
    [v27 setAxis:1];
    [v27 setSpacing:0.0];
    LODWORD(v28) = 1148846080;
    [v27 setContentHuggingPriority:1 forAxis:v28];
    LODWORD(v29) = 1148846080;
    [v27 setContentCompressionResistancePriority:1 forAxis:v29];
    contentView4 = [(CarShareTripContactCell *)v5 contentView];
    [contentView4 addSubview:v27];

    leadingAnchor = [(UIImageView *)v5->_contactImageView leadingAnchor];
    contentView5 = [(CarShareTripContactCell *)v5 contentView];
    [contentView5 leadingAnchor];
    v118 = v120 = leadingAnchor;
    v117 = [leadingAnchor constraintEqualToAnchor:6.0 constant:?];
    v122[0] = v117;
    leadingAnchor2 = [v27 leadingAnchor];
    trailingAnchor = [(UIImageView *)v5->_contactImageView trailingAnchor];
    v116 = leadingAnchor2;
    v114 = [leadingAnchor2 constraintEqualToAnchor:6.0 constant:?];
    v122[1] = v114;
    contentView6 = [(CarShareTripContactCell *)v5 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    trailingAnchor3 = [v27 trailingAnchor];
    v112 = trailingAnchor2;
    v110 = [trailingAnchor2 constraintEqualToAnchor:6.0 constant:?];
    v122[2] = v110;
    topAnchor = [(UIImageView *)v5->_contactImageView topAnchor];
    contentView7 = [(CarShareTripContactCell *)v5 contentView];
    [contentView7 topAnchor];
    v107 = v109 = topAnchor;
    v106 = [topAnchor constraintGreaterThanOrEqualToAnchor:6.0 constant:?];
    v122[3] = v106;
    centerYAnchor = [(UIImageView *)v5->_contactImageView centerYAnchor];
    contentView8 = [(CarShareTripContactCell *)v5 contentView];
    [contentView8 centerYAnchor];
    v103 = v105 = centerYAnchor;
    v102 = [centerYAnchor constraintEqualToAnchor:?];
    v122[4] = v102;
    topAnchor2 = [v27 topAnchor];
    contentView9 = [(CarShareTripContactCell *)v5 contentView];
    [contentView9 topAnchor];
    v99 = v101 = topAnchor2;
    v98 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:6.0 constant:?];
    v122[5] = v98;
    centerYAnchor2 = [v27 centerYAnchor];
    centerYAnchor3 = [(UIImageView *)v5->_contactImageView centerYAnchor];
    v97 = centerYAnchor2;
    v95 = [centerYAnchor2 constraintEqualToAnchor:?];
    v122[6] = v95;
    contentView10 = [(CarShareTripContactCell *)v5 contentView];
    bottomAnchor = [contentView10 bottomAnchor];
    bottomAnchor2 = [(UIImageView *)v5->_contactImageView bottomAnchor];
    v93 = bottomAnchor;
    v91 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:6.0 constant:?];
    v122[7] = v91;
    contentView11 = [(CarShareTripContactCell *)v5 contentView];
    bottomAnchor3 = [contentView11 bottomAnchor];
    bottomAnchor4 = [v27 bottomAnchor];
    v89 = bottomAnchor3;
    v87 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:6.0 constant:?];
    v122[8] = v87;
    widthAnchor = [(UIImageView *)v5->_contactImageView widthAnchor];
    heightAnchor = [(UIImageView *)v5->_contactImageView heightAnchor];
    v86 = widthAnchor;
    v84 = [widthAnchor constraintEqualToAnchor:?];
    v122[9] = v84;
    widthAnchor2 = [(UIImageView *)v5->_contactImageView widthAnchor];
    v82 = [widthAnchor2 constraintEqualToConstant:34.0];
    v122[10] = v82;
    trailingAnchor4 = [(SharedTripCapabilityBadgeView *)v5->_capabilityBadgeView trailingAnchor];
    trailingAnchor5 = [(UIImageView *)v5->_contactImageView trailingAnchor];
    v81 = trailingAnchor4;
    v79 = [trailingAnchor4 constraintEqualToAnchor:2.0 constant:?];
    v122[11] = v79;
    bottomAnchor5 = [(SharedTripCapabilityBadgeView *)v5->_capabilityBadgeView bottomAnchor];
    bottomAnchor6 = [(UIImageView *)v5->_contactImageView bottomAnchor];
    v78 = bottomAnchor5;
    v76 = [bottomAnchor5 constraintEqualToAnchor:2.0 constant:?];
    v122[12] = v76;
    centerXAnchor = [(CarSharingRingView *)v5->_sharingRingView centerXAnchor];
    centerXAnchor2 = [(UIImageView *)v5->_contactImageView centerXAnchor];
    v75 = centerXAnchor;
    v73 = [centerXAnchor constraintEqualToAnchor:?];
    v122[13] = v73;
    centerYAnchor4 = [(CarSharingRingView *)v5->_sharingRingView centerYAnchor];
    centerYAnchor5 = [(UIImageView *)v5->_contactImageView centerYAnchor];
    v72 = centerYAnchor4;
    v70 = [centerYAnchor4 constraintEqualToAnchor:?];
    v122[14] = v70;
    widthAnchor3 = [(CarSharingRingView *)v5->_sharingRingView widthAnchor];
    widthAnchor4 = [(UIImageView *)v5->_contactImageView widthAnchor];
    v69 = widthAnchor3;
    v67 = [widthAnchor3 constraintEqualToAnchor:4.0 constant:?];
    v122[15] = v67;
    heightAnchor2 = [(CarSharingRingView *)v5->_sharingRingView heightAnchor];
    heightAnchor3 = [(UIImageView *)v5->_contactImageView heightAnchor];
    v66 = heightAnchor2;
    v48 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 constant:4.0];
    v122[16] = v48;
    contentView12 = [(CarShareTripContactCell *)v5 contentView];
    heightAnchor4 = [contentView12 heightAnchor];
    font = [(UILabel *)v5->_contactNameLabel font];
    [font lineHeight];
    v53 = v52;
    font2 = [(UILabel *)v5->_subtitleLabel font];
    [font2 lineHeight];
    v56 = v55 + v53;
    if (v56 <= 34.0)
    {
      v60 = 46.0;
    }

    else
    {
      font3 = [(UILabel *)v5->_contactNameLabel font];
      [font3 lineHeight];
      v58 = v57;
      font4 = [(UILabel *)v5->_subtitleLabel font];
      [font4 lineHeight];
      v60 = v58 + 12.0 + v59;
    }

    v61 = [heightAnchor4 constraintGreaterThanOrEqualToConstant:v60];
    v122[17] = v61;
    v62 = [NSArray arrayWithObjects:v122 count:18];
    [NSLayoutConstraint activateConstraints:v62];

    if (v56 > 34.0)
    {
    }
  }

  return v5;
}

- (void)configureWithSharedTrip:(id)trip
{
  self->_sharingState = 0;
  tripCopy = trip;
  carPlayListCellTitle = [tripCopy carPlayListCellTitle];
  [(UILabel *)self->_contactNameLabel setText:carPlayListCellTitle];

  carPlayListCellSubtitle = [tripCopy carPlayListCellSubtitle];
  [(UILabel *)self->_subtitleLabel setText:carPlayListCellSubtitle];

  [(UILabel *)self->_subtitleLabel setHidden:0];
  [(CarShareTripContactCell *)self setSharingHandle:0];
  senderInfo = [tripCopy senderInfo];

  localContactIdentifier = [senderInfo localContactIdentifier];
  [(CarShareTripContactCell *)self _setContactIdentifier:localContactIdentifier];
}

- (void)configureWithMSPSharedTripContact:(id)contact
{
  objc_storeStrong(&self->_contactValue, contact);
  contactCopy = contact;
  v6 = [(CarShareTripContactCell *)self _contactNameStringFromContact:contactCopy];
  [(CarShareTripContactCell *)self setContactName:v6];

  stringValue = [contactCopy stringValue];
  [(CarShareTripContactCell *)self setSharingHandle:stringValue];

  contact = [contactCopy contact];

  identifier = [contact identifier];
  [(CarShareTripContactCell *)self _setContactIdentifier:identifier];
}

@end