@interface CarplayConferenceTableViewCell
- (CarplayConferenceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)cellWasTapped;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)updateWithEvent:(id)event;
@end

@implementation CarplayConferenceTableViewCell

- (CarplayConferenceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v82.receiver = self;
  v82.super_class = CarplayConferenceTableViewCell;
  v4 = [(CarplayConferenceTableViewCell *)&v82 initWithStyle:style reuseIdentifier:identifier];
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
    traitCollection = [(CarplayConferenceTableViewCell *)v4 traitCollection];
    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:traitCollection];
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
    traitCollection2 = [(CarplayConferenceTableViewCell *)v4 traitCollection];
    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1 compatibleWithTraitCollection:traitCollection2];
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
      leadingAnchor = [(UIImageView *)v4->_conferenceImage leadingAnchor];
      leadingAnchor2 = [(CarplayConferenceTableViewCell *)v4 leadingAnchor];
      v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:9.0];
      v84[0] = v63;
      centerYAnchor = [(UIImageView *)v4->_conferenceImage centerYAnchor];
      centerYAnchor2 = [(CarplayConferenceTableViewCell *)v4 centerYAnchor];
      v81 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v84[1] = v81;
      heightAnchor = [(UIImageView *)v4->_conferenceImage heightAnchor];
      trailingAnchor6 = [heightAnchor constraintEqualToConstant:29.0];
      v84[2] = trailingAnchor6;
      widthAnchor = [(UIImageView *)v4->_conferenceImage widthAnchor];
      heightAnchor2 = [(UIImageView *)v4->_conferenceImage heightAnchor];
      v78 = widthAnchor;
      trailingAnchor7 = [widthAnchor constraintEqualToAnchor:1.0 multiplier:?];
      v84[3] = trailingAnchor7;
      leadingAnchor3 = [(UILabel *)v4->_label leadingAnchor];
      trailingAnchor = [(UIImageView *)v4->_conferenceImage trailingAnchor];
      v75 = leadingAnchor3;
      topAnchor2 = [leadingAnchor3 constraintEqualToAnchor:9.0 constant:?];
      v84[4] = topAnchor2;
      leadingAnchor4 = [(UILabel *)v4->_subLabel leadingAnchor];
      trailingAnchor2 = [(UIImageView *)v4->_conferenceImage trailingAnchor];
      v72 = leadingAnchor4;
      v57 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:9.0];
      v84[5] = v57;
      leadingAnchor5 = [(UIImageView *)v4->_icon leadingAnchor];
      trailingAnchor3 = [(UILabel *)v4->_subLabel trailingAnchor];
      v71 = leadingAnchor5;
      centerXAnchor2 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:12.0 constant:?];
      v84[6] = centerXAnchor2;
      leadingAnchor6 = [(UIImageView *)v4->_icon leadingAnchor];
      trailingAnchor4 = [(UILabel *)v4->_label trailingAnchor];
      v68 = leadingAnchor6;
      centerYAnchor6 = [leadingAnchor6 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:12.0];
      v84[7] = centerYAnchor6;
      firstBaselineAnchor = [(UILabel *)v4->_label firstBaselineAnchor];
      topAnchor = [(CarplayConferenceTableViewCell *)v4 topAnchor];
      v66 = firstBaselineAnchor;
      v64 = [firstBaselineAnchor constraintEqualToAnchor:20.0 constant:?];
      v84[8] = v64;
      firstBaselineAnchor2 = [(UILabel *)v4->_subLabel firstBaselineAnchor];
      lastBaselineAnchor = [(UILabel *)v4->_label lastBaselineAnchor];
      v54 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:16.0];
      v84[9] = v54;
      trailingAnchor5 = [(CarplayConferenceTableViewCell *)v4 trailingAnchor];
      centerXAnchor = [(UIImageView *)v4->_icon centerXAnchor];
      v33 = [trailingAnchor5 constraintEqualToAnchor:centerXAnchor constant:23.0];
      v84[10] = v33;
      centerYAnchor3 = [(UIImageView *)v4->_icon centerYAnchor];
      centerYAnchor4 = [(CarplayConferenceTableViewCell *)v4 centerYAnchor];
      v36 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v84[11] = v36;
      heightAnchor3 = [(CarplayConferenceTableViewCell *)v4 heightAnchor];
      v38 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:44.0];
      v84[12] = v38;
      v39 = [NSArray arrayWithObjects:v84 count:13];
      [NSLayoutConstraint activateConstraints:v39];

      centerYAnchor5 = trailingAnchor4;
      leadingAnchor8 = leadingAnchor2;

      leadingAnchor10 = centerYAnchor2;
      leadingAnchor7 = leadingAnchor;

      leadingAnchor9 = centerYAnchor;
      firstBaselineAnchor4 = trailingAnchor2;

      lastBaselineAnchor2 = v57;
      v47 = v63;
    }

    else
    {
      leadingAnchor7 = [(UILabel *)v4->_label leadingAnchor];
      leadingAnchor8 = [(CarplayConferenceTableViewCell *)v4 leadingAnchor];
      v47 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:12.0];
      v83[0] = v47;
      leadingAnchor9 = [(UILabel *)v4->_subLabel leadingAnchor];
      leadingAnchor10 = [(CarplayConferenceTableViewCell *)v4 leadingAnchor];
      v81 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:12.0];
      v83[1] = v81;
      leadingAnchor11 = [(UIImageView *)v4->_icon leadingAnchor];
      trailingAnchor6 = [(UILabel *)v4->_subLabel trailingAnchor];
      heightAnchor = leadingAnchor11;
      v78 = [leadingAnchor11 constraintGreaterThanOrEqualToAnchor:12.0 constant:?];
      v83[2] = v78;
      leadingAnchor12 = [(UIImageView *)v4->_icon leadingAnchor];
      trailingAnchor7 = [(UILabel *)v4->_label trailingAnchor];
      heightAnchor2 = leadingAnchor12;
      v75 = [leadingAnchor12 constraintGreaterThanOrEqualToAnchor:12.0 constant:?];
      v83[3] = v75;
      firstBaselineAnchor3 = [(UILabel *)v4->_label firstBaselineAnchor];
      topAnchor2 = [(CarplayConferenceTableViewCell *)v4 topAnchor];
      trailingAnchor = firstBaselineAnchor3;
      v72 = [firstBaselineAnchor3 constraintEqualToAnchor:20.0 constant:?];
      v83[4] = v72;
      firstBaselineAnchor4 = [(UILabel *)v4->_subLabel firstBaselineAnchor];
      lastBaselineAnchor2 = [(UILabel *)v4->_label lastBaselineAnchor];
      v71 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor2 constant:16.0];
      v83[5] = v71;
      trailingAnchor8 = [(CarplayConferenceTableViewCell *)v4 trailingAnchor];
      centerXAnchor2 = [(UIImageView *)v4->_icon centerXAnchor];
      trailingAnchor3 = trailingAnchor8;
      v68 = [trailingAnchor8 constraintEqualToAnchor:23.0 constant:?];
      v83[6] = v68;
      centerYAnchor5 = [(UIImageView *)v4->_icon centerYAnchor];
      centerYAnchor6 = [(CarplayConferenceTableViewCell *)v4 centerYAnchor];
      v66 = [centerYAnchor5 constraintEqualToAnchor:?];
      v83[7] = v66;
      topAnchor = [(CarplayConferenceTableViewCell *)v4 heightAnchor];
      v64 = [topAnchor constraintGreaterThanOrEqualToConstant:44.0];
      v83[8] = v64;
      firstBaselineAnchor2 = [NSArray arrayWithObjects:v83 count:9];
      [NSLayoutConstraint activateConstraints:firstBaselineAnchor2];
    }
  }

  return v4;
}

