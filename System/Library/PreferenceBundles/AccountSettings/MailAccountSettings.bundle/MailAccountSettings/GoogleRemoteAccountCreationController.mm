@interface GoogleRemoteAccountCreationController
+ (OS_os_log)log;
- (void)beginAccountCreation;
@end

@implementation GoogleRemoteAccountCreationController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6C130;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D65E0 != -1)
  {
    dispatch_once(&qword_D65E0, block);
  }

  v2 = qword_D65D8;

  return v2;
}

- (void)beginAccountCreation
{
  objc_initWeak(&location, self);
  v3 = [SLGoogleAuthController alloc];
  v4 = +[GmailAccount displayedAccountTypeString];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6C318;
  v8[3] = &unk_B8FC0;
  v8[4] = self;
  v5 = [v3 initWithAccountDescription:v4 presentationBlock:v8];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6C3E4;
  v6[3] = &unk_B8FE8;
  objc_copyWeak(&v7, &location);
  [v5 setCompletion:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

@end