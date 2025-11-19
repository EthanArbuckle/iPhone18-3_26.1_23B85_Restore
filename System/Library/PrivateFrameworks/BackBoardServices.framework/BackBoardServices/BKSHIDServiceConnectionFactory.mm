@interface BKSHIDServiceConnectionFactory
+ (id)sharedInstance;
- (id)clientConnectionForServiceWithName:(id)a3;
- (id)clientConnectionForServiceWithName:(id)a3 isNonLaunching:(BOOL *)a4;
- (id)clientConnectionForServiceWithName:(id)a3 multiplexer:(id)a4;
- (id)clientConnectionForServiceWithName:(void *)a3 multiplexer:(_BYTE *)a4 isNonLaunching:;
@end

@implementation BKSHIDServiceConnectionFactory

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken_7901 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7901, &__block_literal_global_7902);
  }

  v0 = sharedInstance___sharedInstance;

  return v0;
}

void __48__BKSHIDServiceConnectionFactory_sharedInstance__block_invoke()
{
  v0 = [BKSHIDServiceConnectionFactory alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = BKSHIDServiceConnectionFactory;
    v0 = objc_msgSendSuper2(&v2, sel_init);
  }

  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

- (id)clientConnectionForServiceWithName:(id)a3 isNonLaunching:(BOOL *)a4
{
  v6 = MEMORY[0x1E698F4E0];
  v7 = a3;
  v8 = [v6 defaultMultiplexer];
  v9 = [(BKSHIDServiceConnectionFactory *)self clientConnectionForServiceWithName:v7 multiplexer:v8 isNonLaunching:a4];

  return v9;
}

- (id)clientConnectionForServiceWithName:(void *)a3 multiplexer:(_BYTE *)a4 isNonLaunching:
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    if (!v7)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"serviceName"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(sel_clientConnectionForServiceWithName_multiplexer_isNonLaunching_);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        v28 = v18;
        v29 = 2114;
        v30 = v20;
        v31 = 2048;
        v32 = a1;
        v33 = 2114;
        v34 = @"BKSHIDServiceConnectionFactory.m";
        v35 = 1024;
        v36 = 58;
        v37 = 2114;
        v38 = v17;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638FA2CLL);
    }

    if (!v8)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"multiplexer"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromSelector(sel_clientConnectionForServiceWithName_multiplexer_isNonLaunching_);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544642;
        v28 = v22;
        v29 = 2114;
        v30 = v24;
        v31 = 2048;
        v32 = a1;
        v33 = 2114;
        v34 = @"BKSHIDServiceConnectionFactory.m";
        v35 = 1024;
        v36 = 59;
        v37 = 2114;
        v38 = v21;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v21 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638FB24);
    }

    v10 = [MEMORY[0x1E698F498] endpointForMachName:@"com.apple.backboard.hid-services.xpc" service:v7 instance:0];
    v11 = v10;
    if (v10)
    {
      if (a4)
      {
        *a4 = [v10 isNonLaunching];
      }

      v12 = objc_alloc(MEMORY[0x1E698F4D8]);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __96__BKSHIDServiceConnectionFactory_clientConnectionForServiceWithName_multiplexer_isNonLaunching___block_invoke;
      v25[3] = &unk_1E6F47038;
      v26 = v9;
      v13 = [v12 initWithEndpoint:v11 options:v25];
      v14 = v26;
    }

    else
    {
      v14 = BKLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v7;
        _os_log_error_impl(&dword_186345000, v14, OS_LOG_TYPE_ERROR, "cannot get endpoint for mach service (on behalf of BSService name: %{public}@)", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)clientConnectionForServiceWithName:(id)a3 multiplexer:(id)a4
{
  v6 = 0;
  v4 = [(BKSHIDServiceConnectionFactory *)self clientConnectionForServiceWithName:a3 multiplexer:a4 isNonLaunching:&v6];

  return v4;
}

- (id)clientConnectionForServiceWithName:(id)a3
{
  v9 = 0;
  v4 = MEMORY[0x1E698F4E0];
  v5 = a3;
  v6 = [v4 defaultMultiplexer];
  v7 = [(BKSHIDServiceConnectionFactory *)self clientConnectionForServiceWithName:v5 multiplexer:v6 isNonLaunching:&v9];

  return v7;
}

@end