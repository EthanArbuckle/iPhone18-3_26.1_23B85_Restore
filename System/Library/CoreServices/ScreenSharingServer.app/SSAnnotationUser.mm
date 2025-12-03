@interface SSAnnotationUser
+ (id)userWithDisplayName:(id)name;
- (SSAnnotationUser)initWithDisplayName:(id)name;
@end

@implementation SSAnnotationUser

+ (id)userWithDisplayName:(id)name
{
  nameCopy = name;
  v4 = [[SSAnnotationUser alloc] initWithDisplayName:nameCopy];

  return v4;
}

- (SSAnnotationUser)initWithDisplayName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = SSAnnotationUser;
  v5 = [(SSAnnotationUser *)&v10 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];
    [(SSAnnotationUser *)v5 setUserID:uUIDString];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      userID = [(SSAnnotationUser *)v5 userID];
      *buf = 138412290;
      v12 = userID;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "userID = %@", buf, 0xCu);
    }

    [(SSAnnotationUser *)v5 setDisplayName:nameCopy];
  }

  return v5;
}

@end