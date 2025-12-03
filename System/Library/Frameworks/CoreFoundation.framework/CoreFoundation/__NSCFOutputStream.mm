@interface __NSCFOutputStream
- (BOOL)isEqual:(id)equal;
- (__NSCFOutputStream)initWithURL:(id)l append:(BOOL)append;
- (id)delegate;
- (id)initToBuffer:(char *)buffer capacity:(unint64_t)capacity;
- (id)initToMemory;
- (id)propertyForKey:(id)key;
- (id)streamError;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)setDelegate:(id)delegate;
@end

@implementation __NSCFOutputStream

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

- (id)initToMemory
{
  [(__NSCFOutputStream *)self dealloc];

  return CFWriteStreamCreateWithAllocatedBuffers(0, 0);
}

- (id)initToBuffer:(char *)buffer capacity:(unint64_t)capacity
{
  [(__NSCFOutputStream *)self dealloc];

  return CFWriteStreamCreateWithBuffer(0, buffer, capacity);
}

- (__NSCFOutputStream)initWithURL:(id)l append:(BOOL)append
{
  appendCopy = append;
  [(__NSCFOutputStream *)self dealloc];
  if (l)
  {
    v6 = CFWriteStreamCreateWithFile(0, l);
    l = v6;
    if (appendCopy)
    {
      CFWriteStreamSetProperty(v6, @"kCFStreamPropertyAppendToFile", &__kCFBooleanTrue);
    }
  }

  return l;
}

- (id)delegate
{
  retainedDelegate = [_CFWriteStreamGetClient(self) retainedDelegate];

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
    CFWriteStreamSetClient(self, 0x1DuLL, _outputStreamCallbackFunc, &v7);

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

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