@interface _MSMessageAppExtensionContext
+ (id)_allowedItemPayloadClasses;
+ (id)_extensionContextHostProtocolAllowedClassesForItems;
- (CGRect)initialFrameOfHostView;
- (UIViewController)stickerViewController;
- (UIViewController)viewController;
- (_MSMessageAppExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (id)remoteProxy;
- (void)_handlePrincipalObjectCreated;
- (void)_hostDidBeginDeferredTeardown;
- (void)_installPrincipalObjectObserver;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color;
- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap;
- (void)_remoteViewProvidesExplicitSizeSnapshot;
- (void)_requestPresentationWithStickerType:(id)type identifier:(id)identifier;
- (void)_requestStickerExtensionMetadataDictionary:(id)dictionary;
- (void)_setHostBundleID:(id)d;
- (void)_setSendingEnabled:(BOOL)enabled;
- (void)_uninstallPrincipalObjectObserverIfNeeded;
- (void)beginDisablingUserInteraction;
- (void)canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion;
- (void)contentDidLoad;
- (void)dealloc;
- (void)dismiss;
- (void)dismissAndPresentPhotosApp;
- (void)dragMediaItemCanceled;
- (void)dragMediaItemMoved:(id)moved frameInRemoteView:(CGRect)view rotation:(double)rotation scale:(double)scale completionHandler:(id)handler;
- (void)endDisablingUserInteraction;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)presentAlertSheetWith:(id)with styles:(id)styles completion:(id)completion;
- (void)presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion;
- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle completion:(id)completion;
- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion;
- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion;
- (void)presentContextMenuWithButtonTitles:(id)titles imageNames:(id)names buttonFrame:(CGRect)frame completion:(id)completion;
- (void)removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler;
- (void)requestFullScreenModalPresentationWithSize:(CGSize)size;
- (void)requestHostSceneIdentifierWithCompletion:(id)completion;
- (void)requestPresentationStyle:(unint64_t)style;
- (void)requestResize;
- (void)sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler;
- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion;
- (void)stageAppItem:(id)item skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)stageMediaItem:(id)item skipShelf:(BOOL)shelf forceStage:(BOOL)stage completionHandler:(id)handler;
- (void)stageRichLink:(id)link skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)startDragMediaItem:(id)item frameInRemoteView:(CGRect)view fence:(id)fence completionHandler:(id)handler;
- (void)stickerDruidDragEndedWithPayload:(id)payload;
- (void)stickerDruidDragEndedWithPayload:(id)payload pluginIdentifier:(id)identifier;
- (void)stickerDruidDragStarted;
@end

@implementation _MSMessageAppExtensionContext

