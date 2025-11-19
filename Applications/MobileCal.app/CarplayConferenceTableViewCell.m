@interface CarplayConferenceTableViewCell
- (CarplayConferenceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)cellWasTapped;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)updateWithEvent:(id)a3;
@end

@implementation CarplayConferenceTableViewCell

- (CarplayConferenceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v82.receiver = self;
  v82.super_class = CarplayConferenceTableViewCell;
  v4 = [(CarplayConferenceTableViewCell *)&v82 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    label = v4->_label;
    v4->_label = v5;

    [(UILabel *)v4->_label setNumberOfLines:0];
    v7 = +[UIColor labelColor];
    [(UILabel *)v4->_label setTextColor:v7];

    v8 = +[UIColor _carSystemFocusLabelColor];
    [(UILabel *)v4->_label setHighlightedTextColor:v8];

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(CarplayConferenceTableViewCell *)v4 traitCollection];
    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v9];
    [(UILabel *)v4->_label setFont:v10];

    [(CarplayConferenceTableViewCell *)v4 addSubview:v4->_label];
    v11 = objc_opt_new();
    subLabel = v4->_subLabel;
    v4->_subLabel = v11;

    [(UILabel *)v4->_subLabel setNumberOfLines:0];
    v13 = +[UIColor _carSystemPrimaryColor];
    [(UILabel *)v4->_subLabel setTextColor:v13];

    v14 = +[UIColor _carSystemFocusPrimaryColor];
    [(UILabel *)v4->_subLabel setHighlightedTextColor:v14];

    [(UILabel *)v4->_subLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(CarplayConferenceTableViewCell *)v4 traitCollection];
    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1 compatibleWithTraitCollection:v15];
    [(UILabel *)v4->_subLabel setFont:v16];

    [(CarplayConferenceTableViewCell *)v4 addSubview:v4->_subLabel];
    v17 = objc_alloc_init(UIImageView);
    icon = v4->_icon;
    v4->_icon = v17;

    v19 = +[UIColor labelColor];
    [(UIImageView *)v4->_icon setTintColor:v19];

    v20 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleCallout scale:3];
    [(UIImageView *)v4->_icon setPreferredSymbolConfiguration:v20];

    [(UIImageView *)v4->_icon setTranslatesAutoresizingMaskIntoConstraints:0];
    if (CalSystemSolariumEnabled())
    {
      v21 = [UIImage systemImageNamed:@"phone.fill"];
      [(UIImageView *)v4->_icon setImage:v21];
    }

    [(CarplayConferenceTableViewCell *)v4 addSubview:v4->_icon];
    if (CalSystemSolariumEnabled())
    {
      v22 = objc_alloc_init(UIImageView);
      conferenceImage = v4->_conferenceImage;
      v4->_conferenceImage = v22;

      v24 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleCallout scale:3];
      [(UIImageView *)v4->_conferenceImage setPreferredSymbolConfiguration:v24];

      [(UIImageView *)v4->_conferenceImage setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CarplayConferenceTableViewCell *)v4 addSubview:v4->_conferenceImage];
      v62 = [(UIImageView *)v4->_conferenceImage leadingAnchor];
      v61 = [(CarplayConferenceTableViewCell *)v4 leadingAnchor];
      v63 = [v62 constraintEqualToAnchor:v61 constant:9.0];
      v84[0] = v63;
      v60 = [(UIImageView *)v4->_conferenceImage centerYAnchor];
      v59 = [(CarplayConferenceTableViewCell *)v4 centerYAnchor];
      v81 = [v60 constraintEqualToAnchor:v59];
      v84[1] = v81;
      v80 = [(UIImageView *)v4->_conferenceImage heightAnchor];
      v79 = [v80 constraintEqualToConstant:29.0];
      v84[2] = v79;
      v25 = [(UIImageView *)v4->_conferenceImage widthAnchor];
      v77 = [(UIImageView *)v4->_conferenceImage heightAnchor];
      v78 = v25;
      v76 = [v25 constraintEqualToAnchor:1.0 multiplier:?];
      v84[3] = v76;
      v26 = [(UILabel *)v4->_label leadingAnchor];
      v74 = [(UIImageView *)v4->_conferenceImage trailingAnchor];
      v75 = v26;
      v73 = [v26 constraintEqualToAnchor:9.0 constant:?];
      v84[4] = v73;
      v27 = [(UILabel *)v4->_subLabel leadingAnchor];
      v58 = [(UIImageView *)v4->_conferenceImage trailingAnchor];
      v72 = v27;
      v57 = [v27 constraintEqualToAnchor:v58 constant:9.0];
      v84[5] = v57;
      v28 = [(UIImageView *)v4->_icon leadingAnchor];
      v70 = [(UILabel *)v4->_subLabel trailingAnchor];
      v71 = v28;
      v69 = [v28 constraintGreaterThanOrEqualToAnchor:12.0 constant:?];
      v84[6] = v69;
      v29 = [(UIImageView *)v4->_icon leadingAnchor];
      v56 = [(UILabel *)v4->_label trailingAnchor];
      v68 = v29;
      v67 = [v29 constraintGreaterThanOrEqualToAnchor:v56 constant:12.0];
      v84[7] = v67;
      v30 = [(UILabel *)v4->_label firstBaselineAnchor];
      v65 = [(CarplayConferenceTableViewCell *)v4 topAnchor];
      v66 = v30;
      v64 = [v30 constraintEqualToAnchor:20.0 constant:?];
      v84[8] = v64;
      v31 = [(UILabel *)v4->_subLabel firstBaselineAnchor];
      v55 = [(UILabel *)v4->_label lastBaselineAnchor];
      v54 = [v31 constraintEqualToAnchor:v55 constant:16.0];
      v84[9] = v54;
      v53 = [(CarplayConferenceTableViewCell *)v4 trailingAnchor];
      v32 = [(UIImageView *)v4->_icon centerXAnchor];
      v33 = [v53 constraintEqualToAnchor:v32 constant:23.0];
      v84[10] = v33;
      v34 = [(UIImageView *)v4->_icon centerYAnchor];
      v35 = [(CarplayConferenceTableViewCell *)v4 centerYAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      v84[11] = v36;
      v37 = [(CarplayConferenceTableViewCell *)v4 heightAnchor];
      v38 = [v37 constraintGreaterThanOrEqualToConstant:44.0];
      v84[12] = v38;
      v39 = [NSArray arrayWithObjects:v84 count:13];
      [NSLayoutConstraint activateConstraints:v39];

      v40 = v56;
      v41 = v61;

      v42 = v59;
      v43 = v62;

      v44 = v60;
      v45 = v58;

      v46 = v57;
      v47 = v63;
    }

    else
    {
      v43 = [(UILabel *)v4->_label leadingAnchor];
      v41 = [(CarplayConferenceTableViewCell *)v4 leadingAnchor];
      v47 = [v43 constraintEqualToAnchor:v41 constant:12.0];
      v83[0] = v47;
      v44 = [(UILabel *)v4->_subLabel leadingAnchor];
      v42 = [(CarplayConferenceTableViewCell *)v4 leadingAnchor];
      v81 = [v44 constraintEqualToAnchor:v42 constant:12.0];
      v83[1] = v81;
      v48 = [(UIImageView *)v4->_icon leadingAnchor];
      v79 = [(UILabel *)v4->_subLabel trailingAnchor];
      v80 = v48;
      v78 = [v48 constraintGreaterThanOrEqualToAnchor:12.0 constant:?];
      v83[2] = v78;
      v49 = [(UIImageView *)v4->_icon leadingAnchor];
      v76 = [(UILabel *)v4->_label trailingAnchor];
      v77 = v49;
      v75 = [v49 constraintGreaterThanOrEqualToAnchor:12.0 constant:?];
      v83[3] = v75;
      v50 = [(UILabel *)v4->_label firstBaselineAnchor];
      v73 = [(CarplayConferenceTableViewCell *)v4 topAnchor];
      v74 = v50;
      v72 = [v50 constraintEqualToAnchor:20.0 constant:?];
      v83[4] = v72;
      v45 = [(UILabel *)v4->_subLabel firstBaselineAnchor];
      v46 = [(UILabel *)v4->_label lastBaselineAnchor];
      v71 = [v45 constraintEqualToAnchor:v46 constant:16.0];
      v83[5] = v71;
      v51 = [(CarplayConferenceTableViewCell *)v4 trailingAnchor];
      v69 = [(UIImageView *)v4->_icon centerXAnchor];
      v70 = v51;
      v68 = [v51 constraintEqualToAnchor:23.0 constant:?];
      v83[6] = v68;
      v40 = [(UIImageView *)v4->_icon centerYAnchor];
      v67 = [(CarplayConferenceTableViewCell *)v4 centerYAnchor];
      v66 = [v40 constraintEqualToAnchor:?];
      v83[7] = v66;
      v65 = [(CarplayConferenceTableViewCell *)v4 heightAnchor];
      v64 = [v65 constraintGreaterThanOrEqualToConstant:44.0];
      v83[8] = v64;
      v31 = [NSArray arrayWithObjects:v83 count:9];
      [NSLayoutConstraint activateConstraints:v31];
    }
  }

  return v4;
}

