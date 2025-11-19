@interface CarShareTripContactCell
- (CarShareTripContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CarShareTripContactCellDelegate)delegate;
- (id)_sharingLabelColor:(BOOL)a3;
- (id)_sharingRingColor:(BOOL)a3;
- (id)_subtitleString;
- (void)_redrawContactImage;
- (void)_setContactIdentifier:(id)a3;
- (void)_setSharingState:(unint64_t)a3 animated:(BOOL)a4;
- (void)_updateAppearance;
- (void)_updateSharingRingAnimated:(BOOL)a3;
- (void)_updateSubtitleLabel;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)configureWithMSPSharedTripContact:(id)a3;
- (void)configureWithSharedTrip:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)setCapabilityType:(unint64_t)a3 serviceName:(id)a4;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setSharingState:(unint64_t)a3 animated:(BOOL)a4;
- (void)setShowsSubtitleWhenNotSharing:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CarShareTripContactCell

- (CarShareTripContactCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    v5 = [(CarShareTripContactCell *)self delegate];
    [v5 carShareTripContactCellDidFinishRingAnimation:self];
  }
}

- (void)setShowsSubtitleWhenNotSharing:(BOOL)a3
{
  if (self->_showsSubtitleWhenNotSharing != a3)
  {
    self->_showsSubtitleWhenNotSharing = a3;
    [(CarShareTripContactCell *)self _updateSubtitleLabel];
  }
}

- (void)setCapabilityType:(unint64_t)a3 serviceName:(id)a4
{
  v12 = a4;
  if (self->_capabilityType != a3 || (v6 = self->_serviceName, v7 = v12, v8 = v12, v7 | v6) && (v9 = [v6 isEqual:v7], v7, v6, v8 = v12, (v9 & 1) == 0))
  {
    self->_capabilityType = a3;
    v10 = sub_100D12CE0();
    serviceName = self->_serviceName;
    self->_serviceName = v10;

    [(SharedTripCapabilityBadgeView *)self->_capabilityBadgeView setCapabilityType:a3];
    [(CarShareTripContactCell *)self _updateSubtitleLabel];
    [(CarShareTripContactCell *)self _updateAppearance];
    v8 = v12;
  }
}

- (void)_setSharingState:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_sharingState = a3;
  [(CarShareTripContactCell *)self _updateSubtitleLabel];
  [(CarShareTripContactCell *)self _updateAppearance];

  [(CarShareTripContactCell *)self _updateSharingRingAnimated:v4];
}

- (void)setSharingState:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_sharingState != a3)
  {
    [CarShareTripContactCell _setSharingState:"_setSharingState:animated:" animated:?];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CarShareTripContactCell;
  [(CarShareTripContactCell *)&v4 traitCollectionDidChange:a3];
  [(CarShareTripContactCell *)self _updateAppearance];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CarShareTripContactCell;
  [(CarShareTripContactCell *)&v10 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];
  v8 = v7;
  if (v7 == self)
  {

LABEL_5:
    [(CarShareTripContactCell *)self _updateAppearance];
    goto LABEL_6;
  }

  v9 = [v6 previouslyFocusedItem];

  if (v9 == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = CarShareTripContactCell;
  [(CarShareTripContactCell *)&v5 setSelected:a3 animated:a4];
  [(CarShareTripContactCell *)self _updateAppearance];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = CarShareTripContactCell;
  [(CarShareTripContactCell *)&v5 setHighlighted:a3 animated:a4];
  [(CarShareTripContactCell *)self _updateAppearance];
}

- (id)_sharingRingColor:(BOOL)a3
{
  if (a3)
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

- (id)_sharingLabelColor:(BOOL)a3
{
  if (a3)
  {
    v3 = +[UIColor _carSystemFocusLabelColor];
    goto LABEL_8;
  }

  v3 = [(CarShareTripContactCell *)self sharingState];
  if ((v3 - 1) < 3)
  {
    goto LABEL_4;
  }

  if (!v3)
  {
    capabilityType = self->_capabilityType;
    if (capabilityType == 2)
    {
      v3 = +[UIColor externalSystemGreenColor];
    }

    else
    {
      if (self->_showsSubtitleWhenNotSharing || capabilityType > 1)
      {
LABEL_4:
        v3 = +[UIColor _carSystemFocusColor];
        goto LABEL_8;
      }

      v3 = +[UIColor secondaryLabelColor];
    }
  }

LABEL_8:

  return v3;
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

- (void)_setContactIdentifier:(id)a3
{
  v5 = a3;
  contactIdentifier = self->_contactIdentifier;
  v10 = v5;
  v7 = contactIdentifier;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_contactIdentifier, a3);
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
    v9 = [v8 supportsTouchInteractionModel];

    v3 = +[NSBundle mainBundle];
    v4 = v3;
    if (v9)
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
  v3 = [(CarShareTripContactCell *)self _subtitleString];
  [(UILabel *)self->_subtitleLabel setText:v3];

  v4 = [(UILabel *)self->_subtitleLabel text];
  [(UILabel *)self->_subtitleLabel setHidden:v4 == 0];

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
  v6 = [(CarShareTripContactCell *)self traitCollection];
  [UITraitCollection _setCurrentTraitCollection:v6];

  v7 = [(CarShareTripContactCell *)self _sharingRingColor:v4];
  v8 = [v7 CGColor];

  [UITraitCollection _setCurrentTraitCollection:v9];
  [(CarSharingRingView *)self->_sharingRingView setColor:v8];
}

- (void)_updateSharingRingAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarShareTripContactCell *)self sharingState];
  if (v5 - 2 < 2)
  {
    sharingRingView = self->_sharingRingView;
    v7 = 1;
LABEL_6:

    [(CarSharingRingView *)sharingRingView setFilled:v7];
    return;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      return;
    }

    sharingRingView = self->_sharingRingView;
    v7 = 0;
    goto LABEL_6;
  }

  v8 = self->_sharingRingView;

  [(CarSharingRingView *)v8 setFilled:1 animated:v3];
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

