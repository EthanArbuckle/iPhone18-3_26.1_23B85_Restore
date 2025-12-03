@interface PeppyHIDService
- (BOOL)setProperty:(id)property forKey:(id)key client:(id)client;
- (PeppyHIDService)init;
- (id)_getPropertyForKey:(id)key;
- (id)eventMatching:(id)matching forClient:(id)client;
- (id)propertyForKey:(id)key client:(id)client;
- (int)_probeWithService:(unsigned int)service properties:(id)properties outScore:(int *)score;
- (int)_startWithService:(unsigned int)service properties:(id)properties;
- (void)_scheduleWithDispatchQueue:(id)queue;
- (void)_setEventCallback:(void *)callback target:(void *)target refcon:(void *)refcon;
- (void)_unscheduleWithDispatchQueue:(id)queue;
- (void)dealloc;
@end

@implementation PeppyHIDService

- (PeppyHIDService)init
{
  v7.receiver = self;
  v7.super_class = PeppyHIDService;
  v2 = [(PeppyHIDService *)&v7 init];
  if (v2)
  {
    v3 = malloc_type_malloc(0x40uLL, 0x108004020ACED9DuLL);
    v2->_pluginInterface = v3;
    v3->_reserved = v2;
    v3->QueryInterface = PeppyIUnknown::QueryInterface;
    v3->AddRef = PeppyIUnknown::AddRef;
    v3->Release = PeppyIUnknown::Release;
    *&v3->version = 1;
    v3->Probe = PeppyIUnknown::Probe;
    v3->Start = PeppyIUnknown::Start;
    v3->Stop = PeppyIUnknown::Stop;
    v4 = malloc_type_malloc(0x68uLL, 0x80040FDC59921uLL);
    v2->_serviceInterface = v4;
    v4->var0 = v2;
    v4->var1 = PeppyIUnknown::QueryInterface;
    v4->var2 = PeppyIUnknown::AddRef;
    v4->var3 = PeppyIUnknown::Release;
    v4->var4 = PeppyIUnknown::open;
    v4->var5 = PeppyIUnknown::close;
    v4->var6 = PeppyIUnknown::copyProperty;
    v4->var7 = PeppyIUnknown::setProperty;
    v4->var8 = PeppyIUnknown::setEventCallback;
    v4->var9 = PeppyIUnknown::scheduleWithDispatchQueue;
    v4->var10 = PeppyIUnknown::unscheduleFromDispatchQueue;
    v4->var11 = PeppyIUnknown::copyEvent;
    v4->var12 = PeppyIUnknown::setOutputEvent;
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  free(self->_serviceInterface);
  self->_serviceInterface = 0;
  free(self->_pluginInterface);
  self->_pluginInterface = 0;
  v3.receiver = self;
  v3.super_class = PeppyHIDService;
  [(PeppyHIDService *)&v3 dealloc];
}

- (id)propertyForKey:(id)key client:(id)client
{
  keyCopy = key;
  clientCopy = client;
  abort();
}

- (BOOL)setProperty:(id)property forKey:(id)key client:(id)client
{
  propertyCopy = property;
  keyCopy = key;
  clientCopy = client;
  abort();
}

- (id)eventMatching:(id)matching forClient:(id)client
{
  matchingCopy = matching;
  clientCopy = client;
  abort();
}

- (int)_probeWithService:(unsigned int)service properties:(id)properties outScore:(int *)score
{
  v6 = *&service;
  propertiesCopy = properties;
  v10 = 0;
  if ([objc_opt_class() matchService:v6 options:propertiesCopy score:&v10])
  {
    v8 = 0;
    *score = v10;
  }

  else
  {
    v8 = -536870212;
  }

  return v8;
}

- (int)_startWithService:(unsigned int)service properties:(id)properties
{
  v4 = [(PeppyHIDService *)self initWithService:*&service];

  if (v4)
  {
    return 0;
  }

  else
  {
    return -536870212;
  }
}

- (id)_getPropertyForKey:(id)key
{
  v3 = [(PeppyHIDService *)self propertyForKey:key client:0];

  return v3;
}

- (void)_setEventCallback:(void *)callback target:(void *)target refcon:(void *)refcon
{
  v9 = objc_opt_new();
  v9[1] = callback;
  v9[2] = target;
  v9[3] = refcon;
  v10 = v9;
  [(PeppyHIDService *)self setEventDispatcher:?];
}

- (void)_scheduleWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v6 = queueCopy;
  if (queueCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __46__PeppyHIDService__scheduleWithDispatchQueue___block_invoke;
    block[3] = &unk_109250;
    block[4] = self;
    v9 = queueCopy;
    dispatch_async(v9, block);
  }

  else
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PeppyHIDService.mm" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }
}

id __46__PeppyHIDService__scheduleWithDispatchQueue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCancelHandler:&__block_literal_global_0];
  [*(a1 + 32) setDispatchQueue:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 activate];
}

- (void)_unscheduleWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PeppyHIDService.mm" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__PeppyHIDService__unscheduleWithDispatchQueue___block_invoke;
  block[3] = &unk_109150;
  block[4] = self;
  dispatch_async(queueCopy, block);
}

@end