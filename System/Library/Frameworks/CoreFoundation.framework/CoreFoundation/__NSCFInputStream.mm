@interface __NSCFInputStream
- (BOOL)getBuffer:(char *)a3 length:(unint64_t *)a4;
- (BOOL)isEqual:(id)a3;
- (__NSCFInputStream)initWithData:(id)a3;
- (__NSCFInputStream)initWithFileAtPath:(id)a3;
- (__NSCFInputStream)initWithURL:(id)a3;
- (id)delegate;
- (id)propertyForKey:(id)a3;
- (id)streamError;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation __NSCFInputStream

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, a3) != 0;
}

- (__NSCFInputStream)initWithData:(id)a3
{
  [(__NSCFInputStream *)self dealloc];

  return CFReadStreamCreateWithData(&__kCFAllocatorSystemDefault, a3);
}

- (__NSCFInputStream)initWithFileAtPath:(id)a3
{
  result = [[NSURL alloc] initFileURLWithPath:a3];
  if (result)
  {
    v5 = result;
    v6 = [(__NSCFInputStream *)self initWithURL:result];

    return v6;
  }

  return result;
}

- (__NSCFInputStream)initWithURL:(id)a3
{
  [(__NSCFInputStream *)self dealloc];
  result = 0;
  if (a3)
  {

    return CFReadStreamCreateWithFile(0, a3);
  }

  return result;
}

- (id)delegate
{
  v2 = [_CFReadStreamGetClient(self) retainedDelegate];

  return v2;
}

- (void)setDelegate:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [[__NSCFStreamWeakDelegateWrapper alloc] initWithDelegate:a3];
    v7.version = 0;
    v7.info = v4;
    v7.retain = CFRetain;
    v7.release = CFRelease;
    v7.copyDescription = 0;
    CFReadStreamSetClient(self, 0x1BuLL, _inputStreamCallbackFunc, &v7);

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    CFReadStreamSetClient(self, 0, 0, 0);
  }
}

- (id)propertyForKey:(id)a3
{
  v3 = CFReadStreamCopyProperty(self, a3);

  return v3;
}

- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4
{
  if (a3)
  {
    v6 = [a3 getCFRunLoop];

    CFReadStreamScheduleWithRunLoop(self, v6, a4);
  }
}

- (void)removeFromRunLoop:(id)a3 forMode:(id)a4
{
  if (a3)
  {
    v6 = [a3 getCFRunLoop];

    CFReadStreamUnscheduleFromRunLoop(self, v6, a4);
  }
}

- (id)streamError
{
  v2 = CFReadStreamCopyError(self);

  return v2;
}

- (BOOL)getBuffer:(char *)a3 length:(unint64_t *)a4
{
  Buffer = CFReadStreamGetBuffer(self, 0, a4);
  v7 = *a4;
  if (*a4)
  {
    *a3 = Buffer;
  }

  return v7 != 0;
}

@end