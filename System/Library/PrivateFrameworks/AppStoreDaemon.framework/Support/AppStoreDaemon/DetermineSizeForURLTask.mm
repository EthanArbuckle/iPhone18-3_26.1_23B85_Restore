@interface DetermineSizeForURLTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation DetermineSizeForURLTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v6 = [NSURLSession sessionWithConfiguration:v5 delegate:0 delegateQueue:0];
  v7 = *(&self->_logKey + 2);
  *(&self->_logKey + 2) = v6;

  v8 = [NSMutableURLRequest requestWithURL:*(&self->_session + 2)];
  [v8 setHTTPMethod:@"HEAD"];
  [v8 setCachePolicy:1];
  [v8 setTimeoutInterval:30.0];
  v9 = sub_1002D6988();
  [v8 setHTTPUserAgent:v9];

  v10 = *(&self->_logKey + 2);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1002E6F8C;
  v19 = &unk_10051E2A8;
  selfCopy = self;
  v11 = handlerCopy;
  v21 = v11;
  v12 = [v10 dataTaskWithRequest:v8 completionHandler:&v16];
  v13 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(&self->super._finished + 1);
    v15 = *(&self->_session + 2);
    *buf = 138412802;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Running HEAD operation to get size for URL: %{public}@ task: %{public}@", buf, 0x20u);
  }

  [v12 resume];
}

@end