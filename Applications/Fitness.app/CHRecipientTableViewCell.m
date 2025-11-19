@interface CHRecipientTableViewCell
- (CHRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_autocompleteSharedContactStore;
- (id)_emptyContact;
- (void)_requireIntrinsicSizeForView:(id)a3;
- (void)layoutSubviews;
- (void)setRecipient:(id)a3;
@end

@implementation CHRecipientTableViewCell

- (CHRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = CHRecipientTableViewCell;
  v4 = [(CHRecipientTableViewCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CHRecipientTableViewCell *)v4 _autocompleteSharedContactStore];
    v7 = [CNAvatarViewControllerSettings settingsWithContactStore:v6 threeDTouchEnabled:0];
    v8 = [[CNAvatarViewController alloc] initWithSettings:v7];
    avatarViewController = v5->_avatarViewController;
    v5->_avatarViewController = v8;

    v10 = [(CNAvatarViewController *)v5->_avatarViewController view];
    [(CHRecipientTableViewCell *)v5 _requireIntrinsicSizeForView:v10];

    v11 = [(CHRecipientTableViewCell *)v5 containerView];
    v12 = [(CNAvatarViewController *)v5->_avatarViewController view];
    [v11 insertArrangedSubview:v12 atIndex:0];
  }

  return v5;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CHRecipientTableViewCell;
  [(CHRecipientTableViewCell *)&v19 layoutSubviews];
  v3 = [(CHRecipientTableViewCell *)self textLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [(CHRecipientTableViewCell *)self textLabel];
  [v10 setFrame:{65.0, v5, v7, v9}];

  v11 = [(CHRecipientTableViewCell *)self detailTextLabel];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(CHRecipientTableViewCell *)self detailTextLabel];
  [v18 setFrame:{65.0, v13, v15, v17}];
}

- (void)setRecipient:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_recipient != v4)
  {
    v6 = [(CNComposeRecipient *)v4 displayString];
    v7 = [(CHRecipientTableViewCell *)self textLabel];
    [v7 setText:v6];

    v8 = +[UIColor labelColor];
    v9 = [(CHRecipientTableViewCell *)self textLabel];
    [v9 setTextColor:v8];

    v10 = [(CHRecipientTableViewCell *)self textLabel];
    [v10 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];

    v11 = [(CNComposeRecipient *)v5 displayString];
    v12 = [(CNComposeRecipient *)v5 address];
    v13 = [v11 isEqualToString:v12];

    if ((v13 & 1) == 0)
    {
      v14 = [(CNComposeRecipient *)v5 address];
      v15 = [(CHRecipientTableViewCell *)self detailTextLabel];
      [v15 setText:v14];

      v16 = +[UIColor secondaryLabelColor];
      v17 = [(CHRecipientTableViewCell *)self detailTextLabel];
      [v17 setTextColor:v16];

      v18 = [(CHRecipientTableViewCell *)self detailTextLabel];
      [v18 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];
    }

    v19 = [(CNComposeRecipient *)v5 contact];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [(CHRecipientTableViewCell *)self _emptyContact];
    }

    v22 = v21;

    v24 = v22;
    v23 = [NSArray arrayWithObjects:&v24 count:1];
    [(CNAvatarViewController *)self->_avatarViewController setContacts:v23];
  }
}

- (void)_requireIntrinsicSizeForView:(id)a3
{
  v5 = a3;
  LODWORD(v3) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v4];
}

- (id)_autocompleteSharedContactStore
{
  if (qword_1008F9B48 != -1)
  {
    sub_10069CB94();
  }

  v3 = qword_1008F9B40;

  return v3;
}

- (id)_emptyContact
{
  if (qword_1008F9B58 != -1)
  {
    sub_10069CBA8();
  }

  v3 = qword_1008F9B50;

  return v3;
}

@end