- (void)updateWithEvent:(id)event
{
  eventCopy = event;
  objc_storeStrong(&self->_event, event);
  virtualConference = [(EKEvent *)self->_event virtualConference];
  joinMethods = [virtualConference joinMethods];
  firstObject = [joinMethods firstObject];
  v9 = [firstObject URL];
  v10 = v9;
  if (v9)
  {
    conferenceURLForDisplay = v9;
  }

  else
  {
    conferenceURLForDisplay = [(EKEvent *)self->_event conferenceURLForDisplay];
  }

  v12 = conferenceURLForDisplay;

  cal_hasSchemeTel = [v12 cal_hasSchemeTel];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = v14;
  if (cal_hasSchemeTel)
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
  v20 = eventCopy;
  selfCopy = self;
  v18 = eventCopy;
  [CUIKConferenceUtils displayDetailsForURL:v12 completionHandler:v19];
}

- (void)cellWasTapped
{
  virtualConference = [(EKEvent *)self->_event virtualConference];
  joinMethods = [virtualConference joinMethods];
  firstObject = [joinMethods firstObject];
  v6 = [firstObject URL];
  v7 = v6;
  if (v6)
  {
    conferenceURLForDisplay = v6;
  }

  else
  {
    conferenceURLForDisplay = [(EKEvent *)self->_event conferenceURLForDisplay];
  }

  v9 = conferenceURLForDisplay;

  v10 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v22 = 138477827;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Conference cell was tapped, url: [%{private}@]", &v22, 0xCu);
  }

  v11 = [EKConferenceUtils applicationRecordForURL:v9 incomplete:0];
  bundleIdentifier = [v11 bundleIdentifier];

  v13 = +[EKConferenceUtils FacetimeAppBundleID];
  v14 = [bundleIdentifier isEqualToString:v13];

  if (v14)
  {
    v15 = kCalUILogCarplayHandle;
    if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "cellWasTapped for FaceTime url. Creating join conversation request.", &v22, 2u);
    }

    window = [TUConversationLink conversationLinkForURL:v9];
    v17 = [TUJoinConversationRequest alloc];
    v18 = +[NSSet set];
    windowScene = [v17 initWithConversationLink:window otherInvitedHandles:v18 sendLetMeInRequest:1];

    if (windowScene)
    {
      [windowScene setWantsStagingArea:0];
      [windowScene setVideoEnabled:0];
      v20 = +[TUCallCenter sharedInstance];
      [v20 launchAppForJoinRequest:windowScene];
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
    window = [(CarplayConferenceTableViewCell *)self window];
    windowScene = [window windowScene];
    [windowScene openURL:v9 options:0 completionHandler:&stru_10020FD58];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = CarplayConferenceTableViewCell;
  [(CarplayConferenceTableViewCell *)&v7 setHighlighted:highlighted animated:animated];
  if (highlightedCopy)
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