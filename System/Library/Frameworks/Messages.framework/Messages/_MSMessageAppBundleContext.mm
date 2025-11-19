@interface _MSMessageAppBundleContext
- ($115C4C562B26FF47E01F9F4EA65B5887)balloonHostAuditToken;
- (CGRect)initialFrameOfHostView;
- (UIViewController)stickerViewController;
- (UIViewController)viewController;
- (_MSMessageAppBundleContext)initWithViewController:(id)a3 wantsLiveView:(BOOL)a4;
- (void)_hostDidBeginDeferredTeardown;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3;
- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap;
- (void)_remoteViewProvidesExplicitSizeSnapshot;
- (void)_requestPresentationWithStickerType:(id)a3 identifier:(id)a4;
- (void)_requestStickerExtensionMetadataDictionary:(id)a3;
- (void)_sendWillBecomeActiveMessage;
- (void)_setSendingEnabled:(BOOL)a3;
- (void)balloonHostAuditToken;
- (void)beginDisablingUserInteraction;
- (void)canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4;
- (void)contentDidLoad;
- (void)dismiss;
- (void)dismissAndPresentPhotosApp;
- (void)dragMediaItemCanceled;
- (void)dragMediaItemMoved:(id)a3 frameInRemoteView:(CGRect)a4 rotation:(double)a5 scale:(double)a6 completionHandler:(id)a7;
- (void)endDisablingUserInteraction;
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

@implementation _MSMessageAppBundleContext

- (_MSMessageAppBundleContext)initWithViewController:(id)a3 wantsLiveView:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _MSMessageAppBundleContext;
  v7 = [(_MSMessageAppBundleContext *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_viewController, v6);
    v8->_wantsLiveView = a4;
    if (!a4)
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
  v3 = [(_MSMessageAppBundleContext *)self viewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_MSMessageAppBundleContext *)self viewController];
    [(_MSMessageAppBundleContext *)self initialFrameOfHostView];
    [v5 setInitialFrameBeforeAppearance:?];
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
  v2 = [(_MSMessageAppBundleContext *)self hostContext];
  [v2 _remoteViewProvidesExplicitSizeSnapshot];
}

- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap
{
  v2 = [(_MSMessageAppBundleContext *)self hostContext];
  [v2 _remoteViewNeedsSizeMatchBeforeSnapshotSwap];
}

- (void)_remoteViewDidBecomeReadyForDisplay
{
  v2 = [(_MSMessageAppBundleContext *)self hostContext];
  [v2 _remoteViewDidBecomeReadyForDisplay];
}

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3
{
  v4 = a3;
  v5 = [(_MSMessageAppBundleContext *)self hostContext];
  [v5 _remoteViewDidInvalidateMessageTintColorWithUpdatedColor:v4];
}

- (void)_requestStickerExtensionMetadataDictionary:(id)a3
{
  v4 = a3;
  v5 = [(_MSMessageAppBundleContext *)self containingContext];
  [v5 _requestStickerExtensionMetadataDictionary:v4];
}

- (void)_requestPresentationWithStickerType:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_MSMessageAppBundleContext *)self containingContext];
  [v8 _requestPresentationWithStickerType:v7 identifier:v6];
}

- (void)_hostDidBeginDeferredTeardown
{
  v3 = [(_MSMessageAppBundleContext *)self viewController];
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

- (void)stageAppItem:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(_MSMessageAppBundleContext *)self hostContext];
  [v10 _stageAppItem:v9 skipShelf:v5 completionHandler:v8];
}

- (void)stageMediaItem:(id)a3 skipShelf:(BOOL)a4 forceStage:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v11 = a3;
  v12 = [(_MSMessageAppBundleContext *)self hostContext];
  [v12 _stageMediaItem:v11 skipShelf:v7 forceStage:v6 completionHandler:v10];
}

- (void)stageRichLink:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(_MSMessageAppBundleContext *)self hostContext];
  [v10 _stageRichLink:v9 skipShelf:v5 completionHandler:v8];
}

- (void)sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_MSMessageAppBundleContext *)self hostContext];
  [v11 _sendCustomAcknowledgement:v10 selectedMessage:v9 completionHandler:v8];
}

- (void)requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(_MSMessageAppBundleContext *)self hostContext];
  [v8 _requestConversationAvatarsWithSize:v7 completionHandler:{width, height}];
}

