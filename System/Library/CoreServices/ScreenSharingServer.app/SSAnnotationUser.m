@interface SSAnnotationUser
+ (id)userWithDisplayName:(id)a3;
- (SSAnnotationUser)initWithDisplayName:(id)a3;
@end

@implementation SSAnnotationUser

+ (id)userWithDisplayName:(id)a3
{
  v3 = a3;
  v4 = [[SSAnnotationUser alloc] initWithDisplayName:v3];

  return v4;
}

- (SSAnnotationUser)initWithDisplayName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SSAnnotationUser;
  v5 = [(SSAnnotationUser *)&v10 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];
    [(SSAnnotationUser *)v5 setUserID:v7];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SSAnnotationUser *)v5 userID];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "userID = %@", buf, 0xCu);
    }

    [(SSAnnotationUser *)v5 setDisplayName:v4];
  }

  return v5;
}

@end