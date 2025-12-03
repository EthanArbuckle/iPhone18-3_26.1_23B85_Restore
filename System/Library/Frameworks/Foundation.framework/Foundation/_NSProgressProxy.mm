@interface _NSProgressProxy
- (id)_initWithForwarder:(id)forwarder values:(id)values isOld:(BOOL)old;
- (id)byteCompletedCount;
- (id)byteTotalCount;
- (id)estimatedTimeRemaining;
- (id)fileCompletedCount;
- (id)fileOperationKind;
- (id)fileTotalCount;
- (id)fileURL;
- (id)throughput;
- (void)_invokePublishingHandler:(id)handler;
- (void)_invokeUnpublishingHandler;
- (void)_setRemoteUserInfoValue:(id)value forKey:(id)key;
- (void)_setRemoteValues:(id)values forKeys:(id)keys;
- (void)acknowledgeWithSuccess:(BOOL)success;
- (void)dealloc;
@end

@implementation _NSProgressProxy

- (void)_invokeUnpublishingHandler
{
  v6[5] = *MEMORY[0x1E69E9840];
  Main = CFRunLoopGetMain();
  v4 = *MEMORY[0x1E695E8D0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46___NSProgressProxy__invokeUnpublishingHandler__block_invoke;
  v6[3] = &unk_1E69F2C00;
  v6[4] = self;
  CFRunLoopPerformBlock(Main, v4, v6);
  v5 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v5);
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSProgressProxy;
  [(NSProgress *)&v3 dealloc];
}

- (id)_initWithForwarder:(id)forwarder values:(id)values isOld:(BOOL)old
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _NSProgressProxy;
  v7 = [(NSProgress *)&v9 _initWithValues:values];
  if (v7)
  {
    v7[15] = forwarder;
    *(v7 + 128) = old;
  }

  return v7;
}

- (void)_invokePublishingHandler:(id)handler
{
  block[6] = *MEMORY[0x1E69E9840];
  Main = CFRunLoopGetMain();
  v6 = *MEMORY[0x1E695E8D0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___NSProgressProxy__invokePublishingHandler___block_invoke;
  block[3] = &unk_1E69F3910;
  block[4] = self;
  block[5] = handler;
  CFRunLoopPerformBlock(Main, v6, block);
  v7 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v7);
}

- (void)_setRemoteUserInfoValue:(id)value forKey:(id)key
{
  v10[7] = *MEMORY[0x1E69E9840];
  Main = CFRunLoopGetMain();
  v8 = *MEMORY[0x1E695E8D0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51___NSProgressProxy__setRemoteUserInfoValue_forKey___block_invoke;
  v10[3] = &unk_1E69F68D8;
  v10[4] = value;
  v10[5] = key;
  v10[6] = self;
  CFRunLoopPerformBlock(Main, v8, v10);
  v9 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v9);
}

- (void)_setRemoteValues:(id)values forKeys:(id)keys
{
  v10[7] = *MEMORY[0x1E69E9840];
  Main = CFRunLoopGetMain();
  v8 = *MEMORY[0x1E695E8D0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45___NSProgressProxy__setRemoteValues_forKeys___block_invoke;
  v10[3] = &unk_1E69F68D8;
  v10[4] = values;
  v10[5] = keys;
  v10[6] = self;
  CFRunLoopPerformBlock(Main, v8, v10);
  v9 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v9);
}

- (id)estimatedTimeRemaining
{
  [(NSLock *)self->super._lock lock];
  v3 = [(NSOwnedDictionaryProxy *)self->super._userInfoProxy objectForKey:@"NSProgressEstimatedTimeRemainingKey"];
  [(NSLock *)self->super._lock unlock];
  return v3;
}

- (id)throughput
{
  [(NSLock *)self->super._lock lock];
  v3 = [(NSOwnedDictionaryProxy *)self->super._userInfoProxy objectForKey:@"NSProgressThroughputKey"];
  [(NSLock *)self->super._lock unlock];
  return v3;
}

- (id)fileOperationKind
{
  [(NSLock *)self->super._lock lock];
  v3 = [(NSOwnedDictionaryProxy *)self->super._userInfoProxy objectForKey:@"NSProgressFileOperationKindKey"];
  [(NSLock *)self->super._lock unlock];
  return v3;
}

- (id)fileURL
{
  [(NSLock *)self->super._lock lock];
  v3 = [(NSOwnedDictionaryProxy *)self->super._userInfoProxy objectForKey:@"NSProgressFileURLKey"];
  [(NSLock *)self->super._lock unlock];
  return v3;
}

- (id)fileTotalCount
{
  [(NSLock *)self->super._lock lock];
  v3 = [(NSOwnedDictionaryProxy *)self->super._userInfoProxy objectForKey:@"NSProgressFileTotalCountKey"];
  [(NSLock *)self->super._lock unlock];
  return v3;
}

- (id)fileCompletedCount
{
  [(NSLock *)self->super._lock lock];
  v3 = [(NSOwnedDictionaryProxy *)self->super._userInfoProxy objectForKey:@"NSProgressFileCompletedCountKey"];
  [(NSLock *)self->super._lock unlock];
  return v3;
}

- (id)byteTotalCount
{
  [(NSLock *)self->super._lock lock];
  v3 = [(NSOwnedDictionaryProxy *)self->super._userInfoProxy objectForKey:@"NSProgressByteTotalCountKey"];
  [(NSLock *)self->super._lock unlock];
  return v3;
}

- (id)byteCompletedCount
{
  [(NSLock *)self->super._lock lock];
  v3 = [(NSOwnedDictionaryProxy *)self->super._userInfoProxy objectForKey:@"NSProgressByteCompletedCountKey"];
  [(NSLock *)self->super._lock unlock];
  return v3;
}

- (void)acknowledgeWithSuccess:(BOOL)success
{
  successCopy = success;
  bundleIdentifier = [+[NSBundle mainBundle](NSBundle bundleIdentifier];
  if (bundleIdentifier)
  {
    v6 = bundleIdentifier;
    forwarder = self->_forwarder;

    [(NSProgressPublisher *)forwarder appWithBundleID:v6 didAcknowledgeWithSuccess:successCopy];
  }
}

@end