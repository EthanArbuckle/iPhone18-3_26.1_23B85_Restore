@interface IdentitySwitcherCell
+ (double)cellHeight;
+ (id)cellForSource:(id)source withModel:(id)model inTableView:(id)view;
- (double)scaledValueForValue:(double)value;
- (void)configureWithContact:(id)contact displayName:(id)name address:(id)address notificationCount:(unint64_t)count;
- (void)prepareForReuse;
@end

@implementation IdentitySwitcherCell

+ (double)cellHeight
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline addingSymbolicTraits:0x8000 options:0];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];
  [v3 _scaledValueForValue:60.0];
  v5 = v4;

  return v5;
}

+ (id)cellForSource:(id)source withModel:(id)model inTableView:(id)view
{
  sourceCopy = source;
  modelCopy = model;
  viewCopy = view;
  if (!sourceCopy)
  {
    v17 = +[CalContactsProvider defaultProvider];
    unifiedMeContact = [v17 unifiedMeContact];

    if (unifiedMeContact)
    {
      v19 = +[CalContactsProvider defaultProvider];
      myFullName = [v19 myFullName];

      v20 = +[ContactsUtils defaultContactKeysToFetch];
      v10 = [ContactsUtils contactForContact:unifiedMeContact keysToFetch:v20];

      if (myFullName)
      {
        firstObject = 0;
        v13 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v10 = objc_alloc_init(CNContact);
    }

    firstObject = +[NSBundle mainBundle];
    myFullName = [firstObject localizedStringForKey:@"My Calendar" value:&stru_1002133B8 table:0];
    v13 = 0;
    goto LABEL_11;
  }

  v10 = contactForSource(sourceCopy);
  myFullName = CUIKDisplayedTitleForSource();
  v12 = [modelCopy eventNotificationReferencesForIdentity:sourceCopy];
  v13 = [v12 count];

  calEmailAddresses = [v10 CalEmailAddresses];
  firstObject = [calEmailAddresses firstObject];

  if (!firstObject)
  {
    calPhoneNumbers = [v10 CalPhoneNumbers];
    firstObject = [calPhoneNumbers firstObject];
  }

  if ([firstObject hasSuffix:@"@do_not_reply"])
  {
LABEL_11:

    firstObject = 0;
  }

LABEL_12:
  v21 = [viewCopy dequeueReusableCellWithIdentifier:@"identityCell"];
  if (!v21)
  {
    v21 = [[IdentitySwitcherCell alloc] initWithStyle:0 reuseIdentifier:@"identityCell"];
  }

  [(IdentitySwitcherCell *)v21 configureWithContact:v10 displayName:myFullName address:firstObject notificationCount:v13];

  return v21;
}

- (void)prepareForReuse
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  [(EKUILabeledAvatarView *)self->_avatarView removeFromSuperview];
  [(UILabel *)self->_nameLabel removeFromSuperview];
  [(UILabel *)self->_addressLabel removeFromSuperview];
  [(UILabel *)self->_notificationCountLabel removeFromSuperview];
  constraints = self->_constraints;
  self->_constraints = 0;

  avatarView = self->_avatarView;
  self->_avatarView = 0;

  nameLabel = self->_nameLabel;
  self->_nameLabel = 0;

  addressLabel = self->_addressLabel;
  self->_addressLabel = 0;

  notificationCountLabel = self->_notificationCountLabel;
  self->_notificationCountLabel = 0;

  v8.receiver = self;
  v8.super_class = IdentitySwitcherCell;
  [(IdentitySwitcherCell *)&v8 prepareForReuse];
}

