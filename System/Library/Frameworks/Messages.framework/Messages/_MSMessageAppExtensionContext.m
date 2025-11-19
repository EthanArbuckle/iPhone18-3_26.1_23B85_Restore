@interface _MSMessageAppExtensionContext
+ (id)_allowedItemPayloadClasses;
+ (id)_extensionContextHostProtocolAllowedClassesForItems;
- (CGRect)initialFrameOfHostView;
- (UIViewController)stickerViewController;
- (UIViewController)viewController;
- (_MSMessageAppExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (id)remoteProxy;
- (void)_handlePrincipalObjectCreated;
- (void)_hostDidBeginDeferredTeardown;
- (void)_installPrincipalObjectObserver;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3;
- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap;
- (void)_remoteViewProvidesExplicitSizeSnapshot;
- (void)_requestPresentationWithStickerType:(id)a3 identifier:(id)a4;
- (void)_requestStickerExtensionMetadataDictionary:(id)a3;
- (void)_setHostBundleID:(id)a3;
- (void)_setSendingEnabled:(BOOL)a3;
- (void)_uninstallPrincipalObjectObserverIfNeeded;
- (void)beginDisablingUserInteraction;
- (void)canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4;
- (void)contentDidLoad;
- (void)dealloc;
- (void)dismiss;
- (void)dismissAndPresentPhotosApp;
- (void)dragMediaItemCanceled;
- (void)dragMediaItemMoved:(id)a3 frameInRemoteView:(CGRect)a4 rotation:(double)a5 scale:(double)a6 completionHandler:(id)a7;
- (void)endDisablingUserInteraction;
- (void)openURL:(id)a3 completionHandler:(id)a4;
- (void)presentAlertSheetWith:(id)a3 styles:(id)a4 completion:(id)a5;
- (void)presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 completion:(id)a6;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7;
- (void)presentContextMenuWithButtonTitles:(id)a3 imageNames:(id)a4 buttonFrame:(CGRect)a5 completion:(id)a6;
- (void)removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4;
- (void)requestFullScreenModalPresentationWithSize:(CGSize)a3;
- (void)requestHostSceneIdentifierWithCompletion:(id)a3;
- (void)requestPresentationStyle:(unint64_t)a3;
- (void)requestResize;
- (void)sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5;
- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)stageAppItem:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)stageMediaItem:(id)a3 skipShelf:(BOOL)a4 forceStage:(BOOL)a5 completionHandler:(id)a6;
- (void)stageRichLink:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)startDragMediaItem:(id)a3 frameInRemoteView:(CGRect)a4 fence:(id)a5 completionHandler:(id)a6;
- (void)stickerDruidDragEndedWithPayload:(id)a3;
- (void)stickerDruidDragEndedWithPayload:(id)a3 pluginIdentifier:(id)a4;
- (void)stickerDruidDragStarted;
@end

@implementation _MSMessageAppExtensionContext

+ (id)_extensionContextHostProtocolAllowedClassesForItems
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___MSMessageAppExtensionContext__extensionContextHostProtocolAllowedClassesForItems__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_extensionContextHostProtocolAllowedClassesForItems_onceToken != -1)
  {
    dispatch_once(&_extensionContextHostProtocolAllowedClassesForItems_onceToken, block);
  }

  v2 = _extensionContextHostProtocolAllowedClassesForItems_allowedClasses;

  return v2;
}

+ (id)_allowedItemPayloadClasses
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (_MSMessageAppExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v8 = a3;
  v45.receiver = self;
  v45.super_class = _MSMessageAppExtensionContext;
  v9 = [(_MSMessageAppExtensionContext *)&v45 initWithInputItems:v8 listenerEndpoint:a4 contextUUID:a5];
  if (v9)
  {
    v10 = ms_traceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(_MSMessageAppExtensionContext *)v10 initWithInputItems:v11 listenerEndpoint:v12 contextUUID:v13, v14, v15, v16, v17];
    }

    v18 = [v8 firstObject];
    v19 = [v18 userInfo];

    v20 = [v19 objectForKeyedSubscript:@"wants-live-view"];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      [(_MSMessageAppExtensionContext *)v9 setPresentationStyle:2];
      [(_MSMessageAppExtensionContext *)v9 _installPrincipalObjectObserver];
    }

    else
    {
      v22 = [v19 objectForKeyedSubscript:@"context-is-primary"];
      v23 = [v22 BOOLValue];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke;
      block[3] = &unk_1E83A2E00;
      v44 = v23;
      v24 = v9;
      v43 = v24;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke_2;
      v39 = &unk_1E83A2E00;
      v41 = v23;
      v25 = v24;
      v40 = v25;
      [(_MSMessageAppExtensionContext *)v25 _setRequestCleanUpBlock:&v36];
      v26 = *(MEMORY[0x1E695F058] + 16);
      v25->_initialFrameOfHostView.origin = *MEMORY[0x1E695F058];
      v25->_initialFrameOfHostView.size = v26;
      v27 = [v19 objectForKeyedSubscript:{@"host-view-bounds", v36, v37, v38, v39}];
      v28 = v27;
      if (v27)
      {
        [v27 CGRectValue];
        v25->_initialFrameOfHostView.origin.x = v29;
        v25->_initialFrameOfHostView.origin.y = v30;
        v25->_initialFrameOfHostView.size.width = v31;
        v25->_initialFrameOfHostView.size.height = v32;
      }

      [(_MSMessageAppExtensionContext *)v25 _installPrincipalObjectObserver];
    }

    v33 = [[_MSMessageAppContext alloc] initWithAppContext:v9];
    containingContext = v9->_containingContext;
    v9->_containingContext = v33;
  }

  return v9;
}

