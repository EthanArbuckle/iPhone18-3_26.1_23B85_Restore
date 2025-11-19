@interface HSPreferenceStage
- (HSPreferenceStage)initWithUserDefaults:(id)a3 domain:(id)a4;
- (id).cxx_construct;
- (void)_loadPreferences;
- (void)_savePreferences;
- (void)_updatePrefStages;
- (void)restorePreferences;
- (void)stage:(id)a3 postedNotification:(id)a4;
@end

@implementation HSPreferenceStage

- (HSPreferenceStage)initWithUserDefaults:(id)a3 domain:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HSPreferenceStage.mm" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"defaults"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = +[NSAssertionHandler currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"HSPreferenceStage.mm" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"domain"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = HSPreferenceStage;
  v11 = [(HSStage *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_defaults, a3);
    objc_storeStrong(&v12->_domain, a4);
    v13 = v12;
  }

  return v12;
}

- (void)stage:(id)a3 postedNotification:(id)a4
{
  v5 = a4;
  HSUtil::ObjectLock::ObjectLock(v6, self);
  if (!self->_state.ignoreNotifications && [v5 isEqual:HSPreferenceChangedNotification])
  {
    [(HSPreferenceStage *)self _savePreferences];
  }

  HSUtil::ObjectLock::~ObjectLock(v6);
}

- (void)restorePreferences
{
  HSUtil::ObjectLock::ObjectLock(v3, self);
  [(HSPreferenceStage *)self _loadPreferences];
  HSUtil::ObjectLock::~ObjectLock(v3);
}

- (void)_updatePrefStages
{
  p_state = &self->_state;
  for (i = self->_state.prefStages.__table_.__first_node_.__next_; i; i = *i)
  {
    WeakRetained = objc_loadWeakRetained(i + 2);
    [WeakRetained removeStageObserver:self];
  }

  std::__hash_table<HSStage  {objcproto15HSPreferencable}* {__weak},HSUtil::ObjectHasher,std::equal_to<HSStage  {objcproto15HSPreferencable}* {__weak}>,std::allocator<HSStage  {objcproto15HSPreferencable}* {__weak}>>::clear(&p_state->prefStages);
  v9 = 0u;
  v10 = 0u;
  v11 = 1065353216;
  collectStages(&v9, self);
  for (j = v10; j; j = *j)
  {
    v7 = j[2];
    if ([v7 conformsToProtocol:&OBJC_PROTOCOL___HSPreferencable])
    {
      [v7 addStageObserver:self];
      objc_initWeak(&location, v7);
      std::__hash_table<HSStage  {objcproto15HSPreferencable}* {__weak},HSUtil::ObjectHasher,std::equal_to<HSStage  {objcproto15HSPreferencable}* {__weak}>,std::allocator<HSStage  {objcproto15HSPreferencable}* {__weak}>>::__emplace_unique_key_args<HSStage  {objcproto15HSPreferencable}* {__weak},HSStage  {objcproto15HSPreferencable}* {__weak}>(&p_state->prefStages.__table_.__bucket_list_.__ptr_, &location);
      objc_destroyWeak(&location);
    }
  }

  std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::~__hash_table(&v9);
}

