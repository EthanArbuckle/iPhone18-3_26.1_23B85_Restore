@interface PHConferenceParticipantCell
- (PHConferenceParticipantCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PHConferenceParticipantCellProtocol)delegate;
- (void)buttonTapped:(id)a3;
- (void)makeHeld;
- (void)setEndButtonHidden:(BOOL)a3;
- (void)setLocalizedSenderIdentity:(id)a3;
- (void)setPrivateButtonEnabled:(BOOL)a3;
- (void)setPrivateButtonHidden:(BOOL)a3;
- (void)setRepresentedCall:(id)a3;
- (void)setRepresentedHandle:(id)a3;
@end

@implementation PHConferenceParticipantCell

- (PHConferenceParticipantCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v124.receiver = self;
  v124.super_class = PHConferenceParticipantCell;
  v4 = [(PHConferenceParticipantCell *)&v124 initWithStyle:a3 reuseIdentifier:a4];
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

    v11 = [(UIButton *)v4->_privateButton titleLabel];
    [v11 setAdjustsFontSizeToFitWidth:1];

    v12 = [(UIButton *)v4->_privateButton titleLabel];
    [v12 setBaselineAdjustment:1];

    v13 = [(UIButton *)v4->_endCallButton titleLabel];
    [v13 setAdjustsFontSizeToFitWidth:1];

    v14 = [(UIButton *)v4->_endCallButton titleLabel];
    [v14 setBaselineAdjustment:1];

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

    v35 = [(UIButton *)v4->_endCallButton titleLabel];
    v36 = [UIFont systemFontOfSize:17.0];
    [v35 setFont:v36];

    v37 = [(UIButton *)v4->_privateButton titleLabel];
    v38 = [UIFont systemFontOfSize:17.0];
    [v37 setFont:v38];

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
    v49 = [(UIButton *)v4->_endCallButton layer];
    [v49 setCornerRadius:5.0];

    v50 = [(UIButton *)v4->_privateButton layer];
    [v50 setCornerRadius:5.0];

    [(UIButton *)v4->_endCallButton setClipsToBounds:1];
    [(UIButton *)v4->_privateButton setClipsToBounds:1];
    v51 = [(PHConferenceParticipantCell *)v4 contentView];
    [v51 addSubview:v4->_endCallButton];

    v52 = [(PHConferenceParticipantCell *)v4 contentView];
    [v52 addSubview:v4->_privateButton];

    v53 = [(PHConferenceParticipantCell *)v4 contentView];
    [v53 addSubview:v4->_nameLabel];

    v128[0] = @"endCallButton";
    v129[0] = v4->_endCallButton;
    v128[1] = @"privateButton";
    v129[1] = v4->_privateButton;
    v128[2] = @"nameLabel";
    v129[2] = v4->_nameLabel;
    v54 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:3];
    v55 = [(UILabel *)v4->_nameLabel leadingAnchor];
    v56 = [(PHConferenceParticipantCell *)v4 leadingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:16.0];

    [v57 setActive:1];
    v58 = [[TPBadgeView alloc] initWithTitle:&stru_100361FD0 theme:1];
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v58 setHidden:1];
    [(PHConferenceParticipantCell *)v4 addSubview:v58];
    [(PHConferenceParticipantCell *)v4 setBadgeView:v58];
    v59 = [v58 centerYAnchor];
    v60 = [(UILabel *)v4->_nameLabel centerYAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    [(PHConferenceParticipantCell *)v4 addConstraint:v61];

    v62 = [v58 leadingAnchor];
    v63 = [(PHConferenceParticipantCell *)v4 leadingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:16.0];
    [(PHConferenceParticipantCell *)v4 addConstraint:v64];

    v65 = [(UILabel *)v4->_nameLabel leadingAnchor];
    v66 = [(PHConferenceParticipantCell *)v4 badgeView];
    v67 = [v66 trailingAnchor];
    v68 = [v65 constraintEqualToAnchor:v67 constant:6.0];

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
    v73 = [(PHConferenceParticipantCell *)v4 contentView];
    v119 = v54;
    v74 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-16-[endCallButton]-8-[privateButton]-16-|", 16, 0, v54);
    [v73 addConstraints:v74];

    v75 = [(PHConferenceParticipantCell *)v4 contentView];
    v76 = [(PHConferenceParticipantCell *)v4 endCallButton];
    v77 = [(PHConferenceParticipantCell *)v4 privateButton];
    v78 = [NSLayoutConstraint constraintWithItem:v76 attribute:7 relatedBy:0 toItem:v77 attribute:7 multiplier:1.0 constant:0.0];
    [v75 addConstraint:v78];

    v79 = [(PHConferenceParticipantCell *)v4 nameLabel];
    v80 = [v79 lastBaselineAnchor];
    v81 = [(PHConferenceParticipantCell *)v4 contentView];
    v82 = [v81 topAnchor];
    v83 = +[UIFont telephonyUIBodyShortFont];
    [v83 _scaledValueForValue:24.0];
    v85 = [v80 constraintEqualToAnchor:v82 constant:ceil(v84)];
    [v85 setActive:1];

    v86 = [(PHConferenceParticipantCell *)v4 endCallButton];
    v87 = [v86 topAnchor];
    v88 = [(PHConferenceParticipantCell *)v4 nameLabel];
    v89 = [v88 lastBaselineAnchor];
    v90 = +[UIFont telephonyUIBodyShortFont];
    [v90 _scaledValueForValue:15.0];
    v92 = [v87 constraintEqualToAnchor:v89 constant:ceil(v91)];
    [v92 setActive:1];

    v93 = [(PHConferenceParticipantCell *)v4 privateButton];
    v94 = [v93 topAnchor];
    v95 = [(PHConferenceParticipantCell *)v4 endCallButton];
    v96 = [v95 topAnchor];
    v97 = [v94 constraintEqualToAnchor:v96];
    [v97 setActive:1];

    v98 = [(PHConferenceParticipantCell *)v4 endCallButton];
    v99 = [v98 heightAnchor];
    v100 = [v99 constraintEqualToConstant:44.0];
    [v100 setActive:1];

    v101 = [(PHConferenceParticipantCell *)v4 privateButton];
    v102 = [v101 heightAnchor];
    v103 = [v102 constraintEqualToConstant:44.0];
    [v103 setActive:1];

    v104 = [(PHConferenceParticipantCell *)v4 contentView];
    v105 = [v104 bottomAnchor];
    v106 = [(PHConferenceParticipantCell *)v4 endCallButton];
    v107 = [v106 bottomAnchor];
    v108 = +[UIFont telephonyUIBodyShortFont];
    [v108 _scaledValueForValue:12.0];
    v110 = [v105 constraintEqualToAnchor:v107 constant:ceil(v109)];
    [v110 setActive:1];

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v111 = [(PHConferenceParticipantCell *)v4 subviews];
    v112 = [v111 countByEnumeratingWithState:&v120 objects:v125 count:16];
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
            objc_enumerationMutation(v111);
          }

          v116 = *(*(&v120 + 1) + 8 * v115);
          if (objc_opt_respondsToSelector())
          {
            [v116 setDelaysContentTouches:0];
          }

          v115 = v115 + 1;
        }

        while (v113 != v115);
        v113 = [v111 countByEnumeratingWithState:&v120 objects:v125 count:16];
      }

      while (v113);
    }
  }

  return v4;
}

