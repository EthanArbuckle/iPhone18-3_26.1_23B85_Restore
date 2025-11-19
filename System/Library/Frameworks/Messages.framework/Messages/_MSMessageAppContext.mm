@interface _MSMessageAppContext
+ (id)activeExtensionContext;
- ($115C4C562B26FF47E01F9F4EA65B5887)balloonHostAuditToken;
- (UIViewController)stickerViewController;
- (UIViewController)viewController;
- (_MSMessageAppContext)initWithAppContext:(id)a3;
- (_MSMessageComposeHostImplProtocol)hostContext;
- (id)updatedConversationForConversationState:(id)a3;
- (unint64_t)presentationContext;
- (unint64_t)presentationStyle;
- (void)_addStickerAnimationDidFinishWithCompletion:(id)a3;
- (void)_addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4;
- (void)_addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4;
- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 effect:(int64_t)a5 completion:(id)a6;
- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)_animatedStickerCreationProgressChanged:(id)a3 progress:(double)a4;
- (void)_becomeActiveWithConversationState:(id)a3 presentationState:(id)a4;
- (void)_canSendMessage:(id)a3 conversationState:(id)a4 associatedText:(id)a5 completion:(id)a6;
- (void)_conversationDidChangeWithConversationState:(id)a3;
- (void)_didCancelSendingMessage:(id)a3 conversationState:(id)a4;
- (void)_didReceiveMessage:(id)a3 conversationState:(id)a4;
- (void)_didRemoveAssetArchiveWithIdentifier:(id)a3;
- (void)_didRemoveStickerPreview;
- (void)_didSelectGPAsset:(id)a3 sandboxExtension:(id)a4 recipeData:(id)a5 completion:(id)a6;
- (void)_didStartSendingMessage:(id)a3 conversationState:(id)a4;
- (void)_didUpdateMessage:(id)a3 conversationState:(id)a4;
- (void)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4 completion:(id)a5;
- (void)_keepContextAlive;
- (void)_prepareForAddStickerFromSubjectLift;
- (void)_prepareForPresentationWithCompletionHandler:(id)a3;
- (void)_presentationDidChangeToPresentationState:(id)a3;
- (void)_presentationWillChangeToPresentationState:(id)a3;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3;
- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap;
- (void)_remoteViewProvidesExplicitSizeSnapshot;
- (void)_requestContentSizeThatFits:(id)a3 presentationStyle:(id)a4 completionHandler:(id)a5;
- (void)_requestMessageTintColor:(id)a3;
- (void)_requestPresentationWithStickerType:(id)a3 identifier:(id)a4;
- (void)_requestSnapshotThatFits:(id)a3 completion:(id)a4;
- (void)_requestStickerExtensionMetadataDictionary:(id)a3;
- (void)_resignActive;
- (void)_setHostBundleID:(id)a3;
- (void)_setPluginIdentifierToShow:(id)a3 completion:(id)a4;
- (void)_setSendingEnabled:(BOOL)a3;
- (void)_volumeButtonPressed:(BOOL)a3;
- (void)canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4;
- (void)contentDidLoad;
- (void)didChangeBackgroundLuminance:(double)a3;
- (void)dismiss;
- (void)dismissAndPresentPhotosApp;
- (void)dragMediaItemCanceled;
- (void)dragMediaItemMoved:(id)a3 frameInRemoteView:(CGRect)a4 rotation:(double)a5 scale:(double)a6 completionHandler:(id)a7;
- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4;
- (void)presentAlertSheetWith:(id)a3 styles:(id)a4 completion:(id)a5;
- (void)presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 completion:(id)a6;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7;
- (void)removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4;
- (void)requestFullScreenModalPresentationWithSize:(CGSize)a3;
- (void)requestHostSceneIdentifierWithCompletion:(id)a3;
- (void)requestPresentationStyle:(unint64_t)a3;
- (void)requestPresentationStyleExpanded:(BOOL)a3;
- (void)requestResize;
- (void)sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5;
- (void)setHostContext:(id)a3;
- (void)setPresentationContext:(unint64_t)a3;
- (void)setPresentationStyle:(unint64_t)a3;
- (void)setShouldPerformSendAnimationOnAppear;
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

@implementation _MSMessageAppContext

+ (id)activeExtensionContext
{
  v2 = +[_MSExtensionGlobalState sharedInstance];
  v3 = [v2 activeExtensionContext];

  return v3;
}

