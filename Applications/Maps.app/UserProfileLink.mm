@interface UserProfileLink
- (UserProfileLink)initWithTitle:(id)a3 icon:(id)a4;
- (id)description;
@end

@implementation UserProfileLink

- (id)description
{
  v3 = [(UserProfileLink *)self userProfileLinkType];
  v4 = [(UserProfileLink *)self title];
  v5 = [(UserProfileLink *)self subtitle];
  v6 = [NSString stringWithFormat:@"UserProfileLink <%p> type:%ld title:%@ subtitle:%@", self, v3, v4, v5];

  return v6;
}

- (UserProfileLink)initWithTitle:(id)a3 icon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = UserProfileLink;
  v8 = [(UserProfileLink *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_icon, a4);
  }

  return v8;
}

@end