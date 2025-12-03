@interface PHConferenceParticipantCell
- (PHConferenceParticipantCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PHConferenceParticipantCellProtocol)delegate;
- (void)buttonTapped:(id)tapped;
- (void)makeHeld;
- (void)setEndButtonHidden:(BOOL)hidden;
- (void)setLocalizedSenderIdentity:(id)identity;
- (void)setPrivateButtonEnabled:(BOOL)enabled;
- (void)setPrivateButtonHidden:(BOOL)hidden;
- (void)setRepresentedCall:(id)call;
- (void)setRepresentedHandle:(id)handle;
@end

@implementation PHConferenceParticipantCell

- (PHConferenceParticipantCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v124.receiver = self;
  v124.super_class = PHConferenceParticipantCell;
  v4 = [(PHConferenceParticipantCell *)&v124 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIButton buttonWithType:0];
    endCallButton = v4->_endCallButton;
    v4->_endCallButton = v5;

    v7 = [UIButton buttonWithType:0];
    privateButton = v4->_privateButton;
    v4->_privateButton = v7;

    v9 = objc_alloc_init(UILabel);
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v9;

    titleLabel = [(UIButton *)v4->_privateButton titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:1];

    titleLabel2 = [(UIButton *)v4->_privateButton titleLabel];
    [titleLabel2 setBaselineAdjustment:1];

    titleLabel3 = [(UIButton *)v4->_endCallButton titleLabel];
    [titleLabel3 setAdjustsFontSizeToFitWidth:1];

    titleLabel4 = [(UIButton *)v4->_endCallButton titleLabel];
    [titleLabel4 setBaselineAdjustment:1];

    v15 = v4->_endCallButton;
    v16 = +[UIColor systemRedColor];
    v17 = sub_100064C30(v16);
    [(UIButton *)v15 setBackgroundImage:v17 forState:0];

    v18 = v4->_privateButton;
    v19 = [UIColor colorWithWhite:1.0 alpha:0.200000003];
    v20 = sub_100064C30(v19);
    [(UIButton *)v18 setBackgroundImage:v20 forState:0];

    v21 = v4->_privateButton;
    v22 = [UIColor colorWithWhite:1.0 alpha:0.349999994];
    v23 = sub_100064C30(v22);
    [(UIButton *)v21 setBackgroundImage:v23 forState:4];

    v24 = v4->_privateButton;
    v25 = [UIColor colorWithWhite:1.0 alpha:0.100000001];
    v26 = sub_100064C30(v25);
    [(UIButton *)v24 setBackgroundImage:v26 forState:2];

    v27 = v4->_nameLabel;
    v28 = +[UIColor clearColor];
    [(UILabel *)v27 setBackgroundColor:v28];

    v29 = v4->_endCallButton;
    v30 = +[UIColor whiteColor];
    [(UIButton *)v29 setTitleColor:v30 forState:0];

    v31 = v4->_privateButton;
    v32 = +[UIColor whiteColor];
    [(UIButton *)v31 setTitleColor:v32 forState:0];

    v33 = v4->_nameLabel;
    v34 = +[UIColor whiteColor];
    [(UILabel *)v33 setTextColor:v34];

    titleLabel5 = [(UIButton *)v4->_endCallButton titleLabel];
    v36 = [UIFont systemFontOfSize:17.0];
    [titleLabel5 setFont:v36];

    titleLabel6 = [(UIButton *)v4->_privateButton titleLabel];
    v38 = [UIFont systemFontOfSize:17.0];
    [titleLabel6 setFont:v38];

    v39 = v4->_nameLabel;
    v40 = +[UIFont telephonyUIBodyShortFont];
    [(UILabel *)v39 setFont:v40];

    [(UILabel *)v4->_nameLabel setMinimumScaleFactor:0.850000024];
    v41 = v4->_privateButton;
    v42 = +[NSBundle mainBundle];
    v43 = [v42 localizedStringForKey:@"PRIVATE" value:&stru_100361FD0 table:@"InCallService"];
    [(UIButton *)v41 setTitle:v43 forState:0];

    v44 = v4->_endCallButton;
    v45 = +[NSBundle mainBundle];
    v46 = [v45 localizedStringForKey:@"END_CALL" value:&stru_100361FD0 table:@"InCallService"];
    [(UIButton *)v44 setTitle:v46 forState:0];

    [(UILabel *)v4->_nameLabel setTextAlignment:1];
    v47 = v4->_privateButton;
    v48 = [UIColor colorWithWhite:1.0 alpha:0.25];
    [(UIButton *)v47 setTitleColor:v48 forState:2];

    [(UIButton *)v4->_endCallButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_privateButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_endCallButton addTarget:v4 action:"buttonTapped:" forControlEvents:64];
    [(UIButton *)v4->_privateButton addTarget:v4 action:"buttonTapped:" forControlEvents:64];
    layer = [(UIButton *)v4->_endCallButton layer];
    [layer setCornerRadius:5.0];

    layer2 = [(UIButton *)v4->_privateButton layer];
    [layer2 setCornerRadius:5.0];

    [(UIButton *)v4->_endCallButton setClipsToBounds:1];
    [(UIButton *)v4->_privateButton setClipsToBounds:1];
    contentView = [(PHConferenceParticipantCell *)v4 contentView];
    [contentView addSubview:v4->_endCallButton];

    contentView2 = [(PHConferenceParticipantCell *)v4 contentView];
    [contentView2 addSubview:v4->_privateButton];

    contentView3 = [(PHConferenceParticipantCell *)v4 contentView];
    [contentView3 addSubview:v4->_nameLabel];

    v128[0] = @"endCallButton";
    v129[0] = v4->_endCallButton;
    v128[1] = @"privateButton";
    v129[1] = v4->_privateButton;
    v128[2] = @"nameLabel";
    v129[2] = v4->_nameLabel;
    v54 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:3];
    leadingAnchor = [(UILabel *)v4->_nameLabel leadingAnchor];
    leadingAnchor2 = [(PHConferenceParticipantCell *)v4 leadingAnchor];
    v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];

    [v57 setActive:1];
    v58 = [[TPBadgeView alloc] initWithTitle:&stru_100361FD0 theme:1];
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v58 setHidden:1];
    [(PHConferenceParticipantCell *)v4 addSubview:v58];
    [(PHConferenceParticipantCell *)v4 setBadgeView:v58];
    centerYAnchor = [v58 centerYAnchor];
    centerYAnchor2 = [(UILabel *)v4->_nameLabel centerYAnchor];
    v61 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(PHConferenceParticipantCell *)v4 addConstraint:v61];

    leadingAnchor3 = [v58 leadingAnchor];
    leadingAnchor4 = [(PHConferenceParticipantCell *)v4 leadingAnchor];
    v64 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    [(PHConferenceParticipantCell *)v4 addConstraint:v64];

    leadingAnchor5 = [(UILabel *)v4->_nameLabel leadingAnchor];
    badgeView = [(PHConferenceParticipantCell *)v4 badgeView];
    trailingAnchor = [badgeView trailingAnchor];
    v68 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor constant:6.0];

    [v68 setActive:0];
    v118 = v57;
    v127 = v57;
    v69 = [NSArray arrayWithObjects:&v127 count:1];
    badgeViewHiddenLayoutConstraints = v4->_badgeViewHiddenLayoutConstraints;
    v4->_badgeViewHiddenLayoutConstraints = v69;

    v126 = v68;
    v71 = [NSArray arrayWithObjects:&v126 count:1];
    badgeViewVisibleLayoutConstraints = v4->_badgeViewVisibleLayoutConstraints;
    v4->_badgeViewVisibleLayoutConstraints = v71;

    [(PHConferenceParticipantCell *)v4 addConstraints:v4->_badgeViewHiddenLayoutConstraints];
    [(PHConferenceParticipantCell *)v4 addConstraints:v4->_badgeViewVisibleLayoutConstraints];
    contentView4 = [(PHConferenceParticipantCell *)v4 contentView];
    v119 = v54;
    v74 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-16-[endCallButton]-8-[privateButton]-16-|", 16, 0, v54);
    [contentView4 addConstraints:v74];

    contentView5 = [(PHConferenceParticipantCell *)v4 contentView];
    endCallButton = [(PHConferenceParticipantCell *)v4 endCallButton];
    privateButton = [(PHConferenceParticipantCell *)v4 privateButton];
    v78 = [NSLayoutConstraint constraintWithItem:endCallButton attribute:7 relatedBy:0 toItem:privateButton attribute:7 multiplier:1.0 constant:0.0];
    [contentView5 addConstraint:v78];

    nameLabel = [(PHConferenceParticipantCell *)v4 nameLabel];
    lastBaselineAnchor = [nameLabel lastBaselineAnchor];
    contentView6 = [(PHConferenceParticipantCell *)v4 contentView];
    topAnchor = [contentView6 topAnchor];
    v83 = +[UIFont telephonyUIBodyShortFont];
    [v83 _scaledValueForValue:24.0];
    v85 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:ceil(v84)];
    [v85 setActive:1];

    endCallButton2 = [(PHConferenceParticipantCell *)v4 endCallButton];
    topAnchor2 = [endCallButton2 topAnchor];
    nameLabel2 = [(PHConferenceParticipantCell *)v4 nameLabel];
    lastBaselineAnchor2 = [nameLabel2 lastBaselineAnchor];
    v90 = +[UIFont telephonyUIBodyShortFont];
    [v90 _scaledValueForValue:15.0];
    v92 = [topAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:ceil(v91)];
    [v92 setActive:1];

    privateButton2 = [(PHConferenceParticipantCell *)v4 privateButton];
    topAnchor3 = [privateButton2 topAnchor];
    endCallButton3 = [(PHConferenceParticipantCell *)v4 endCallButton];
    topAnchor4 = [endCallButton3 topAnchor];
    v97 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v97 setActive:1];

    endCallButton4 = [(PHConferenceParticipantCell *)v4 endCallButton];
    heightAnchor = [endCallButton4 heightAnchor];
    v100 = [heightAnchor constraintEqualToConstant:44.0];
    [v100 setActive:1];

    privateButton3 = [(PHConferenceParticipantCell *)v4 privateButton];
    heightAnchor2 = [privateButton3 heightAnchor];
    v103 = [heightAnchor2 constraintEqualToConstant:44.0];
    [v103 setActive:1];

    contentView7 = [(PHConferenceParticipantCell *)v4 contentView];
    bottomAnchor = [contentView7 bottomAnchor];
    endCallButton5 = [(PHConferenceParticipantCell *)v4 endCallButton];
    bottomAnchor2 = [endCallButton5 bottomAnchor];
    v108 = +[UIFont telephonyUIBodyShortFont];
    [v108 _scaledValueForValue:12.0];
    v110 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:ceil(v109)];
    [v110 setActive:1];

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    subviews = [(PHConferenceParticipantCell *)v4 subviews];
    v112 = [subviews countByEnumeratingWithState:&v120 objects:v125 count:16];
    if (v112)
    {
      v113 = v112;
      v114 = *v121;
      do
      {
        v115 = 0;
        do
        {
          if (*v121 != v114)
          {
            objc_enumerationMutation(subviews);
          }

          v116 = *(*(&v120 + 1) + 8 * v115);
          if (objc_opt_respondsToSelector())
          {
            [v116 setDelaysContentTouches:0];
          }

          v115 = v115 + 1;
        }

        while (v113 != v115);
        v113 = [subviews countByEnumeratingWithState:&v120 objects:v125 count:16];
      }

      while (v113);
    }
  }

  return v4;
}