- (CarShareTripContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v121.receiver = self;
  v121.super_class = CarShareTripContactCell;
  v4 = [(CarShareTripContactCell *)&v121 initWithStyle:a3 reuseIdentifier:a4];
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
    v12 = [(CarShareTripContactCell *)v5 contentView];
    [v12 addSubview:v5->_contactImageView];

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
    v18 = [(CarShareTripContactCell *)v5 contentView];
    [v18 addSubview:v5->_capabilityBadgeView];

    v19 = [[CarSharingRingView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    sharingRingView = v5->_sharingRingView;
    v5->_sharingRingView = v19;

    [(CarSharingRingView *)v5->_sharingRingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarSharingRingView *)v5->_sharingRingView setAnimationDelegate:v5];
    v21 = [(CarShareTripContactCell *)v5 contentView];
    [v21 insertSubview:v5->_sharingRingView aboveSubview:v5->_contactImageView];

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
    v30 = [(CarShareTripContactCell *)v5 contentView];
    [v30 addSubview:v27];

    v31 = [(UIImageView *)v5->_contactImageView leadingAnchor];
    v119 = [(CarShareTripContactCell *)v5 contentView];
    [v119 leadingAnchor];
    v118 = v120 = v31;
    v117 = [v31 constraintEqualToAnchor:6.0 constant:?];
    v122[0] = v117;
    v32 = [v27 leadingAnchor];
    v115 = [(UIImageView *)v5->_contactImageView trailingAnchor];
    v116 = v32;
    v114 = [v32 constraintEqualToAnchor:6.0 constant:?];
    v122[1] = v114;
    v113 = [(CarShareTripContactCell *)v5 contentView];
    v33 = [v113 trailingAnchor];
    v111 = [v27 trailingAnchor];
    v112 = v33;
    v110 = [v33 constraintEqualToAnchor:6.0 constant:?];
    v122[2] = v110;
    v34 = [(UIImageView *)v5->_contactImageView topAnchor];
    v108 = [(CarShareTripContactCell *)v5 contentView];
    [v108 topAnchor];
    v107 = v109 = v34;
    v106 = [v34 constraintGreaterThanOrEqualToAnchor:6.0 constant:?];
    v122[3] = v106;
    v35 = [(UIImageView *)v5->_contactImageView centerYAnchor];
    v104 = [(CarShareTripContactCell *)v5 contentView];
    [v104 centerYAnchor];
    v103 = v105 = v35;
    v102 = [v35 constraintEqualToAnchor:?];
    v122[4] = v102;
    v36 = [v27 topAnchor];
    v100 = [(CarShareTripContactCell *)v5 contentView];
    [v100 topAnchor];
    v99 = v101 = v36;
    v98 = [v36 constraintGreaterThanOrEqualToAnchor:6.0 constant:?];
    v122[5] = v98;
    v37 = [v27 centerYAnchor];
    v96 = [(UIImageView *)v5->_contactImageView centerYAnchor];
    v97 = v37;
    v95 = [v37 constraintEqualToAnchor:?];
    v122[6] = v95;
    v94 = [(CarShareTripContactCell *)v5 contentView];
    v38 = [v94 bottomAnchor];
    v92 = [(UIImageView *)v5->_contactImageView bottomAnchor];
    v93 = v38;
    v91 = [v38 constraintGreaterThanOrEqualToAnchor:6.0 constant:?];
    v122[7] = v91;
    v90 = [(CarShareTripContactCell *)v5 contentView];
    v39 = [v90 bottomAnchor];
    v88 = [v27 bottomAnchor];
    v89 = v39;
    v87 = [v39 constraintGreaterThanOrEqualToAnchor:6.0 constant:?];
    v122[8] = v87;
    v40 = [(UIImageView *)v5->_contactImageView widthAnchor];
    v85 = [(UIImageView *)v5->_contactImageView heightAnchor];
    v86 = v40;
    v84 = [v40 constraintEqualToAnchor:?];
    v122[9] = v84;
    v83 = [(UIImageView *)v5->_contactImageView widthAnchor];
    v82 = [v83 constraintEqualToConstant:34.0];
    v122[10] = v82;
    v41 = [(SharedTripCapabilityBadgeView *)v5->_capabilityBadgeView trailingAnchor];
    v80 = [(UIImageView *)v5->_contactImageView trailingAnchor];
    v81 = v41;
    v79 = [v41 constraintEqualToAnchor:2.0 constant:?];
    v122[11] = v79;
    v42 = [(SharedTripCapabilityBadgeView *)v5->_capabilityBadgeView bottomAnchor];
    v77 = [(UIImageView *)v5->_contactImageView bottomAnchor];
    v78 = v42;
    v76 = [v42 constraintEqualToAnchor:2.0 constant:?];
    v122[12] = v76;
    v43 = [(CarSharingRingView *)v5->_sharingRingView centerXAnchor];
    v74 = [(UIImageView *)v5->_contactImageView centerXAnchor];
    v75 = v43;
    v73 = [v43 constraintEqualToAnchor:?];
    v122[13] = v73;
    v44 = [(CarSharingRingView *)v5->_sharingRingView centerYAnchor];
    v71 = [(UIImageView *)v5->_contactImageView centerYAnchor];
    v72 = v44;
    v70 = [v44 constraintEqualToAnchor:?];
    v122[14] = v70;
    v45 = [(CarSharingRingView *)v5->_sharingRingView widthAnchor];
    v68 = [(UIImageView *)v5->_contactImageView widthAnchor];
    v69 = v45;
    v67 = [v45 constraintEqualToAnchor:4.0 constant:?];
    v122[15] = v67;
    v46 = [(CarSharingRingView *)v5->_sharingRingView heightAnchor];
    v47 = [(UIImageView *)v5->_contactImageView heightAnchor];
    v66 = v46;
    v48 = [v46 constraintEqualToAnchor:v47 constant:4.0];
    v122[16] = v48;
    v49 = [(CarShareTripContactCell *)v5 contentView];
    v50 = [v49 heightAnchor];
    v51 = [(UILabel *)v5->_contactNameLabel font];
    [v51 lineHeight];
    v53 = v52;
    v54 = [(UILabel *)v5->_subtitleLabel font];
    [v54 lineHeight];
    v56 = v55 + v53;
    if (v56 <= 34.0)
    {
      v60 = 46.0;
    }

    else
    {
      v65 = [(UILabel *)v5->_contactNameLabel font];
      [v65 lineHeight];
      v58 = v57;
      v64 = [(UILabel *)v5->_subtitleLabel font];
      [v64 lineHeight];
      v60 = v58 + 12.0 + v59;
    }

    v61 = [v50 constraintGreaterThanOrEqualToConstant:v60];
    v122[17] = v61;
    v62 = [NSArray arrayWithObjects:v122 count:18];
    [NSLayoutConstraint activateConstraints:v62];

    if (v56 > 34.0)
    {
    }
  }

  return v5;
}

- (void)configureWithSharedTrip:(id)a3
{
  self->_sharingState = 0;
  v4 = a3;
  v5 = [v4 carPlayListCellTitle];
  [(UILabel *)self->_contactNameLabel setText:v5];

  v6 = [v4 carPlayListCellSubtitle];
  [(UILabel *)self->_subtitleLabel setText:v6];

  [(UILabel *)self->_subtitleLabel setHidden:0];
  [(CarShareTripContactCell *)self setSharingHandle:0];
  v8 = [v4 senderInfo];

  v7 = [v8 localContactIdentifier];
  [(CarShareTripContactCell *)self _setContactIdentifier:v7];
}

- (void)configureWithMSPSharedTripContact:(id)a3
{
  objc_storeStrong(&self->_contactValue, a3);
  v5 = a3;
  v6 = [(CarShareTripContactCell *)self _contactNameStringFromContact:v5];
  [(CarShareTripContactCell *)self setContactName:v6];

  v7 = [v5 stringValue];
  [(CarShareTripContactCell *)self setSharingHandle:v7];

  v9 = [v5 contact];

  v8 = [v9 identifier];
  [(CarShareTripContactCell *)self _setContactIdentifier:v8];
}

@end