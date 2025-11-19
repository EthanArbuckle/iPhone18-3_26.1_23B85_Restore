@interface ICSCarPlayServicesController
- (void)acquireAssertionWithActivation:(BOOL)a3;
- (void)invalidateAssertion;
- (void)setAllowsBanners:(BOOL)a3;
@end

@implementation ICSCarPlayServicesController

- (void)invalidateAssertion
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICSCarPlayServicesController *)self assertion];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating CarPlay assertion: %@", &v6, 0xCu);
  }

  v5 = [(ICSCarPlayServicesController *)self assertion];
  [v5 invalidate];

  [(ICSCarPlayServicesController *)self setAssertion:0];
}

- (void)acquireAssertionWithActivation:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICSCarPlayServicesController *)self assertion];
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(ICSCarPlayServicesController *)self assertion];

  if (!v7)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Acquiring and activating CarPlay assertion", &v13, 2u);
    }

    v9 = [[CRSInCallAssertion alloc] initWithReason:@"incoming call"];
    [(ICSCarPlayServicesController *)self setAssertion:v9];
  }

  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(ICSCarPlayServicesController *)self assertion];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@", &v13, 0xCu);
  }

  if (v6)
  {
    v12 = [(ICSCarPlayServicesController *)self assertion];
    [v12 activate];
  }
}

- (void)setAllowsBanners:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting banners allowed %d on CarPlay assertion", v7, 8u);
  }

  v6 = [(ICSCarPlayServicesController *)self assertion];
  [v6 setAllowsBanners:v3];
}

@end