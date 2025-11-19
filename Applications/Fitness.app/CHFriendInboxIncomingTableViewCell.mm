@interface CHFriendInboxIncomingTableViewCell
- (BOOL)_isVerticalCell;
- (CHFriendInboxIncomingTableViewCell)initWithFrame:(CGRect)a3;
- (CHFriendInboxIncomingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CHFriendInboxIncomingTableViewCellDelegate)delegate;
- (id)_commonConstraints;
- (id)_horizontalConstraints;
- (id)_verticalConstraints;
- (void)_acceptPressed;
- (void)_addLayoutConstraints;
- (void)_declinePressed;
- (void)_setTintColor:(id)a3 forButton:(id)a4;
- (void)_setupCell;
- (void)setFriend:(id)a3;
@end

@implementation CHFriendInboxIncomingTableViewCell

- (void)_setupCell
{
  v3 = +[UIColor systemBackgroundColor];
  [(CHFriendInboxIncomingTableViewCell *)self setBackgroundColor:v3];

  [(CHFriendInboxIncomingTableViewCell *)self setAccessoryType:0];
  v4 = objc_alloc_init(UIView);
  insetContentView = self->_insetContentView;
  self->_insetContentView = v4;

  [(UIView *)self->_insetContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(CHFriendInboxIncomingTableViewCell *)self contentView];
  [v6 addSubview:self->_insetContentView];

  v7 = objc_alloc_init(UIImageView);
  avatarImageView = self->_avatarImageView;
  self->_avatarImageView = v7;

  [(UIImageView *)self->_avatarImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_insetContentView addSubview:self->_avatarImageView];
  v9 = objc_alloc_init(UILabel);
  friendName = self->_friendName;
  self->_friendName = v9;

  [(UILabel *)self->_friendName setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_insetContentView addSubview:self->_friendName];
  v11 = objc_alloc_init(UIButton);
  declineButton = self->_declineButton;
  self->_declineButton = v11;

  [(UIButton *)self->_declineButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = self->_declineButton;
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"SHARING_INVITE_DECLINE" value:&stru_1008680E8 table:@"Localizable"];
  [(UIButton *)v13 setTitle:v15 forState:0];

  v16 = self->_declineButton;
  v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UIButton *)v16 _setFont:v17];

  [(UIButton *)self->_declineButton addTarget:self action:"_highlighted" forControlEvents:4095];
  [(UIButton *)self->_declineButton addTarget:self action:"_declinePressed" forControlEvents:64];
  [(UIView *)self->_insetContentView addSubview:self->_declineButton];
  v18 = objc_alloc_init(UIButton);
  acceptButton = self->_acceptButton;
  self->_acceptButton = v18;

  [(UIButton *)self->_acceptButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = self->_acceptButton;
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"SHARING_INVITE_ACCEPT" value:&stru_1008680E8 table:@"Localizable"];
  [(UIButton *)v20 setTitle:v22 forState:0];

  v23 = self->_acceptButton;
  v24 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UIButton *)v23 _setFont:v24];

  [(UIButton *)self->_acceptButton addTarget:self action:"_acceptPressed" forControlEvents:64];
  [(UIButton *)self->_acceptButton addTarget:self action:"_highlighted" forControlEvents:4095];
  v25 = self->_insetContentView;
  v26 = self->_acceptButton;

  [(UIView *)v25 addSubview:v26];
}

- (CHFriendInboxIncomingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CHFriendInboxIncomingTableViewCell;
  v4 = [(CHFriendInboxIncomingTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CHFriendInboxIncomingTableViewCell *)v4 _setupCell];
  }

  return v5;
}

- (CHFriendInboxIncomingTableViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CHFriendInboxIncomingTableViewCell;
  v3 = [(CHFriendInboxIncomingTableViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHFriendInboxIncomingTableViewCell *)v3 _setupCell];
  }

  return v4;
}

