@interface APSCourierUserTokenStorage
- (APSCourierUserTokenStorage)initWithUser:(id)user;
@end

@implementation APSCourierUserTokenStorage

- (APSCourierUserTokenStorage)initWithUser:(id)user
{
  userCopy = user;
  v9.receiver = self;
  v9.super_class = APSCourierUserTokenStorage;
  v6 = [(APSCourierUserTokenStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_user, user);
  }

  return v7;
}

@end