- (_MSMessageAppContext)initWithAppContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = _MSMessageAppContext;
    v5 = [(_MSMessageAppContext *)&v12 init];
    v6 = v5;
    if (v5)
    {
      v5->_becomeActiveShouldDispatchAsyncMainQueue = 1;
      v7 = objc_storeWeak(&v5->_context, v4);
      [v4 setContainingContext:v6];

      v8 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      conversationsByIdentifier = v6->_conversationsByIdentifier;
      v6->_conversationsByIdentifier = v8;
    }

    self = v6;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_keepContextAlive
{
  self->_keepAliveContext = objc_loadWeakRetained(&self->_context);

  MEMORY[0x1EEE66BB8]();
}

- (void)setHostContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained setHostContext:v4];
}

- (_MSMessageComposeHostImplProtocol)hostContext
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v3 = [WeakRetained hostContext];

  return v3;
}

- (unint64_t)presentationStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v3 = [WeakRetained presentationStyle];

  return v3;
}

- (unint64_t)presentationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v3 = [WeakRetained presentationContext];

  return v3;
}

- (void)setPresentationContext:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained setPresentationContext:a3];
}

- (void)setPresentationStyle:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained setPresentationStyle:a3];
}

- (id)updatedConversationForConversationState:(id)a3
{
  v4 = a3;
  v5 = [v4 conversationIdentifier];
  v6 = [(NSMapTable *)self->_conversationsByIdentifier objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    [v6 _updateWithState:v4];
  }

  else
  {
    v8 = [MSConversation alloc];
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v7 = [(MSConversation *)v8 _initWithState:v4 context:WeakRetained];

    v10 = [(_MSMessageAppContext *)self viewController];
    if ([v10 conformsToProtocol:&unk_1F4ACE350])
    {
      v11 = [(_MSMessageAppContext *)self viewController];
      [v7 setDelegate:v11];
    }

    conversationsByIdentifier = self->_conversationsByIdentifier;
    v13 = [v7 identifier];
    [(NSMapTable *)conversationsByIdentifier setObject:v7 forKey:v13];
  }

  return v7;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v3 = [WeakRetained viewController];

  return v3;
}

- (UIViewController)stickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v3 = [WeakRetained stickerViewController];

  return v3;
}

- (void)stageAppItem:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stageAppItem:v9 skipShelf:v5 completionHandler:v8];
}

- (void)stageMediaItem:(id)a3 skipShelf:(BOOL)a4 forceStage:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stageMediaItem:v11 skipShelf:v7 forceStage:v6 completionHandler:v10];
}

- (void)stageRichLink:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stageRichLink:v9 skipShelf:v5 completionHandler:v8];
}

- (void)sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained sendCustomAcknowledgement:v10 selectedMessage:v9 completionHandler:v8];
}

- (void)requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained requestConversationAvatarsWithSize:v7 completionHandler:{width, height}];
}

- (void)stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = ms_defaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1CADE6000, v10, OS_LOG_TYPE_DEFAULT, "Called -stageAssetArchive:skipShelf:completionHandler:", v12, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stageAssetArchive:v9 skipShelf:v5 completionHandler:v8];
}

- (void)removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = ms_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1CADE6000, v8, OS_LOG_TYPE_DEFAULT, "Called -removeAssetArchiveWithIdentifier:completionHandler:", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained removeAssetArchiveWithIdentifier:v7 completionHandler:v6];
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
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained startDragMediaItem:v15 frameInRemoteView:v14 fence:v13 completionHandler:{x, y, width, height}];
}

- (void)dragMediaItemMoved:(id)a3 frameInRemoteView:(CGRect)a4 rotation:(double)a5 scale:(double)a6 completionHandler:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a7;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained dragMediaItemMoved:v16 frameInRemoteView:v15 rotation:x scale:y completionHandler:{width, height, a5, a6}];
}

- (void)dragMediaItemCanceled
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained dragMediaItemCanceled];
}

- (void)stickerDruidDragStarted
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stickerDruidDragStarted];
}

- (void)stickerDruidDragEndedWithPayload:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stickerDruidDragEndedWithPayload:v4];
}

- (void)stickerDruidDragEndedWithPayload:(id)a3 pluginIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stickerDruidDragEndedWithPayload:v7 pluginIdentifier:v6];
}

- (void)requestPresentationStyle:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained requestPresentationStyle:a3];
}

- (void)requestPresentationStyleExpanded:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained requestPresentationStyleExpanded:v3];
}

- (void)requestFullScreenModalPresentationWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained requestFullScreenModalPresentationWithSize:{width, height}];
}

- (void)dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained dismiss];
}

- (void)dismissAndPresentPhotosApp
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained dismissAndPresentPhotosApp];
}

- (void)_setSendingEnabled:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _setSendingEnabled:v3];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained presentAlertWithTitle:v13 message:v12 buttonTitle:v11 completion:v10];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained presentAlertWithTitle:v16 message:v15 buttonTitle:v14 image:v13 completion:v12];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained presentAlertWithTitle:v16 message:v15 buttonTitle:v14 destructiveButtonTitle:v13 completion:v12];
}

