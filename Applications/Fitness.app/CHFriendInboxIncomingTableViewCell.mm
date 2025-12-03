@interface CHFriendInboxIncomingTableViewCell
- (BOOL)_isVerticalCell;
- (CHFriendInboxIncomingTableViewCell)initWithFrame:(CGRect)frame;
- (CHFriendInboxIncomingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CHFriendInboxIncomingTableViewCellDelegate)delegate;
- (id)_commonConstraints;
- (id)_horizontalConstraints;
- (id)_verticalConstraints;
- (void)_acceptPressed;
- (void)_addLayoutConstraints;
- (void)_declinePressed;
- (void)_setTintColor:(id)color forButton:(id)button;
- (void)_setupCell;
- (void)setFriend:(id)friend;
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
  contentView = [(CHFriendInboxIncomingTableViewCell *)self contentView];
  [contentView addSubview:self->_insetContentView];

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

- (CHFriendInboxIncomingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CHFriendInboxIncomingTableViewCell;
  v4 = [(CHFriendInboxIncomingTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CHFriendInboxIncomingTableViewCell *)v4 _setupCell];
  }

  return v5;
}

- (CHFriendInboxIncomingTableViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHFriendInboxIncomingTableViewCell;
  v3 = [(CHFriendInboxIncomingTableViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHFriendInboxIncomingTableViewCell *)v3 _setupCell];
  }

  return v4;
}

- (void)_declinePressed
{
  delegate = [(CHFriendInboxIncomingTableViewCell *)self delegate];
  [delegate incomingTableViewCellDidTapIgnore:self];
}

- (void)_acceptPressed
{
  delegate = [(CHFriendInboxIncomingTableViewCell *)self delegate];
  [delegate incomingTableViewCellDidTapAccept:self];
}

- (void)setFriend:(id)friend
{
  objc_storeStrong(&self->_friend, friend);
  friendCopy = friend;
  fullName = [(ASFriend *)self->_friend fullName];
  [(UILabel *)self->_friendName setText:fullName];

  v7 = [CHActivitySharingAvatarProvider fetchAvatarImageForFriend:friendCopy diameter:30.0];
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
  _commonConstraints = [(CHFriendInboxIncomingTableViewCell *)self _commonConstraints];
  v4 = [_commonConstraints arrayByAddingObjectsFromArray:v6];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v4;

  [NSLayoutConstraint activateConstraints:self->_activeConstraints];
}

