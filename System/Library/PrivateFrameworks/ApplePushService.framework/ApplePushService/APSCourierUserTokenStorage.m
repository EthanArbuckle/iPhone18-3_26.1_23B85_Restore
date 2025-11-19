@interface APSCourierUserTokenStorage
- (APSCourierUserTokenStorage)initWithUser:(id)a3;
@end

@implementation APSCourierUserTokenStorage

- (APSCourierUserTokenStorage)initWithUser:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APSCourierUserTokenStorage;
  v6 = [(APSCourierUserTokenStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_user, a3);
  }

  return v7;
}

@end