- (void)dealloc
{
  [(_MSMessageAppExtensionContext *)self _uninstallPrincipalObjectObserverIfNeeded];
  v3 = ms_traceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_MSMessageAppExtensionContext *)v3 dealloc:v4];
  }

  v11.receiver = self;
  v11.super_class = _MSMessageAppExtensionContext;
  [(_MSMessageAppExtensionContext *)&v11 dealloc];
}

- (void)_installPrincipalObjectObserver
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64___MSMessageAppExtensionContext__installPrincipalObjectObserver__block_invoke;
  v4[3] = &unk_1E83A2E70;
  objc_copyWeak(&v5, &location);
  self->_principalObjectCreationObserver = CFRunLoopObserverCreateWithHandler(0, 0x21uLL, 1u, 0, v4);
  Main = CFRunLoopGetMain();
  CFRunLoopAddObserver(Main, self->_principalObjectCreationObserver, *MEMORY[0x1E695E8D0]);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_uninstallPrincipalObjectObserverIfNeeded
{
  if (self->_principalObjectCreationObserver)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveObserver(Main, self->_principalObjectCreationObserver, *MEMORY[0x1E695E8D0]);
    CFRelease(self->_principalObjectCreationObserver);
    self->_principalObjectCreationObserver = 0;
  }
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(_MSMessageAppExtensionContext *)self remoteProxy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke;
    v13[3] = &unk_1E83A2DD8;
    v10 = &v14;
    v14 = v8;
    [v9 _openURL:v6 completionHandler:v13];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke_3;
    v11[3] = &unk_1E83A2CC0;
    v10 = &v12;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

- (UIViewController)viewController
{
  v2 = [(_MSMessageAppExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIViewController)stickerViewController
{
  v2 = [(_MSMessageAppExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handlePrincipalObjectCreated
{
  v3 = [(_MSMessageAppExtensionContext *)self _principalObject];
  v4 = [v3 conformsToProtocol:&unk_1F4ACE298];

  if (v4)
  {
    v5 = [(_MSMessageAppExtensionContext *)self _principalObject];
    [(_MSMessageAppExtensionContext *)self initialFrameOfHostView];
    [v5 setInitialFrameBeforeAppearance:?];
  }

  [(_MSMessageAppExtensionContext *)self _uninstallPrincipalObjectObserverIfNeeded];
}

- (id)remoteProxy
{
  v2 = [(_MSMessageAppExtensionContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)stageAppItem:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v10 _stageAppItem:v9 skipShelf:v5 completionHandler:v8];
}

- (void)stageMediaItem:(id)a3 skipShelf:(BOOL)a4 forceStage:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v8 = a4;
  v13 = a3;
  v10 = a6;
  v11 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v11 _stageMediaItem:v13 skipShelf:v8 forceStage:v7 completionHandler:v10];

  if ([v13 isSticker])
  {
    v12 = [[MSStickerUsageEvent alloc] initWithMediaPayload:v13];
    [(MSStickerUsageEvent *)v12 setUsageType:0];
    [(MSStickerUsageEvent *)v12 send];
  }
}

- (void)stageRichLink:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v10 _stageRichLink:v9 skipShelf:v5 completionHandler:v8];
}

- (void)sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v11 _sendCustomAcknowledgement:v10 selectedMessage:v9 completionHandler:v8];
}

- (void)requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v8 _requestConversationAvatarsWithSize:v7 completionHandler:{width, height}];
}

- (void)stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v10 _stageAssetArchive:v9 skipShelf:v5 completionHandler:v8];
}

- (void)removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v8 _removeAssetArchiveWithIdentifier:v7 completionHandler:v6];
}

- (void)startDragMediaItem:(id)a3 frameInRemoteView:(CGRect)a4 fence:(id)a5 completionHandler:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v16 _startDragMediaItem:v15 frameInRemoteView:v14 fence:v13 completionHandler:{x, y, width, height}];
}

