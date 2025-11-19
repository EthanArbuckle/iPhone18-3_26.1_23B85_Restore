@interface NSCFInputStream
- (BOOL)getBuffer:(char *)a3 length:(unint64_t *)a4;
- (BOOL)isEqual:(id)a3;
- (NSCFInputStream)initWithFileAtPath:(id)a3;
- (NSCFInputStream)initWithURL:(id)a3;
- (id)delegate;
- (id)propertyForKey:(id)a3;
- (id)streamError;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation NSCFInputStream

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

  return _CFNonObjCEqual() != 0;
}

- (NSCFInputStream)initWithFileAtPath:(id)a3
{
  result = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a3];
  if (result)
  {
    v5 = result;
    v6 = [(NSCFInputStream *)self initWithURL:result];

    return v6;
  }

  return result;
}

- (NSCFInputStream)initWithURL:(id)a3
{
  result = 0;
  if (a3)
  {
    return CFReadStreamCreateWithFile(0, a3);
  }

  return result;
}

- (id)delegate
{
  v2 = [_CFReadStreamGetClient() retainedDelegate];

  return v2;
}

- (void)setDelegate:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [[NSCFStreamWeakDelegateWrapper alloc] initWithDelegate:a3];
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