@interface __NSCFInputStream
- (BOOL)getBuffer:(char *)buffer length:(unint64_t *)length;
- (BOOL)isEqual:(id)equal;
- (__NSCFInputStream)initWithData:(id)data;
- (__NSCFInputStream)initWithFileAtPath:(id)path;
- (__NSCFInputStream)initWithURL:(id)l;
- (id)delegate;
- (id)propertyForKey:(id)key;
- (id)streamError;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)setDelegate:(id)delegate;
@end

@implementation __NSCFInputStream

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, equal) != 0;
}

- (__NSCFInputStream)initWithData:(id)data
{
  [(__NSCFInputStream *)self dealloc];

  return CFReadStreamCreateWithData(&__kCFAllocatorSystemDefault, data);
}

- (__NSCFInputStream)initWithFileAtPath:(id)path
{
  result = [[NSURL alloc] initFileURLWithPath:path];
  if (result)
  {
    v5 = result;
    v6 = [(__NSCFInputStream *)self initWithURL:result];

    return v6;
  }

  return result;
}

- (__NSCFInputStream)initWithURL:(id)l
{
  [(__NSCFInputStream *)self dealloc];
  result = 0;
  if (l)
  {

    return CFReadStreamCreateWithFile(0, l);
  }

  return result;
}

- (id)delegate
{
  retainedDelegate = [_CFReadStreamGetClient(self) retainedDelegate];

  return retainedDelegate;
}

- (void)setDelegate:(id)delegate
{
  v8 = *MEMORY[0x1E69E9840];
  if (delegate)
  {
    v4 = [[__NSCFStreamWeakDelegateWrapper alloc] initWithDelegate:delegate];
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

- (id)propertyForKey:(id)key
{
  v3 = CFReadStreamCopyProperty(self, key);

  return v3;
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  if (loop)
  {
    getCFRunLoop = [loop getCFRunLoop];

    CFReadStreamScheduleWithRunLoop(self, getCFRunLoop, mode);
  }
}

- (void)removeFromRunLoop:(id)loop forMode:(id)mode
{
  if (loop)
  {
    getCFRunLoop = [loop getCFRunLoop];

    CFReadStreamUnscheduleFromRunLoop(self, getCFRunLoop, mode);
  }
}

- (id)streamError
{
  v2 = CFReadStreamCopyError(self);

  return v2;
}

- (BOOL)getBuffer:(char *)buffer length:(unint64_t *)length
{
  Buffer = CFReadStreamGetBuffer(self, 0, length);
  v7 = *length;
  if (*length)
  {
    *buffer = Buffer;
  }

  return v7 != 0;
}

@end