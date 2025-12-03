@interface CRLAppRemovalService
- (BOOL)p_removeAllUserDefaultsWithError:(id *)error;
- (void)removeAppWithReply:(id)reply;
@end

@implementation CRLAppRemovalService

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "About to remove all user defaults.", buf, 2u);
  }

  v10 = 0;
  v5 = [(CRLAppRemovalService *)self p_removeAllUserDefaultsWithError:&v10];
  v6 = v10;
  v7 = v6;
  v8 = 0;
  if ((v5 & 1) == 0)
  {
    v8 = v6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Finished removing all user defaults.", v9, 2u);
  }

  replyCopy[2](replyCopy, v8);
}

- (BOOL)p_removeAllUserDefaultsWithError:(id *)error
{
  v4 = [NSUserDefaults alloc];
  v5 = CRLAppBundleIdentifier();
  v6 = [v4 initWithSuiteName:v5];

  if (!v6)
  {
    v9 = [NSError errorWithDomain:@"com.apple.freeform.appremoval.errorDomain" code:1 userInfo:0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      [CRLAppRemovalService p_removeAllUserDefaultsWithError:v9];
      if (error)
      {
        goto LABEL_16;
      }
    }

    else if (error)
    {
LABEL_16:
      v17 = v9;
      synchronize = 0;
      *error = v9;
      goto LABEL_19;
    }

    synchronize = 0;
    goto LABEL_19;
  }

  dictionaryRepresentation = [v6 dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = allKeys;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v6 removeObjectForKey:{*(*(&v19 + 1) + 8 * i), v19}];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  synchronize = [v6 synchronize];
  if ((synchronize & 1) == 0)
  {
    v15 = [NSError errorWithDomain:@"com.apple.freeform.appremoval.errorDomain" code:2 userInfo:0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      [CRLAppRemovalService p_removeAllUserDefaultsWithError:v15];
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
LABEL_13:

      goto LABEL_19;
    }

    v16 = v15;
    *error = v15;
    goto LABEL_13;
  }

LABEL_19:

  return synchronize;
}

- (void)p_removeAllUserDefaultsWithError:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [a1 domain];
  [a1 code];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Error synchronizing removed user defaults: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v5, 0x2Au);
}

- (void)p_removeAllUserDefaultsWithError:(void *)a1 .cold.2(void *a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [a1 domain];
  [a1 code];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Error getting user defaults to remove: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v5, 0x2Au);
}

@end