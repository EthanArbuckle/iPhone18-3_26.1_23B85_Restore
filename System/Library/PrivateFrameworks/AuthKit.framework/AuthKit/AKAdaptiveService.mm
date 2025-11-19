@interface AKAdaptiveService
- (AKAdaptiveService)initWithInterface:(id)a3 strongObject:(id)a4;
- (AKAdaptiveService)initWithInterface:(id)a3 weakObject:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_initWithInterface:(id)a3 object:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AKAdaptiveService

- (id)_initWithInterface:(id)a3 object:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = v13;
  v13 = 0;
  v10.receiver = v4;
  v10.super_class = AKAdaptiveService;
  v13 = [(AKAdaptiveService *)&v10 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    objc_storeStrong(&v13->_exportedInterface, location[0]);
    objc_storeStrong(&v13->_exportedObject, v11);
    v5 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v13->_listener;
    v13->_listener = v5;
    MEMORY[0x1E69E5920](listener);
    [(NSXPCListener *)v13->_listener setDelegate:v13];
  }

  v8 = MEMORY[0x1E69E5928](v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (AKAdaptiveService)initWithInterface:(id)a3 strongObject:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = [_AKMessageForwarder alloc];
  v9 = [(_AKMessageForwarder *)v4 initWithStrongReceiver:v10];
  v5 = objc_alloc(objc_opt_class());
  v8 = [v5 _initWithInterface:location[0] object:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (AKAdaptiveService)initWithInterface:(id)a3 weakObject:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = [_AKMessageForwarder alloc];
  v9 = [(_AKMessageForwarder *)v4 initWithWeakReceiver:v10];
  v5 = objc_alloc(objc_opt_class());
  v8 = [v5 _initWithInterface:location[0] object:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(AKAdaptiveService *)self invalidate];
  v2.receiver = v4;
  v2.super_class = AKAdaptiveService;
  [(AKAdaptiveService *)&v2 dealloc];
}

- (void)invalidate
{
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;
  MEMORY[0x1E69E5920](interruptionHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;
  MEMORY[0x1E69E5920](invalidationHandler);
  [(NSXPCListener *)self->_listener invalidate];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  [v22 setExportedInterface:v24->_exportedInterface];
  [v22 setExportedObject:v24->_exportedObject];
  [v22 setRemoteObjectInterface:v24->_remoteObjectInterface];
  v21 = v22;
  objc_initWeak(&v20, v24);
  v7 = v22;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __56__AKAdaptiveService_listener_shouldAcceptNewConnection___block_invoke;
  v18 = &unk_1E73D34E8;
  objc_copyWeak(&v19, &v20);
  [v7 setInterruptionHandler:&v14];
  v5 = v22;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __56__AKAdaptiveService_listener_shouldAcceptNewConnection___block_invoke_2;
  v12 = &unk_1E73D3750;
  v13[1] = v21;
  objc_copyWeak(v13, &v20);
  [v5 setInvalidationHandler:&v8];
  [v22 setShouldHandleInvalidation:0];
  [v22 activate];
  objc_destroyWeak(v13);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v20);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  return 1;
}

void __56__AKAdaptiveService_listener_shouldAcceptNewConnection___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [location[0] interruptionHandler];
  MEMORY[0x1E69E5920](v2);
  if (v2)
  {
    v1 = [location[0] interruptionHandler];
    v1[2]();
    MEMORY[0x1E69E5920](v1);
  }

  objc_storeStrong(location, 0);
}

void __56__AKAdaptiveService_listener_shouldAcceptNewConnection___block_invoke_2(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([a1[5] shouldHandleInvalidation])
  {
    location[0] = objc_loadWeakRetained(a1 + 4);
    v2 = [location[0] invalidationHandler];
    MEMORY[0x1E69E5920](v2);
    if (v2)
    {
      v1 = [location[0] invalidationHandler];
      v1[2]();
      MEMORY[0x1E69E5920](v1);
    }

    objc_storeStrong(location, 0);
  }
}

@end