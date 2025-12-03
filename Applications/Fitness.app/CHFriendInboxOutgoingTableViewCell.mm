@interface CHFriendInboxOutgoingTableViewCell
- (CHFriendInboxOutgoingTableViewCell)initWithFrame:(CGRect)frame;
- (CHFriendInboxOutgoingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)defaultContentConfiguration;
- (void)_setupCell;
- (void)prepareForReuse;
- (void)setDetailText:(id)text;
- (void)setFriend:(id)friend;
@end

@implementation CHFriendInboxOutgoingTableViewCell

- (void)_setupCell
{
  v3 = +[UIColor secondarySystemBackgroundColor];
  [(CHFriendInboxOutgoingTableViewCell *)self setBackgroundColor:v3];

  defaultContentConfiguration = [(CHFriendInboxOutgoingTableViewCell *)self defaultContentConfiguration];
  currentContentConfiguration = self->_currentContentConfiguration;
  self->_currentContentConfiguration = defaultContentConfiguration;

  v6 = self->_currentContentConfiguration;

  [(CHFriendInboxOutgoingTableViewCell *)self setContentConfiguration:v6];
}

- (CHFriendInboxOutgoingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CHFriendInboxOutgoingTableViewCell;
  v4 = [(CHFriendInboxOutgoingTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CHFriendInboxOutgoingTableViewCell *)v4 _setupCell];
  }

  return v5;
}

- (CHFriendInboxOutgoingTableViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHFriendInboxOutgoingTableViewCell;
  v3 = [(CHFriendInboxOutgoingTableViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHFriendInboxOutgoingTableViewCell *)v3 _setupCell];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CHFriendInboxOutgoingTableViewCell;
  [(CHFriendInboxOutgoingTableViewCell *)&v3 prepareForReuse];
  [(CHFriendInboxOutgoingTableViewCell *)self _setupCell];
}

- (id)defaultContentConfiguration
{
  v9.receiver = self;
  v9.super_class = CHFriendInboxOutgoingTableViewCell;
  defaultContentConfiguration = [(CHFriendInboxOutgoingTableViewCell *)&v9 defaultContentConfiguration];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setLineBreakMode:4];

  [defaultContentConfiguration setPrefersSideBySideTextAndSecondaryText:1];
  v4 = +[UIColor secondaryLabelColor];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:v4];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  secondaryTextProperties2 = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties2 setFont:v6];

  return defaultContentConfiguration;
}

- (void)setFriend:(id)friend
{
  objc_storeStrong(&self->_friend, friend);
  friendCopy = friend;
  fullName = [friendCopy fullName];
  [(UIListContentConfiguration *)self->_currentContentConfiguration setText:fullName];

  v6 = [CHActivitySharingAvatarProvider fetchAvatarImageForFriend:friendCopy diameter:30.0];
  [(UIListContentConfiguration *)self->_currentContentConfiguration setImage:v6];

  [(CHFriendInboxOutgoingTableViewCell *)self setContentConfiguration:self->_currentContentConfiguration];
}

- (void)setDetailText:(id)text
{
  [(UIListContentConfiguration *)self->_currentContentConfiguration setSecondaryText:text];
  currentContentConfiguration = self->_currentContentConfiguration;

  [(CHFriendInboxOutgoingTableViewCell *)self setContentConfiguration:currentContentConfiguration];
}

@end