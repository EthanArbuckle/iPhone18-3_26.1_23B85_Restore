@interface _MXExtensionDispatchCenter
- (_MXExtensionDispatchCenter)initWithExtensionProvider:(id)provider;
- (_MXExtensionProvider)extensionProvider;
- (id)addExtensionsUpdateHandler:(id)handler;
- (void)dispatchExtensions:(id)extensions error:(id)error;
- (void)removeExtensionUpdateHandler:(id)handler;
@end

@implementation _MXExtensionDispatchCenter

- (_MXExtensionProvider)extensionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionProvider);

  return WeakRetained;
}

- (void)removeExtensionUpdateHandler:(id)handler
{
  handlerCopy = handler;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59___MXExtensionDispatchCenter_removeExtensionUpdateHandler___block_invoke;
  v7[3] = &unk_1E76CD810;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(lock, v7);
}

- (id)addExtensionsUpdateHandler:(id)handler
{
  v4 = [handler copy];
  lock = self->_lock;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __57___MXExtensionDispatchCenter_addExtensionsUpdateHandler___block_invoke;
  v14 = &unk_1E76CDA20;
  selfCopy = self;
  v6 = v4;
  v16 = v6;
  dispatch_sync(lock, &v11);
  WeakRetained = objc_loadWeakRetained(&self->_extensionProvider);
  _currentExtensions = [WeakRetained _currentExtensions];

  if (_currentExtensions)
  {
    (*(v6 + 2))(v6, _currentExtensions, 0);
  }

  v9 = MEMORY[0x1A58E9F30](v6);

  return v9;
}

- (void)dispatchExtensions:(id)extensions error:(id)error
{
  extensionsCopy = extensions;
  errorCopy = error;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__18536;
  v20 = __Block_byref_object_dispose__18537;
  v21 = 0;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___MXExtensionDispatchCenter_dispatchExtensions_error___block_invoke;
  block[3] = &unk_1E76CD7E8;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(lock, block);
  v9 = v17[5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___MXExtensionDispatchCenter_dispatchExtensions_error___block_invoke_2;
  v12[3] = &unk_1E76C8D10;
  v10 = extensionsCopy;
  v13 = v10;
  v11 = errorCopy;
  v14 = v11;
  [v9 enumerateObjectsUsingBlock:v12];

  _Block_object_dispose(&v16, 8);
}

- (_MXExtensionDispatchCenter)initWithExtensionProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = _MXExtensionDispatchCenter;
  v5 = [(_MXExtensionDispatchCenter *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_extensionProvider, providerCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.maps._MXExtensionDispatchCenter", v7);
    lock = v6->_lock;
    v6->_lock = v8;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    handlers = v6->_handlers;
    v6->_handlers = weakObjectsHashTable;
  }

  return v6;
}

@end