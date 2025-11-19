@interface KerberosViewController
- (KerberosViewController)initWithCoder:(id)a3;
- (KerberosViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)resetUI;
@end

@implementation KerberosViewController

- (KerberosViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = KerberosViewController;
  v8 = [(KerberosBaseViewController *)&v16 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = +[NSOperationQueue mainQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000B024;
    v13[3] = &unk_1000147E0;
    objc_copyWeak(&v14, &location);
    v11 = [v9 addObserverForName:@"com.apple.KerberosExtension.requestFinished" object:0 queue:v10 usingBlock:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (KerberosViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = KerberosViewController;
  return [(KerberosBaseViewController *)&v4 initWithCoder:a3];
}

- (void)resetUI
{
  if (qword_10001A7E0 != -1)
  {
    sub_10000BB88();
  }

  v3 = qword_10001A7E8;
  if (os_log_type_enabled(qword_10001A7E8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BB9C(v3, self);
  }

  v4 = [(KerberosBaseViewController *)self loginViewController];
  [v4 resetUI];

  [(KerberosBaseViewController *)self setLoginViewController:0];
  [(KerberosBaseViewController *)self setPasswordViewController:0];
}

@end