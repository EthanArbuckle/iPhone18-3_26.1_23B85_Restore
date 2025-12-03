@interface EKEventDetailAttendeesCell
- (BOOL)update;
- (EKEventDetailAttendeeCellDelegate)attendeeCellDelegate;
- (EKEventDetailAttendeesCell)initWithEvent:(id)event model:(id)model;
- (double)displayHeight;
- (double)footerInset;
- (double)headerInset;
- (double)listToTitle;
- (id)_attendeesListView;
- (void)_attendeesDidFinishLoadingForTest;
- (void)eventDetailAttendeeCellModelBlockedParticipantsUpdated;
- (void)layoutForWidth:(double)width position:(int)position;
- (void)updateAttendees;
@end

@implementation EKEventDetailAttendeesCell

- (EKEventDetailAttendeesCell)initWithEvent:(id)event model:(id)model
{
  modelCopy = model;
  v71.receiver = self;
  v71.super_class = EKEventDetailAttendeesCell;
  v7 = [(EKEventDetailCell *)&v71 initWithEvent:event editable:1 style:1];
  model = v7->_model;
  v7->_model = modelCopy;
  v70 = modelCopy;

  [(EKEventDetailAttendeesCellModel *)v7->_model setDelegate:v7];
  v9 = objc_opt_new();
  titleLabel = v7->_titleLabel;
  v7->_titleLabel = v9;

  textLabel = [(EKEventDetailAttendeesCell *)v7 textLabel];
  font = [textLabel font];
  [(UILabel *)v7->_titleLabel setFont:font];

  textLabel2 = [(EKEventDetailAttendeesCell *)v7 textLabel];
  textColor = [textLabel2 textColor];
  [(UILabel *)v7->_titleLabel setTextColor:textColor];

  [(UILabel *)v7->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = EventKitUIBundle();
  v16 = [v15 localizedStringForKey:@"Invitees" value:&stru_1F4EF6790 table:0];
  [(UILabel *)v7->_titleLabel setText:v16];

  contentView = [(EKEventDetailAttendeesCell *)v7 contentView];
  [contentView addSubview:v7->_titleLabel];

  v18 = objc_opt_new();
  countLabel = v7->_countLabel;
  v7->_countLabel = v18;

  detailTextLabel = [(EKEventDetailAttendeesCell *)v7 detailTextLabel];
  font2 = [detailTextLabel font];
  [(UILabel *)v7->_countLabel setFont:font2];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v7->_countLabel setTextColor:secondaryLabelColor];

  [(UILabel *)v7->_countLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(EKEventDetailAttendeesCell *)v7 contentView];
  [contentView2 addSubview:v7->_countLabel];

  v24 = objc_alloc(MEMORY[0x1E69DCAE0]);
  traitCollection = [(EKEventDetailAttendeesCell *)v7 traitCollection];
  v26 = TableViewDisclosureIndicatorImage(traitCollection);
  v27 = [v24 initWithImage:v26];
  disclosure = v7->_disclosure;
  v7->_disclosure = v27;

  [(UIImageView *)v7->_disclosure setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView3 = [(EKEventDetailAttendeesCell *)v7 contentView];
  [contentView3 addSubview:v7->_disclosure];

  _attendeesListView = [(EKEventDetailAttendeesCell *)v7 _attendeesListView];
  attendeesListView = v7->_attendeesListView;
  v7->_attendeesListView = _attendeesListView;

  [(EKEventDetailAttendeesListView *)v7->_attendeesListView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(EKEventDetailAttendeesCell *)v7 headerInset];
  [(EKEventDetailAttendeesListView *)v7->_attendeesListView setBottomSpacingForSpinner:?];
  contentView4 = [(EKEventDetailAttendeesCell *)v7 contentView];
  [contentView4 addSubview:v7->_attendeesListView];

  v33 = MEMORY[0x1E696ACD8];
  v34 = v7->_titleLabel;
  [(EKEventDetailAttendeesCell *)v7 headerInset];
  v36 = [v33 constraintWithItem:v34 attribute:11 relatedBy:0 toItem:v7 attribute:3 multiplier:1.0 constant:v35];
  [v36 setActive:1];

  leadingAnchor = [(UILabel *)v7->_titleLabel leadingAnchor];
  layoutMarginsGuide = [(EKEventDetailAttendeesCell *)v7 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v40 setActive:1];

  v41 = [MEMORY[0x1E696ACD8] constraintWithItem:v7->_countLabel attribute:11 relatedBy:0 toItem:v7->_titleLabel attribute:11 multiplier:1.0 constant:0.0];
  [v41 setActive:1];

  v42 = MEMORY[0x1E696ACD8];
  v43 = v7->_countLabel;
  v44 = v7->_disclosure;
  font3 = [(UILabel *)v43 font];
  [font3 _scaledValueForValue:-8.0];
  v47 = [v42 constraintWithItem:v43 attribute:6 relatedBy:0 toItem:v44 attribute:5 multiplier:1.0 constant:v46];
  [v47 setActive:1];

  trailingAnchor = [(UIImageView *)v7->_disclosure trailingAnchor];
  layoutMarginsGuide2 = [(EKEventDetailAttendeesCell *)v7 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v51 setActive:1];

  v52 = [MEMORY[0x1E696ACD8] constraintWithItem:v7->_disclosure attribute:10 relatedBy:0 toItem:v7->_titleLabel attribute:10 multiplier:1.0 constant:0.0];
  [v52 setActive:1];

  v53 = MEMORY[0x1E696ACD8];
  v54 = v7->_attendeesListView;
  v55 = v7->_titleLabel;
  [(EKEventDetailAttendeesCell *)v7 listToTitle];
  v57 = [v53 constraintWithItem:v54 attribute:3 relatedBy:0 toItem:v55 attribute:11 multiplier:1.0 constant:v56];
  [v57 setActive:1];

  v58 = MEMORY[0x1E696ACD8];
  v59 = v7->_attendeesListView;
  [(EKEventDetailAttendeesCell *)v7 footerInset];
  v61 = [v58 constraintWithItem:v59 attribute:4 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:v60];
  [v61 setActive:1];

  v62 = [MEMORY[0x1E696ACD8] constraintWithItem:v7->_attendeesListView attribute:5 relatedBy:0 toItem:v7->_titleLabel attribute:5 multiplier:1.0 constant:0.0];
  [v62 setActive:1];

  trailingAnchor3 = [(EKEventDetailAttendeesListView *)v7->_attendeesListView trailingAnchor];
  safeAreaLayoutGuide = [(EKEventDetailAttendeesCell *)v7 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
  v66 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
  [v66 setActive:1];

  v67 = [MEMORY[0x1E696ACD8] constraintWithItem:v7->_attendeesListView attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
  listHeight = v7->_listHeight;
  v7->_listHeight = v67;

  v7->_loadingAttendees = 0;
  return v7;
}

- (double)headerInset
{
  if (EKUIUnscaledCatalyst())
  {
    return 21.0;
  }

  font = [(UILabel *)self->_titleLabel font];
  [font _scaledValueForValue:28.0];
  v6 = v5;

  return v6;
}

- (double)listToTitle
{
  font = [(UILabel *)self->_titleLabel font];
  [font _scaledValueForValue:12.0];
  v4 = v3;

  return v4;
}

- (double)footerInset
{
  font = [(UILabel *)self->_titleLabel font];
  [font _scaledValueForValue:12.0];
  v4 = v3;

  return v4;
}

- (double)displayHeight
{
  attendeesNotIncludingOrganizerOrLocationsOrResources = [(EKEventDetailAttendeesCellModel *)self->_model attendeesNotIncludingOrganizerOrLocationsOrResources];
  v4 = [attendeesNotIncludingOrganizerOrLocationsOrResources count];

  [(EKEventDetailAttendeesCell *)self headerInset];
  v6 = v5;
  if (v4)
  {
    [(EKEventDetailAttendeesCell *)self footerInset];
    v8 = v6 + v7;
    [(EKEventDetailAttendeesListView *)self->_attendeesListView intrinsicContentSize];
    v10 = v8 + v9;
    [(EKEventDetailAttendeesCell *)self listToTitle];
    return v11 + v10;
  }

  else
  {
    font = [(UILabel *)self->_titleLabel font];
    [font _scaledValueForValue:22.0];
    v12 = v6 + v14;
  }

  return v12;
}

- (BOOL)update
{
  selfCopy = self;
  [(EKEventDetailAttendeesCell *)self updateAttendees];
  attendeesNotIncludingOrganizerOrLocationsOrResources = [(EKEventDetailAttendeesCellModel *)selfCopy->_model attendeesNotIncludingOrganizerOrLocationsOrResources];
  [attendeesNotIncludingOrganizerOrLocationsOrResources count];
  v4 = CUIKLocalizedStringForInteger();
  [(UILabel *)selfCopy->_countLabel setText:v4];

  [(EKEventDetailAttendeesListView *)selfCopy->_attendeesListView intrinsicContentSize];
  [(NSLayoutConstraint *)selfCopy->_listHeight setConstant:v5];
  [(NSLayoutConstraint *)selfCopy->_listHeight setActive:1];
  [(EKEventDetailAttendeesCell *)selfCopy bounds];
  Width = CGRectGetWidth(v9);
  [(EKEventDetailAttendeesCell *)selfCopy displayHeight];
  [(EKEventDetailAttendeesCell *)selfCopy setFrame:0.0, 0.0, Width, v7];
  LOBYTE(selfCopy) = [attendeesNotIncludingOrganizerOrLocationsOrResources count] != 0;

  return selfCopy;
}

- (void)_attendeesDidFinishLoadingForTest
{
  if ([*MEMORY[0x1E69DDA98] isRunningTest])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"EventDetailsDidFinishLoadingAndDisplayingAttendeesNotification" object:0];
  }
}

- (void)updateAttendees
{
  self->_loadingAttendees = 1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  model = self->_model;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__EKEventDetailAttendeesCell_updateAttendees__block_invoke;
  v6[3] = &unk_1E8440270;
  v6[4] = self;
  v6[5] = &v7;
  v4 = [(EKEventDetailAttendeesCellModel *)model sortAttendeesWithCompletion:v6];
  *(v8 + 24) = !v4;
  if (!v4)
  {
    _attendeesListView = [(EKEventDetailAttendeesCell *)self _attendeesListView];
    [_attendeesListView showSpinner];
  }

  _Block_object_dispose(&v7, 8);
}

void __45__EKEventDetailAttendeesCell_updateAttendees__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v25 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v25 | v14)
  {
    v15 = [*(a1 + 32) _attendeesListView];
    v16 = v15;
    if (v14)
    {
      [v15 setUngrouped:v14];
    }

    else
    {
      [v15 setInvitees:v25 forStatus:0];

      v17 = [*(a1 + 32) _attendeesListView];
      [v17 setInvitees:v11 forStatus:1];

      v18 = [*(a1 + 32) _attendeesListView];
      [v18 setInvitees:v12 forStatus:2];

      v16 = [*(a1 + 32) _attendeesListView];
      [v16 setInvitees:v13 forStatus:3];
    }

    v19 = [*(a1 + 32) _attendeesListView];
    [v19 setGroupsNames:v14 == 0];

    v20 = [*(a1 + 32) _attendeesListView];
    [v20 setup];

    *(*(a1 + 32) + 1168) = 0;
    [*(a1 + 32) setNeedsDisplay];
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v21 = [*(a1 + 32) attendeeCellDelegate];
      [v21 eventDetailAttendeeCellWantsRefreshForHeightChange];
    }

    [*(a1 + 32) _attendeesDidFinishLoadingForTest];
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v22 = [*(a1 + 32) attendeeCellDelegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = [*(a1 + 32) attendeeCellDelegate];
        [v24 eventDetailAttendeeCellDidCompleteLoad:*(a1 + 32)];
      }
    }
  }
}