- (void)stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(_MSMessageAppBundleContext *)self hostContext];
  [v10 _stageAssetArchive:v9 skipShelf:v5 completionHandler:v8];
}

- (void)removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_MSMessageAppBundleContext *)self hostContext];
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
  v16 = [(_MSMessageAppBundleContext *)self hostContext];
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
  v17 = [(_MSMessageAppBundleContext *)self hostContext];
  [v17 _dragMediaItemMoved:v16 frameInRemoteView:v15 rotation:x scale:y completionHandler:{width, height, a5, a6}];
}

- (void)dragMediaItemCanceled
{
  v2 = [(_MSMessageAppBundleContext *)self hostContext];
  [v2 _dragMediaItemCanceled];
}

- (void)stickerDruidDragStarted
{
  v2 = [(_MSMessageAppBundleContext *)self hostContext];
  [v2 _stickerDruidDragStarted];
}

- (void)stickerDruidDragEndedWithPayload:(id)a3
{
  v4 = a3;
  v5 = [(_MSMessageAppBundleContext *)self hostContext];
  [v5 _stickerDruidDragEndedWithPayload:v4];
}

- (void)stickerDruidDragEndedWithPayload:(id)a3 pluginIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_MSMessageAppBundleContext *)self hostContext];
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

  v4 = [(_MSMessageAppBundleContext *)self hostContext];
  [v4 _requestPresentationStyle:a3];
LABEL_6:
}

- (void)requestFullScreenModalPresentationWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(_MSMessageAppBundleContext *)self hostContext];
  [v5 _requestFullScreenModalPresentationWithSize:{width, height}];
}

- (void)dismiss
{
  v2 = [(_MSMessageAppBundleContext *)self hostContext];
  [v2 _dismiss];
}

- (void)dismissAndPresentPhotosApp
{
  v2 = [(_MSMessageAppBundleContext *)self hostContext];
  [v2 _dismissAndPresentPhotosApp];
}

- (void)_setSendingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MSMessageAppBundleContext *)self hostContext];
  [v4 _setSendingEnabled:v3];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(_MSMessageAppBundleContext *)self hostContext];
  [v14 _presentAlertWithTitle:v13 message:v12 buttonTitle:v11 completion:v10];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(_MSMessageAppBundleContext *)self hostContext];
  [v17 _presentAlertWithTitle:v16 message:v15 buttonTitle:v14 image:v13 completion:v12];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(_MSMessageAppBundleContext *)self hostContext];
  [v17 _presentAlertWithTitle:v16 message:v15 buttonTitle:v14 destructiveButtonTitle:v13 completion:v12];
}

- (void)presentAlertSheetWith:(id)a3 styles:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_MSMessageAppBundleContext *)self hostContext];
  [v11 _presentAlertSheetWith:v10 styles:v9 completion:v8];
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
  v16 = [(_MSMessageAppBundleContext *)self hostContext];
  [v16 _presentContextMenuWithButtonTitles:v15 imageNames:v14 buttonFrame:v13 completion:{x, y, width, height}];
}

- (void)presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(_MSMessageAppBundleContext *)self hostContext];
  [v17 _presentAlertSheetWithTitle:v16 message:v15 buttonTitles:v14 styles:v13 completion:v12];
}

- (void)canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_MSMessageAppBundleContext *)self hostContext];
  [v8 _canShowBrowserForPluginIdentifier:v7 completion:v6];
}

- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(_MSMessageAppBundleContext *)self hostContext];
  [v10 _showBrowserForPluginIdentifier:v9 style:a4 completion:v8];
}

- (void)requestResize
{
  v2 = [(_MSMessageAppBundleContext *)self hostContext];
  [v2 _requestResize];
}

- (void)contentDidLoad
{
  v2 = [(_MSMessageAppBundleContext *)self hostContext];
  [v2 _contentDidLoad];
}

- (void)requestHostSceneIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_MSMessageAppBundleContext *)self hostContext];
  [v5 _requestHostSceneIdentifierWithCompletion:v4];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)balloonHostAuditToken
{
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *retstr->var0 = v5;
  *&retstr->var0[4] = v5;
  v6 = [(_MSMessageAppBundleContext *)self hostContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(_MSMessageAppBundleContext *)self hostContext];
    v9 = v8;
    if (v8)
    {
      [v8 _extensionHostAuditToken];
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