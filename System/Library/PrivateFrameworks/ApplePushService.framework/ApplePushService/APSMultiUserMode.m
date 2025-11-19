@interface APSMultiUserMode
+ (BOOL)_getIsCurrentlyLoggedIn;
+ (BOOL)_getMultiUserMode;
+ (id)sharedInstance;
- (APSMultiUserMode)initWithIsMultiUserMode:(BOOL)a3 loggedInUser:(BOOL)a4;
@end

@implementation APSMultiUserMode

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000236DC;
  block[3] = &unk_1001863D0;
  block[4] = a1;
  if (qword_1001BF6C0 != -1)
  {
    dispatch_once(&qword_1001BF6C0, block);
  }

  v2 = qword_1001BF6C8;

  return v2;
}

+ (BOOL)_getMultiUserMode
{
  v2 = [CUTWeakLinkClass() sharedManager];
  v3 = [v2 isMultiUser];

  return v3;
}

+ (BOOL)_getIsCurrentlyLoggedIn
{
  v2 = [CUTWeakLinkClass() sharedManager];
  v3 = [v2 currentUser];
  v4 = [v3 isLoginUser];

  return v4 ^ 1;
}

- (APSMultiUserMode)initWithIsMultiUserMode:(BOOL)a3 loggedInUser:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = APSMultiUserMode;
  result = [(APSMultiUserMode *)&v7 init];
  if (result)
  {
    result->_isMultiUser = a3;
    result->_isLoggedInUser = a4;
  }

  return result;
}

@end