- (void)_declinePressed
{
  v3 = [(CHFriendInboxIncomingTableViewCell *)self delegate];
  [v3 incomingTableViewCellDidTapIgnore:self];
}

- (void)_acceptPressed
{
  v3 = [(CHFriendInboxIncomingTableViewCell *)self delegate];
  [v3 incomingTableViewCellDidTapAccept:self];
}

- (void)setFriend:(id)a3
{
  objc_storeStrong(&self->_friend, a3);
  v5 = a3;
  v6 = [(ASFriend *)self->_friend fullName];
  [(UILabel *)self->_friendName setText:v6];

  v7 = [CHActivitySharingAvatarProvider fetchAvatarImageForFriend:v5 diameter:30.0];
  [(UIImageView *)self->_avatarImageView setImage:v7];

  [(CHFriendInboxIncomingTableViewCell *)self _addLayoutConstraints];

  [(CHFriendInboxIncomingTableViewCell *)self setNeedsLayout];
}

- (BOOL)_isVerticalCell
{
  sub_10013A92C();
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_friendName systemLayoutSizeFittingSize:1.79769313e308, 1.79769313e308];
  v8 = v7;
  [(UIButton *)self->_declineButton systemLayoutSizeFittingSize:1.79769313e308, 1.79769313e308];
  v10 = v9;
  [(UIButton *)self->_acceptButton systemLayoutSizeFittingSize:1.79769313e308, 1.79769313e308];
  v12 = v11;
  [(UIImageView *)self->_avatarImageView systemLayoutSizeFittingSize:1.79769313e308, 1.79769313e308];
  v14 = v6 + v12 + v10 + v4 + 16.0 + v13 + 3.0 + 20.0 + 20.0 + 16.0;
  v15 = +[UIScreen mainScreen];
  [v15 bounds];
  v17 = v16 - v14;

  return v8 > v17;
}

