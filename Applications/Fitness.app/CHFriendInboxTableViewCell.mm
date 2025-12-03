@interface CHFriendInboxTableViewCell
- (CHFriendInboxTableViewCell)initWithFrame:(CGRect)frame;
- (CHFriendInboxTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupCell;
- (void)setFriend:(id)friend snapshot:(id)snapshot animated:(BOOL)animated;
@end

@implementation CHFriendInboxTableViewCell

- (void)_setupCell
{
  v3 = +[UIColor secondarySystemBackgroundColor];
  [(CHFriendInboxTableViewCell *)self setBackgroundColor:v3];

  v4 = +[UIColor labelColor];
  textLabel = [(CHFriendInboxTableViewCell *)self textLabel];
  [textLabel setTextColor:v4];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  textLabel2 = [(CHFriendInboxTableViewCell *)self textLabel];
  [textLabel2 setFont:v6];

  [(CHFriendInboxTableViewCell *)self setAccessoryType:1];
}

- (CHFriendInboxTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CHFriendInboxTableViewCell;
  v4 = [(CHFriendInboxTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CHFriendInboxTableViewCell *)v4 _setupCell];
  }

  return v5;
}

- (CHFriendInboxTableViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHFriendInboxTableViewCell;
  v3 = [(CHFriendInboxTableViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHFriendInboxTableViewCell *)v3 _setupCell];
  }

  return v4;
}

- (void)setFriend:(id)friend snapshot:(id)snapshot animated:(BOOL)animated
{
  friendCopy = friend;
  fullName = [friendCopy fullName];
  textLabel = [(CHFriendInboxTableViewCell *)self textLabel];
  [textLabel setText:fullName];

  v9 = [CHActivitySharingAvatarProvider fetchAvatarImageForFriend:friendCopy diameter:30.0];

  imageView = [(CHFriendInboxTableViewCell *)self imageView];
  [imageView setImage:v9];

  [(CHFriendInboxTableViewCell *)self setNeedsLayout];
}

@end