- (void)configureWithContact:(id)contact displayName:(id)name address:(id)address notificationCount:(unint64_t)count
{
  contactCopy = contact;
  nameCopy = name;
  addressCopy = address;
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  v12 = +[NSMutableArray array];
  constraints = self->_constraints;
  self->_constraints = v12;

  if (contactCopy && !self->_avatarView)
  {
    v14 = [[EKUILabeledAvatarView alloc] initWithPlacement:0 options:0];
    avatarView = self->_avatarView;
    self->_avatarView = v14;

    [(EKUILabeledAvatarView *)self->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(IdentitySwitcherCell *)self contentView];
    [contentView addSubview:self->_avatarView];
  }

  if (nameCopy && !self->_nameLabel)
  {
    v17 = objc_alloc_init(UILabel);
    nameLabel = self->_nameLabel;
    self->_nameLabel = v17;

    [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline addingSymbolicTraits:0x8000 options:0];
    v20 = [UIFont fontWithDescriptor:v19 size:0.0];
    [(UILabel *)self->_nameLabel setFont:v20];

    contentView2 = [(IdentitySwitcherCell *)self contentView];
    [contentView2 addSubview:self->_nameLabel];
  }

  addressLabel = self->_addressLabel;
  if (addressCopy && !addressLabel)
  {
    v23 = objc_alloc_init(UILabel);
    v24 = self->_addressLabel;
    self->_addressLabel = v23;

    v25 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_addressLabel setTextColor:v25];

    [(UILabel *)self->_addressLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubhead addingSymbolicTraits:0x8000 options:0];
    v27 = [UIFont fontWithDescriptor:v26 size:0.0];
    [(UILabel *)self->_addressLabel setFont:v27];

    contentView3 = [(IdentitySwitcherCell *)self contentView];
    [contentView3 addSubview:self->_addressLabel];

LABEL_15:
    goto LABEL_16;
  }

  if (!addressCopy && addressLabel)
  {
    [(UILabel *)addressLabel removeFromSuperview];
    v26 = self->_addressLabel;
    self->_addressLabel = 0;
    goto LABEL_15;
  }

LABEL_16:
  notificationCountLabel = self->_notificationCountLabel;
  if (count && !notificationCountLabel)
  {
    v30 = objc_alloc_init(UILabel);
    v31 = self->_notificationCountLabel;
    self->_notificationCountLabel = v30;

    v32 = +[UIColor tertiaryLabelColor];
    [(UILabel *)self->_notificationCountLabel setTextColor:v32];

    [(UILabel *)self->_notificationCountLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v33) = 1148846080;
    [(UILabel *)self->_notificationCountLabel setContentHuggingPriority:0 forAxis:v33];
    v34 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:0];
    v35 = [UIFont fontWithDescriptor:v34 size:0.0];
    [(UILabel *)self->_notificationCountLabel setFont:v35];

    contentView4 = [(IdentitySwitcherCell *)self contentView];
    [contentView4 addSubview:self->_notificationCountLabel];

LABEL_22:
    goto LABEL_23;
  }

  if (!count && notificationCountLabel)
  {
    [(UILabel *)notificationCountLabel removeFromSuperview];
    v34 = self->_notificationCountLabel;
    self->_notificationCountLabel = 0;
    goto LABEL_22;
  }

