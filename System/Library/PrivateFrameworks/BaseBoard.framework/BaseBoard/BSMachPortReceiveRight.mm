@interface BSMachPortReceiveRight
- (BSMachPortReceiveRight)init;
- (BSMachPortReceiveRight)initWithPort:(unsigned int)a3;
@end

@implementation BSMachPortReceiveRight

- (BSMachPortReceiveRight)init
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (BSMachCreateReceiveRight(&v8))
  {
    v3 = _BSMachPortRightDescription(1u, 0, @"init", v8, 0);
    self = [(BSMachPortRight *)self _initWithPort:v8 type:1 owner:0 trace:v3];
    v4 = self;
  }

  else
  {
    v3 = BSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      *buf = 138543362;
      v10 = v6;
      v7 = v6;
      _os_log_error_impl(&dword_18FEF6000, v3, OS_LOG_TYPE_ERROR, "failed to create port for %{public}@ - returning nil from initializer", buf, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (BSMachPortReceiveRight)initWithPort:(unsigned int)a3
{
  v3 = *&a3;
  if (!BSMachPortIsType(a3, 0x20000))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"BSMachPortRight.m" lineNumber:424 description:@"you must pass in a valid receive right"];
  }

  v6 = _BSMachPortRightDescription(1u, 0, @"take", v3, 0);
  v7 = [(BSMachPortRight *)self _initWithPort:v3 type:1 owner:0 trace:v6];

  return v7;
}

@end