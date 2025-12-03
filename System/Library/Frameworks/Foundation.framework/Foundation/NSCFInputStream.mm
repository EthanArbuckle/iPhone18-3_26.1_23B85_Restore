@interface NSCFInputStream
- (BOOL)getBuffer:(char *)buffer length:(unint64_t *)length;
- (BOOL)isEqual:(id)equal;
- (NSCFInputStream)initWithFileAtPath:(id)path;
- (NSCFInputStream)initWithURL:(id)l;
- (id)delegate;
- (id)propertyForKey:(id)key;
- (id)streamError;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)setDelegate:(id)delegate;
@end

@implementation NSCFInputStream

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

  return _CFNonObjCEqual() != 0;
}

- (NSCFInputStream)initWithFileAtPath:(id)path
{
  result = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:path];
  if (result)
  {
    v5 = result;
    v6 = [(NSCFInputStream *)self initWithURL:result];

    return v6;
  }

  return result;
}

- (NSCFInputStream)initWithURL:(id)l
{
  result = 0;
  if (l)
  {
    return CFReadStreamCreateWithFile(0, l);
  }

  return result;
}

- (id)delegate
{
  retainedDelegate = [_CFReadStreamGetClient() retainedDelegate];

  return retainedDelegate;
}

- (void)setDelegate:(id)delegate
{
  v6 = *MEMORY[0x1E69E9840];
  if (delegate)
  {
    v4 = [[NSCFStreamWeakDelegateWrapper alloc] initWithDelegate:delegate];
    v5.version = 0;
    v5.info = v4;
    v5.retain = MEMORY[0x1E695D7C8];
    v5.release = MEMORY[0x1E695D7C0];
    v5.copyDescription = 0;
    CFReadStreamSetClient(self, 0x1BuLL, _inputStreamCallbackFunc, &v5);
  }

  else
  {

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