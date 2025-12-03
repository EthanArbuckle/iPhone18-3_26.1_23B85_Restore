@interface ASMPeripheralControlServices
- (ASMPeripheralControlServices)init;
- (ASMPeripheralControlServices)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_interrupted;
- (void)_invalidated;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)modifyPeripheralConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion;
- (void)writeWithData:(id)data characteristic:(id)characteristic identifier:(id)identifier completion:(id)completion;
@end

@implementation ASMPeripheralControlServices

- (ASMPeripheralControlServices)init
{
  v5.receiver = self;
  v5.super_class = ASMPeripheralControlServices;
  v2 = [(ASMPeripheralControlServices *)&v5 init];
  if (v2)
  {
    v2->_clientID = ASMXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (ASMPeripheralControlServices)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASMPeripheralControlServices *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clientID = self->_clientID;
  if (clientID)
  {
    [coder encodeInt64:clientID forKey:@"cid"];
  }
}

- (id)description
{
  clientID = self->_clientID;
  NSAppendPrintF();

  return 0;
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.AccessorySensorManager" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284FFFB40];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__ASMPeripheralControlServices__ensureXPCStarted__block_invoke;
    v9[3] = &unk_278BF7618;
    v9[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__ASMPeripheralControlServices__ensureXPCStarted__block_invoke_2;
    v8[3] = &unk_278BF7618;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v8];
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284FFFBA0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __49__ASMPeripheralControlServices__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  if (gLogCategory_ASMPeripheralControlServices <= 50 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
  {
    [ASMPeripheralControlServices _interrupted];
  }

  v3 = MEMORY[0x23EEFA6E0](self->_interruptionHandler);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASMPeripheralControlServices_invalidate__block_invoke;
  block[3] = &unk_278BF7618;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __42__ASMPeripheralControlServices_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = result;
    *(v2 + 8) = 1;
    if ((*(*(result + 32) + 9) & 1) == 0 && gLogCategory_ASMPeripheralControlServices <= 30 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
    {
      __42__ASMPeripheralControlServices_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);
    if (v4[2])
    {
      [v4[2] invalidate];
      v4 = *(v3 + 32);
    }

    return [v4 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_ASMPeripheralControlServices <= 50 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
    {
      [ASMPeripheralControlServices _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v3 = MEMORY[0x23EEFA6E0](self->_invalidationHandler, a2);
      v4 = v3;
      if (v3)
      {
        (*(v3 + 16))(v3);
      }

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_ASMPeripheralControlServices <= 10 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
      {
        [ASMPeripheralControlServices _invalidated];
      }
    }
  }
}

- (void)modifyPeripheralConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__ASMPeripheralControlServices_modifyPeripheralConfiguration_identifier_completion___block_invoke;
  v15[3] = &unk_278BF7668;
  v16 = configurationCopy;
  v17 = identifierCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = configurationCopy;
  dispatch_async(dispatchQueue, v15);
}

void __84__ASMPeripheralControlServices_modifyPeripheralConfiguration_identifier_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_ASMPeripheralControlServices <= 30 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
  {
    __84__ASMPeripheralControlServices_modifyPeripheralConfiguration_identifier_completion___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 48) _ensureXPCStarted];
  if (v2)
  {
    if (gLogCategory_ASMPeripheralControlServices <= 90 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
    {
      __84__ASMPeripheralControlServices_modifyPeripheralConfiguration_identifier_completion___block_invoke_cold_2();
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      (*(v3 + 16))(v3, v2);
    }
  }

  else
  {
    if (!*(*(a1 + 48) + 16) && gLogCategory_ASMPeripheralControlServices <= 90 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
    {
      __84__ASMPeripheralControlServices_modifyPeripheralConfiguration_identifier_completion___block_invoke_cold_3();
    }

    v4 = *(*(a1 + 48) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __84__ASMPeripheralControlServices_modifyPeripheralConfiguration_identifier_completion___block_invoke_2;
    v6[3] = &unk_278BF7640;
    v7 = *(a1 + 56);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
    [v5 modify:*(a1 + 48) peripheralConfiguration:*(a1 + 32) identifier:*(a1 + 40) completion:*(a1 + 56)];
  }
}

uint64_t __84__ASMPeripheralControlServices_modifyPeripheralConfiguration_identifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (gLogCategory_ASMPeripheralControlServices <= 90 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
  {
    __84__ASMPeripheralControlServices_modifyPeripheralConfiguration_identifier_completion___block_invoke_2_cold_1();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)writeWithData:(id)data characteristic:(id)characteristic identifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  characteristicCopy = characteristic;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ASMPeripheralControlServices_writeWithData_characteristic_identifier_completion___block_invoke;
  block[3] = &unk_278BF7690;
  v20 = dataCopy;
  v21 = characteristicCopy;
  v22 = identifierCopy;
  selfCopy = self;
  v24 = completionCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  v17 = characteristicCopy;
  v18 = dataCopy;
  dispatch_async(dispatchQueue, block);
}

void __83__ASMPeripheralControlServices_writeWithData_characteristic_identifier_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_ASMPeripheralControlServices <= 30 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
  {
    __83__ASMPeripheralControlServices_writeWithData_characteristic_identifier_completion___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 56) _ensureXPCStarted];
  if (v2)
  {
    if (gLogCategory_ASMPeripheralControlServices <= 90 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
    {
      __83__ASMPeripheralControlServices_writeWithData_characteristic_identifier_completion___block_invoke_cold_2();
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      (*(v3 + 16))(v3, v2);
    }
  }

  else
  {
    if (!*(*(a1 + 56) + 16) && gLogCategory_ASMPeripheralControlServices <= 90 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
    {
      __83__ASMPeripheralControlServices_writeWithData_characteristic_identifier_completion___block_invoke_cold_3();
    }

    v4 = *(*(a1 + 56) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__ASMPeripheralControlServices_writeWithData_characteristic_identifier_completion___block_invoke_2;
    v6[3] = &unk_278BF7640;
    v7 = *(a1 + 64);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
    [v5 write:*(a1 + 56) withData:*(a1 + 32) characteristic:*(a1 + 40) identifier:*(a1 + 48) completion:*(a1 + 64)];
  }
}

uint64_t __83__ASMPeripheralControlServices_writeWithData_characteristic_identifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (gLogCategory_ASMPeripheralControlServices <= 90 && (gLogCategory_ASMPeripheralControlServices != -1 || _LogCategory_Initialize()))
  {
    __83__ASMPeripheralControlServices_writeWithData_characteristic_identifier_completion___block_invoke_2_cold_1();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __84__ASMPeripheralControlServices_modifyPeripheralConfiguration_identifier_completion___block_invoke_cold_1(void *a1)
{
  v3 = a1[5];
  v4 = *(a1[6] + 24);
  v2 = a1[4];
  return LogPrintF();
}

uint64_t __83__ASMPeripheralControlServices_writeWithData_characteristic_identifier_completion___block_invoke_cold_1(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 56) + 24);
  v2 = *(a1 + 32);
  return LogPrintF();
}

@end