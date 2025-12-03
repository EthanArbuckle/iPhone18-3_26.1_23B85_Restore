@interface QLPreviewExtensionServiceContext_iOS
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)protocolHost;
- (void)_startObservingPreviewControllerAttributeChanges;
- (void)_stopObservingPreviewControllerAttributeChanges;
- (void)dealloc;
- (void)generatePreviewForURL:(id)l completion:(id)completion;
- (void)getARQLInlineProxy2WithCompletionHandler:(id)handler;
- (void)getARQLInlineProxy3WithCompletionHandler:(id)handler;
- (void)getARQLInlineProxyWithCompletionHandler:(id)handler;
- (void)getPrinterProxyWithCompletionHandler:(id)handler;
- (void)invalidateServiceWithCompletionHandler:(id)handler;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)previewControllerDidUpdatePreferredContentSize:(id)size;
- (void)previewControllerDidUpdateTitle:(id)title;
- (void)previewDidAppear:(BOOL)appear;
- (void)previewDidDisappear:(BOOL)disappear;
- (void)previewWillAppear:(BOOL)appear;
- (void)previewWillDisappear:(BOOL)disappear;
- (void)setAppearance:(id)appearance animated:(BOOL)animated;
- (void)setHostViewControllerProxy:(id)proxy;
@end

@implementation QLPreviewExtensionServiceContext_iOS

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[QLPreviewExtensionServiceContext_iOS _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[QLPreviewExtensionServiceContext_iOS _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

- (id)protocolHost
{
  _auxiliaryConnection = [(QLPreviewExtensionServiceContext_iOS *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_219];

  return v3;
}

- (void)previewControllerDidUpdateTitle:(id)title
{
  titleCopy = title;
  protocolHost = [(QLPreviewExtensionServiceContext_iOS *)self protocolHost];
  [protocolHost previewControllerDidUpdateTitle:titleCopy];
}

- (void)previewControllerDidUpdatePreferredContentSize:(id)size
{
  sizeCopy = size;
  protocolHost = [(QLPreviewExtensionServiceContext_iOS *)self protocolHost];
  [protocolHost previewControllerDidUpdatePreferredContentSize:sizeCopy];
}

- (void)previewWillAppear:(BOOL)appear
{
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    QLRunInMainThread();
  }
}

- (void)previewDidAppear:(BOOL)appear
{
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    QLRunInMainThread();
  }
}

- (void)previewWillDisappear:(BOOL)disappear
{
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    QLRunInMainThread();
  }
}

- (void)previewDidDisappear:(BOOL)disappear
{
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    QLRunInMainThread();
  }
}

- (void)setAppearance:(id)appearance animated:(BOOL)animated
{
  appearanceCopy = appearance;
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = appearanceCopy;
    QLRunInMainThread();
  }
}

- (void)getPrinterProxyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    previewViewController2 = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
    printer = [previewViewController2 printer];
    handlerCopy[2](handlerCopy, printer);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)getARQLInlineProxyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  v5 = [previewViewController conformsToProtocol:&unk_284DC59D0];

  if (v5)
  {
    previewViewController2 = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
    handlerCopy[2](handlerCopy, previewViewController2);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)getARQLInlineProxy2WithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  v5 = [previewViewController conformsToProtocol:&unk_284DCED78];

  if (v5)
  {
    previewViewController2 = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
    handlerCopy[2](handlerCopy, previewViewController2);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)getARQLInlineProxy3WithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  v5 = [previewViewController conformsToProtocol:&unk_284DCEDD8];

  if (v5)
  {
    previewViewController2 = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
    handlerCopy[2](handlerCopy, previewViewController2);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)setHostViewControllerProxy:(id)proxy
{
  proxyCopy = proxy;
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    previewViewController2 = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = proxyCopy;
      QLRunInMainThread();
    }
  }

  else
  {
  }
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  contextCopy = context;
  handlerCopy = handler;
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    previewViewController2 = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
    canBeShared = [contextCopy canBeShared];
    if (canBeShared != [previewViewController2 isShareEnabled])
    {
      [previewViewController2 setIsShareEnabled:canBeShared];
    }

    clientPreviewOptions = [contextCopy clientPreviewOptions];
    if (clientPreviewOptions)
    {
      previewOptions = [previewViewController2 previewOptions];
      v17 = [previewOptions isEqual:clientPreviewOptions];

      if ((v17 & 1) == 0)
      {
        [previewViewController2 setPreviewOptions:clientPreviewOptions];
      }
    }
  }

  previewViewController3 = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  clientPreviewItemDisplayState = [contextCopy clientPreviewItemDisplayState];
  if (clientPreviewItemDisplayState)
  {
    previewItemDisplayState = [previewViewController3 previewItemDisplayState];
    v21 = [previewItemDisplayState isEqual:clientPreviewItemDisplayState];

    if ((v21 & 1) == 0)
    {
      [previewViewController3 setPreviewItemDisplayState:clientPreviewItemDisplayState];
    }
  }

  v24 = contentsCopy;
  v22 = handlerCopy;
  v23 = contentsCopy;
  QLRunInMainThread();
}

