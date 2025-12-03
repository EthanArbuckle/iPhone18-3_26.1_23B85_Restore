@interface AKURLDataTask
- (id)description;
- (void)_completeWithError:(id)error;
@end

@implementation AKURLDataTask

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p, _underlylingTask: %@>", v5, self, self->_underlyingTask];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

- (void)_completeWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  [(AKURLDataTask *)selfCopy setCanceledOrCompleted:1];
  v10 = 0;
  if (location[0])
  {
    v3 = MEMORY[0x1E69E5928](0);
  }

  else
  {
    receivedData = [(AKURLDataTask *)selfCopy receivedData];
    v10 = 1;
    v3 = MEMORY[0x1E69E5928](receivedData);
  }

  v12 = v3;
  if (v10)
  {
    MEMORY[0x1E69E5920](receivedData);
  }

  v7 = 0;
  if (location[0])
  {
    v4 = MEMORY[0x1E69E5928](0);
  }

  else
  {
    response = [(NSURLSessionDataTask *)selfCopy->_underlyingTask response];
    v7 = 1;
    v4 = MEMORY[0x1E69E5928](response);
  }

  v9 = v4;
  if (v7)
  {
    MEMORY[0x1E69E5920](response);
  }

  v6 = MEMORY[0x193B165F0](selfCopy->_completionHandler);
  if (location[0])
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_66_8_64(v15, selfCopy, location[0]);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "%{public}@ completed with error:%@", v15, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (v6)[2](v6, v12, v9, location[0]);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end