@interface NSMachBootstrapServer
+ (id)sharedInstance;
- (BOOL)registerPort:(NSPort *)port name:(NSString *)name;
- (NSPort)portForName:(NSString *)name host:(NSString *)host;
- (NSPort)servicePortWithName:(NSString *)name;
- (id)_replyPort:(id)a3;
- (id)portForName:(id)a3 options:(unint64_t)a4;
@end

@implementation NSMachBootstrapServer

+ (id)sharedInstance
{
  result = sharedInstance___NSMachBootstrapServerShared;
  if (!sharedInstance___NSMachBootstrapServerShared)
  {
    result = [objc_allocWithZone(a1) init];
    sharedInstance___NSMachBootstrapServerShared = result;
  }

  return result;
}

- (id)portForName:(id)a3 options:(unint64_t)a4
{
  v7 = *MEMORY[0x1E69E9840];
  *special_port = 0;
  if (task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]))
  {
    return 0;
  }

  result = [+[NSFileManager defaultManager](NSFileManager fileSystemRepresentationWithPath:"fileSystemRepresentationWithPath:", a3];
  if (result)
  {
    if (!bootstrap_look_up2())
    {
      return [objc_allocWithZone(MEMORY[0x1E695DF60]) initWithMachPort:special_port[0] options:1];
    }

    return 0;
  }

  return result;
}

- (BOOL)registerPort:(NSPort *)port name:(NSString *)name
{
  v9 = *MEMORY[0x1E69E9840];
  special_port = 0;
  if (task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port) || (objc_opt_self(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [(NSString *)name UTF8String];
    if (v6)
    {
      [(NSPort *)port machPort];
      LOBYTE(v6) = bootstrap_register2() == 0;
    }
  }

  return v6;
}

- (NSPort)servicePortWithName:(NSString *)name
{
  v10 = *MEMORY[0x1E69E9840];
  *special_port = 0;
  v4 = MEMORY[0x1E69E9A60];
  if (!task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]))
  {
    v7 = [(NSString *)name UTF8String];
    if (v7)
    {
      if (!bootstrap_check_in(special_port[1], v7, special_port))
      {
        mach_port_insert_right(*v4, special_port[0], special_port[0], 0x14u);
        v8 = objc_allocWithZone(MEMORY[0x1E695DF60]);
        return [v8 initWithMachPort:special_port[0]];
      }

      v5 = [MEMORY[0x1E695DF60] port];
      [(NSPort *)v5 machPort];
      if (!bootstrap_register2())
      {
        return v5;
      }
    }
  }

  return 0;
}

- (NSPort)portForName:(NSString *)name host:(NSString *)host
{
  if (host && ![&stru_1EEEFDF90 isEqual:host])
  {
    return 0;
  }

  return [(NSMachBootstrapServer *)self portForName:name];
}

- (id)_replyPort:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    __assert_rtn("[NSMachBootstrapServer _replyPort:]", "NSPortNameServer.m", 173, "[sport class] == [NSMachPort class]");
  }

  name = 0;
  *&options.flags = xmmword_181406520;
  options.reserved[1] = 0;
  v4 = mach_port_construct(*MEMORY[0x1E69E9A60], &options, 0, &name);
  if (v4)
  {
    v7 = [NSString stringWithFormat:@"[NSMachBootstrapServer _replyPort mach_port_construct() return %d", v4];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v7 userInfo:0]);
  }

  v5 = objc_allocWithZone(MEMORY[0x1E695DF60]);
  return [v5 initWithMachPort:name options:3];
}

@end