- (id)_attendeesListView
{
  attendeesListView = self->_attendeesListView;
  if (!attendeesListView)
  {
    v4 = [EKEventDetailAttendeesListView alloc];
    v5 = [(EKEventDetailAttendeesListView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_attendeesListView;
    self->_attendeesListView = v5;

    [(EKEventDetailAttendeesListView *)self->_attendeesListView setContentMode:3];
    v7 = self->_attendeesListView;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(EKEventDetailAttendeesListView *)v7 setTextColor:secondaryLabelColor];

    [(EKEventDetailAttendeesListView *)self->_attendeesListView setBackgroundColor:0];
    [(EKEventDetailAttendeesListView *)self->_attendeesListView setOpaque:0];
    attendeesListView = self->_attendeesListView;
  }

  return attendeesListView;
}

- (void)layoutForWidth:(double)width position:(int)position
{
  v5.receiver = self;
  v5.super_class = EKEventDetailAttendeesCell;
  [(EKEventDetailCell *)&v5 layoutForWidth:*&position position:width];
  [(EKEventDetailAttendeesCell *)self setNeedsDisplay];
}

- (void)eventDetailAttendeeCellModelBlockedParticipantsUpdated
{
  if (!self->_loadingAttendees)
  {
    [(EKEventDetailAttendeesListView *)self->_attendeesListView refreshNames];
  }
}

- (EKEventDetailAttendeeCellDelegate)attendeeCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_attendeeCellDelegate);

  return WeakRetained;
}

@end