- (void)setLocalizedSenderIdentity:(id)a3
{
  v11 = a3;
  v4 = [v11 length];
  v5 = [(PHConferenceParticipantCell *)self badgeView];
  v6 = v5;
  if (v4)
  {
    [v5 setHidden:0];

    v7 = [(PHConferenceParticipantCell *)self badgeView];
    [v7 setTitle:v11];

    v8 = [(PHConferenceParticipantCell *)self badgeViewVisibleLayoutConstraints];
    [NSLayoutConstraint activateConstraints:v8];

    [(PHConferenceParticipantCell *)self badgeViewHiddenLayoutConstraints];
  }

  else
  {
    [v5 setHidden:1];

    v9 = [(PHConferenceParticipantCell *)self badgeViewHiddenLayoutConstraints];
    [NSLayoutConstraint activateConstraints:v9];

    [(PHConferenceParticipantCell *)self badgeViewVisibleLayoutConstraints];
  }
  v10 = ;
  [NSLayoutConstraint deactivateConstraints:v10];
}

- (void)setRepresentedCall:(id)a3
{
  v7 = a3;
  v4 = [v7 displayFirstName];
  if (![v4 length])
  {
    v5 = [v7 displayName];

    v4 = v5;
  }

  v6 = [(PHConferenceParticipantCell *)self nameLabel];
  [v6 setText:v4];
}

- (void)setRepresentedHandle:(id)a3
{
  v5 = [a3 value];
  v4 = [(PHConferenceParticipantCell *)self nameLabel];
  [v4 setText:v5];
}

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ConferenceParticipantsList: button was tapped in call cell %@", &v9, 0xCu);
  }

  v6 = [(PHConferenceParticipantCell *)self endCallButton];

  if (v6 == v4)
  {
    v8 = [(PHConferenceParticipantCell *)self delegate];
    [v8 conferenceParticipantCellRequestedEndCall:self];
    goto LABEL_7;
  }

  v7 = [(PHConferenceParticipantCell *)self privateButton];

  if (v7 == v4)
  {
    v8 = [(PHConferenceParticipantCell *)self delegate];
    [v8 conferenceParticipantCellRequestedTakeCallPrivate:self];
LABEL_7:
  }
}

- (void)makeHeld
{
  v3 = [(PHConferenceParticipantCell *)self privateButton];
  v4 = +[NSBundle conversationKit];
  v5 = [v4 localizedStringForKey:@"HOLD_LABEL" value:&stru_100361FD0 table:@"CallStatus"];
  [v3 setTitle:v5 forState:0];

  [(PHConferenceParticipantCell *)self setUserInteractionEnabled:0];
}

- (void)setPrivateButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHConferenceParticipantCell *)self privateButton];
  [v4 setEnabled:v3];
}

- (void)setPrivateButtonHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHConferenceParticipantCell *)self privateButton];
  [v4 setHidden:v3];
}

- (void)setEndButtonHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHConferenceParticipantCell *)self endCallButton];
  [v4 setHidden:v3];
}

- (PHConferenceParticipantCellProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end