LABEL_23:
  [(EKUILabeledAvatarView *)self->_avatarView setContact:contactCopy];
  [(UILabel *)self->_nameLabel setText:nameCopy];
  if (addressCopy)
  {
    [(UILabel *)self->_addressLabel setText:addressCopy];
  }

  v96 = nameCopy;
  v97 = contactCopy;
  v95 = addressCopy;
  if (count)
  {
    v37 = [NSNumber numberWithUnsignedInteger:?];
    v38 = [NSNumberFormatter localizedStringFromNumber:v37 numberStyle:1];
    [(UILabel *)self->_notificationCountLabel setText:v38];
  }

  [(IdentitySwitcherCell *)self scaledValueForValue:37.0];
  v40 = v39;
  [(IdentitySwitcherCell *)self scaledValueForValue:16.0];
  v42 = v41;
  [(IdentitySwitcherCell *)self scaledValueForValue:12.0];
  v44 = v43;
  [(IdentitySwitcherCell *)self scaledValueForValue:2.0];
  v46 = v45;
  [(IdentitySwitcherCell *)self scaledValueForValue:60.0];
  v48 = v47;
  v93 = self->_constraints;
  v49 = self->_avatarView;
  contentView5 = [(IdentitySwitcherCell *)self contentView];
  v51 = [NSLayoutConstraint constraintWithItem:v49 attribute:5 relatedBy:0 toItem:contentView5 attribute:5 multiplier:1.0 constant:v42];
  v102[0] = v51;
  v52 = self->_avatarView;
  contentView6 = [(IdentitySwitcherCell *)self contentView];
  v54 = [NSLayoutConstraint constraintWithItem:v52 attribute:10 relatedBy:0 toItem:contentView6 attribute:10 multiplier:1.0 constant:0.0];
  v102[1] = v54;
  v55 = [NSLayoutConstraint constraintWithItem:self->_avatarView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v40];
  v102[2] = v55;
  v56 = [NSLayoutConstraint constraintWithItem:self->_avatarView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v40];
  v102[3] = v56;
  v57 = [NSArray arrayWithObjects:v102 count:4];
  [(NSMutableArray *)v93 addObjectsFromArray:v57];

  v58 = self->_notificationCountLabel;
  if (v58)
  {
    contentView7 = v58;
  }

  else
  {
    contentView7 = [(IdentitySwitcherCell *)self contentView];
  }

  v60 = contentView7;
  if (self->_notificationCountLabel)
  {
    v61 = 5;
  }

  else
  {
    v61 = 18;
  }

  if (self->_notificationCountLabel)
  {
    v62 = -v42;
  }

  else
  {
    v62 = 0.0;
  }

  if (self->_addressLabel)
  {
    v63 = 3;
  }

  else
  {
    v63 = 10;
  }

  v64 = 15;
  v92 = v63;
  v94 = self->_constraints;
  if (!self->_addressLabel)
  {
    v64 = 10;
  }

  v91 = v64;
  v65 = [NSLayoutConstraint constraintWithItem:self->_nameLabel attribute:5 relatedBy:0 toItem:self->_avatarView attribute:6 multiplier:1.0 constant:v44, 8];
  v101[0] = v65;
  v90 = v61;
  v66 = [NSLayoutConstraint constraintWithItem:self->_nameLabel attribute:6 relatedBy:0 toItem:v60 attribute:v61 multiplier:1.0 constant:v62];
  v101[1] = v66;
  v67 = self->_nameLabel;
  contentView8 = [(IdentitySwitcherCell *)self contentView];
  v69 = [NSLayoutConstraint constraintWithItem:v67 attribute:v92 relatedBy:0 toItem:contentView8 attribute:v91 multiplier:1.0 constant:0.0];
  v101[2] = v69;
  v70 = [NSArray arrayWithObjects:v101 count:3];
  [(NSMutableArray *)v94 addObjectsFromArray:v70];

  v71 = v60;
  v72 = self->_addressLabel;
  if (v72)
  {
    v73 = self->_constraints;
    v74 = [NSLayoutConstraint constraintWithItem:v72 attribute:5 relatedBy:0 toItem:*(&self->super.super.super.super.isa + v89) attribute:6 multiplier:1.0 constant:v44];
    v100[0] = v74;
    v75 = [NSLayoutConstraint constraintWithItem:self->_addressLabel attribute:6 relatedBy:0 toItem:v71 attribute:v90 multiplier:1.0 constant:v62];
    v100[1] = v75;
    v76 = [NSLayoutConstraint constraintWithItem:self->_addressLabel attribute:3 relatedBy:0 toItem:self->_nameLabel attribute:4 multiplier:1.0 constant:v46];
    v100[2] = v76;
    v77 = [NSArray arrayWithObjects:v100 count:3];
    [(NSMutableArray *)v73 addObjectsFromArray:v77];
  }

  v78 = self->_notificationCountLabel;
  if (v78)
  {
    v79 = self->_constraints;
    contentView9 = [(IdentitySwitcherCell *)self contentView];
    v81 = [NSLayoutConstraint constraintWithItem:v78 attribute:6 relatedBy:0 toItem:contentView9 attribute:18 multiplier:1.0 constant:0.0];
    v99[0] = v81;
    v82 = self->_notificationCountLabel;
    contentView10 = [(IdentitySwitcherCell *)self contentView];
    v84 = [NSLayoutConstraint constraintWithItem:v82 attribute:10 relatedBy:0 toItem:contentView10 attribute:10 multiplier:1.0 constant:0.0];
    v99[1] = v84;
    v85 = [NSArray arrayWithObjects:v99 count:2];
    [(NSMutableArray *)v79 addObjectsFromArray:v85];
  }

  v86 = self->_constraints;
  contentView11 = [(IdentitySwitcherCell *)self contentView];
  v88 = [NSLayoutConstraint constraintWithItem:contentView11 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:v48];
  [(NSMutableArray *)v86 addObject:v88];

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (double)scaledValueForValue:(double)value
{
  nameLabel = self->_nameLabel;
  if (nameLabel)
  {
    font = [(UILabel *)nameLabel font];
    [font _scaledValueForValue:value];
    value = v6;
  }

  return value;
}

@end