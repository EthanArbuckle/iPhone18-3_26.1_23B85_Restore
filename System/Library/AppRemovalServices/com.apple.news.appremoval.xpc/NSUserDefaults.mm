@interface NSUserDefaults
+ (id)nanoNewsSyncDefaults;
- (void)nn_synchronizeKeys:(id)a3;
@end

@implementation NSUserDefaults

+ (id)nanoNewsSyncDefaults
{
  if (qword_10000CD78 != -1)
  {
    sub_100003508();
  }

  v3 = qword_10000CD70;

  return v3;
}

- (void)nn_synchronizeKeys:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = qword_10000CD80;
  v11 = qword_10000CD80;
  if (!qword_10000CD80)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100001CF8;
    v7[3] = &unk_1000082C8;
    v7[4] = &v8;
    sub_100001CF8(v7);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  v6 = objc_opt_new();
  [v6 synchronizeUserDefaultsDomain:@"com.apple.nanonews.sync" keys:v3];
}

@end