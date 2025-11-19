@interface NEPolicy
- (NEPolicy)init;
- (NEPolicy)initWithOrder:(unsigned int)a3 result:(id)a4 conditions:(id)a5;
@end

@implementation NEPolicy

- (NEPolicy)initWithOrder:(unsigned int)a3 result:(id)a4 conditions:(id)a5
{
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = NEPolicy;
  v11 = [(NEPolicy *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_order = a3;
    objc_storeStrong(&v11->_result, a4);
    objc_storeStrong(&v12->_conditions, a5);
    v13 = v12;
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "Failed to init NEPolicy", v16, 2u);
    }
  }

  return v12;
}

- (NEPolicy)init
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Calling init on NEPolicy is not valid", v5, 2u);
  }

  return 0;
}

@end