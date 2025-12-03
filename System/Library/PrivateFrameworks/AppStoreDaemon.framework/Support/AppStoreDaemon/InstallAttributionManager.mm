@interface InstallAttributionManager
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
@end

@implementation InstallAttributionManager

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [requestCopy URL];
    absoluteString = [v11 absoluteString];
    v13 = 138543362;
    v14 = absoluteString;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Redirects not allowed/handled. URL: %{public}@", &v13, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0);
}

@end