+ (id)_extensionContextHostProtocolAllowedClassesForItems
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___MSMessageAppExtensionContext__extensionContextHostProtocolAllowedClassesForItems__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (_MSMessageAppExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  itemsCopy = items;
  v45.receiver = self;
  v45.super_class = _MSMessageAppExtensionContext;
  v9 = [(_MSMessageAppExtensionContext *)&v45 initWithInputItems:itemsCopy listenerEndpoint:endpoint contextUUID:d];
  if (v9)
  {
    v10 = ms_traceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(_MSMessageAppExtensionContext *)v10 initWithInputItems:v11 listenerEndpoint:v12 contextUUID:v13, v14, v15, v16, v17];
    }

    firstObject = [itemsCopy firstObject];
    userInfo = [firstObject userInfo];

    v20 = [userInfo objectForKeyedSubscript:@"wants-live-view"];
    bOOLValue = [v20 BOOLValue];

    if (bOOLValue)
    {
      [(_MSMessageAppExtensionContext *)v9 setPresentationStyle:2];
      [(_MSMessageAppExtensionContext *)v9 _installPrincipalObjectObserver];
    }

    else
    {
      v22 = [userInfo objectForKeyedSubscript:@"context-is-primary"];
      bOOLValue2 = [v22 BOOLValue];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke;
      block[3] = &unk_1E83A2E00;
      v44 = bOOLValue2;
      v24 = v9;
      v43 = v24;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke_2;
      v39 = &unk_1E83A2E00;
      v41 = bOOLValue2;
      v25 = v24;
      v40 = v25;
      [(_MSMessageAppExtensionContext *)v25 _setRequestCleanUpBlock:&v36];
      v26 = *(MEMORY[0x1E695F058] + 16);
      v25->_initialFrameOfHostView.origin = *MEMORY[0x1E695F058];
      v25->_initialFrameOfHostView.size = v26;
      v27 = [userInfo objectForKeyedSubscript:{@"host-view-bounds", v36, v37, v38, v39}];
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

- (void)openURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (lCopy)
  {
    remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke;
    v13[3] = &unk_1E83A2DD8;
    v10 = &v14;
    v14 = v8;
    [remoteProxy _openURL:lCopy completionHandler:v13];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke_3;
    v11[3] = &unk_1E83A2CC0;
    v10 = &v12;
    v12 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

- (UIViewController)viewController
{
  _principalObject = [(_MSMessageAppExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _principalObject;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIViewController)stickerViewController
{
  _principalObject = [(_MSMessageAppExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _principalObject;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handlePrincipalObjectCreated
{
  _principalObject = [(_MSMessageAppExtensionContext *)self _principalObject];
  v4 = [_principalObject conformsToProtocol:&unk_1F4ACE298];

  if (v4)
  {
    _principalObject2 = [(_MSMessageAppExtensionContext *)self _principalObject];
    [(_MSMessageAppExtensionContext *)self initialFrameOfHostView];
    [_principalObject2 setInitialFrameBeforeAppearance:?];
  }

  [(_MSMessageAppExtensionContext *)self _uninstallPrincipalObjectObserverIfNeeded];
}

- (id)remoteProxy
{
  _auxiliaryConnection = [(_MSMessageAppExtensionContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)stageAppItem:(id)item skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  itemCopy = item;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _stageAppItem:itemCopy skipShelf:shelfCopy completionHandler:handlerCopy];
}

- (void)stageMediaItem:(id)item skipShelf:(BOOL)shelf forceStage:(BOOL)stage completionHandler:(id)handler
{
  stageCopy = stage;
  shelfCopy = shelf;
  itemCopy = item;
  handlerCopy = handler;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _stageMediaItem:itemCopy skipShelf:shelfCopy forceStage:stageCopy completionHandler:handlerCopy];

  if ([itemCopy isSticker])
  {
    v12 = [[MSStickerUsageEvent alloc] initWithMediaPayload:itemCopy];
    [(MSStickerUsageEvent *)v12 setUsageType:0];
    [(MSStickerUsageEvent *)v12 send];
  }
}

- (void)stageRichLink:(id)link skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  linkCopy = link;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _stageRichLink:linkCopy skipShelf:shelfCopy completionHandler:handlerCopy];
}

- (void)sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  acknowledgementCopy = acknowledgement;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _sendCustomAcknowledgement:acknowledgementCopy selectedMessage:messageCopy completionHandler:handlerCopy];
}

- (void)requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _requestConversationAvatarsWithSize:handlerCopy completionHandler:{width, height}];
}

- (void)stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  archiveCopy = archive;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _stageAssetArchive:archiveCopy skipShelf:shelfCopy completionHandler:handlerCopy];
}

- (void)removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _removeAssetArchiveWithIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)startDragMediaItem:(id)item frameInRemoteView:(CGRect)view fence:(id)fence completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  handlerCopy = handler;
  fenceCopy = fence;
  itemCopy = item;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _startDragMediaItem:itemCopy frameInRemoteView:fenceCopy fence:handlerCopy completionHandler:{x, y, width, height}];
}

- (void)dragMediaItemMoved:(id)moved frameInRemoteView:(CGRect)view rotation:(double)rotation scale:(double)scale completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  handlerCopy = handler;
  movedCopy = moved;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _dragMediaItemMoved:movedCopy frameInRemoteView:handlerCopy rotation:x scale:y completionHandler:{width, height, rotation, scale}];
}

- (void)dragMediaItemCanceled
{
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _dragMediaItemCanceled];
}

- (void)stickerDruidDragStarted
{
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _stickerDruidDragStarted];
}

