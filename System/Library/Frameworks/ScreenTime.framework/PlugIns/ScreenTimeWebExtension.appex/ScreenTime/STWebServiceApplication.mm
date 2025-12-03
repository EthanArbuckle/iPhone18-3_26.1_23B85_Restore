@interface STWebServiceApplication
- (BOOL)_shouldAllowKeyboardArbiter;
- (STWebServiceApplication)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
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
  keyboardMonitor = [(STWebServiceApplication *)self keyboardMonitor];
  needsKeyboard = [keyboardMonitor needsKeyboard];

  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (needsKeyboard)
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

  return needsKeyboard;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "KVOContextSTWebServiceApplication")
  {
    if ([path isEqualToString:@"needsKeyboard"])
    {
      v11 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
      v12 = +[NSNull null];

      if (v11 == v12)
      {

        v11 = 0;
      }

      v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v14 = +[NSNull null];

      if (v13 == v14)
      {

        v13 = 0;
      }

      bOOLValue = [v11 BOOLValue];
      if (bOOLValue != [v13 BOOLValue])
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
    [(STWebServiceApplication *)&v16 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
  }
}

@end