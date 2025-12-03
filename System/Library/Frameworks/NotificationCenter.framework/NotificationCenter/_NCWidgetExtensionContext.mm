@interface _NCWidgetExtensionContext
- (BOOL)widgetIsForeground;
- (CGSize)_maximumSizeForDisplayMode:(int64_t)mode;
- (_NCWidgetExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (_NCWidgetViewController)_hostViewController;
- (int64_t)widgetLargestAvailableDisplayMode;
- (void)_setMaximumSize:(CGSize)size forDisplayMode:(int64_t)mode;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)setWidgetLargestAvailableDisplayMode:(int64_t)mode;
@end

@implementation _NCWidgetExtensionContext

- (_NCWidgetExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  itemsCopy = items;
  endpointCopy = endpoint;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = _NCWidgetExtensionContext;
  v11 = [(_NCWidgetExtensionContext *)&v22 initWithInputItems:itemsCopy listenerEndpoint:endpointCopy contextUUID:dCopy];
  v12 = v11;
  if (v11)
  {
    v11->_largestAvailableDisplayMode = -1;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v19 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77___NCWidgetExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke;
    v14[3] = &unk_278750BE8;
    v16 = v20;
    v15 = v11;
    v17 = v18;
    [itemsCopy enumerateObjectsUsingBlock:v14];

    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v20, 8);
  }

  return v12;
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___NCWidgetExtensionContext_openURL_completionHandler___block_invoke;
  block[3] = &unk_278750C38;
  v12 = handlerCopy;
  v13 = v14;
  v11 = lCopy;
  v8 = handlerCopy;
  v9 = lCopy;
  dispatch_async(v7, block);

  _Block_object_dispose(v14, 8);
}

- (CGSize)_maximumSizeForDisplayMode:(int64_t)mode
{
  v3 = &OBJC_IVAR____NCWidgetExtensionContext__maxCompactSize;
  if (mode == 1)
  {
    v3 = &OBJC_IVAR____NCWidgetExtensionContext__maxExpandedSize;
  }

  v4 = (self + *v3);
  v5 = *v4;
  v6 = v4[1];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_setMaximumSize:(CGSize)size forDisplayMode:(int64_t)mode
{
  if (mode)
  {
    if (mode != 1)
    {
      return;
    }

    v4 = &OBJC_IVAR____NCWidgetExtensionContext__maxExpandedSize;
  }

  else
  {
    v4 = &OBJC_IVAR____NCWidgetExtensionContext__maxCompactSize;
  }

  *(&self->super.super.isa + *v4) = size;
}

- (int64_t)widgetLargestAvailableDisplayMode
{
  if (self->_largestAvailableDisplayMode == -1)
  {
    return 0;
  }

  else
  {
    return self->_largestAvailableDisplayMode;
  }
}

- (void)setWidgetLargestAvailableDisplayMode:(int64_t)mode
{
  if (self->_largestAvailableDisplayMode != mode)
  {
    self->_largestAvailableDisplayMode = mode;
    _hostViewController = [(_NCWidgetExtensionContext *)self _hostViewController];
    [_hostViewController _clientLargestSupportedDisplayModeDidChange];
  }
}

- (BOOL)widgetIsForeground
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  v3 = [WeakRetained _visibilityState] == 1;

  return v3;
}

- (_NCWidgetViewController)_hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end