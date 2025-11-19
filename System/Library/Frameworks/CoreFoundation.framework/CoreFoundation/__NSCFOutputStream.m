@interface __NSCFOutputStream
- (BOOL)isEqual:(id)a3;
- (__NSCFOutputStream)initWithURL:(id)a3 append:(BOOL)a4;
- (id)delegate;
- (id)initToBuffer:(char *)a3 capacity:(unint64_t)a4;
- (id)initToMemory;
- (id)propertyForKey:(id)a3;
- (id)streamError;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation __NSCFOutputStream

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

- (id)initToMemory
{
  [(__NSCFOutputStream *)self dealloc];

  return CFWriteStreamCreateWithAllocatedBuffers(0, 0);
}

- (id)initToBuffer:(char *)a3 capacity:(unint64_t)a4
{
  [(__NSCFOutputStream *)self dealloc];

  return CFWriteStreamCreateWithBuffer(0, a3, a4);
}

- (__NSCFOutputStream)initWithURL:(id)a3 append:(BOOL)a4
{
  v4 = a4;
  [(__NSCFOutputStream *)self dealloc];
  if (a3)
  {
    v6 = CFWriteStreamCreateWithFile(0, a3);
    a3 = v6;
    if (v4)
    {
      CFWriteStreamSetProperty(v6, @"kCFStreamPropertyAppendToFile", &__kCFBooleanTrue);
    }
  }

  return a3;
}

- (id)delegate
{
  v2 = [_CFWriteStreamGetClient(self) retainedDelegate];

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
    CFWriteStreamSetClient(self, 0x1DuLL, _outputStreamCallbackFunc, &v7);

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    CFWriteStreamSetClient(self, 0, 0, 0);
  }
}

- (id)propertyForKey:(id)a3
{
  v3 = CFWriteStreamCopyProperty(self, a3);

  return v3;
}

- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4
{
  if (a3)
  {
    v6 = [a3 getCFRunLoop];

    CFWriteStreamScheduleWithRunLoop(self, v6, a4);
  }
}

- (void)removeFromRunLoop:(id)a3 forMode:(id)a4
{
  if (a3)
  {
    v6 = [a3 getCFRunLoop];

    CFWriteStreamUnscheduleFromRunLoop(self, v6, a4);
  }
}

- (id)streamError
{
  v2 = CFWriteStreamCopyError(self);

  return v2;
}

@end