- (void)_savePreferences
{
  [(HSPreferenceStage *)self _updatePrefStages];
  v20 = self;
  next = self->_state.prefStages.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v24 = next;
      WeakRetained = objc_loadWeakRetained(next + 2);
      context = objc_autoreleasePoolPush();
      v27 = [WeakRetained preferences];
      if (v27)
      {
        v26 = [WeakRetained name];
        if (v26)
        {
          v5 = [(NSUserDefaults *)v20->_defaults dictionaryForKey:v20->_domain];
          v6 = [v5 mutableCopy];

          v7 = v6;
          if (!v6)
          {
            v7 = objc_opt_new();
          }

          v21 = v7;
          v22 = [v7 objectForKeyedSubscript:v26];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = v22;
          }

          else
          {

            v8 = 0;
          }

          v23 = v8;
          v11 = [v8 mutableCopy];
          if (!v11)
          {
            v11 = objc_opt_new();
          }

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = v27;
          v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v13)
          {
            v14 = *v29;
            do
            {
              v15 = 0;
              do
              {
                if (*v29 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v28 + 1) + 8 * v15);
                v17 = v16[1];
                if (v17)
                {
                  v18 = [WeakRetained preferenceValueForKey:v16[1]];
                  [v11 setObject:v18 forKeyedSubscript:v17];
                }

                else
                {
                  v19 = basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPreferenceStage.mm", v41);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    v34 = "[HSPreferenceStage _savePreferences]";
                    v35 = 2080;
                    v36 = v19;
                    v37 = 2048;
                    v38 = 97;
                    v39 = 2080;
                    v40 = "key";
                    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", buf, 0x2Au);
                  }
                }

                v15 = v15 + 1;
              }

              while (v13 != v15);
              v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
            }

            while (v13);
          }

          [v21 setObject:v11 forKeyedSubscript:v26];
          [(NSUserDefaults *)v20->_defaults setObject:v21 forKey:v20->_domain];
        }

        else
        {
          v10 = basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPreferenceStage.mm", v41);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v34 = "[HSPreferenceStage _savePreferences]";
            v35 = 2080;
            v36 = v10;
            v37 = 2048;
            v38 = 85;
            v39 = 2080;
            v40 = "stageName";
            _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", buf, 0x2Au);
          }
        }
      }

      else
      {
        v9 = basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPreferenceStage.mm", v41);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v34 = "[HSPreferenceStage _savePreferences]";
          v35 = 2080;
          v36 = v9;
          v37 = 2048;
          v38 = 82;
          v39 = 2080;
          v40 = "prefs";
          _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", buf, 0x2Au);
        }
      }

      objc_autoreleasePoolPop(context);
      next = *v24;
    }

    while (*v24);
  }
}

- (void)_loadPreferences
{
  p_state = &self->_state;
  ++self->_state.ignoreNotifications;
  v16 = &self->_state;
  [(HSPreferenceStage *)self _updatePrefStages];
  next = p_state->prefStages.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v20 = next;
      WeakRetained = objc_loadWeakRetained(next + 2);
      context = objc_autoreleasePoolPush();
      v22 = [WeakRetained preferences];
      if (v22)
      {
        v19 = [WeakRetained name];
        if (v19)
        {
          v18 = [(NSUserDefaults *)self->_defaults dictionaryForKey:self->_domain];
          v5 = [v18 objectForKeyedSubscript:v19];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v5 = 0;
          }

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v6 = v22;
          v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v7)
          {
            v8 = *v24;
            do
            {
              for (i = 0; i != v7; i = i + 1)
              {
                if (*v24 != v8)
                {
                  objc_enumerationMutation(v6);
                }

                v10 = *(*(&v23 + 1) + 8 * i);
                v11 = v10[1];
                if (v11)
                {
                  v12 = [v5 objectForKeyedSubscript:v11];
                  [WeakRetained setPreferenceValue:v12 forKey:v10[1]];
                }

                else
                {
                  v13 = basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPreferenceStage.mm", v36);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    v29 = "[HSPreferenceStage _loadPreferences]";
                    v30 = 2080;
                    v31 = v13;
                    v32 = 2048;
                    v33 = 126;
                    v34 = 2080;
                    v35 = "key";
                    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", buf, 0x2Au);
                  }
                }
              }

              v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
            }

            while (v7);
          }
        }

        else
        {
          v15 = basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPreferenceStage.mm", v36);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v29 = "[HSPreferenceStage _loadPreferences]";
            v30 = 2080;
            v31 = v15;
            v32 = 2048;
            v33 = 119;
            v34 = 2080;
            v35 = "stageName";
            _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", buf, 0x2Au);
          }
        }
      }

      else
      {
        v14 = basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPreferenceStage.mm", v36);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v29 = "[HSPreferenceStage _loadPreferences]";
          v30 = 2080;
          v31 = v14;
          v32 = 2048;
          v33 = 116;
          v34 = 2080;
          v35 = "prefs";
          _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", buf, 0x2Au);
        }
      }

      objc_autoreleasePoolPop(context);
      next = *v20;
    }

    while (*v20);
  }

  --v16->ignoreNotifications;
}

- (id).cxx_construct
{
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 44) = 1065353216;
  return self;
}

@end