@interface AOLRemoteAccountCreationController
+ (OS_os_log)log;
- (void)beginAccountCreation;
@end

@implementation AOLRemoteAccountCreationController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20F34;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6460 != -1)
  {
    dispatch_once(&qword_D6460, block);
  }

  v2 = qword_D6458;

  return v2;
}

- (void)beginAccountCreation
{
  v3 = [SLAOLWebAuthController alloc];
  v4 = +[AOLAccount displayedAccountTypeString];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_21114;
  v9[3] = &unk_B9010;
  v9[4] = self;
  v5 = [v3 initWithAccountDescription:v4 presentationBlock:v9];

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2119C;
  v6[3] = &unk_B8FE8;
  objc_copyWeak(&v7, &location);
  [v5 setCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

@end