- (void)stickerDruidDragEndedWithPayload:(id)payload
{
  payloadCopy = payload;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _stickerDruidDragEndedWithPayload:payloadCopy];
}

- (void)stickerDruidDragEndedWithPayload:(id)payload pluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  payloadCopy = payload;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _stickerDruidDragEndedWithPayload:payloadCopy pluginIdentifier:identifierCopy];
}

- (void)requestPresentationStyle:(unint64_t)style
{
  if (style >= 2)
  {
    if (style == 2)
    {
      remoteProxy = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot request transition to transcript presentation style" userInfo:0];
      [remoteProxy raise];
      goto LABEL_6;
    }

    if (style != 3)
    {
      return;
    }
  }

  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _requestPresentationStyle:style];
LABEL_6:
}

- (void)requestFullScreenModalPresentationWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _requestFullScreenModalPresentationWithSize:{width, height}];
}

- (void)dismiss
{
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _dismiss];
}

- (void)dismissAndPresentPhotosApp
{
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _dismissAndPresentPhotosApp];
}

- (void)_setSendingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _setSendingEnabled:enabledCopy];
}

- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle completion:(id)completion
{
  completionCopy = completion;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy completion:completionCopy];
}

- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion
{
  completionCopy = completion;
  imageCopy = image;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy image:imageCopy completion:completionCopy];
}

- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion
{
  completionCopy = completion;
  destructiveButtonTitleCopy = destructiveButtonTitle;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy destructiveButtonTitle:destructiveButtonTitleCopy completion:completionCopy];
}

- (void)presentAlertSheetWith:(id)with styles:(id)styles completion:(id)completion
{
  completionCopy = completion;
  stylesCopy = styles;
  withCopy = with;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _presentAlertSheetWith:withCopy styles:stylesCopy completion:completionCopy];
}

- (void)presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion
{
  completionCopy = completion;
  stylesCopy = styles;
  titlesCopy = titles;
  messageCopy = message;
  titleCopy = title;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _presentAlertSheetWithTitle:titleCopy message:messageCopy buttonTitles:titlesCopy styles:stylesCopy completion:completionCopy];
}

- (void)presentContextMenuWithButtonTitles:(id)titles imageNames:(id)names buttonFrame:(CGRect)frame completion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  completionCopy = completion;
  namesCopy = names;
  titlesCopy = titles;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _presentContextMenuWithButtonTitles:titlesCopy imageNames:namesCopy buttonFrame:completionCopy completion:{x, y, width, height}];
}

- (void)canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _canShowBrowserForPluginIdentifier:identifierCopy completion:completionCopy];
}

- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _showBrowserForPluginIdentifier:identifierCopy style:style completion:completionCopy];
}

- (void)_hostDidBeginDeferredTeardown
{
  _principalObject = [(_MSMessageAppExtensionContext *)self _principalObject];
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
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _remoteViewProvidesExplicitSizeSnapshot];
}

- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap
{
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _remoteViewNeedsSizeMatchBeforeSnapshotSwap];
}

- (void)_remoteViewDidBecomeReadyForDisplay
{
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _remoteViewDidBecomeReadyForDisplay];
}

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color
{
  colorCopy = color;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _remoteViewDidInvalidateMessageTintColorWithUpdatedColor:colorCopy];
}

- (void)_requestStickerExtensionMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  containingContext = [(_MSMessageAppExtensionContext *)self containingContext];
  [containingContext _requestStickerExtensionMetadataDictionary:dictionaryCopy];
}

- (void)_requestPresentationWithStickerType:(id)type identifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  containingContext = [(_MSMessageAppExtensionContext *)self containingContext];
  [containingContext _requestPresentationWithStickerType:typeCopy identifier:identifierCopy];
}

- (void)requestResize
{
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _requestResize];
}

- (void)contentDidLoad
{
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _contentDidLoad];
}

- (void)requestHostSceneIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteProxy = [(_MSMessageAppExtensionContext *)self remoteProxy];
  [remoteProxy _requestHostSceneIdentifierWithCompletion:completionCopy];
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

- (void)_setHostBundleID:(id)d
{
  dCopy = d;
  v4 = +[_MSStickerSendManager sharedInstance];
  [v4 setHostBundleID:dCopy];
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