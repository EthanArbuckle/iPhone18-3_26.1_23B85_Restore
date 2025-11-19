@interface CHFriendInboxTableViewCell
- (CHFriendInboxTableViewCell)initWithFrame:(CGRect)a3;
- (CHFriendInboxTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupCell;
- (void)setFriend:(id)a3 snapshot:(id)a4 animated:(BOOL)a5;
@end

@implementation CHFriendInboxTableViewCell

- (void)_setupCell
{
  v3 = +[UIColor secondarySystemBackgroundColor];
  [(CHFriendInboxTableViewCell *)self setBackgroundColor:v3];

  v4 = +[UIColor labelColor];
  v5 = [(CHFriendInboxTableViewCell *)self textLabel];
  [v5 setTextColor:v4];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v7 = [(CHFriendInboxTableViewCell *)self textLabel];
  [v7 setFont:v6];

  [(CHFriendInboxTableViewCell *)self setAccessoryType:1];
}

- (CHFriendInboxTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CHFriendInboxTableViewCell;
  v4 = [(CHFriendInboxTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CHFriendInboxTableViewCell *)v4 _setupCell];
  }

  return v5;
}

- (CHFriendInboxTableViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CHFriendInboxTableViewCell;
  v3 = [(CHFriendInboxTableViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHFriendInboxTableViewCell *)v3 _setupCell];
  }

  return v4;
}

- (void)setFriend:(id)a3 snapshot:(id)a4 animated:(BOOL)a5
{
  v6 = a3;
  v7 = [v6 fullName];
  v8 = [(CHFriendInboxTableViewCell *)self textLabel];
  [v8 setText:v7];

  v9 = [CHActivitySharingAvatarProvider fetchAvatarImageForFriend:v6 diameter:30.0];

  v10 = [(CHFriendInboxTableViewCell *)self imageView];
  [v10 setImage:v9];

  [(CHFriendInboxTableViewCell *)self setNeedsLayout];
}

@end