@interface ATXXPCActivity
- (ATXXPCActivity)initWithActivity:(id)activity name:(id)name;
- (ATXXPCActivity)initWithActivity:(id)activity name:(id)name logHandle:(id)handle;
- (BOOL)didDefer;
- (void)didDefer;
@end

@implementation ATXXPCActivity

- (ATXXPCActivity)initWithActivity:(id)activity name:(id)name
{
  nameCopy = name;
  activityCopy = activity;
  v8 = __atxlog_handle_default();
  v9 = [(ATXXPCActivity *)self initWithActivity:activityCopy name:nameCopy logHandle:v8];

  return v9;
}

- (ATXXPCActivity)initWithActivity:(id)activity name:(id)name logHandle:(id)handle
{
  activityCopy = activity;
  nameCopy = name;
  handleCopy = handle;
  v15.receiver = self;
  v15.super_class = ATXXPCActivity;
  v12 = [(ATXXPCActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activity, activity);
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v13->_handle, handle);
  }

  return v13;
}

- (BOOL)didDefer
{
  v10 = *MEMORY[0x1E69E9840];
  should_defer = xpc_activity_should_defer(self->_activity);
  if (should_defer)
  {
    v4 = xpc_activity_set_state(self->_activity, 3);
    handle = self->_handle;
    if (v4)
    {
      if (os_log_type_enabled(self->_handle, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        v8 = 138412290;
        v9 = name;
        _os_log_impl(&dword_1BF549000, handle, OS_LOG_TYPE_DEFAULT, "Abandoning activity %@ since we were asked to defer", &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(self->_handle, OS_LOG_TYPE_ERROR))
    {
      [(ATXXPCActivity *)self didDefer];
    }
  }

  return should_defer;
}

- (void)didDefer
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(self + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Abandoning activity %@, but failed to properly defer", &v3, 0xCu);
}

@end