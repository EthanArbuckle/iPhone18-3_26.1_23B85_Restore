@interface CarplayAttendeeTableViewCell
- (CarplayAttendeeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_createAndActivateConstraints;
- (void)cellWasTapped;
- (void)updateWithEvent:(id)a3;
@end

@implementation CarplayAttendeeTableViewCell

- (CarplayAttendeeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v23.receiver = self;
  v23.super_class = CarplayAttendeeTableViewCell;
  v4 = [(CarplayAttendeeTableViewCell *)&v23 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[EKUILabeledAvatarView alloc] initWithPlacement:0 options:0];
    avatar = v4->_avatar;
    v4->_avatar = v5;

    [(EKUILabeledAvatarView *)v4->_avatar setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(CarplayAttendeeTableViewCell *)v4 contentView];
    [v7 addSubview:v4->_avatar];

    v8 = objc_opt_new();
    attendeeRelationship = v4->_attendeeRelationship;
    v4->_attendeeRelationship = v8;

    [(UILabel *)v4->_attendeeRelationship setNumberOfLines:1];
    v10 = +[UIColor _carSystemPrimaryColor];
    [(UILabel *)v4->_attendeeRelationship setTextColor:v10];

    v11 = +[UIColor _carSystemFocusPrimaryColor];
    [(UILabel *)v4->_attendeeRelationship setHighlightedTextColor:v11];

    [(UILabel *)v4->_attendeeRelationship setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(CarplayAttendeeTableViewCell *)v4 traitCollection];
    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1 compatibleWithTraitCollection:v12];
    [(UILabel *)v4->_attendeeRelationship setFont:v13];

    v14 = [(CarplayAttendeeTableViewCell *)v4 contentView];
    [v14 addSubview:v4->_attendeeRelationship];

    v15 = objc_opt_new();
    attendeeName = v4->_attendeeName;
    v4->_attendeeName = v15;

    [(UILabel *)v4->_attendeeName setNumberOfLines:1];
    v17 = +[UIColor labelColor];
    [(UILabel *)v4->_attendeeName setTextColor:v17];

    v18 = +[UIColor _carSystemFocusLabelColor];
    [(UILabel *)v4->_attendeeName setHighlightedTextColor:v18];

    [(UILabel *)v4->_attendeeName setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [(CarplayAttendeeTableViewCell *)v4 traitCollection];
    v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v19];
    [(UILabel *)v4->_attendeeName setFont:v20];

    v21 = [(CarplayAttendeeTableViewCell *)v4 contentView];
    [v21 addSubview:v4->_attendeeName];

    [(CarplayAttendeeTableViewCell *)v4 setAccessoryType:1];
    [(CarplayAttendeeTableViewCell *)v4 _createAndActivateConstraints];
  }

  return v4;
}

- (void)_createAndActivateConstraints
{
  v39 = [(EKUILabeledAvatarView *)self->_avatar leadingAnchor];
  v40 = [(CarplayAttendeeTableViewCell *)self contentView];
  v38 = [v40 leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:8.0];
  v41[0] = v37;
  v36 = [(EKUILabeledAvatarView *)self->_avatar widthAnchor];
  v35 = [v36 constraintEqualToConstant:30.0];
  v41[1] = v35;
  v34 = [(EKUILabeledAvatarView *)self->_avatar heightAnchor];
  v33 = [v34 constraintEqualToConstant:30.0];
  v41[2] = v33;
  v31 = [(EKUILabeledAvatarView *)self->_avatar centerYAnchor];
  v32 = [(CarplayAttendeeTableViewCell *)self contentView];
  v30 = [v32 centerYAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v41[3] = v29;
  v28 = [(UILabel *)self->_attendeeName leadingAnchor];
  v27 = [(EKUILabeledAvatarView *)self->_avatar trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27 constant:8.0];
  v41[4] = v26;
  v24 = [(UILabel *)self->_attendeeName trailingAnchor];
  v25 = [(CarplayAttendeeTableViewCell *)self contentView];
  v23 = [v25 trailingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v41[5] = v22;
  v21 = [(UILabel *)self->_attendeeRelationship leadingAnchor];
  v20 = [(EKUILabeledAvatarView *)self->_avatar trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:8.0];
  v41[6] = v19;
  v17 = [(UILabel *)self->_attendeeRelationship trailingAnchor];
  v18 = [(CarplayAttendeeTableViewCell *)self contentView];
  v16 = [v18 trailingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v41[7] = v15;
  v14 = [(UILabel *)self->_attendeeName firstBaselineAnchor];
  v13 = [(UILabel *)self->_attendeeRelationship lastBaselineAnchor];
  v3 = [(UILabel *)self->_attendeeName font];
  [v3 _scaledValueForValue:18.0];
  v4 = [v14 constraintEqualToAnchor:v13 constant:?];
  v41[8] = v4;
  v5 = [(UILabel *)self->_attendeeRelationship firstBaselineAnchor];
  v6 = [(CarplayAttendeeTableViewCell *)self contentView];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:18.0];
  v41[9] = v8;
  v9 = [(CarplayAttendeeTableViewCell *)self contentView];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintGreaterThanOrEqualToConstant:44.0];
  v41[10] = v11;
  v12 = [NSArray arrayWithObjects:v41 count:11];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)updateWithEvent:(id)a3
{
  objc_storeStrong(&self->_event, a3);
  v5 = a3;
  v6 = [(EKEvent *)self->_event organizer];
  v7 = DisplayAddressForIdentity();
  v8 = [v6 name];
  v9 = [v6 firstName];
  v10 = [v6 lastName];
  v11 = +[ContactsUtils defaultContactKeysToFetch];
  v12 = [ContactsUtils contactForAddress:v7 fullName:v8 firstName:v9 lastName:v10 keysToFetch:v11];
  contact = self->_contact;
  self->_contact = v12;

  avatar = self->_avatar;
  v19 = self->_contact;
  v15 = [NSArray arrayWithObjects:&v19 count:1];
  [(EKUILabeledAvatarView *)avatar updateWithContacts:v15];

  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"Invitation from" value:&stru_1002133B8 table:0];
  [(UILabel *)self->_attendeeRelationship setText:v17];

  v18 = [EKWeakLinkClass() stringFromContact:self->_contact style:0];
  [(UILabel *)self->_attendeeName setText:v18];
}

- (void)cellWasTapped
{
  v3 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Attendee cell was tapped", v6, 2u);
  }

  v4 = [CNStarkCardViewController starkCardControllerForCalendarEventWithContact:self->_contact];
  v5 = [(CarplayDetailTableViewCell *)self delegate];
  [v5 pushViewController:v4];
}

@end