@interface APEndpointManagerCarPlayDelegate
- (APEndpointManagerCarPlayDelegate)initWithEndpointManager:(OpaqueFigEndpointManager *)manager;
- (void)dealloc;
- (void)setCarPlayEnabled:(BOOL)enabled;
- (void)setEndpoint:(OpaqueFigEndpoint *)endpoint isAllowed:(BOOL)allowed;
@end

@implementation APEndpointManagerCarPlayDelegate

- (APEndpointManagerCarPlayDelegate)initWithEndpointManager:(OpaqueFigEndpointManager *)manager
{
  v5.receiver = self;
  v5.super_class = APEndpointManagerCarPlayDelegate;
  v3 = [(APEndpointManagerCarPlayDelegate *)&v5 init];
  if (v3)
  {
    v3->_weakManager = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  return v3;
}

- (void)dealloc
{
  weakManager = self->_weakManager;
  if (weakManager)
  {
    CFRelease(weakManager);
  }

  v4.receiver = self;
  v4.super_class = APEndpointManagerCarPlayDelegate;
  [(APEndpointManagerCarPlayDelegate *)&v4 dealloc];
}

- (void)setEndpoint:(OpaqueFigEndpoint *)endpoint isAllowed:(BOOL)allowed
{
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v6)
  {
    v7 = v6;
    v8 = *(CMBaseObjectGetDerivedStorage() + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__APEndpointManagerCarPlayDelegate_setEndpoint_isAllowed___block_invoke;
    block[3] = &__block_descriptor_49_e5_v8__0l;
    block[4] = v7;
    block[5] = endpoint;
    allowedCopy = allowed;
    dispatch_sync(v8, block);
  }
}

void __58__APEndpointManagerCarPlayDelegate_setEndpoint_isAllowed___block_invoke(uint64_t a1)
{
  BrowserContextForEndpoint = carManager_getBrowserContextForEndpoint(*(a1 + 32), *(a1 + 40));
  if (BrowserContextForEndpoint)
  {
    v3 = BrowserContextForEndpoint;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = (*(a1 + 48) & 1) == 0;

    carManager_updateBrowserContext(v4, v3, v5, 0, 0, -1, -1, v6);
  }
}

- (void)setCarPlayEnabled:(BOOL)enabled
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    APSPowerAssertionRaise();
    CFRetain(v5);
    v7 = *(DerivedStorage + 8);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__APEndpointManagerCarPlayDelegate_setCarPlayEnabled___block_invoke;
    v8[3] = &unk_27849C528;
    v8[4] = v10;
    v8[5] = DerivedStorage;
    enabledCopy = enabled;
    v8[6] = v5;
    dispatch_async(v7, v8);
    _Block_object_dispose(v10, 8);
  }
}

void __54__APEndpointManagerCarPlayDelegate_setCarPlayEnabled___block_invoke(uint64_t a1)
{
  if (**(a1 + 40))
  {
    __54__APEndpointManagerCarPlayDelegate_setCarPlayEnabled___block_invoke_cold_1();
  }

  else if (*(a1 + 56) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = carManager_startDiscovery();
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __54__APEndpointManagerCarPlayDelegate_setCarPlayEnabled___block_invoke_cold_2();
    }
  }

  else
  {
    carManager_stopDiscovery();
  }

  APSPowerAssertionRelease();
  v2 = *(a1 + 48);

  CFRelease(v2);
}

@end