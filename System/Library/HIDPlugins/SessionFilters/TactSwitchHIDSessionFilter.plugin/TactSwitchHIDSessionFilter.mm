id MTLoggingTactSwitchHIDSessionFilter()
{
  if (MTLoggingTactSwitchHIDSessionFilter_onceToken != -1)
  {
    MTLoggingTactSwitchHIDSessionFilter_cold_1();
  }

  v1 = MTLoggingTactSwitchHIDSessionFilter___logObj;

  return v1;
}

tation TactSwitchHIDSessionFilter

- (TactSwitchHIDSessionFilter)initWithSession:(id)a3
{
  v10.receiver = self;
  v10.super_class = TactSwitchHIDSessionFilter;
  v3 = [(TactSwitchHIDSessionFilter *)&v10 init];
  if (v3)
  {
    v4 = MTLoggingTactSwitchHIDSessionFilter();
    log = v3->_log;
    v3->_log = v4;

    v6 = objc_opt_new();
    services = v3->_services;
    v3->_services = v6;

    v8 = v3;
  }

  return v3;
}

- (id)propertyForKey:(id)a3
{
  if ([a3 isEqualToString:@"SessionFilterDebug"])
  {
    return &off_42A0;
  }

  else
  {
    return 0;
  }
}

- (id)filterEvent:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 3 && -[NSMutableDictionary count](self->_services, "count"))
  {
    v8 = [v7 propertyForKey:@"Hidden"];
    if ([v8 BOOLValue])
    {
      v9 = v6;
    }

    else
    {
      v10 = [v6 integerValueForField:196608];
      v11 = [v6 integerValueForField:196609];
      v12 = v11 == 33 && v10 == 144;
      services = self->_services;
      if (v12)
      {
        v14 = 4278190182;
      }

      else
      {
        v14 = v11 | (v10 << 16);
      }

      v15 = [NSNumber numberWithUnsignedInt:v14];
      v16 = [(NSMutableDictionary *)services objectForKeyedSubscript:v15];

      if (v16)
      {
        v17 = [v6 integerValueForField:196610];
        v18 = @"SwitchPressedTimestamp";
        if (!v17)
        {
          v18 = @"SwitchReleasedTimestamp";
        }

        v19 = v18;
        v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 timestamp]);
        v21 = [v16 setProperty:v20 forKey:v19];

        if (v21)
        {

          v6 = 0;
        }
      }

      v9 = v6;
    }
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (void)serviceNotification:(id)a3 added:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [v6 propertyForKey:@"NeedsTactSwitch"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 BOOLValue])
    {
      v9 = [v7 propertyForKey:@"PrimaryUsagePage"];
      v10 = [v7 propertyForKey:@"PrimaryUsage"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v12 = log;
          *buf = 67109634;
          v33 = [v9 unsignedIntValue];
          v34 = 1024;
          v35 = [v10 unsignedIntValue];
          v36 = 2114;
          v37 = v7;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Found service that needs tact switch with usage pair 0x%04X,0x%04X: %{public}@", buf, 0x18u);
        }

        services = self->_services;
        v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 unsignedIntValue] | (objc_msgSend(v9, "unsignedIntValue") << 16));
        [(NSMutableDictionary *)services setObject:v7 forKeyedSubscript:v14];
      }

      else
      {
        v26 = self->_log;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [TactSwitchHIDSessionFilter serviceNotification:v7 added:v26];
        }
      }
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = self->_services;
    v16 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
LABEL_11:
      v19 = 0;
      while (1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        v21 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v20, v27];

        if (v21 == v7)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v17)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      v22 = v20;

      if (!v22)
      {
        goto LABEL_26;
      }

      [(NSMutableDictionary *)self->_services removeObjectForKey:v22];
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = [(NSMutableDictionary *)v22 unsignedIntValue];
        *buf = 67109120;
        v33 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Removed service with usage pair 0x%08X", buf, 8u);
      }
    }

    else
    {
LABEL_17:
      v22 = v15;
    }
  }

LABEL_26:
}

- (void)serviceNotification:(uint64_t)a1 added:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Service needs tact switch but doesn't have primary usage pair: %{public}@", &v2, 0xCu);
}

@end