- (void)_addLayoutConstraints
{
  if (self->_activeConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  if ([(CHFriendInboxIncomingTableViewCell *)self _isVerticalCell])
  {
    [(CHFriendInboxIncomingTableViewCell *)self _verticalConstraints];
  }

  else
  {
    [(CHFriendInboxIncomingTableViewCell *)self _horizontalConstraints];
  }
  v6 = ;
  v3 = [(CHFriendInboxIncomingTableViewCell *)self _commonConstraints];
  v4 = [v3 arrayByAddingObjectsFromArray:v6];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v4;

  [NSLayoutConstraint activateConstraints:self->_activeConstraints];
}

- (id)_commonConstraints
{
  v3 = sub_10013A92C();
  v5 = v4;
  v7 = v6;
  v37 = [(UIView *)self->_insetContentView topAnchor];
  v38 = [(CHFriendInboxIncomingTableViewCell *)self contentView];
  v36 = [v38 topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:v3];
  v39[0] = v35;
  v33 = [(UIView *)self->_insetContentView leadingAnchor];
  v34 = [(CHFriendInboxIncomingTableViewCell *)self contentView];
  v32 = [v34 leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32 constant:v5];
  v39[1] = v31;
  v29 = [(UIView *)self->_insetContentView bottomAnchor];
  v30 = [(CHFriendInboxIncomingTableViewCell *)self contentView];
  v28 = [v30 bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 constant:v7];
  v39[2] = v27;
  v25 = [(UIView *)self->_insetContentView trailingAnchor];
  v26 = [(CHFriendInboxIncomingTableViewCell *)self contentView];
  v24 = [v26 trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:v7];
  v39[3] = v23;
  v22 = [(UIImageView *)self->_avatarImageView widthAnchor];
  v21 = [v22 constraintEqualToConstant:30.0];
  v39[4] = v21;
  v20 = [(UIImageView *)self->_avatarImageView heightAnchor];
  v8 = [v20 constraintEqualToConstant:30.0];
  v39[5] = v8;
  v9 = [(UIImageView *)self->_avatarImageView leadingAnchor];
  v10 = [(UIView *)self->_insetContentView leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:3.0];
  v39[6] = v11;
  v12 = [(UILabel *)self->_friendName leadingAnchor];
  v13 = [(UIImageView *)self->_avatarImageView trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:20.0];
  v39[7] = v14;
  v15 = [(UILabel *)self->_friendName topAnchor];
  v16 = [(UIView *)self->_insetContentView topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:5.0];
  v39[8] = v17;
  v19 = [NSArray arrayWithObjects:v39 count:9];

  return v19;
}

- (id)_verticalConstraints
{
  v31 = [(UIImageView *)self->_avatarImageView topAnchor];
  v30 = [(UIView *)self->_insetContentView topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:20.0];
  v32[0] = v29;
  v28 = [(UIImageView *)self->_avatarImageView bottomAnchor];
  v27 = [(UIView *)self->_insetContentView bottomAnchor];
  v26 = [v28 constraintEqualToAnchor:v27 constant:-20.0];
  v32[1] = v26;
  v25 = [(UIButton *)self->_declineButton topAnchor];
  v24 = [(UILabel *)self->_friendName bottomAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v32[2] = v23;
  v22 = [(UIButton *)self->_declineButton leadingAnchor];
  v21 = [(UILabel *)self->_friendName leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v32[3] = v20;
  v19 = [(UIButton *)self->_acceptButton topAnchor];
  v18 = [(UIButton *)self->_declineButton topAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v32[4] = v17;
  v16 = [(UIButton *)self->_acceptButton leadingAnchor];
  v15 = [(UIButton *)self->_declineButton trailingAnchor];
  v3 = [v16 constraintEqualToAnchor:v15 constant:-5.0];
  v32[5] = v3;
  v4 = [(UIButton *)self->_acceptButton trailingAnchor];
  v5 = [(UIView *)self->_insetContentView trailingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:-5.0];
  v32[6] = v6;
  v7 = [(UIButton *)self->_acceptButton bottomAnchor];
  v8 = [(UIButton *)self->_declineButton bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v32[7] = v9;
  v10 = [(UIButton *)self->_acceptButton widthAnchor];
  v11 = [(UIButton *)self->_declineButton widthAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v32[8] = v12;
  v14 = [NSArray arrayWithObjects:v32 count:9];

  return v14;
}

- (id)_horizontalConstraints
{
  v25 = [(UIImageView *)self->_avatarImageView topAnchor];
  v24 = [(UIView *)self->_insetContentView topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:5.0];
  v26[0] = v23;
  v22 = [(UIImageView *)self->_avatarImageView leadingAnchor];
  v21 = [(UIView *)self->_insetContentView leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:5.0];
  v26[1] = v20;
  v19 = [(UIImageView *)self->_avatarImageView bottomAnchor];
  v18 = [(UIImageView *)self->_avatarImageView bottomAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v26[2] = v17;
  v16 = [(UIButton *)self->_declineButton centerYAnchor];
  v15 = [(UILabel *)self->_friendName centerYAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v26[3] = v14;
  v3 = [(UIButton *)self->_acceptButton leadingAnchor];
  v4 = [(UIButton *)self->_declineButton trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:24.0];
  v26[4] = v5;
  v6 = [(UIButton *)self->_acceptButton trailingAnchor];
  v7 = [(UIView *)self->_insetContentView trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-5.0];
  v26[5] = v8;
  v9 = [(UIButton *)self->_acceptButton centerYAnchor];
  v10 = [(UILabel *)self->_friendName centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v26[6] = v11;
  v12 = [NSArray arrayWithObjects:v26 count:7];

  return v12;
}

- (void)_setTintColor:(id)a3 forButton:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 setTitleColor:v6 forState:0];
  v7 = [v6 colorWithAlphaComponent:0.3];

  [v5 setTitleColor:v7 forState:1];
}

- (CHFriendInboxIncomingTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end