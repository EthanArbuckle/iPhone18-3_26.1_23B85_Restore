@interface IdentitySwitcherCell
+ (double)cellHeight;
+ (id)cellForSource:(id)a3 withModel:(id)a4 inTableView:(id)a5;
- (double)scaledValueForValue:(double)a3;
- (void)configureWithContact:(id)a3 displayName:(id)a4 address:(id)a5 notificationCount:(unint64_t)a6;
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

+ (id)cellForSource:(id)a3 withModel:(id)a4 inTableView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v17 = +[CalContactsProvider defaultProvider];
    v18 = [v17 unifiedMeContact];

    if (v18)
    {
      v19 = +[CalContactsProvider defaultProvider];
      v11 = [v19 myFullName];

      v20 = +[ContactsUtils defaultContactKeysToFetch];
      v10 = [ContactsUtils contactForContact:v18 keysToFetch:v20];

      if (v11)
      {
        v15 = 0;
        v13 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v10 = objc_alloc_init(CNContact);
    }

    v15 = +[NSBundle mainBundle];
    v11 = [v15 localizedStringForKey:@"My Calendar" value:&stru_1002133B8 table:0];
    v13 = 0;
    goto LABEL_11;
  }

  v10 = contactForSource(v7);
  v11 = CUIKDisplayedTitleForSource();
  v12 = [v8 eventNotificationReferencesForIdentity:v7];
  v13 = [v12 count];

  v14 = [v10 CalEmailAddresses];
  v15 = [v14 firstObject];

  if (!v15)
  {
    v16 = [v10 CalPhoneNumbers];
    v15 = [v16 firstObject];
  }

  if ([v15 hasSuffix:@"@do_not_reply"])
  {
LABEL_11:

    v15 = 0;
  }

LABEL_12:
  v21 = [v9 dequeueReusableCellWithIdentifier:@"identityCell"];
  if (!v21)
  {
    v21 = [[IdentitySwitcherCell alloc] initWithStyle:0 reuseIdentifier:@"identityCell"];
  }

  [(IdentitySwitcherCell *)v21 configureWithContact:v10 displayName:v11 address:v15 notificationCount:v13];

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

- (void)configureWithContact:(id)a3 displayName:(id)a4 address:(id)a5 notificationCount:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  v12 = +[NSMutableArray array];
  constraints = self->_constraints;
  self->_constraints = v12;

  if (v9 && !self->_avatarView)
  {
    v14 = [[EKUILabeledAvatarView alloc] initWithPlacement:0 options:0];
    avatarView = self->_avatarView;
    self->_avatarView = v14;

    [(EKUILabeledAvatarView *)self->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(IdentitySwitcherCell *)self contentView];
    [v16 addSubview:self->_avatarView];
  }

  if (v10 && !self->_nameLabel)
  {
    v17 = objc_alloc_init(UILabel);
    nameLabel = self->_nameLabel;
    self->_nameLabel = v17;

    [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline addingSymbolicTraits:0x8000 options:0];
    v20 = [UIFont fontWithDescriptor:v19 size:0.0];
    [(UILabel *)self->_nameLabel setFont:v20];

    v21 = [(IdentitySwitcherCell *)self contentView];
    [v21 addSubview:self->_nameLabel];
  }

  addressLabel = self->_addressLabel;
  if (v11 && !addressLabel)
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

    v28 = [(IdentitySwitcherCell *)self contentView];
    [v28 addSubview:self->_addressLabel];

LABEL_15:
    goto LABEL_16;
  }

  if (!v11 && addressLabel)
  {
    [(UILabel *)addressLabel removeFromSuperview];
    v26 = self->_addressLabel;
    self->_addressLabel = 0;
    goto LABEL_15;
  }

LABEL_16:
  notificationCountLabel = self->_notificationCountLabel;
  if (a6 && !notificationCountLabel)
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

    v36 = [(IdentitySwitcherCell *)self contentView];
    [v36 addSubview:self->_notificationCountLabel];

LABEL_22:
    goto LABEL_23;
  }

  if (!a6 && notificationCountLabel)
  {
    [(UILabel *)notificationCountLabel removeFromSuperview];
    v34 = self->_notificationCountLabel;
    self->_notificationCountLabel = 0;
    goto LABEL_22;
  }

LABEL_23:
  [(EKUILabeledAvatarView *)self->_avatarView setContact:v9];
  [(UILabel *)self->_nameLabel setText:v10];
  if (v11)
  {
    [(UILabel *)self->_addressLabel setText:v11];
  }

  v96 = v10;
  v97 = v9;
  v95 = v11;
  if (a6)
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
  v50 = [(IdentitySwitcherCell *)self contentView];
  v51 = [NSLayoutConstraint constraintWithItem:v49 attribute:5 relatedBy:0 toItem:v50 attribute:5 multiplier:1.0 constant:v42];
  v102[0] = v51;
  v52 = self->_avatarView;
  v53 = [(IdentitySwitcherCell *)self contentView];
  v54 = [NSLayoutConstraint constraintWithItem:v52 attribute:10 relatedBy:0 toItem:v53 attribute:10 multiplier:1.0 constant:0.0];
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
    v59 = v58;
  }

  else
  {
    v59 = [(IdentitySwitcherCell *)self contentView];
  }

  v60 = v59;
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
  v68 = [(IdentitySwitcherCell *)self contentView];
  v69 = [NSLayoutConstraint constraintWithItem:v67 attribute:v92 relatedBy:0 toItem:v68 attribute:v91 multiplier:1.0 constant:0.0];
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
    v80 = [(IdentitySwitcherCell *)self contentView];
    v81 = [NSLayoutConstraint constraintWithItem:v78 attribute:6 relatedBy:0 toItem:v80 attribute:18 multiplier:1.0 constant:0.0];
    v99[0] = v81;
    v82 = self->_notificationCountLabel;
    v83 = [(IdentitySwitcherCell *)self contentView];
    v84 = [NSLayoutConstraint constraintWithItem:v82 attribute:10 relatedBy:0 toItem:v83 attribute:10 multiplier:1.0 constant:0.0];
    v99[1] = v84;
    v85 = [NSArray arrayWithObjects:v99 count:2];
    [(NSMutableArray *)v79 addObjectsFromArray:v85];
  }

  v86 = self->_constraints;
  v87 = [(IdentitySwitcherCell *)self contentView];
  v88 = [NSLayoutConstraint constraintWithItem:v87 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:v48];
  [(NSMutableArray *)v86 addObject:v88];

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (double)scaledValueForValue:(double)a3
{
  nameLabel = self->_nameLabel;
  if (nameLabel)
  {
    v5 = [(UILabel *)nameLabel font];
    [v5 _scaledValueForValue:a3];
    a3 = v6;
  }

  return a3;
}

@end