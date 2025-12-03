@interface _MSMessageAppExtensionHostContext
+ (id)_allowedItemPayloadClasses;
+ (id)_extensionContextHostProtocolAllowedClassesForItems;
- (_MSMessageComposeHostProtocol)delegate;
- (void)_canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion;
- (void)_contentDidLoad;
- (void)_dismiss;
- (void)_dismissAndPresentPhotosApp;
- (void)_dragMediaItemCanceled;
- (void)_dragMediaItemMoved:(id)moved frameInRemoteView:(CGRect)view rotation:(double)rotation scale:(double)scale completionHandler:(id)handler;
- (void)_openURL:(id)l completionHandler:(id)handler;
- (void)_presentAlertSheetWith:(id)with styles:(id)styles completion:(id)completion;
- (void)_presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion;
- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle completion:(id)completion;
- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion;
- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion;
- (void)_presentContextMenuWithButtonTitles:(id)titles imageNames:(id)names buttonFrame:(CGRect)frame completion:(id)completion;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color;
- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap;
- (void)_remoteViewProvidesExplicitSizeSnapshot;
- (void)_removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler;
- (void)_requestFullScreenModalPresentationWithSize:(CGSize)size;
- (void)_requestHostSceneIdentifierWithCompletion:(id)completion;
- (void)_requestPresentationStyle:(unint64_t)style;
- (void)_requestPresentationWithStickerType:(id)type identifier:(id)identifier;
- (void)_requestResize;
- (void)_requestStickerExtensionMetadataDictionary:(id)dictionary;
- (void)_sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler;
- (void)_setSendingEnabled:(BOOL)enabled;
- (void)_showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion;
- (void)_stageAppItem:(id)item skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_stageMediaItem:(id)item skipShelf:(BOOL)shelf forceStage:(BOOL)stage completionHandler:(id)handler;
- (void)_stageRichLink:(id)link skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_startDragMediaItem:(id)item frameInRemoteView:(CGRect)view fence:(id)fence completionHandler:(id)handler;
- (void)_stickerDruidDragEndedWithPayload:(id)payload;
- (void)_stickerDruidDragEndedWithPayload:(id)payload pluginIdentifier:(id)identifier;
- (void)_stickerDruidDragStarted;
- (void)_updateSnapshotForNextLaunch:(id)launch;
- (void)setDelegate:(id)delegate;
@end

@implementation _MSMessageAppExtensionHostContext

+ (id)_extensionContextHostProtocolAllowedClassesForItems
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88___MSMessageAppExtensionHostContext__extensionContextHostProtocolAllowedClassesForItems__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_extensionContextHostProtocolAllowedClassesForItems_onceToken_0 != -1)
  {
    dispatch_once(&_extensionContextHostProtocolAllowedClassesForItems_onceToken_0, block);
  }

  v2 = _extensionContextHostProtocolAllowedClassesForItems_allowedClasses_0;

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

- (void)_stageAppItem:(id)item skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  itemCopy = item;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 _stageAppItem:itemCopy skipShelf:shelfCopy completionHandler:handlerCopy];
  }
}

- (void)_stageMediaItem:(id)item skipShelf:(BOOL)shelf forceStage:(BOOL)stage completionHandler:(id)handler
{
  stageCopy = stage;
  shelfCopy = shelf;
  itemCopy = item;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 _stageMediaItem:itemCopy skipShelf:shelfCopy forceStage:stageCopy completionHandler:handlerCopy];
  }
}

- (void)_stageRichLink:(id)link skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  linkCopy = link;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 _stageRichLink:linkCopy skipShelf:shelfCopy completionHandler:handlerCopy];
  }
}

- (void)_sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler
{
  acknowledgementCopy = acknowledgement;
  messageCopy = message;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 _sendCustomAcknowledgement:acknowledgementCopy selectedMessage:messageCopy completionHandler:handlerCopy];
  }
}

- (void)_requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 _requestConversationAvatarsWithSize:handlerCopy completionHandler:{width, height}];
  }
}

- (void)_startDragMediaItem:(id)item frameInRemoteView:(CGRect)view fence:(id)fence completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  itemCopy = item;
  fenceCopy = fence;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 _startDragMediaItem:itemCopy frameInRemoteView:fenceCopy fence:handlerCopy completionHandler:{x, y, width, height}];
  }
}

- (void)_dragMediaItemMoved:(id)moved frameInRemoteView:(CGRect)view rotation:(double)rotation scale:(double)scale completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  movedCopy = moved;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 _dragMediaItemMoved:movedCopy frameInRemoteView:handlerCopy rotation:x scale:y completionHandler:{width, height, rotation, scale}];
  }
}

- (void)_dragMediaItemCanceled
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _dragMediaItemCanceled];
  }
}

