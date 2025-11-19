@interface EndpointReachabilityInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation EndpointReachabilityInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v16 = 0;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[EndpointReachabilityInputs validateAndInitializeParameters:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = handleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Parameters: %@", buf, 0xCu);
  }

  v7 = [NSArray arrayWithObjects:@"https://idiagnostics.apple.com", @"https://gs.apple.com", @"https://skl.apple.com", @"https://gg.apple.com", @"https://ig.apple.com", 0];
  v8 = [NSSet setWithObject:objc_opt_class()];
  v9 = [v4 dk_arrayFromKey:@"endpointURLs" types:v8 maxLength:0xFFFFFFFFLL defaultValue:v7 failed:&v16 validator:&stru_100008268];
  endpointURLs = self->_endpointURLs;
  self->_endpointURLs = v9;

  v11 = self->_endpointURLs;
  if (!v11 || ![(NSArray *)v11 count])
  {
    v16 = 1;
  }

  v12 = v16;
  if (!v16)
  {
    v13 = [v4 dk_numberFromKey:@"timeout" lowerBound:&off_100008650 upperBound:&off_100008668 defaultValue:&off_100008680 failed:&v16];
    timeout = self->_timeout;
    self->_timeout = v13;

    v12 = v16;
  }

  return (v12 & 1) == 0;
}

@end