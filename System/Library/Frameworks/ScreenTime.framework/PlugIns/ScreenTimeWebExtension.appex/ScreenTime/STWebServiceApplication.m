@interface STWebServiceApplication
- (BOOL)_shouldAllowKeyboardArbiter;
- (STWebServiceApplication)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation STWebServiceApplication

- (STWebServiceApplication)init
{
  v6.receiver = self;
  v6.super_class = STWebServiceApplication;
  v2 = [(STWebServiceApplication *)&v6 init];
  v3 = objc_opt_new();
  keyboardMonitor = v2->_keyboardMonitor;
  v2->_keyboardMonitor = v3;

  [(STKeyboardMonitor *)v2->_keyboardMonitor addObserver:v2 forKeyPath:@"needsKeyboard" options:3 context:"KVOContextSTWebServiceApplication"];
  return v2;
}

- (void)dealloc
{
  [(STKeyboardMonitor *)self->_keyboardMonitor removeObserver:self forKeyPath:@"needsKeyboard" context:"KVOContextSTWebServiceApplication"];
  v3.receiver = self;
  v3.super_class = STWebServiceApplication;
  [(STWebServiceApplication *)&v3 dealloc];
}

- (BOOL)_shouldAllowKeyboardArbiter
{
  v2 = [(STWebServiceApplication *)self keyboardMonitor];
  v3 = [v2 needsKeyboard];

  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      v9 = 0;
      v5 = "Allowing keyboard arbiter";
      v6 = &v9;
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v8 = 0;
    v5 = "Denying keyboard arbiter";
    v6 = &v8;
    goto LABEL_6;
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "KVOContextSTWebServiceApplication")
  {
    if ([a3 isEqualToString:@"needsKeyboard"])
    {
      v11 = [v10 objectForKeyedSubscript:NSKeyValueChangeOldKey];
      v12 = +[NSNull null];

      if (v11 == v12)
      {

        v11 = 0;
      }

      v13 = [v10 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v14 = +[NSNull null];

      if (v13 == v14)
      {

        v13 = 0;
      }

      v15 = [v11 BOOLValue];
      if (v15 != [v13 BOOLValue])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Reloading keyboard arbiter state", buf, 2u);
        }

        [(STWebServiceApplication *)self _reloadKeyboardArbiterState];
      }
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = STWebServiceApplication;
    [(STWebServiceApplication *)&v16 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

@end