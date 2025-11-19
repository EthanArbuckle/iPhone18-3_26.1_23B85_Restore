@interface _MSMessageAppExtensionHostContext
+ (id)_allowedItemPayloadClasses;
+ (id)_extensionContextHostProtocolAllowedClassesForItems;
- (_MSMessageComposeHostProtocol)delegate;
- (void)_canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4;
- (void)_contentDidLoad;
- (void)_dismiss;
- (void)_dismissAndPresentPhotosApp;
- (void)_dragMediaItemCanceled;
- (void)_dragMediaItemMoved:(id)a3 frameInRemoteView:(CGRect)a4 rotation:(double)a5 scale:(double)a6 completionHandler:(id)a7;
- (void)_openURL:(id)a3 completionHandler:(id)a4;
- (void)_presentAlertSheetWith:(id)a3 styles:(id)a4 completion:(id)a5;
- (void)_presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 completion:(id)a6;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7;
- (void)_presentContextMenuWithButtonTitles:(id)a3 imageNames:(id)a4 buttonFrame:(CGRect)a5 completion:(id)a6;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3;
- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap;
- (void)_remoteViewProvidesExplicitSizeSnapshot;
- (void)_removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)_requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4;
- (void)_requestFullScreenModalPresentationWithSize:(CGSize)a3;
- (void)_requestHostSceneIdentifierWithCompletion:(id)a3;
- (void)_requestPresentationStyle:(unint64_t)a3;
- (void)_requestPresentationWithStickerType:(id)a3 identifier:(id)a4;
- (void)_requestResize;
- (void)_requestStickerExtensionMetadataDictionary:(id)a3;
- (void)_sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5;
- (void)_setSendingEnabled:(BOOL)a3;
- (void)_showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)_stageAppItem:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_stageMediaItem:(id)a3 skipShelf:(BOOL)a4 forceStage:(BOOL)a5 completionHandler:(id)a6;
- (void)_stageRichLink:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_startDragMediaItem:(id)a3 frameInRemoteView:(CGRect)a4 fence:(id)a5 completionHandler:(id)a6;
- (void)_stickerDruidDragEndedWithPayload:(id)a3;
- (void)_stickerDruidDragEndedWithPayload:(id)a3 pluginIdentifier:(id)a4;
- (void)_stickerDruidDragStarted;
- (void)_updateSnapshotForNextLaunch:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation _MSMessageAppExtensionHostContext

+ (id)_extensionContextHostProtocolAllowedClassesForItems
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88___MSMessageAppExtensionHostContext__extensionContextHostProtocolAllowedClassesForItems__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)_stageAppItem:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v12 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 _stageAppItem:v12 skipShelf:v6 completionHandler:v8];
  }
}

- (void)_stageMediaItem:(id)a3 skipShelf:(BOOL)a4 forceStage:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v8 = a4;
  v14 = a3;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 _stageMediaItem:v14 skipShelf:v8 forceStage:v7 completionHandler:v10];
  }
}

- (void)_stageRichLink:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v12 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 _stageRichLink:v12 skipShelf:v6 completionHandler:v8];
  }
}

- (void)_sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 _sendCustomAcknowledgement:v13 selectedMessage:v8 completionHandler:v9];
  }
}

- (void)_requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 _requestConversationAvatarsWithSize:v10 completionHandler:{width, height}];
  }
}

- (void)_startDragMediaItem:(id)a3 frameInRemoteView:(CGRect)a4 fence:(id)a5 completionHandler:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a3;
  v13 = a5;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 _startDragMediaItem:v18 frameInRemoteView:v13 fence:v14 completionHandler:{x, y, width, height}];
  }
}

- (void)_dragMediaItemMoved:(id)a3 frameInRemoteView:(CGRect)a4 rotation:(double)a5 scale:(double)a6 completionHandler:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v19 = a3;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 _dragMediaItemMoved:v19 frameInRemoteView:v15 rotation:x scale:y completionHandler:{width, height, a5, a6}];
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

- (void)_stickerDruidDragEndedWithPayload:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 _stickerDruidDragEndedWithPayload:v7];
  }
}

- (void)_stickerDruidDragEndedWithPayload:(id)a3 pluginIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 _stickerDruidDragEndedWithPayload:v10 pluginIdentifier:v6];
  }
}

- (void)_requestPresentationStyle:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 _requestPresentationStyle:a3];
  }
}

- (void)_requestFullScreenModalPresentationWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)_setSendingEnabled:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 _setSendingEnabled:v3];
  }
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 completion:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 _presentAlertWithTitle:v16 message:v10 buttonTitle:v11 completion:v12];
  }
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 _presentAlertWithTitle:v19 message:v12 buttonTitle:v13 image:v14 completion:v15];
  }
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 _presentAlertWithTitle:v19 message:v12 buttonTitle:v13 destructiveButtonTitle:v14 completion:v15];
  }
}

- (void)_presentAlertSheetWith:(id)a3 styles:(id)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 _presentAlertSheetWith:v13 styles:v8 completion:v9];
  }
}

- (void)_presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 _presentAlertSheetWithTitle:v19 message:v12 buttonTitles:v13 styles:v14 completion:v15];
  }
}

- (void)_presentContextMenuWithButtonTitles:(id)a3 imageNames:(id)a4 buttonFrame:(CGRect)a5 completion:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v18 = a3;
  v13 = a4;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 _presentContextMenuWithButtonTitles:v18 imageNames:v13 buttonFrame:v14 completion:{x, y, width, height}];
  }
}

- (void)_updateSnapshotForNextLaunch:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 _updateSnapshotForNextLaunch:v7];
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

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 _remoteViewDidInvalidateMessageTintColorWithUpdatedColor:v7];
  }
}

- (void)_requestStickerExtensionMetadataDictionary:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 _requestStickerExtensionMetadataDictionary:v7];
  }
}

- (void)_requestPresentationWithStickerType:(id)a3 identifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 _requestPresentationWithStickerType:v10 identifier:v6];
  }
}

- (void)_openURL:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 _openURL:v10 completionHandler:v6];
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

- (void)_stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v12 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 _stageAssetArchive:v12 skipShelf:v6 completionHandler:v8];
  }
}

- (void)_removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 _removeAssetArchiveWithIdentifier:v10 completionHandler:v6];
  }
}

- (void)_requestHostSceneIdentifierWithCompletion:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 _requestHostSceneIdentifierWithCompletion:v7];
  }

  else if (v7)
  {
    v7[2](v7, 0);
  }
}

- (void)_canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4
{
  v14 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 _canShowBrowserForPluginIdentifier:v14 completion:v7];
    }

    else if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    objc_storeStrong(&self->_queuedCanShowBrowserPluginIdentifier, a3);
    v12 = _Block_copy(v7);
    queuedCanShowBrowserCompletion = self->_queuedCanShowBrowserCompletion;
    self->_queuedCanShowBrowserCompletion = v12;
  }
}

- (void)_showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 _showBrowserForPluginIdentifier:v12 style:a4 completion:v8];
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
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