- (void)_stickerDruidDragStarted
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _stickerDruidDragStarted];
  }
}

- (void)_stickerDruidDragEndedWithPayload:(id)payload
{
  payloadCopy = payload;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 _stickerDruidDragEndedWithPayload:payloadCopy];
  }
}

- (void)_stickerDruidDragEndedWithPayload:(id)payload pluginIdentifier:(id)identifier
{
  payloadCopy = payload;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 _stickerDruidDragEndedWithPayload:payloadCopy pluginIdentifier:identifierCopy];
  }
}

- (void)_requestPresentationStyle:(unint64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 _requestPresentationStyle:style];
  }
}

- (void)_requestFullScreenModalPresentationWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 _requestFullScreenModalPresentationWithSize:{width, height}];
  }
}

- (void)_dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _dismiss];
  }
}

- (void)_dismissAndPresentPhotosApp
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _dismissAndPresentPhotosApp];
  }
}

- (void)_setSendingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 _setSendingEnabled:enabledCopy];
  }
}

- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 _presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy completion:completionCopy];
  }
}

- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  imageCopy = image;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 _presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy image:imageCopy completion:completionCopy];
  }
}

- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  destructiveButtonTitleCopy = destructiveButtonTitle;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 _presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy destructiveButtonTitle:destructiveButtonTitleCopy completion:completionCopy];
  }
}

- (void)_presentAlertSheetWith:(id)with styles:(id)styles completion:(id)completion
{
  withCopy = with;
  stylesCopy = styles;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 _presentAlertSheetWith:withCopy styles:stylesCopy completion:completionCopy];
  }
}

- (void)_presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  titlesCopy = titles;
  stylesCopy = styles;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 _presentAlertSheetWithTitle:titleCopy message:messageCopy buttonTitles:titlesCopy styles:stylesCopy completion:completionCopy];
  }
}

- (void)_presentContextMenuWithButtonTitles:(id)titles imageNames:(id)names buttonFrame:(CGRect)frame completion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  titlesCopy = titles;
  namesCopy = names;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 _presentContextMenuWithButtonTitles:titlesCopy imageNames:namesCopy buttonFrame:completionCopy completion:{x, y, width, height}];
  }
}

- (void)_updateSnapshotForNextLaunch:(id)launch
{
  launchCopy = launch;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 _updateSnapshotForNextLaunch:launchCopy];
  }
}

- (void)_remoteViewProvidesExplicitSizeSnapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _remoteViewProvidesExplicitSizeSnapshot];
  }
}

- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _remoteViewNeedsSizeMatchBeforeSnapshotSwap];
  }
}

- (void)_remoteViewDidBecomeReadyForDisplay
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _remoteViewDidBecomeReadyForDisplay];
  }
}

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color
{
  colorCopy = color;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 _remoteViewDidInvalidateMessageTintColorWithUpdatedColor:colorCopy];
  }
}

- (void)_requestStickerExtensionMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 _requestStickerExtensionMetadataDictionary:dictionaryCopy];
  }
}

- (void)_requestPresentationWithStickerType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 _requestPresentationWithStickerType:typeCopy identifier:identifierCopy];
  }
}

- (void)_openURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 _openURL:lCopy completionHandler:handlerCopy];
  }
}

- (void)_requestResize
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _requestResize];
  }
}

- (void)_contentDidLoad
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _contentDidLoad];
  }
}

- (void)_stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  archiveCopy = archive;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 _stageAssetArchive:archiveCopy skipShelf:shelfCopy completionHandler:handlerCopy];
  }
}

- (void)_removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 _removeAssetArchiveWithIdentifier:identifierCopy completionHandler:handlerCopy];
  }
}

- (void)_requestHostSceneIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 _requestHostSceneIdentifierWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 _canShowBrowserForPluginIdentifier:identifierCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    objc_storeStrong(&self->_queuedCanShowBrowserPluginIdentifier, identifier);
    v12 = _Block_copy(completionCopy);
    queuedCanShowBrowserCompletion = self->_queuedCanShowBrowserCompletion;
    self->_queuedCanShowBrowserCompletion = v12;
  }
}

- (void)_showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 _showBrowserForPluginIdentifier:identifierCopy style:style completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if (self->_queuedCanShowBrowserPluginIdentifier && self->_queuedCanShowBrowserCompletion)
  {
    [_MSMessageAppExtensionHostContext _canShowBrowserForPluginIdentifier:"_canShowBrowserForPluginIdentifier:completion:" completion:?];
    queuedCanShowBrowserPluginIdentifier = self->_queuedCanShowBrowserPluginIdentifier;
    self->_queuedCanShowBrowserPluginIdentifier = 0;

    queuedCanShowBrowserCompletion = self->_queuedCanShowBrowserCompletion;
    self->_queuedCanShowBrowserCompletion = 0;
  }
}

- (_MSMessageComposeHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end