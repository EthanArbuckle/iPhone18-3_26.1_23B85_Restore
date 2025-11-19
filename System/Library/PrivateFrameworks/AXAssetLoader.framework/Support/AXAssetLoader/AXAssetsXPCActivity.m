@interface AXAssetsXPCActivity
- (AXAssetsXPCActivity)initWithActivity:(id)a3;
- (BOOL)deferIfNeeded;
- (BOOL)shouldDefer;
- (BOOL)updateState:(int64_t)a3;
- (id)_debugNameForXPCActivityState:(int64_t)a3;
- (id)description;
- (int64_t)state;
@end

@implementation AXAssetsXPCActivity

- (AXAssetsXPCActivity)initWithActivity:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXAssetsXPCActivity;
  v5 = [(AXAssetsXPCActivity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXAssetsXPCActivity *)v5 setActivity:v4];
  }

  return v6;
}

- (id)description
{
  v3 = [(AXAssetsXPCActivity *)self _debugNameForXPCActivityState:[(AXAssetsXPCActivity *)self state]];
  v4 = [(AXAssetsXPCActivity *)self activity];
  v5 = [(AXAssetsXPCActivity *)self activity];
  v6 = [NSString stringWithFormat:@"AXAssetsXPCActivity<%p> [State: %@] [xpc_activity_t<%p> %@]", self, v3, v4, v5];

  return v6;
}

- (int64_t)state
{
  v2 = [(AXAssetsXPCActivity *)self activity];
  state = xpc_activity_get_state(v2);

  return state;
}

- (BOOL)updateState:(int64_t)a3
{
  v5 = [(AXAssetsXPCActivity *)self state];
  v6 = [(AXAssetsXPCActivity *)self activity];
  v7 = xpc_activity_set_state(v6, a3);

  v8 = AXLogAssetDaemon();
  v9 = v8;
  if (!v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v10 = [(AXAssetsXPCActivity *)self _debugNameForXPCActivityState:v5];
    v11 = [(AXAssetsXPCActivity *)self _debugNameForXPCActivityState:a3];
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = self;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "XPC Activity state change failed: '%@' -> '%@'. %@", &v13, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AXAssetsXPCActivity *)self _debugNameForXPCActivityState:v5];
    v11 = [(AXAssetsXPCActivity *)self _debugNameForXPCActivityState:a3];
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "XPC Activity state change succeeded '%@' -> '%@'. %@", &v13, 0x20u);
LABEL_4:
  }

LABEL_6:

  return v7;
}

- (BOOL)shouldDefer
{
  v3 = [(AXAssetsXPCActivity *)self activity];
  should_defer = xpc_activity_should_defer(v3);

  v5 = AXLogAssetDaemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2048;
    v10 = should_defer;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asking if we should defer activity: %@. Defer: %ld", &v7, 0x16u);
  }

  return should_defer;
}

- (BOOL)deferIfNeeded
{
  v3 = [(AXAssetsXPCActivity *)self shouldDefer];
  if (v3)
  {

    LOBYTE(v3) = [(AXAssetsXPCActivity *)self updateState:3];
  }

  return v3;
}

- (id)_debugNameForXPCActivityState:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100018820 + a3);
  }
}

@end