- (void)presentAlertSheetWith:(id)a3 styles:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained presentAlertSheetWith:v10 styles:v9 completion:v8];
}

- (void)presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained presentAlertSheetWithTitle:v16 message:v15 buttonTitles:v14 styles:v13 completion:v12];
}

- (void)_remoteViewProvidesExplicitSizeSnapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _remoteViewProvidesExplicitSizeSnapshot];
}

- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _remoteViewNeedsSizeMatchBeforeSnapshotSwap];
}

- (void)_remoteViewDidBecomeReadyForDisplay
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _remoteViewDidBecomeReadyForDisplay];
}

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _remoteViewDidInvalidateMessageTintColorWithUpdatedColor:v4];
}

- (void)_requestStickerExtensionMetadataDictionary:(id)a3
{
  v4 = a3;
  v5 = [(_MSMessageAppContext *)self viewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___MSMessageAppContext__requestStickerExtensionMetadataDictionary___block_invoke;
  v8[3] = &unk_1E83A2C48;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)_requestPresentationWithStickerType:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_MSMessageAppContext *)self viewController];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___MSMessageAppContext__requestPresentationWithStickerType_identifier___block_invoke;
  block[3] = &unk_1E83A2C70;
  v13 = v8;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)requestResize
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained requestResize];
}

- (void)contentDidLoad
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained contentDidLoad];
}

- (void)requestHostSceneIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained requestHostSceneIdentifierWithCompletion:v4];
}

- (void)canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained canShowBrowserForPluginIdentifier:v7 completion:v6];
}

- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained showBrowserForPluginIdentifier:v9 style:a4 completion:v8];
}

- (void)_setHostBundleID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _setHostBundleID:v4];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)balloonHostAuditToken
{
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *retstr->var0 = v5;
  *&retstr->var0[4] = v5;
  WeakRetained = objc_loadWeakRetained(&self->_context);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_context);
    v8 = v7;
    if (v7)
    {
      [v7 balloonHostAuditToken];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v18 = v20;
    *retstr->var0 = v19;
    *&retstr->var0[4] = v18;
  }

  else
  {
    LODWORD(v19) = 8;
    result = task_info(*MEMORY[0x1E69E9A60], 0xFu, retstr, &v19);
    if (result)
    {
      v10 = ms_traceLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(_MSMessageAppContext *)v10 balloonHostAuditToken:v11];
      }
    }
  }

  return result;
}

- (void)_becomeActiveWithConversationState:(id)a3 presentationState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_MSMessageAppContext *)self viewController];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77___MSMessageAppContext__becomeActiveWithConversationState_presentationState___block_invoke;
  aBlock[3] = &unk_1E83A2C98;
  aBlock[4] = self;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  v17 = v10;
  v11 = v8;
  v18 = v11;
  v12 = _Block_copy(aBlock);
  if ([(_MSMessageAppContext *)self becomeActiveShouldDispatchAsyncMainQueue])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77___MSMessageAppContext__becomeActiveWithConversationState_presentationState___block_invoke_2;
    block[3] = &unk_1E83A2CC0;
    v14 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v12[2](v12);
  }
}

- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v6 fetchInternalMessageStateForDraft:v4 completion:v7];
  }
}

- (void)setShouldPerformSendAnimationOnAppear
{
  v2 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 setShouldPerformSendAnimationOnAppear];
  }
}

- (void)didChangeBackgroundLuminance:(double)a3
{
  v4 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v4 didChangeBackgroundLuminance:a3];
  }
}

