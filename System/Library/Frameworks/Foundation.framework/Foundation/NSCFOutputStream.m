@interface NSCFOutputStream
- (BOOL)isEqual:(id)a3;
- (NSCFOutputStream)initWithURL:(id)a3 append:(BOOL)a4;
- (id)delegate;
- (id)initToFileAtPath:(id)a3 append:(BOOL)a4;
- (id)propertyForKey:(id)a3;
- (id)streamError;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation NSCFOutputStream

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

- (id)initToFileAtPath:(id)a3 append:(BOOL)a4
{
  v4 = a4;
  result = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a3];
  if (result)
  {
    v7 = result;
    v8 = [(NSCFOutputStream *)self initWithURL:result append:v4];

    return v8;
  }

  return result;
}

- (NSCFOutputStream)initWithURL:(id)a3 append:(BOOL)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  v5 = CFWriteStreamCreateWithFile(0, a3);
  v6 = v5;
  if (v4)
  {
    CFWriteStreamSetProperty(v5, *MEMORY[0x1E695E8F8], *MEMORY[0x1E695E4D0]);
  }

  return v6;
}

- (id)delegate
{
  v2 = [_CFWriteStreamGetClient() retainedDelegate];

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
    CFWriteStreamSetClient(self, 0x1DuLL, _outputStreamCallbackFunc, &v5);
  }

  else
  {

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