- (void)setLocalizedSenderIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [identityCopy length];
  badgeView = [(PHConferenceParticipantCell *)self badgeView];
  v6 = badgeView;
  if (v4)
  {
    [badgeView setHidden:0];

    badgeView2 = [(PHConferenceParticipantCell *)self badgeView];
    [badgeView2 setTitle:identityCopy];

    badgeViewVisibleLayoutConstraints = [(PHConferenceParticipantCell *)self badgeViewVisibleLayoutConstraints];
    [NSLayoutConstraint activateConstraints:badgeViewVisibleLayoutConstraints];

    [(PHConferenceParticipantCell *)self badgeViewHiddenLayoutConstraints];
  }

  else
  {
    [badgeView setHidden:1];

    badgeViewHiddenLayoutConstraints = [(PHConferenceParticipantCell *)self badgeViewHiddenLayoutConstraints];
    [NSLayoutConstraint activateConstraints:badgeViewHiddenLayoutConstraints];

    [(PHConferenceParticipantCell *)self badgeViewVisibleLayoutConstraints];
  }
  v10 = ;
  [NSLayoutConstraint deactivateConstraints:v10];
}

- (void)setRepresentedCall:(id)call
{
  callCopy = call;
  displayFirstName = [callCopy displayFirstName];
  if (![displayFirstName length])
  {
    displayName = [callCopy displayName];

    displayFirstName = displayName;
  }

  nameLabel = [(PHConferenceParticipantCell *)self nameLabel];
  [nameLabel setText:displayFirstName];
}

