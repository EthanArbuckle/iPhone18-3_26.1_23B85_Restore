@interface _MSMessageAppBundleContext
- ($115C4C562B26FF47E01F9F4EA65B5887)balloonHostAuditToken;
- (CGRect)initialFrameOfHostView;
- (UIViewController)stickerViewController;
- (UIViewController)viewController;
- (_MSMessageAppBundleContext)initWithViewController:(id)controller wantsLiveView:(BOOL)view;
- (void)_hostDidBeginDeferredTeardown;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color;
- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap;
- (void)_remoteViewProvidesExplicitSizeSnapshot;
- (void)_requestPresentationWithStickerType:(id)type identifier:(id)identifier;
- (void)_requestStickerExtensionMetadataDictionary:(id)dictionary;
- (void)_sendWillBecomeActiveMessage;
- (void)_setSendingEnabled:(BOOL)enabled;
- (void)balloonHostAuditToken;
- (void)beginDisablingUserInteraction;
- (void)canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion;
- (void)contentDidLoad;
- (void)dismiss;
- (void)dismissAndPresentPhotosApp;
- (void)dragMediaItemCanceled;
- (void)dragMediaItemMoved:(id)moved frameInRemoteView:(CGRect)view rotation:(double)rotation scale:(double)scale completionHandler:(id)handler;
- (void)endDisablingUserInteraction;
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

@implementation _MSMessageAppBundleContext

- (_MSMessageAppBundleContext)initWithViewController:(id)controller wantsLiveView:(BOOL)view
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = _MSMessageAppBundleContext;
  v7 = [(_MSMessageAppBundleContext *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_viewController, controllerCopy);
    v8->_wantsLiveView = view;
    if (!view)
    {
      v9 = +[_MSExtensionGlobalState sharedInstance];
      [v9 setActiveExtensionContext:v8];
    }
  }

  return v8;
}

- (UIViewController)stickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_loadWeakRetained(&self->_viewController);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_sendWillBecomeActiveMessage
{
  viewController = [(_MSMessageAppBundleContext *)self viewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    viewController2 = [(_MSMessageAppBundleContext *)self viewController];
    [(_MSMessageAppBundleContext *)self initialFrameOfHostView];
    [viewController2 setInitialFrameBeforeAppearance:?];
  }
}

- (CGRect)initialFrameOfHostView
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_remoteViewProvidesExplicitSizeSnapshot
{
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _remoteViewProvidesExplicitSizeSnapshot];
}

- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap
{
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _remoteViewNeedsSizeMatchBeforeSnapshotSwap];
}

- (void)_remoteViewDidBecomeReadyForDisplay
{
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _remoteViewDidBecomeReadyForDisplay];
}

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color
{
  colorCopy = color;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _remoteViewDidInvalidateMessageTintColorWithUpdatedColor:colorCopy];
}

- (void)_requestStickerExtensionMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  containingContext = [(_MSMessageAppBundleContext *)self containingContext];
  [containingContext _requestStickerExtensionMetadataDictionary:dictionaryCopy];
}

- (void)_requestPresentationWithStickerType:(id)type identifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  containingContext = [(_MSMessageAppBundleContext *)self containingContext];
  [containingContext _requestPresentationWithStickerType:typeCopy identifier:identifierCopy];
}

- (void)_hostDidBeginDeferredTeardown
{
  viewController = [(_MSMessageAppBundleContext *)self viewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59___MSMessageAppBundleContext__hostDidBeginDeferredTeardown__block_invoke;
    block[3] = &unk_1E83A2C20;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)beginDisablingUserInteraction
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___MSMessageAppBundleContext_beginDisablingUserInteraction__block_invoke;
  block[3] = &unk_1E83A2C20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)endDisablingUserInteraction
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___MSMessageAppBundleContext_endDisablingUserInteraction__block_invoke;
  block[3] = &unk_1E83A2C20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)stageAppItem:(id)item skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  itemCopy = item;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _stageAppItem:itemCopy skipShelf:shelfCopy completionHandler:handlerCopy];
}

- (void)stageMediaItem:(id)item skipShelf:(BOOL)shelf forceStage:(BOOL)stage completionHandler:(id)handler
{
  stageCopy = stage;
  shelfCopy = shelf;
  handlerCopy = handler;
  itemCopy = item;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _stageMediaItem:itemCopy skipShelf:shelfCopy forceStage:stageCopy completionHandler:handlerCopy];
}

- (void)stageRichLink:(id)link skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  linkCopy = link;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _stageRichLink:linkCopy skipShelf:shelfCopy completionHandler:handlerCopy];
}

- (void)sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  acknowledgementCopy = acknowledgement;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _sendCustomAcknowledgement:acknowledgementCopy selectedMessage:messageCopy completionHandler:handlerCopy];
}

