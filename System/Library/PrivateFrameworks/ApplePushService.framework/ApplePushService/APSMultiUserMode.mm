@interface APSMultiUserMode
+ (BOOL)_getIsCurrentlyLoggedIn;
+ (BOOL)_getMultiUserMode;
+ (id)sharedInstance;
- (APSMultiUserMode)initWithIsMultiUserMode:(BOOL)mode loggedInUser:(BOOL)user;
@end

@implementation APSMultiUserMode

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000236DC;
  block[3] = &unk_1001863D0;
  block[4] = self;
  if (qword_1001BF6C0 != -1)
  {
    dispatch_once(&qword_1001BF6C0, block);
  }

  v2 = qword_1001BF6C8;

  return v2;
}

+ (BOOL)_getMultiUserMode
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedManager];
  isMultiUser = [cUTWeakLinkClass() isMultiUser];

  return isMultiUser;
}

+ (BOOL)_getIsCurrentlyLoggedIn
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedManager];
  currentUser = [cUTWeakLinkClass() currentUser];
  isLoginUser = [currentUser isLoginUser];

  return isLoginUser ^ 1;
}

- (APSMultiUserMode)initWithIsMultiUserMode:(BOOL)mode loggedInUser:(BOOL)user
{
  v7.receiver = self;
  v7.super_class = APSMultiUserMode;
  result = [(APSMultiUserMode *)&v7 init];
  if (result)
  {
    result->_isMultiUser = mode;
    result->_isLoggedInUser = user;
  }

  return result;
}

@end