- (void)dragMediaItemMoved:(id)a3 frameInRemoteView:(CGRect)a4 rotation:(double)a5 scale:(double)a6 completionHandler:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a7;
  v16 = a3;
  v17 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v17 _dragMediaItemMoved:v16 frameInRemoteView:v15 rotation:x scale:y completionHandler:{width, height, a5, a6}];
}

- (void)dragMediaItemCanceled
{
  v2 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v2 _dragMediaItemCanceled];
}

- (void)stickerDruidDragStarted
{
  v2 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v2 _stickerDruidDragStarted];
}

- (void)stickerDruidDragEndedWithPayload:(id)a3
{
  v4 = a3;
  v5 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v5 _stickerDruidDragEndedWithPayload:v4];
}

- (void)stickerDruidDragEndedWithPayload:(id)a3 pluginIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v8 _stickerDruidDragEndedWithPayload:v7 pluginIdentifier:v6];
}

- (void)requestPresentationStyle:(unint64_t)a3
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot request transition to transcript presentation style" userInfo:0];
      [v4 raise];
      goto LABEL_6;
    }

    if (a3 != 3)
    {
      return;
    }
  }

  v4 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v4 _requestPresentationStyle:a3];
LABEL_6:
}

- (void)requestFullScreenModalPresentationWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v5 _requestFullScreenModalPresentationWithSize:{width, height}];
}

- (void)dismiss
{
  v2 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v2 _dismiss];
}

- (void)dismissAndPresentPhotosApp
{
  v2 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v2 _dismissAndPresentPhotosApp];
}

- (void)_setSendingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v4 _setSendingEnabled:v3];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v14 _presentAlertWithTitle:v13 message:v12 buttonTitle:v11 completion:v10];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v17 _presentAlertWithTitle:v16 message:v15 buttonTitle:v14 image:v13 completion:v12];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v17 _presentAlertWithTitle:v16 message:v15 buttonTitle:v14 destructiveButtonTitle:v13 completion:v12];
}

- (void)presentAlertSheetWith:(id)a3 styles:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v11 _presentAlertSheetWith:v10 styles:v9 completion:v8];
}

- (void)presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v17 _presentAlertSheetWithTitle:v16 message:v15 buttonTitles:v14 styles:v13 completion:v12];
}

- (void)presentContextMenuWithButtonTitles:(id)a3 imageNames:(id)a4 buttonFrame:(CGRect)a5 completion:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v16 _presentContextMenuWithButtonTitles:v15 imageNames:v14 buttonFrame:v13 completion:{x, y, width, height}];
}

- (void)canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v8 _canShowBrowserForPluginIdentifier:v7 completion:v6];
}

- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v10 _showBrowserForPluginIdentifier:v9 style:a4 completion:v8];
}

- (void)_hostDidBeginDeferredTeardown
{
  v3 = [(_MSMessageAppExtensionContext *)self _principalObject];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62___MSMessageAppExtensionContext__hostDidBeginDeferredTeardown__block_invoke;
    block[3] = &unk_1E83A2C20;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_remoteViewProvidesExplicitSizeSnapshot
{
  v2 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v2 _remoteViewProvidesExplicitSizeSnapshot];
}

- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap
{
  v2 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v2 _remoteViewNeedsSizeMatchBeforeSnapshotSwap];
}

- (void)_remoteViewDidBecomeReadyForDisplay
{
  v2 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v2 _remoteViewDidBecomeReadyForDisplay];
}

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3
{
  v4 = a3;
  v5 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v5 _remoteViewDidInvalidateMessageTintColorWithUpdatedColor:v4];
}

- (void)_requestStickerExtensionMetadataDictionary:(id)a3
{
  v4 = a3;
  v5 = [(_MSMessageAppExtensionContext *)self containingContext];
  [v5 _requestStickerExtensionMetadataDictionary:v4];
}

- (void)_requestPresentationWithStickerType:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_MSMessageAppExtensionContext *)self containingContext];
  [v8 _requestPresentationWithStickerType:v7 identifier:v6];
}

- (void)requestResize
{
  v2 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v2 _requestResize];
}

- (void)contentDidLoad
{
  v2 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v2 _contentDidLoad];
}

- (void)requestHostSceneIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [v5 _requestHostSceneIdentifierWithCompletion:v4];
}

- (void)beginDisablingUserInteraction
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___MSMessageAppExtensionContext_beginDisablingUserInteraction__block_invoke;
  block[3] = &unk_1E83A2C20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)endDisablingUserInteraction
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___MSMessageAppExtensionContext_endDisablingUserInteraction__block_invoke;
  block[3] = &unk_1E83A2C20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setHostBundleID:(id)a3
{
  v3 = a3;
  v4 = +[_MSStickerSendManager sharedInstance];
  [v4 setHostBundleID:v3];
}

- (CGRect)initialFrameOfHostView
{
  x = self->_initialFrameOfHostView.origin.x;
  y = self->_initialFrameOfHostView.origin.y;
  width = self->_initialFrameOfHostView.size.width;
  height = self->_initialFrameOfHostView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end