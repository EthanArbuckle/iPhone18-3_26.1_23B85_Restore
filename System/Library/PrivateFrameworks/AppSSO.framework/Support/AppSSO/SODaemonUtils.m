@interface SODaemonUtils
+ (BOOL)isAppManagedWithBundleIdentifier:(id)a3;
+ (BOOL)isInternalBuild;
@end

@implementation SODaemonUtils

+ (BOOL)isAppManagedWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = qword_100015DC0;
  v14 = qword_100015DC0;
  if (!qword_100015DC0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000221C;
    v16 = &unk_100010390;
    v17 = &v11;
    sub_10000221C(buf);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 sharedConnection];
  v7 = [v6 isAppManaged:v3];

  v8 = sub_100001EE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v7)
    {
      v9 = @"YES";
    }

    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ is managed: %{public}@", buf, 0x16u);
  }

  return v7;
}

+ (BOOL)isInternalBuild
{
  v2 = sub_100002114();

  return [v2 isInternalBuild];
}

@end