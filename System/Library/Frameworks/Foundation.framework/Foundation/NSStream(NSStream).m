@interface NSStream(NSStream)
- (id)init;
- (void)close;
- (void)open;
- (void)removeFromRunLoop:()NSStream forMode:;
- (void)scheduleInRunLoop:()NSStream forMode:;
- (void)setDelegate:()NSStream;
@end

@implementation NSStream(NSStream)

- (id)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = a1;
  v3.super_class = NSStream_0;
  v1 = objc_msgSendSuper2(&v3, sel_init);
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _CFReadStreamInitialize();
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _CFWriteStreamInitialize();
      }
    }
  }

  return v1;
}

- (void)open
{
  v4 = NSClassFromString(@"NSStream");

  NSRequestConcreteImplementation(a1, a2, v4);
}

- (void)close
{
  v4 = NSClassFromString(@"NSStream");

  NSRequestConcreteImplementation(a1, a2, v4);
}

- (void)setDelegate:()NSStream
{
  v4 = NSClassFromString(@"NSStream");

  NSRequestConcreteImplementation(a1, a2, v4);
}

- (void)scheduleInRunLoop:()NSStream forMode:
{
  v4 = NSClassFromString(@"NSStream");

  NSRequestConcreteImplementation(a1, a2, v4);
}

- (void)removeFromRunLoop:()NSStream forMode:
{
  v4 = NSClassFromString(@"NSStream");

  NSRequestConcreteImplementation(a1, a2, v4);
}

@end