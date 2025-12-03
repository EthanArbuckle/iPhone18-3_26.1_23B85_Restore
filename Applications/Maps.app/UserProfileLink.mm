@interface UserProfileLink
- (UserProfileLink)initWithTitle:(id)title icon:(id)icon;
- (id)description;
@end

@implementation UserProfileLink

- (id)description
{
  userProfileLinkType = [(UserProfileLink *)self userProfileLinkType];
  title = [(UserProfileLink *)self title];
  subtitle = [(UserProfileLink *)self subtitle];
  v6 = [NSString stringWithFormat:@"UserProfileLink <%p> type:%ld title:%@ subtitle:%@", self, userProfileLinkType, title, subtitle];

  return v6;
}

- (UserProfileLink)initWithTitle:(id)title icon:(id)icon
{
  titleCopy = title;
  iconCopy = icon;
  v12.receiver = self;
  v12.super_class = UserProfileLink;
  v8 = [(UserProfileLink *)&v12 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_icon, icon);
  }

  return v8;
}

@end