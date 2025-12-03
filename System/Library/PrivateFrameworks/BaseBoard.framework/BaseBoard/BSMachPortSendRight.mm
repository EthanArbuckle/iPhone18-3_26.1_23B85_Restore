@interface BSMachPortSendRight
+ (id)bootstrapLookUpPortWithName:(id)name;
+ (id)bootstrapLookUpWithName:(id)name;
+ (id)wrapSendRight:(unsigned int)right;
- (BSMachPortSendRight)initWithCopyOfPort:(unsigned int)port;
- (BSMachPortSendRight)initWithCopyOfRight:(id)right;
- (BSMachPortSendRight)initWithNonRetainingPort:(unsigned int)port;
- (BSMachPortSendRight)initWithPort:(unsigned int)port;
- (BSMachPortSendRight)initWithSendRight:(unsigned int)right assumeOwnership:(BOOL)ownership;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromReceiveRight:(id)right;
@end

@implementation BSMachPortSendRight

+ (id)wrapSendRight:(unsigned int)right
{
  v3 = [[self alloc] initWithSendRight:*&right];

  return v3;
}

- (BSMachPortSendRight)initWithPort:(unsigned int)port
{
  v3 = *&port;
  if (port - 1 <= 0xFFFFFFFD && !BSMachPortIsType(port, 1114112))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSMachPortRight.m" lineNumber:486 description:@"you must pass in a send (or dead) right or NULL"];
  }

  v6 = _BSMachPortRightDescription(3u, 0, @"take", v3, 0);
  v7 = [(BSMachPortRight *)self _initWithPort:v3 type:3 owner:0 trace:v6];

  return v7;
}

- (BSMachPortSendRight)initWithCopyOfPort:(unsigned int)port
{
  LODWORD(v3) = port;
  if (port - 1 <= 0xFFFFFFFD && !BSMachPortIsType(port, 1114112))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSMachPortRight.m" lineNumber:493 description:@"you must pass in a send (or dead) right or NULL"];
  }

  if (BSMachPortIsType(v3, 0x10000))
  {
    if (BSMachSendRightRetain(v3))
    {
      v3 = v3;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = _BSMachPortRightDescription(3u, 0, @"copytake", v3, 0);
  v7 = [(BSMachPortRight *)self _initWithPort:v3 type:3 owner:0 trace:v6];

  return v7;
}

- (BSMachPortSendRight)initWithCopyOfRight:(id)right
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__BSMachPortSendRight_initWithCopyOfRight___block_invoke;
  v10[3] = &unk_1E72CB728;
  v10[4] = &v11;
  [right accessPort:v10];
  v5 = *(v12 + 6);
  trace = [right trace];
  v7 = _BSMachPortRightDescription(3u, 0, @"copy", v5, trace);

  v8 = [(BSMachPortRight *)self _initWithPort:3 type:0 owner:v7 trace:?];
  _Block_object_dispose(&v11, 8);
  return v8;
}

BOOL __43__BSMachPortSendRight_initWithCopyOfRight___block_invoke(_BOOL8 result, mach_port_name_t name)
{
  if (name - 1 <= 0xFFFFFFFD)
  {
    v3 = result;
    result = BSMachSendRightRetain(name);
    if (result)
    {
      *(*(*(v3 + 32) + 8) + 24) = name;
    }
  }

  return result;
}

- (id)initFromReceiveRight:(id)right
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__BSMachPortSendRight_initFromReceiveRight___block_invoke;
  v10[3] = &unk_1E72CB728;
  v10[4] = &v11;
  [right accessPort:v10];
  v5 = *(v12 + 6);
  trace = [right trace];
  v7 = _BSMachPortRightDescription(3u, 0, @"make", v5, trace);

  v8 = [(BSMachPortRight *)self _initWithPort:3 type:0 owner:v7 trace:?];
  _Block_object_dispose(&v11, 8);
  return v8;
}

BOOL __44__BSMachPortSendRight_initFromReceiveRight___block_invoke(_BOOL8 result, mach_port_name_t name)
{
  if (name - 1 <= 0xFFFFFFFD)
  {
    v3 = result;
    result = BSMachCreateSendRight(name);
    if (result)
    {
      *(*(*(v3 + 32) + 8) + 24) = name;
    }
  }

  return result;
}

+ (id)bootstrapLookUpWithName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  if (name)
  {
    sp = 0;
    v5 = bootstrap_look_up(*MEMORY[0x1E69E99F8], [name UTF8String], &sp);
    v6 = v5;
    if (sp + 1 >= 2 && v5 == 0)
    {
      name = [MEMORY[0x1E696AEC0] stringWithFormat:@"bootstrap_look_up:%@", name];
      v8 = _BSMachPortRightDescription(3u, 0, name, sp, 0);

      v11 = [self alloc];
      v9 = [(BSMachPortRight *)v11 _initWithPort:3 type:0 owner:v8 trace:?];
    }

    else
    {
      v8 = BSLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = mach_error_string(v6);
        *buf = 138543874;
        nameCopy = name;
        v17 = 2082;
        v18 = v13;
        v19 = 1024;
        v20 = v6;
        _os_log_error_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_ERROR, "Unable to bootstrap_look_up port with name %{public}@: %{public}s (%d)", buf, 0x1Cu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BSMachPortSendRight)initWithNonRetainingPort:(unsigned int)port
{
  v3 = *&port;
  if (port + 1 <= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSMachPortRight.m" lineNumber:557 description:@"you must pass in a valid send right"];
  }

  v5 = _BSMachPortRightDescription(3u, 1, @"wrap", v3, 0);
  v6 = [(BSMachPortRight *)self _initWithPort:v3 type:3 owner:1 trace:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithCopyOfRight:self];
}

+ (id)bootstrapLookUpPortWithName:(id)name
{
  v3 = [self bootstrapLookUpWithName:name];

  return v3;
}

- (BSMachPortSendRight)initWithSendRight:(unsigned int)right assumeOwnership:(BOOL)ownership
{
  if (ownership)
  {
    v4 = [(BSMachPortSendRight *)self initWithPort:*&right];
  }

  else
  {
    v4 = [(BSMachPortSendRight *)self initWithNonRetainingPort:*&right];
  }

  v5 = v4;

  return v5;
}

@end