- (void)requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _requestConversationAvatarsWithSize:handlerCopy completionHandler:{width, height}];
}

- (void)stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  archiveCopy = archive;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _stageAssetArchive:archiveCopy skipShelf:shelfCopy completionHandler:handlerCopy];
}

- (void)removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _removeAssetArchiveWithIdentifier:identifierCopy completionHandler:handlerCopy];
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
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _startDragMediaItem:itemCopy frameInRemoteView:fenceCopy fence:handlerCopy completionHandler:{x, y, width, height}];
}

- (void)dragMediaItemMoved:(id)moved frameInRemoteView:(CGRect)view rotation:(double)rotation scale:(double)scale completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  handlerCopy = handler;
  movedCopy = moved;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _dragMediaItemMoved:movedCopy frameInRemoteView:handlerCopy rotation:x scale:y completionHandler:{width, height, rotation, scale}];
}

- (void)dragMediaItemCanceled
{
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _dragMediaItemCanceled];
}

- (void)stickerDruidDragStarted
{
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _stickerDruidDragStarted];
}

- (void)stickerDruidDragEndedWithPayload:(id)payload
{
  payloadCopy = payload;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _stickerDruidDragEndedWithPayload:payloadCopy];
}

- (void)stickerDruidDragEndedWithPayload:(id)payload pluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  payloadCopy = payload;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _stickerDruidDragEndedWithPayload:payloadCopy pluginIdentifier:identifierCopy];
}

- (void)requestPresentationStyle:(unint64_t)style
{
  if (style >= 2)
  {
    if (style == 2)
    {
      hostContext = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot request transition to transcript presentation style" userInfo:0];
      [hostContext raise];
      goto LABEL_6;
    }

    if (style != 3)
    {
      return;
    }
  }

  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _requestPresentationStyle:style];
LABEL_6:
}

- (void)requestFullScreenModalPresentationWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _requestFullScreenModalPresentationWithSize:{width, height}];
}

- (void)dismiss
{
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _dismiss];
}

- (void)dismissAndPresentPhotosApp
{
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _dismissAndPresentPhotosApp];
}

- (void)_setSendingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _setSendingEnabled:enabledCopy];
}

- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle completion:(id)completion
{
  completionCopy = completion;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy completion:completionCopy];
}

- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion
{
  completionCopy = completion;
  imageCopy = image;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy image:imageCopy completion:completionCopy];
}

- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion
{
  completionCopy = completion;
  destructiveButtonTitleCopy = destructiveButtonTitle;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy destructiveButtonTitle:destructiveButtonTitleCopy completion:completionCopy];
}

- (void)presentAlertSheetWith:(id)with styles:(id)styles completion:(id)completion
{
  completionCopy = completion;
  stylesCopy = styles;
  withCopy = with;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _presentAlertSheetWith:withCopy styles:stylesCopy completion:completionCopy];
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
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _presentContextMenuWithButtonTitles:titlesCopy imageNames:namesCopy buttonFrame:completionCopy completion:{x, y, width, height}];
}

- (void)presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion
{
  completionCopy = completion;
  stylesCopy = styles;
  titlesCopy = titles;
  messageCopy = message;
  titleCopy = title;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _presentAlertSheetWithTitle:titleCopy message:messageCopy buttonTitles:titlesCopy styles:stylesCopy completion:completionCopy];
}

- (void)canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _canShowBrowserForPluginIdentifier:identifierCopy completion:completionCopy];
}

- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _showBrowserForPluginIdentifier:identifierCopy style:style completion:completionCopy];
}

- (void)requestResize
{
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _requestResize];
}

- (void)contentDidLoad
{
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _contentDidLoad];
}

- (void)requestHostSceneIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  [hostContext _requestHostSceneIdentifierWithCompletion:completionCopy];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)balloonHostAuditToken
{
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *retstr->var0 = v5;
  *&retstr->var0[4] = v5;
  hostContext = [(_MSMessageAppBundleContext *)self hostContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    hostContext2 = [(_MSMessageAppBundleContext *)self hostContext];
    v9 = hostContext2;
    if (hostContext2)
    {
      [hostContext2 _extensionHostAuditToken];
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v12 = v14;
    *retstr->var0 = v13;
    *&retstr->var0[4] = v12;
  }

  else
  {
    LODWORD(v13) = 8;
    result = task_info(*MEMORY[0x1E69E9A60], 0xFu, retstr, &v13);
    if (result)
    {
      v11 = ms_traceLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(_MSMessageAppBundleContext *)v11 balloonHostAuditToken];
      }
    }
  }

  return result;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)balloonHostAuditToken
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[_MSMessageAppBundleContext balloonHostAuditToken]";
  _os_log_debug_impl(&dword_1CADE6000, log, OS_LOG_TYPE_DEBUG, "failed to get audit token for self: %s", &v1, 0xCu);
}

@end