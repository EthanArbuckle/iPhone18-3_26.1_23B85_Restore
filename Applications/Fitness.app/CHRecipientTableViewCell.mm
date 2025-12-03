@interface CHRecipientTableViewCell
- (CHRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_autocompleteSharedContactStore;
- (id)_emptyContact;
- (void)_requireIntrinsicSizeForView:(id)view;
- (void)layoutSubviews;
- (void)setRecipient:(id)recipient;
@end

@implementation CHRecipientTableViewCell

- (CHRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = CHRecipientTableViewCell;
  v4 = [(CHRecipientTableViewCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    _autocompleteSharedContactStore = [(CHRecipientTableViewCell *)v4 _autocompleteSharedContactStore];
    v7 = [CNAvatarViewControllerSettings settingsWithContactStore:_autocompleteSharedContactStore threeDTouchEnabled:0];
    v8 = [[CNAvatarViewController alloc] initWithSettings:v7];
    avatarViewController = v5->_avatarViewController;
    v5->_avatarViewController = v8;

    view = [(CNAvatarViewController *)v5->_avatarViewController view];
    [(CHRecipientTableViewCell *)v5 _requireIntrinsicSizeForView:view];

    containerView = [(CHRecipientTableViewCell *)v5 containerView];
    view2 = [(CNAvatarViewController *)v5->_avatarViewController view];
    [containerView insertArrangedSubview:view2 atIndex:0];
  }

  return v5;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CHRecipientTableViewCell;
  [(CHRecipientTableViewCell *)&v19 layoutSubviews];
  textLabel = [(CHRecipientTableViewCell *)self textLabel];
  [textLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  textLabel2 = [(CHRecipientTableViewCell *)self textLabel];
  [textLabel2 setFrame:{65.0, v5, v7, v9}];

  detailTextLabel = [(CHRecipientTableViewCell *)self detailTextLabel];
  [detailTextLabel frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;

  detailTextLabel2 = [(CHRecipientTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setFrame:{65.0, v13, v15, v17}];
}

- (void)setRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = recipientCopy;
  if (self->_recipient != recipientCopy)
  {
    displayString = [(CNComposeRecipient *)recipientCopy displayString];
    textLabel = [(CHRecipientTableViewCell *)self textLabel];
    [textLabel setText:displayString];

    v8 = +[UIColor labelColor];
    textLabel2 = [(CHRecipientTableViewCell *)self textLabel];
    [textLabel2 setTextColor:v8];

    textLabel3 = [(CHRecipientTableViewCell *)self textLabel];
    [textLabel3 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];

    displayString2 = [(CNComposeRecipient *)v5 displayString];
    address = [(CNComposeRecipient *)v5 address];
    v13 = [displayString2 isEqualToString:address];

    if ((v13 & 1) == 0)
    {
      address2 = [(CNComposeRecipient *)v5 address];
      detailTextLabel = [(CHRecipientTableViewCell *)self detailTextLabel];
      [detailTextLabel setText:address2];

      v16 = +[UIColor secondaryLabelColor];
      detailTextLabel2 = [(CHRecipientTableViewCell *)self detailTextLabel];
      [detailTextLabel2 setTextColor:v16];

      detailTextLabel3 = [(CHRecipientTableViewCell *)self detailTextLabel];
      [detailTextLabel3 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];
    }

    contact = [(CNComposeRecipient *)v5 contact];
    v20 = contact;
    if (contact)
    {
      _emptyContact = contact;
    }

    else
    {
      _emptyContact = [(CHRecipientTableViewCell *)self _emptyContact];
    }

    v22 = _emptyContact;

    v24 = v22;
    v23 = [NSArray arrayWithObjects:&v24 count:1];
    [(CNAvatarViewController *)self->_avatarViewController setContacts:v23];
  }
}

- (void)_requireIntrinsicSizeForView:(id)view
{
  viewCopy = view;
  LODWORD(v3) = 1148846080;
  [viewCopy setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [viewCopy setContentCompressionResistancePriority:0 forAxis:v4];
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