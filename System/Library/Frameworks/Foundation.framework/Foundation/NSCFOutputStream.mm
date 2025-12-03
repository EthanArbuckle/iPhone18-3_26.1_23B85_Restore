@interface NSCFOutputStream
- (BOOL)isEqual:(id)equal;
- (NSCFOutputStream)initWithURL:(id)l append:(BOOL)append;
- (id)delegate;
- (id)initToFileAtPath:(id)path append:(BOOL)append;
- (id)propertyForKey:(id)key;
- (id)streamError;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)setDelegate:(id)delegate;
@end

@implementation NSCFOutputStream

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

- (id)initToFileAtPath:(id)path append:(BOOL)append
{
  appendCopy = append;
  result = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:path];
  if (result)
  {
    v7 = result;
    v8 = [(NSCFOutputStream *)self initWithURL:result append:appendCopy];

    return v8;
  }

  return result;
}

- (NSCFOutputStream)initWithURL:(id)l append:(BOOL)append
{
  if (!l)
  {
    return 0;
  }

  appendCopy = append;
  v5 = CFWriteStreamCreateWithFile(0, l);
  v6 = v5;
  if (appendCopy)
  {
    CFWriteStreamSetProperty(v5, *MEMORY[0x1E695E8F8], *MEMORY[0x1E695E4D0]);
  }

  return v6;
}

- (id)delegate
{
  retainedDelegate = [_CFWriteStreamGetClient() retainedDelegate];

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
    CFWriteStreamSetClient(self, 0x1DuLL, _outputStreamCallbackFunc, &v5);
  }

  else
  {

    CFWriteStreamSetClient(self, 0, 0, 0);
  }
}

- (id)propertyForKey:(id)key
{
  v3 = CFWriteStreamCopyProperty(self, key);

  return v3;
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  if (loop)
  {
    getCFRunLoop = [loop getCFRunLoop];

    CFWriteStreamScheduleWithRunLoop(self, getCFRunLoop, mode);
  }
}

- (void)removeFromRunLoop:(id)loop forMode:(id)mode
{
  if (loop)
  {
    getCFRunLoop = [loop getCFRunLoop];

    CFWriteStreamUnscheduleFromRunLoop(self, getCFRunLoop, mode);
  }
}

- (id)streamError
{
  v2 = CFWriteStreamCopyError(self);

  return v2;
}

@end