- (void)setRepresentedHandle:(id)handle
{
  value = [handle value];
  nameLabel = [(PHConferenceParticipantCell *)self nameLabel];
  [nameLabel setText:value];
}

- (void)buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = tappedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ConferenceParticipantsList: button was tapped in call cell %@", &v9, 0xCu);
  }

  endCallButton = [(PHConferenceParticipantCell *)self endCallButton];

  if (endCallButton == tappedCopy)
  {
    delegate = [(PHConferenceParticipantCell *)self delegate];
    [delegate conferenceParticipantCellRequestedEndCall:self];
    goto LABEL_7;
  }

  privateButton = [(PHConferenceParticipantCell *)self privateButton];

  if (privateButton == tappedCopy)
  {
    delegate = [(PHConferenceParticipantCell *)self delegate];
    [delegate conferenceParticipantCellRequestedTakeCallPrivate:self];
LABEL_7:
  }
}

- (void)makeHeld
{
  privateButton = [(PHConferenceParticipantCell *)self privateButton];
  v4 = +[NSBundle conversationKit];
  v5 = [v4 localizedStringForKey:@"HOLD_LABEL" value:&stru_100361FD0 table:@"CallStatus"];
  [privateButton setTitle:v5 forState:0];

  [(PHConferenceParticipantCell *)self setUserInteractionEnabled:0];
}

- (void)setPrivateButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  privateButton = [(PHConferenceParticipantCell *)self privateButton];
  [privateButton setEnabled:enabledCopy];
}

- (void)setPrivateButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  privateButton = [(PHConferenceParticipantCell *)self privateButton];
  [privateButton setHidden:hiddenCopy];
}

- (void)setEndButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  endCallButton = [(PHConferenceParticipantCell *)self endCallButton];
  [endCallButton setHidden:hiddenCopy];
}

- (PHConferenceParticipantCellProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end