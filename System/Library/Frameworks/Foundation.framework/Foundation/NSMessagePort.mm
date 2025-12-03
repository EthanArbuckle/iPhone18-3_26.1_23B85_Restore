@interface NSMessagePort
+ (BOOL)sendBeforeTime:(double)time streamData:(id)data components:(id)components to:(id)to from:(id)from msgid:(unsigned int)msgid reserved:(unint64_t)reserved;
- (BOOL)sendBeforeDate:(id)date components:(id)components from:(id)from reserved:(unint64_t)reserved;
- (BOOL)sendBeforeDate:(id)date msgid:(unint64_t)msgid components:(id)components from:(id)from reserved:(unint64_t)reserved;
- (BOOL)sendBeforeTime:(double)time streamData:(void *)data components:(id)components from:(id)from msgid:(unsigned int)msgid;
- (NSMessagePort)initWithName:(id)name;
- (NSMessagePort)initWithRemoteName:(id)name;
- (void)dealloc;
- (void)invalidate;
- (void)release;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
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

+ (BOOL)sendBeforeTime:(double)time streamData:(id)data components:(id)components to:(id)to from:(id)from msgid:(unsigned int)msgid reserved:(unint64_t)reserved
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (from)
  {
    CFDictionaryAddValue(Mutable, @"NSMessagePortReplyName", [from name]);
  }

  if (data && !components)
  {
    components = [MEMORY[0x1E695DF70] array];
    [components addObject:data];
  }

  array = [MEMORY[0x1E695DF70] array];
  v17 = [components count];
  if (v17)
  {
    v18 = v17;
    for (i = 0; v18 != i; ++i)
    {
      name = [components objectAtIndex:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          CFRelease(Mutable);
          v26 = _NSMethodExceptionProem(self, a2);
          NSLog(@"%@: found port in components which is not an NSMessagePort", v26);
          return 0;
        }

        name = [name name];
      }

      [array addObject:name];
    }
  }

  CFDictionaryAddValue(Mutable, @"NSMessagePortComponents", array);
  Data = CFPropertyListCreateData(0, Mutable, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v22 = *(to + 3);
  Current = CFAbsoluteTimeGetCurrent();
  v24 = CFMessagePortSendRequest(v22, msgid, Data, time - Current, 0.0, 0, 0);
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

- (BOOL)sendBeforeTime:(double)time streamData:(void *)data components:(id)components from:(id)from msgid:(unsigned int)msgid
{
  v7 = *&msgid;
  v13 = objc_opt_class();
  reservedSpaceLength = [(NSPort *)self reservedSpaceLength];

  return [v13 sendBeforeTime:data streamData:components components:self to:from from:v7 msgid:reservedSpaceLength reserved:time];
}

- (BOOL)sendBeforeDate:(id)date components:(id)components from:(id)from reserved:(unint64_t)reserved
{
  v11 = objc_opt_class();
  [date timeIntervalSinceReferenceDate];

  return [v11 sendBeforeTime:0 streamData:components components:self to:from from:0 msgid:reserved reserved:?];
}

- (BOOL)sendBeforeDate:(id)date msgid:(unint64_t)msgid components:(id)components from:(id)from reserved:(unint64_t)reserved
{
  v13 = objc_opt_class();
  [date timeIntervalSinceReferenceDate];

  return [v13 sendBeforeTime:0 streamData:components components:self to:from from:msgid msgid:reserved reserved:?];
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  if (loop)
  {
    RunLoopSource = CFMessagePortCreateRunLoopSource(0, self->_port, 300);
    if (RunLoopSource)
    {
      v7 = RunLoopSource;
      CFRunLoopAddSource([loop getCFRunLoop], RunLoopSource, mode);

      CFRelease(v7);
    }
  }
}

- (void)removeFromRunLoop:(id)loop forMode:(id)mode
{
  if (loop)
  {
    RunLoopSource = CFMessagePortCreateRunLoopSource(0, self->_port, 300);
    if (RunLoopSource)
    {
      v7 = RunLoopSource;
      CFRunLoopRemoveSource([loop getCFRunLoop], RunLoopSource, mode);

      CFRelease(v7);
    }
  }
}

- (NSMessagePort)initWithName:(id)name
{
  selfCopy = self;
  v9 = *MEMORY[0x1E69E9840];
  shouldFreeInfo = 0;
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = self;
  v4 = CFMessagePortCreateLocal(0, name, __NSFireMessagePort, &context, &shouldFreeInfo);
  selfCopy->_port = v4;
  if (v4)
  {
    if (!shouldFreeInfo)
    {
      selfCopy->_delegate = 0;
    }
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = NSMessagePort;
    [(NSMessagePort *)&v6 dealloc];
    return 0;
  }

  return selfCopy;
}

- (NSMessagePort)initWithRemoteName:(id)name
{
  v7 = *MEMORY[0x1E69E9840];
  Remote = CFMessagePortCreateRemote(0, name);
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