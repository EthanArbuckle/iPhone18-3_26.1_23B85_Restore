@interface NSMessagePort
+ (BOOL)sendBeforeTime:(double)a3 streamData:(id)a4 components:(id)a5 to:(id)a6 from:(id)a7 msgid:(unsigned int)a8 reserved:(unint64_t)a9;
- (BOOL)sendBeforeDate:(id)a3 components:(id)a4 from:(id)a5 reserved:(unint64_t)a6;
- (BOOL)sendBeforeDate:(id)a3 msgid:(unint64_t)a4 components:(id)a5 from:(id)a6 reserved:(unint64_t)a7;
- (BOOL)sendBeforeTime:(double)a3 streamData:(void *)a4 components:(id)a5 from:(id)a6 msgid:(unsigned int)a7;
- (NSMessagePort)initWithName:(id)a3;
- (NSMessagePort)initWithRemoteName:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)release;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
@end

@implementation NSMessagePort

- (void)invalidate
{
  [(NSMessagePort *)self setDelegate:0];
  if (CFMessagePortIsValid(self->_port))
  {
    CFMessagePortInvalidate(self->_port);
    v3 = +[NSNotificationCenter defaultCenter];

    [(NSNotificationCenter *)v3 postNotificationName:@"NSPortDidBecomeInvalidNotification" object:self userInfo:0];
  }
}

+ (BOOL)sendBeforeTime:(double)a3 streamData:(id)a4 components:(id)a5 to:(id)a6 from:(id)a7 msgid:(unsigned int)a8 reserved:(unint64_t)a9
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a7)
  {
    CFDictionaryAddValue(Mutable, @"NSMessagePortReplyName", [a7 name]);
  }

  if (a4 && !a5)
  {
    a5 = [MEMORY[0x1E695DF70] array];
    [a5 addObject:a4];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [a5 count];
  if (v17)
  {
    v18 = v17;
    for (i = 0; v18 != i; ++i)
    {
      v20 = [a5 objectAtIndex:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          CFRelease(Mutable);
          v26 = _NSMethodExceptionProem(a1, a2);
          NSLog(@"%@: found port in components which is not an NSMessagePort", v26);
          return 0;
        }

        v20 = [v20 name];
      }

      [v16 addObject:v20];
    }
  }

  CFDictionaryAddValue(Mutable, @"NSMessagePortComponents", v16);
  Data = CFPropertyListCreateData(0, Mutable, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v22 = *(a6 + 3);
  Current = CFAbsoluteTimeGetCurrent();
  v24 = CFMessagePortSendRequest(v22, a8, Data, a3 - Current, 0.0, 0, 0);
  CFRelease(Data);
  CFRelease(Mutable);
  if (v24 == -1)
  {
    return 0;
  }

  if (v24)
  {
    v27 = [NSString stringWithFormat:@"[NSMessagePort sendBeforeDate:] Cannot send (%d)", v24];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSPortSendException" reason:v27 userInfo:0]);
  }

  return 1;
}

- (BOOL)sendBeforeTime:(double)a3 streamData:(void *)a4 components:(id)a5 from:(id)a6 msgid:(unsigned int)a7
{
  v7 = *&a7;
  v13 = objc_opt_class();
  v14 = [(NSPort *)self reservedSpaceLength];

  return [v13 sendBeforeTime:a4 streamData:a5 components:self to:a6 from:v7 msgid:v14 reserved:a3];
}

- (BOOL)sendBeforeDate:(id)a3 components:(id)a4 from:(id)a5 reserved:(unint64_t)a6
{
  v11 = objc_opt_class();
  [a3 timeIntervalSinceReferenceDate];

  return [v11 sendBeforeTime:0 streamData:a4 components:self to:a5 from:0 msgid:a6 reserved:?];
}

- (BOOL)sendBeforeDate:(id)a3 msgid:(unint64_t)a4 components:(id)a5 from:(id)a6 reserved:(unint64_t)a7
{
  v13 = objc_opt_class();
  [a3 timeIntervalSinceReferenceDate];

  return [v13 sendBeforeTime:0 streamData:a5 components:self to:a6 from:a4 msgid:a7 reserved:?];
}

- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4
{
  if (a3)
  {
    RunLoopSource = CFMessagePortCreateRunLoopSource(0, self->_port, 300);
    if (RunLoopSource)
    {
      v7 = RunLoopSource;
      CFRunLoopAddSource([a3 getCFRunLoop], RunLoopSource, a4);

      CFRelease(v7);
    }
  }
}

- (void)removeFromRunLoop:(id)a3 forMode:(id)a4
{
  if (a3)
  {
    RunLoopSource = CFMessagePortCreateRunLoopSource(0, self->_port, 300);
    if (RunLoopSource)
    {
      v7 = RunLoopSource;
      CFRunLoopRemoveSource([a3 getCFRunLoop], RunLoopSource, a4);

      CFRelease(v7);
    }
  }
}

- (NSMessagePort)initWithName:(id)a3
{
  v3 = self;
  v9 = *MEMORY[0x1E69E9840];
  shouldFreeInfo = 0;
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = self;
  v4 = CFMessagePortCreateLocal(0, a3, __NSFireMessagePort, &context, &shouldFreeInfo);
  v3->_port = v4;
  if (v4)
  {
    if (!shouldFreeInfo)
    {
      v3->_delegate = 0;
    }
  }

  else
  {
    v6.receiver = v3;
    v6.super_class = NSMessagePort;
    [(NSMessagePort *)&v6 dealloc];
    return 0;
  }

  return v3;
}

- (NSMessagePort)initWithRemoteName:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  Remote = CFMessagePortCreateRemote(0, a3);
  self->_port = Remote;
  if (Remote)
  {
    self->_delegate = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NSMessagePort;
    [(NSMessagePort *)&v6 dealloc];
    return 0;
  }

  return self;
}

- (void)release
{
  os_unfair_lock_lock(&_NSGlobalRetainLock);
  if (CFGetRetainCount(self->_port) == 1)
  {
    os_unfair_lock_unlock(&_NSGlobalRetainLock);
    [(NSMessagePort *)self invalidate];
    os_unfair_lock_lock(&_NSGlobalRetainLock);
  }

  if (CFGetRetainCount(self->_port) == 1)
  {
    os_unfair_lock_unlock(&_NSGlobalRetainLock);

    [(NSMessagePort *)self dealloc];
  }

  else
  {
    CFRelease(self->_port);

    os_unfair_lock_unlock(&_NSGlobalRetainLock);
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  port = self->_port;
  if (port)
  {
    CFRelease(port);
  }

  self->_port = 0;
  v4.receiver = self;
  v4.super_class = NSMessagePort;
  [(NSMessagePort *)&v4 dealloc];
}

@end