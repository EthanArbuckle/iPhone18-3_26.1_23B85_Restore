@interface RequestProxy
- (void)cancelWithErrorHandler:(id)a3;
- (void)startWithErrorHandler:(id)a3;
@end

@implementation RequestProxy

- (void)cancelWithErrorHandler:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = objc_opt_class();
    v5 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Cancelling ... ", buf, 0xCu);
  }

  if (self)
  {
    request = self->_request;
  }

  else
  {
    request = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002319A4;
  v8[3] = &unk_10051B548;
  v9 = v4;
  v7 = v4;
  [(RequestController *)request cancelUsingProxy:self withErrorHandler:v8];
}

- (void)startWithErrorHandler:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = objc_opt_class();
    v5 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Starting ... ", buf, 0xCu);
  }

  if (self)
  {
    request = self->_request;
  }

  else
  {
    request = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100231AFC;
  v8[3] = &unk_10051B548;
  v9 = v4;
  v7 = v4;
  [(RequestController *)request startUsingProxy:self withErrorHandler:v8];
}

@end