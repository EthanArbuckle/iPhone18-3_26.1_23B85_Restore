@interface InstallAttributionManager
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
@end

@implementation InstallAttributionManager

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v8 = a6;
  v9 = a7;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v8 URL];
    v12 = [v11 absoluteString];
    v13 = 138543362;
    v14 = v12;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Redirects not allowed/handled. URL: %{public}@", &v13, 0xCu);
  }

  v9[2](v9, 0);
}

@end