@interface NSPort(NSPort)
+ (id)allocWithZone:()NSPort;
+ (id)port;
+ (id)portWithMachPort:()NSPort;
- (uint64_t)initWithCoder:()NSPort;
- (void)classForCoder;
- (void)invalidate;
- (void)setDelegate:()NSPort;
@end

@implementation NSPort(NSPort)

+ (id)allocWithZone:()NSPort
{
  if (MEMORY[0x1E695DFC8] == self)
  {
    return [MEMORY[0x1E695DF60] allocWithZone:?];
  }

  else
  {
    return NSAllocateObject(self, 0, a3);
  }
}

+ (id)port
{
  v1 = [objc_allocWithZone(self) init];

  return v1;
}

+ (id)portWithMachPort:()NSPort
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF60]) initWithMachPort:a3];

  return v3;
}

- (void)invalidate
{
  v4 = NSClassFromString(@"NSPort");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (void)setDelegate:()NSPort
{
  v4 = NSClassFromString(@"NSPort");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (void)classForCoder
{
  v0 = objc_opt_class();
  v1 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ asked to archive; %@ only codes for port coding (Distributed Objects).", v0, objc_opt_class()), 0}];
  objc_exception_throw(v1);
}

- (uint64_t)initWithCoder:()NSPort
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = NSPort_0;
  objc_msgSendSuper2(&v2, sel_dealloc);
  return 0;
}

@end