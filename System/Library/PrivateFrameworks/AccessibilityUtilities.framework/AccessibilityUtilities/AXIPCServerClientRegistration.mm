@interface AXIPCServerClientRegistration
- (AXIPCServerClientRegistration)initWithPort:(unsigned int)port identifier:(id)identifier;
- (AXIPCServerClientRegistrationDelegate)delegate;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation AXIPCServerClientRegistration

- (AXIPCServerClientRegistration)initWithPort:(unsigned int)port identifier:(id)identifier
{
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = AXIPCServerClientRegistration;
  v7 = [(AXIPCServerClientRegistration *)&v20 init];
  if (v7)
  {
    AXIncrefSendRight(port);
    *(v7 + 2) = port;
    v8 = [identifierCopy copy];
    v9 = *(v7 + 2);
    *(v7 + 2) = v8;

    v10 = dispatch_source_create(MEMORY[0x1E69E96E0], port, 1uLL, MEMORY[0x1E69E96A0]);
    v11 = *(v7 + 3);
    *(v7 + 3) = v10;

    objc_initWeak(&location, v7);
    v12 = *(v7 + 3);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __57__AXIPCServerClientRegistration_initWithPort_identifier___block_invoke;
    handler[3] = &unk_1E71EA778;
    objc_copyWeak(&v18, &location);
    dispatch_source_set_event_handler(v12, handler);
    v13 = *(v7 + 3);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__AXIPCServerClientRegistration_initWithPort_identifier___block_invoke_2;
    v15[3] = &__block_descriptor_36_e5_v8__0l;
    portCopy = port;
    dispatch_source_set_cancel_handler(v13, v15);
    dispatch_resume(*(v7 + 3));
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __57__AXIPCServerClientRegistration_initWithPort_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 serverClientRegistrationInvalidated:v3];
}

uint64_t __57__AXIPCServerClientRegistration_initWithPort_identifier___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    result = mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
    if (result)
    {
      return _AXAssert();
    }
  }

  return result;
}

- (void)dealloc
{
  invalidationSource = self->_invalidationSource;
  if (invalidationSource)
  {
    dispatch_source_cancel(invalidationSource);
    v4 = self->_invalidationSource;
    self->_invalidationSource = 0;
  }

  v5.receiver = self;
  v5.super_class = AXIPCServerClientRegistration;
  [(AXIPCServerClientRegistration *)&v5 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    port = [(AXIPCServerClientRegistration *)self port];
    v6 = port == [equalCopy port];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AXIPCServerClientRegistrationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end