- (id)_commonConstraints
{
  v3 = sub_10013A92C();
  v5 = v4;
  v7 = v6;
  topAnchor = [(UIView *)self->_insetContentView topAnchor];
  contentView = [(CHFriendInboxIncomingTableViewCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v3];
  v39[0] = v35;
  leadingAnchor = [(UIView *)self->_insetContentView leadingAnchor];
  contentView2 = [(CHFriendInboxIncomingTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v5];
  v39[1] = v31;
  bottomAnchor = [(UIView *)self->_insetContentView bottomAnchor];
  contentView3 = [(CHFriendInboxIncomingTableViewCell *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v7];
  v39[2] = v27;
  trailingAnchor = [(UIView *)self->_insetContentView trailingAnchor];
  contentView4 = [(CHFriendInboxIncomingTableViewCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v7];
  v39[3] = v23;
  widthAnchor = [(UIImageView *)self->_avatarImageView widthAnchor];
  v21 = [widthAnchor constraintEqualToConstant:30.0];
  v39[4] = v21;
  heightAnchor = [(UIImageView *)self->_avatarImageView heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:30.0];
  v39[5] = v8;
  leadingAnchor3 = [(UIImageView *)self->_avatarImageView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_insetContentView leadingAnchor];
  v11 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:3.0];
  v39[6] = v11;
  leadingAnchor5 = [(UILabel *)self->_friendName leadingAnchor];
  trailingAnchor3 = [(UIImageView *)self->_avatarImageView trailingAnchor];
  v14 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:20.0];
  v39[7] = v14;
  topAnchor3 = [(UILabel *)self->_friendName topAnchor];
  topAnchor4 = [(UIView *)self->_insetContentView topAnchor];
  v17 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:5.0];
  v39[8] = v17;
  v19 = [NSArray arrayWithObjects:v39 count:9];

  return v19;
}

- (id)_verticalConstraints
{
  topAnchor = [(UIImageView *)self->_avatarImageView topAnchor];
  topAnchor2 = [(UIView *)self->_insetContentView topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v32[0] = v29;
  bottomAnchor = [(UIImageView *)self->_avatarImageView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_insetContentView bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
  v32[1] = v26;
  topAnchor3 = [(UIButton *)self->_declineButton topAnchor];
  bottomAnchor3 = [(UILabel *)self->_friendName bottomAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  v32[2] = v23;
  leadingAnchor = [(UIButton *)self->_declineButton leadingAnchor];
  leadingAnchor2 = [(UILabel *)self->_friendName leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[3] = v20;
  topAnchor4 = [(UIButton *)self->_acceptButton topAnchor];
  topAnchor5 = [(UIButton *)self->_declineButton topAnchor];
  v17 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v32[4] = v17;
  leadingAnchor3 = [(UIButton *)self->_acceptButton leadingAnchor];
  trailingAnchor = [(UIButton *)self->_declineButton trailingAnchor];
  v3 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:-5.0];
  v32[5] = v3;
  trailingAnchor2 = [(UIButton *)self->_acceptButton trailingAnchor];
  trailingAnchor3 = [(UIView *)self->_insetContentView trailingAnchor];
  v6 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-5.0];
  v32[6] = v6;
  bottomAnchor4 = [(UIButton *)self->_acceptButton bottomAnchor];
  bottomAnchor5 = [(UIButton *)self->_declineButton bottomAnchor];
  v9 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v32[7] = v9;
  widthAnchor = [(UIButton *)self->_acceptButton widthAnchor];
  widthAnchor2 = [(UIButton *)self->_declineButton widthAnchor];
  v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v32[8] = v12;
  v14 = [NSArray arrayWithObjects:v32 count:9];

  return v14;
}

- (id)_horizontalConstraints
{
  topAnchor = [(UIImageView *)self->_avatarImageView topAnchor];
  topAnchor2 = [(UIView *)self->_insetContentView topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  v26[0] = v23;
  leadingAnchor = [(UIImageView *)self->_avatarImageView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_insetContentView leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
  v26[1] = v20;
  bottomAnchor = [(UIImageView *)self->_avatarImageView bottomAnchor];
  bottomAnchor2 = [(UIImageView *)self->_avatarImageView bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[2] = v17;
  centerYAnchor = [(UIButton *)self->_declineButton centerYAnchor];
  centerYAnchor2 = [(UILabel *)self->_friendName centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v26[3] = v14;
  leadingAnchor3 = [(UIButton *)self->_acceptButton leadingAnchor];
  trailingAnchor = [(UIButton *)self->_declineButton trailingAnchor];
  v5 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:24.0];
  v26[4] = v5;
  trailingAnchor2 = [(UIButton *)self->_acceptButton trailingAnchor];
  trailingAnchor3 = [(UIView *)self->_insetContentView trailingAnchor];
  v8 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-5.0];
  v26[5] = v8;
  centerYAnchor3 = [(UIButton *)self->_acceptButton centerYAnchor];
  centerYAnchor4 = [(UILabel *)self->_friendName centerYAnchor];
  v11 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v26[6] = v11;
  v12 = [NSArray arrayWithObjects:v26 count:7];

  return v12;
}

- (void)_setTintColor:(id)color forButton:(id)button
{
  buttonCopy = button;
  colorCopy = color;
  [buttonCopy setTitleColor:colorCopy forState:0];
  v7 = [colorCopy colorWithAlphaComponent:0.3];

  [buttonCopy setTitleColor:v7 forState:1];
}

- (CHFriendInboxIncomingTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end