@interface HotmailRemoteAccountCreationController
+ (OS_os_log)log;
- (void)beginAccountCreation;
@end

@implementation HotmailRemoteAccountCreationController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6C6CC;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D65F0 != -1)
  {
    dispatch_once(&qword_D65F0, block);
  }

  v2 = qword_D65E8;

  return v2;
}

- (void)beginAccountCreation
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v3 = qword_D65F8;
  v16 = qword_D65F8;
  if (!qword_D65F8)
  {
    location[0] = _NSConcreteStackBlock;
    location[1] = 3221225472;
    location[2] = sub_6CD38;
    location[3] = &unk_B9B40;
    location[4] = &v13;
    sub_6CD38(location);
    v3 = v14[3];
  }

  v4 = v3;
  _Block_object_dispose(&v13, 8);
  v5 = [v3 alloc];
  v6 = +[HotmailAccount displayedAccountTypeString];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6C964;
  v11[3] = &unk_B9AF0;
  v11[4] = self;
  LOBYTE(v8) = 1;
  v7 = [v5 initWithAccount:0 accountStore:0 authURI:0 accountType:3 userName:0 accountDescription:v6 isFirstTimeSetup:v8 presentationBlock:v11];

  objc_initWeak(location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6C9EC;
  v9[3] = &unk_B9B18;
  objc_copyWeak(&v10, location);
  [v7 setCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(location);
}

@end