- (void)generatePreviewForURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  previewProvider = [(QLPreviewExtensionServiceContext_iOS *)self previewProvider];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  previewProvider2 = [(QLPreviewExtensionServiceContext_iOS *)self previewProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLRemoteItemViewController" code:3 userInfo:0];
    completionCopy[2](completionCopy, 0, v16);

    goto LABEL_6;
  }

  v11 = objc_alloc(MEMORY[0x277D43EA0]);
  fileURL = [lCopy fileURL];
  v13 = [v11 initWithURL:fileURL];

  previewProvider3 = [(QLPreviewExtensionServiceContext_iOS *)self previewProvider];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__QLPreviewExtensionServiceContext_iOS_generatePreviewForURL_completion___block_invoke;
  v17[3] = &unk_278B58E58;
  v20 = completionCopy;
  v18 = v13;
  v19 = lCopy;
  v15 = v13;
  [previewProvider3 providePreviewForFileRequest:v15 completionHandler:v17];

LABEL_6:
}

- (void)invalidateServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  inputItems = [(QLPreviewExtensionServiceContext_iOS *)self inputItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__QLPreviewExtensionServiceContext_iOS_invalidateServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_278B57B40;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(QLPreviewExtensionServiceContext_iOS *)self completeRequestReturningItems:inputItems completionHandler:v7];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  if (context == &QLRemoteItemViewControllerContext)
  {
    if ([pathCopy isEqualToString:@"title"])
    {
      title = [objectCopy title];
      [(QLPreviewExtensionServiceContext_iOS *)self previewControllerDidUpdateTitle:title];
    }

    else
    {
      if (![pathCopy isEqualToString:@"preferredContentSize"])
      {
        goto LABEL_8;
      }

      v13 = MEMORY[0x277CCAE60];
      [objectCopy preferredContentSize];
      title = [v13 valueWithCGSize:?];
      [(QLPreviewExtensionServiceContext_iOS *)self previewControllerDidUpdatePreferredContentSize:title];
    }

    goto LABEL_8;
  }

  v14.receiver = self;
  v14.super_class = QLPreviewExtensionServiceContext_iOS;
  [(QLPreviewExtensionServiceContext_iOS *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:change context:context];
LABEL_8:
}

- (void)_startObservingPreviewControllerAttributeChanges
{
  previewViewController = [(QLPreviewExtensionServiceContext_iOS *)self previewViewController];
  [(QLPreviewExtensionServiceContext_iOS *)self setObservedObject:previewViewController];

  observedObject = [(QLPreviewExtensionServiceContext_iOS *)self observedObject];
  [observedObject addObserver:self forKeyPath:@"title" options:0 context:&QLRemoteItemViewControllerContext];

  observedObject2 = [(QLPreviewExtensionServiceContext_iOS *)self observedObject];
  [observedObject2 addObserver:self forKeyPath:@"preferredContentSize" options:0 context:&QLRemoteItemViewControllerContext];

  self->_isObservingPreviewController = 1;
}

- (void)_stopObservingPreviewControllerAttributeChanges
{
  observedObject = [(QLPreviewExtensionServiceContext_iOS *)self observedObject];
  [observedObject removeObserver:self forKeyPath:@"title" context:&QLRemoteItemViewControllerContext];

  observedObject2 = [(QLPreviewExtensionServiceContext_iOS *)self observedObject];
  [observedObject2 removeObserver:self forKeyPath:@"preferredContentSize" context:&QLRemoteItemViewControllerContext];

  [(QLPreviewExtensionServiceContext_iOS *)self setObservedObject:0];
  self->_isObservingPreviewController = 0;
}

- (void)dealloc
{
  if (self->_isObservingPreviewController)
  {
    [(QLPreviewExtensionServiceContext_iOS *)self _stopObservingPreviewControllerAttributeChanges];
  }

  v3.receiver = self;
  v3.super_class = QLPreviewExtensionServiceContext_iOS;
  [(QLPreviewExtensionServiceContext_iOS *)&v3 dealloc];
}

@end