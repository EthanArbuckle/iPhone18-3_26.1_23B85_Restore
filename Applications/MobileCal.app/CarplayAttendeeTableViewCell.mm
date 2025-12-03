@interface CarplayAttendeeTableViewCell
- (CarplayAttendeeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_createAndActivateConstraints;
- (void)cellWasTapped;
- (void)updateWithEvent:(id)event;
@end

@implementation CarplayAttendeeTableViewCell

- (CarplayAttendeeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v23.receiver = self;
  v23.super_class = CarplayAttendeeTableViewCell;
  v4 = [(CarplayAttendeeTableViewCell *)&v23 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[EKUILabeledAvatarView alloc] initWithPlacement:0 options:0];
    avatar = v4->_avatar;
    v4->_avatar = v5;

    [(EKUILabeledAvatarView *)v4->_avatar setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(CarplayAttendeeTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_avatar];

    v8 = objc_opt_new();
    attendeeRelationship = v4->_attendeeRelationship;
    v4->_attendeeRelationship = v8;

    [(UILabel *)v4->_attendeeRelationship setNumberOfLines:1];
    v10 = +[UIColor _carSystemPrimaryColor];
    [(UILabel *)v4->_attendeeRelationship setTextColor:v10];

    v11 = +[UIColor _carSystemFocusPrimaryColor];
    [(UILabel *)v4->_attendeeRelationship setHighlightedTextColor:v11];

    [(UILabel *)v4->_attendeeRelationship setTranslatesAutoresizingMaskIntoConstraints:0];
    traitCollection = [(CarplayAttendeeTableViewCell *)v4 traitCollection];
    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1 compatibleWithTraitCollection:traitCollection];
    [(UILabel *)v4->_attendeeRelationship setFont:v13];

    contentView2 = [(CarplayAttendeeTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_attendeeRelationship];

    v15 = objc_opt_new();
    attendeeName = v4->_attendeeName;
    v4->_attendeeName = v15;

    [(UILabel *)v4->_attendeeName setNumberOfLines:1];
    v17 = +[UIColor labelColor];
    [(UILabel *)v4->_attendeeName setTextColor:v17];

    v18 = +[UIColor _carSystemFocusLabelColor];
    [(UILabel *)v4->_attendeeName setHighlightedTextColor:v18];

    [(UILabel *)v4->_attendeeName setTranslatesAutoresizingMaskIntoConstraints:0];
    traitCollection2 = [(CarplayAttendeeTableViewCell *)v4 traitCollection];
    v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:traitCollection2];
    [(UILabel *)v4->_attendeeName setFont:v20];

    contentView3 = [(CarplayAttendeeTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_attendeeName];

    [(CarplayAttendeeTableViewCell *)v4 setAccessoryType:1];
    [(CarplayAttendeeTableViewCell *)v4 _createAndActivateConstraints];
  }

  return v4;
}

- (void)_createAndActivateConstraints
{
  leadingAnchor = [(EKUILabeledAvatarView *)self->_avatar leadingAnchor];
  contentView = [(CarplayAttendeeTableViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  v41[0] = v37;
  widthAnchor = [(EKUILabeledAvatarView *)self->_avatar widthAnchor];
  v35 = [widthAnchor constraintEqualToConstant:30.0];
  v41[1] = v35;
  heightAnchor = [(EKUILabeledAvatarView *)self->_avatar heightAnchor];
  v33 = [heightAnchor constraintEqualToConstant:30.0];
  v41[2] = v33;
  centerYAnchor = [(EKUILabeledAvatarView *)self->_avatar centerYAnchor];
  contentView2 = [(CarplayAttendeeTableViewCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v41[3] = v29;
  leadingAnchor3 = [(UILabel *)self->_attendeeName leadingAnchor];
  trailingAnchor = [(EKUILabeledAvatarView *)self->_avatar trailingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
  v41[4] = v26;
  trailingAnchor2 = [(UILabel *)self->_attendeeName trailingAnchor];
  contentView3 = [(CarplayAttendeeTableViewCell *)self contentView];
  trailingAnchor3 = [contentView3 trailingAnchor];
  v22 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v41[5] = v22;
  leadingAnchor4 = [(UILabel *)self->_attendeeRelationship leadingAnchor];
  trailingAnchor4 = [(EKUILabeledAvatarView *)self->_avatar trailingAnchor];
  v19 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:8.0];
  v41[6] = v19;
  trailingAnchor5 = [(UILabel *)self->_attendeeRelationship trailingAnchor];
  contentView4 = [(CarplayAttendeeTableViewCell *)self contentView];
  trailingAnchor6 = [contentView4 trailingAnchor];
  v15 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v41[7] = v15;
  firstBaselineAnchor = [(UILabel *)self->_attendeeName firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_attendeeRelationship lastBaselineAnchor];
  font = [(UILabel *)self->_attendeeName font];
  [font _scaledValueForValue:18.0];
  v4 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  v41[8] = v4;
  firstBaselineAnchor2 = [(UILabel *)self->_attendeeRelationship firstBaselineAnchor];
  contentView5 = [(CarplayAttendeeTableViewCell *)self contentView];
  topAnchor = [contentView5 topAnchor];
  v8 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor constant:18.0];
  v41[9] = v8;
  contentView6 = [(CarplayAttendeeTableViewCell *)self contentView];
  heightAnchor2 = [contentView6 heightAnchor];
  v11 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:44.0];
  v41[10] = v11;
  v12 = [NSArray arrayWithObjects:v41 count:11];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)updateWithEvent:(id)event
{
  objc_storeStrong(&self->_event, event);
  eventCopy = event;
  organizer = [(EKEvent *)self->_event organizer];
  v7 = DisplayAddressForIdentity();
  name = [organizer name];
  firstName = [organizer firstName];
  lastName = [organizer lastName];
  v11 = +[ContactsUtils defaultContactKeysToFetch];
  v12 = [ContactsUtils contactForAddress:v7 fullName:name firstName:firstName lastName:lastName keysToFetch:v11];
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
  delegate = [(CarplayDetailTableViewCell *)self delegate];
  [delegate pushViewController:v4];
}

@end