@interface CLFindMyAccessoryRangingManager
- (CLFindMyAccessoryRangingManager)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (void)connectToDevice:(id)device;
- (void)disconnectFromDevice:(id)device;
- (void)fetchFirmwareVersionFromDevice:(id)device;
- (void)handleInterruption;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)initRoseWithParameters:(id)parameters onDevice:(id)device;
- (void)prepareForStartRangingOnDevice:(id)device;
- (void)setRoseRangingParameters:(id)parameters onDevice:(id)device;
- (void)startEventCounterOnDevice:(id)device;
- (void)startRangingWithParameters:(id)parameters onDevice:(id)device;
- (void)stopEventCounterOnDevice:(id)device;
- (void)stopRangingOnDevice:(id)device;
- (void)stopRoseWithParameters:(id)parameters onDevice:(id)device;
@end

@implementation CLFindMyAccessoryRangingManager

- (CLFindMyAccessoryRangingManager)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = CLFindMyAccessoryRangingManager;
  v6 = [(CLFindMyAccessoryRangingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegate);
    if (queue)
    {
      v7->_delegateQueue = queue;
      dispatch_retain(queue);
    }

    else
    {
      v7->_delegateQueue = dispatch_queue_create("com.apple.findMyAccessoryRangingManager.privateQueue", 0);
    }

    operator new();
  }

  return 0;
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6B920);
  }

  v4 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
  {
    v5 = CLConnectionMessage::name(*var0);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    *buf = 136315138;
    v13 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "Got Reply: message: %s", buf, 0xCu);
  }

  v7 = sub_19B87DD40();
  if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6B920);
    }

    v8 = CLConnectionMessage::name(*var0);
    if (*(v8 + 23) < 0)
    {
      v9 = *v8;
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryRangingManager handleMessage:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleInterruption
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6B920);
  }

  v3 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Connection to locationd interrupted!!", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6B920);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryRangingManager handleInterruption]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = *MEMORY[0x1E696A578];
  v10 = @"Connection to locationd interrupted!";
  v7 = [v6 initWithDomain:@"kCLErrorDomainPrivate" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v7 forDevice:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connectToDevice:(id)device
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Feature Not Supported";
  v5 = [v4 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v5 forDevice:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)disconnectFromDevice:(id)device
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Feature Not Supported";
  v5 = [v4 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v5 forDevice:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)initRoseWithParameters:(id)parameters onDevice:(id)device
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Feature Not Supported";
  v6 = [v5 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v6 forDevice:0];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stopRoseWithParameters:(id)parameters onDevice:(id)device
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Feature Not Supported";
  v6 = [v5 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v6 forDevice:0];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setRoseRangingParameters:(id)parameters onDevice:(id)device
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Feature Not Supported";
  v6 = [v5 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v6 forDevice:0];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)prepareForStartRangingOnDevice:(id)device
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Feature Not Supported";
  v5 = [v4 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v5 forDevice:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)startRangingWithParameters:(id)parameters onDevice:(id)device
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Feature Not Supported";
  v6 = [v5 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v6 forDevice:0];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stopRangingOnDevice:(id)device
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Feature Not Supported";
  v5 = [v4 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v5 forDevice:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)startEventCounterOnDevice:(id)device
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Feature Not Supported";
  v5 = [v4 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v5 forDevice:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)stopEventCounterOnDevice:(id)device
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Feature Not Supported";
  v5 = [v4 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v5 forDevice:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchFirmwareVersionFromDevice:(id)device
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Feature Not Supported";
  v5 = [v4 initWithDomain:@"kCLErrorDomainPrivate" code:38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryRangingManager:self didFailWithError:v5 forDevice:0];

  v6 = *MEMORY[0x1E69E9840];
}

@end