- (void)updateWithEvent:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_event, a3);
  v6 = [(EKEvent *)self->_event virtualConference];
  v7 = [v6 joinMethods];
  v8 = [v7 firstObject];
  v9 = [v8 URL];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(EKEvent *)self->_event conferenceURLForDisplay];
  }

  v12 = v11;

  v13 = [v12 cal_hasSchemeTel];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = v14;
  if (v13)
  {
    v16 = @"Call In";
  }

  else
  {
    v16 = @"Join";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_1002133B8 table:0];
  [(UILabel *)self->_label setText:v17];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100076388;
  v19[3] = &unk_10020FD38;
  v20 = v5;
  v21 = self;
  v18 = v5;
  [CUIKConferenceUtils displayDetailsForURL:v12 completionHandler:v19];
}

- (void)cellWasTapped
{
  v3 = [(EKEvent *)self->_event virtualConference];
  v4 = [v3 joinMethods];
  v5 = [v4 firstObject];
  v6 = [v5 URL];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(EKEvent *)self->_event conferenceURLForDisplay];
  }

  v9 = v8;

  v10 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v22 = 138477827;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Conference cell was tapped, url: [%{private}@]", &v22, 0xCu);
  }

  v11 = [EKConferenceUtils applicationRecordForURL:v9 incomplete:0];
  v12 = [v11 bundleIdentifier];

  v13 = +[EKConferenceUtils FacetimeAppBundleID];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    v15 = kCalUILogCarplayHandle;
    if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "cellWasTapped for FaceTime url. Creating join conversation request.", &v22, 2u);
    }

    v16 = [TUConversationLink conversationLinkForURL:v9];
    v17 = [TUJoinConversationRequest alloc];
    v18 = +[NSSet set];
    v19 = [v17 initWithConversationLink:v16 otherInvitedHandles:v18 sendLetMeInRequest:1];

    if (v19)
    {
      [v19 setWantsStagingArea:0];
      [v19 setVideoEnabled:0];
      v20 = +[TUCallCenter sharedInstance];
      [v20 launchAppForJoinRequest:v19];
    }

    else
    {
      v21 = kCalUILogCarplayHandle;
      if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unable to create join conversation request for facetime url.", &v22, 2u);
      }
    }
  }

  else
  {
    v16 = [(CarplayConferenceTableViewCell *)self window];
    v19 = [v16 windowScene];
    [v19 openURL:v9 options:0 completionHandler:&stru_10020FD58];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CarplayConferenceTableViewCell;
  [(CarplayConferenceTableViewCell *)&v7 setHighlighted:a3 animated:a4];
  if (v4)
  {
    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v6 = ;
  [(UIImageView *)self->_icon setTintColor:v6];
}

@end