- (void)_resignActive
{
  v3 = [(_MSMessageAppContext *)self viewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37___MSMessageAppContext__resignActive__block_invoke;
  v5[3] = &unk_1E83A2CE8;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)_canSendMessage:(id)a3 conversationState:(id)a4 associatedText:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(_MSMessageAppContext *)self _keepContextAlive];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___MSMessageAppContext__canSendMessage_conversationState_associatedText_completion___block_invoke;
  block[3] = &unk_1E83A2D38;
  block[4] = self;
  v19 = v11;
  v20 = v10;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_conversationDidChangeWithConversationState:(id)a3
{
  v4 = a3;
  v5 = [(_MSMessageAppContext *)self viewController];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___MSMessageAppContext__conversationDidChangeWithConversationState___block_invoke;
  block[3] = &unk_1E83A2C70;
  block[4] = self;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_requestContentSizeThatFits:(id)a3 presentationStyle:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88___MSMessageAppContext__requestContentSizeThatFits_presentationStyle_completionHandler___block_invoke;
  block[3] = &unk_1E83A2D60;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_presentationWillChangeToPresentationState:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___MSMessageAppContext__presentationWillChangeToPresentationState___block_invoke;
  v6[3] = &unk_1E83A2CE8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_presentationDidChangeToPresentationState:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66___MSMessageAppContext__presentationDidChangeToPresentationState___block_invoke;
  v6[3] = &unk_1E83A2CE8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_didUpdateMessage:(id)a3 conversationState:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___MSMessageAppContext__didUpdateMessage_conversationState___block_invoke;
  block[3] = &unk_1E83A2C70;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didReceiveMessage:(id)a3 conversationState:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___MSMessageAppContext__didReceiveMessage_conversationState___block_invoke;
  block[3] = &unk_1E83A2C70;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didStartSendingMessage:(id)a3 conversationState:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_MSMessageAppContext *)self _keepContextAlive];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___MSMessageAppContext__didStartSendingMessage_conversationState___block_invoke;
  block[3] = &unk_1E83A2C70;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didCancelSendingMessage:(id)a3 conversationState:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_MSMessageAppContext *)self _keepContextAlive];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67___MSMessageAppContext__didCancelSendingMessage_conversationState___block_invoke;
  block[3] = &unk_1E83A2C70;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didSelectGPAsset:(id)a3 sandboxExtension:(id)a4 recipeData:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(_MSMessageAppContext *)self _keepContextAlive];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81___MSMessageAppContext__didSelectGPAsset_sandboxExtension_recipeData_completion___block_invoke;
  block[3] = &unk_1E83A2D38;
  block[4] = self;
  v19 = v10;
  v20 = v12;
  v21 = v11;
  v22 = v13;
  v14 = v13;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_requestSnapshotThatFits:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ms_traceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(_MSMessageAppContext *)v8 _requestSnapshotThatFits:v9 completion:v10, v11, v12, v13, v14, v15];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___MSMessageAppContext__requestSnapshotThatFits_completion___block_invoke;
  block[3] = &unk_1E83A2D60;
  block[4] = self;
  v19 = v6;
  v20 = v7;
  v16 = v7;
  v17 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_requestMessageTintColor:(id)a3
{
  v4 = a3;
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_MSMessageAppContext *)v5 _requestMessageTintColor:v6, v7, v8, v9, v10, v11, v12];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49___MSMessageAppContext__requestMessageTintColor___block_invoke;
  v14[3] = &unk_1E83A2C48;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73___MSMessageAppContext__handleTextInputPayload_withPayloadID_completion___block_invoke;
  v14[3] = &unk_1E83A2D88;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_didRemoveAssetArchiveWithIdentifier:(id)a3
{
  v4 = a3;
  [(_MSMessageAppContext *)self _keepContextAlive];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61___MSMessageAppContext__didRemoveAssetArchiveWithIdentifier___block_invoke;
  v6[3] = &unk_1E83A2CE8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_prepareForPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69___MSMessageAppContext__prepareForPresentationWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E83A2C48;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_volumeButtonPressed:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45___MSMessageAppContext__volumeButtonPressed___block_invoke;
  v3[3] = &unk_1E83A2E00;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)_setPluginIdentifierToShow:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v7 _setPluginIdentifierToShow:v8 completion:v6];
  }
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v7 _addStickerToStoreWithRepresentations:v8 completionWithStickerIDs:v6];
  }
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v7 _addStickerToStoreWithRepresentations:v8 completionHandler:v6];
  }
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v11 = a5;
  v12 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v12 _addStickerToStoreWithRepresentations:v13 sourceRect:v11 completion:{x, y, width, height}];
  }
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 effect:(int64_t)a5 completion:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a6;
  v14 = a3;
  v15 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v15 _addStickerToStoreWithRepresentations:v14 sourceRect:a5 effect:v13 completion:{x, y, width, height}];
  }

  else
  {
    [(_MSMessageAppContext *)self _addStickerToStoreWithRepresentations:v14 sourceRect:v13 completion:x, y, width, height];
  }
}

- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v11 = a5;
  v12 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v12 _addStickerToStoreWithUISticker:v13 sourceRect:v11 completion:{x, y, width, height}];
  }
}

- (void)_prepareForAddStickerFromSubjectLift
{
  v2 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 _prepareForAddStickerFromSubjectLift];
  }
}

- (void)_addStickerAnimationDidFinishWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v4 _addStickerAnimationDidFinishWithCompletion:v5];
  }
}

- (void)_didRemoveStickerPreview
{
  v2 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 _didRemoveStickerPreview];
  }
}

- (void)_animatedStickerCreationProgressChanged:(id)a3 progress:(double)a4
{
  v7 = a3;
  v6 = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [v6 _animatedStickerCreationProgressChanged:v7 progress:a4];
  }
}

@end