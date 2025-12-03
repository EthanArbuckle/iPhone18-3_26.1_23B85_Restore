@interface _MSMessageAppContext
+ (id)activeExtensionContext;
- ($115C4C562B26FF47E01F9F4EA65B5887)balloonHostAuditToken;
- (UIViewController)stickerViewController;
- (UIViewController)viewController;
- (_MSMessageAppContext)initWithAppContext:(id)context;
- (_MSMessageComposeHostImplProtocol)hostContext;
- (id)updatedConversationForConversationState:(id)state;
- (unint64_t)presentationContext;
- (unint64_t)presentationStyle;
- (void)_addStickerAnimationDidFinishWithCompletion:(id)completion;
- (void)_addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler;
- (void)_addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds;
- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion;
- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect effect:(int64_t)effect completion:(id)completion;
- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion;
- (void)_animatedStickerCreationProgressChanged:(id)changed progress:(double)progress;
- (void)_becomeActiveWithConversationState:(id)state presentationState:(id)presentationState;
- (void)_canSendMessage:(id)message conversationState:(id)state associatedText:(id)text completion:(id)completion;
- (void)_conversationDidChangeWithConversationState:(id)state;
- (void)_didCancelSendingMessage:(id)message conversationState:(id)state;
- (void)_didReceiveMessage:(id)message conversationState:(id)state;
- (void)_didRemoveAssetArchiveWithIdentifier:(id)identifier;
- (void)_didRemoveStickerPreview;
- (void)_didSelectGPAsset:(id)asset sandboxExtension:(id)extension recipeData:(id)data completion:(id)completion;
- (void)_didStartSendingMessage:(id)message conversationState:(id)state;
- (void)_didUpdateMessage:(id)message conversationState:(id)state;
- (void)_handleTextInputPayload:(id)payload withPayloadID:(id)d completion:(id)completion;
- (void)_keepContextAlive;
- (void)_prepareForAddStickerFromSubjectLift;
- (void)_prepareForPresentationWithCompletionHandler:(id)handler;
- (void)_presentationDidChangeToPresentationState:(id)state;
- (void)_presentationWillChangeToPresentationState:(id)state;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color;
- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap;
- (void)_remoteViewProvidesExplicitSizeSnapshot;
- (void)_requestContentSizeThatFits:(id)fits presentationStyle:(id)style completionHandler:(id)handler;
- (void)_requestMessageTintColor:(id)color;
- (void)_requestPresentationWithStickerType:(id)type identifier:(id)identifier;
- (void)_requestSnapshotThatFits:(id)fits completion:(id)completion;
- (void)_requestStickerExtensionMetadataDictionary:(id)dictionary;
- (void)_resignActive;
- (void)_setHostBundleID:(id)d;
- (void)_setPluginIdentifierToShow:(id)show completion:(id)completion;
- (void)_setSendingEnabled:(BOOL)enabled;
- (void)_volumeButtonPressed:(BOOL)pressed;
- (void)canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion;
- (void)contentDidLoad;
- (void)didChangeBackgroundLuminance:(double)luminance;
- (void)dismiss;
- (void)dismissAndPresentPhotosApp;
- (void)dragMediaItemCanceled;
- (void)dragMediaItemMoved:(id)moved frameInRemoteView:(CGRect)view rotation:(double)rotation scale:(double)scale completionHandler:(id)handler;
- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion;
- (void)presentAlertSheetWith:(id)with styles:(id)styles completion:(id)completion;
- (void)presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion;
- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle completion:(id)completion;
- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion;
- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion;
- (void)removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler;
- (void)requestFullScreenModalPresentationWithSize:(CGSize)size;
- (void)requestHostSceneIdentifierWithCompletion:(id)completion;
- (void)requestPresentationStyle:(unint64_t)style;
- (void)requestPresentationStyleExpanded:(BOOL)expanded;
- (void)requestResize;
- (void)sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler;
- (void)setHostContext:(id)context;
- (void)setPresentationContext:(unint64_t)context;
- (void)setPresentationStyle:(unint64_t)style;
- (void)setShouldPerformSendAnimationOnAppear;
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

@implementation _MSMessageAppContext

+ (id)activeExtensionContext
{
  v2 = +[_MSExtensionGlobalState sharedInstance];
  activeExtensionContext = [v2 activeExtensionContext];

  return activeExtensionContext;
}

- (_MSMessageAppContext)initWithAppContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v12.receiver = self;
    v12.super_class = _MSMessageAppContext;
    v5 = [(_MSMessageAppContext *)&v12 init];
    v6 = v5;
    if (v5)
    {
      v5->_becomeActiveShouldDispatchAsyncMainQueue = 1;
      v7 = objc_storeWeak(&v5->_context, contextCopy);
      [contextCopy setContainingContext:v6];

      weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      conversationsByIdentifier = v6->_conversationsByIdentifier;
      v6->_conversationsByIdentifier = weakToWeakObjectsMapTable;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_keepContextAlive
{
  self->_keepAliveContext = objc_loadWeakRetained(&self->_context);

  MEMORY[0x1EEE66BB8]();
}

- (void)setHostContext:(id)context
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained setHostContext:contextCopy];
}

- (_MSMessageComposeHostImplProtocol)hostContext
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  hostContext = [WeakRetained hostContext];

  return hostContext;
}

- (unint64_t)presentationStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  presentationStyle = [WeakRetained presentationStyle];

  return presentationStyle;
}

- (unint64_t)presentationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  presentationContext = [WeakRetained presentationContext];

  return presentationContext;
}

- (void)setPresentationContext:(unint64_t)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained setPresentationContext:context];
}

- (void)setPresentationStyle:(unint64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained setPresentationStyle:style];
}

- (id)updatedConversationForConversationState:(id)state
{
  stateCopy = state;
  conversationIdentifier = [stateCopy conversationIdentifier];
  v6 = [(NSMapTable *)self->_conversationsByIdentifier objectForKey:conversationIdentifier];
  if (v6)
  {
    v7 = v6;
    [v6 _updateWithState:stateCopy];
  }

  else
  {
    v8 = [MSConversation alloc];
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v7 = [(MSConversation *)v8 _initWithState:stateCopy context:WeakRetained];

    viewController = [(_MSMessageAppContext *)self viewController];
    if ([viewController conformsToProtocol:&unk_1F4ACE350])
    {
      viewController2 = [(_MSMessageAppContext *)self viewController];
      [v7 setDelegate:viewController2];
    }

    conversationsByIdentifier = self->_conversationsByIdentifier;
    identifier = [v7 identifier];
    [(NSMapTable *)conversationsByIdentifier setObject:v7 forKey:identifier];
  }

  return v7;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  viewController = [WeakRetained viewController];

  return viewController;
}

- (UIViewController)stickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  stickerViewController = [WeakRetained stickerViewController];

  return stickerViewController;
}

- (void)stageAppItem:(id)item skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stageAppItem:itemCopy skipShelf:shelfCopy completionHandler:handlerCopy];
}

- (void)stageMediaItem:(id)item skipShelf:(BOOL)shelf forceStage:(BOOL)stage completionHandler:(id)handler
{
  stageCopy = stage;
  shelfCopy = shelf;
  handlerCopy = handler;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stageMediaItem:itemCopy skipShelf:shelfCopy forceStage:stageCopy completionHandler:handlerCopy];
}

- (void)stageRichLink:(id)link skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  linkCopy = link;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stageRichLink:linkCopy skipShelf:shelfCopy completionHandler:handlerCopy];
}

- (void)sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  acknowledgementCopy = acknowledgement;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained sendCustomAcknowledgement:acknowledgementCopy selectedMessage:messageCopy completionHandler:handlerCopy];
}

- (void)requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained requestConversationAvatarsWithSize:handlerCopy completionHandler:{width, height}];
}

- (void)stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  archiveCopy = archive;
  v10 = ms_defaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1CADE6000, v10, OS_LOG_TYPE_DEFAULT, "Called -stageAssetArchive:skipShelf:completionHandler:", v12, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stageAssetArchive:archiveCopy skipShelf:shelfCopy completionHandler:handlerCopy];
}

- (void)removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = ms_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1CADE6000, v8, OS_LOG_TYPE_DEFAULT, "Called -removeAssetArchiveWithIdentifier:completionHandler:", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained removeAssetArchiveWithIdentifier:identifierCopy completionHandler:handlerCopy];
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
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained startDragMediaItem:itemCopy frameInRemoteView:fenceCopy fence:handlerCopy completionHandler:{x, y, width, height}];
}

- (void)dragMediaItemMoved:(id)moved frameInRemoteView:(CGRect)view rotation:(double)rotation scale:(double)scale completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  handlerCopy = handler;
  movedCopy = moved;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained dragMediaItemMoved:movedCopy frameInRemoteView:handlerCopy rotation:x scale:y completionHandler:{width, height, rotation, scale}];
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

- (void)stickerDruidDragEndedWithPayload:(id)payload
{
  payloadCopy = payload;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stickerDruidDragEndedWithPayload:payloadCopy];
}

- (void)stickerDruidDragEndedWithPayload:(id)payload pluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  payloadCopy = payload;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained stickerDruidDragEndedWithPayload:payloadCopy pluginIdentifier:identifierCopy];
}

- (void)requestPresentationStyle:(unint64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained requestPresentationStyle:style];
}

- (void)requestPresentationStyleExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained requestPresentationStyleExpanded:expandedCopy];
}

- (void)requestFullScreenModalPresentationWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)_setSendingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _setSendingEnabled:enabledCopy];
}

- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle completion:(id)completion
{
  completionCopy = completion;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy completion:completionCopy];
}

- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion
{
  completionCopy = completion;
  imageCopy = image;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy image:imageCopy completion:completionCopy];
}

- (void)presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion
{
  completionCopy = completion;
  destructiveButtonTitleCopy = destructiveButtonTitle;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy destructiveButtonTitle:destructiveButtonTitleCopy completion:completionCopy];
}

- (void)presentAlertSheetWith:(id)with styles:(id)styles completion:(id)completion
{
  completionCopy = completion;
  stylesCopy = styles;
  withCopy = with;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained presentAlertSheetWith:withCopy styles:stylesCopy completion:completionCopy];
}

- (void)presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion
{
  completionCopy = completion;
  stylesCopy = styles;
  titlesCopy = titles;
  messageCopy = message;
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained presentAlertSheetWithTitle:titleCopy message:messageCopy buttonTitles:titlesCopy styles:stylesCopy completion:completionCopy];
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

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color
{
  colorCopy = color;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _remoteViewDidInvalidateMessageTintColorWithUpdatedColor:colorCopy];
}

- (void)_requestStickerExtensionMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  viewController = [(_MSMessageAppContext *)self viewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___MSMessageAppContext__requestStickerExtensionMetadataDictionary___block_invoke;
  v8[3] = &unk_1E83A2C48;
  v9 = viewController;
  v10 = dictionaryCopy;
  v6 = dictionaryCopy;
  v7 = viewController;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)_requestPresentationWithStickerType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  viewController = [(_MSMessageAppContext *)self viewController];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___MSMessageAppContext__requestPresentationWithStickerType_identifier___block_invoke;
  block[3] = &unk_1E83A2C70;
  v13 = viewController;
  v14 = typeCopy;
  v15 = identifierCopy;
  v9 = identifierCopy;
  v10 = typeCopy;
  v11 = viewController;
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

- (void)requestHostSceneIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained requestHostSceneIdentifierWithCompletion:completionCopy];
}

- (void)canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained canShowBrowserForPluginIdentifier:identifierCopy completion:completionCopy];
}

- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained showBrowserForPluginIdentifier:identifierCopy style:style completion:completionCopy];
}

- (void)_setHostBundleID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _setHostBundleID:dCopy];
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

- (void)_becomeActiveWithConversationState:(id)state presentationState:(id)presentationState
{
  stateCopy = state;
  presentationStateCopy = presentationState;
  viewController = [(_MSMessageAppContext *)self viewController];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77___MSMessageAppContext__becomeActiveWithConversationState_presentationState___block_invoke;
  aBlock[3] = &unk_1E83A2C98;
  aBlock[4] = self;
  v9 = presentationStateCopy;
  v16 = v9;
  v10 = stateCopy;
  v17 = v10;
  v11 = viewController;
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

- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController fetchInternalMessageStateForDraft:draftCopy completion:completionCopy];
  }
}

- (void)setShouldPerformSendAnimationOnAppear
{
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController setShouldPerformSendAnimationOnAppear];
  }
}

- (void)didChangeBackgroundLuminance:(double)luminance
{
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController didChangeBackgroundLuminance:luminance];
  }
}

- (void)_resignActive
{
  viewController = [(_MSMessageAppContext *)self viewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37___MSMessageAppContext__resignActive__block_invoke;
  v5[3] = &unk_1E83A2CE8;
  v5[4] = self;
  v6 = viewController;
  v4 = viewController;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)_canSendMessage:(id)message conversationState:(id)state associatedText:(id)text completion:(id)completion
{
  messageCopy = message;
  stateCopy = state;
  textCopy = text;
  completionCopy = completion;
  [(_MSMessageAppContext *)self _keepContextAlive];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___MSMessageAppContext__canSendMessage_conversationState_associatedText_completion___block_invoke;
  block[3] = &unk_1E83A2D38;
  block[4] = self;
  v19 = stateCopy;
  v20 = messageCopy;
  v21 = textCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = textCopy;
  v16 = messageCopy;
  v17 = stateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_conversationDidChangeWithConversationState:(id)state
{
  stateCopy = state;
  viewController = [(_MSMessageAppContext *)self viewController];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___MSMessageAppContext__conversationDidChangeWithConversationState___block_invoke;
  block[3] = &unk_1E83A2C70;
  block[4] = self;
  v9 = stateCopy;
  v10 = viewController;
  v6 = viewController;
  v7 = stateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_requestContentSizeThatFits:(id)fits presentationStyle:(id)style completionHandler:(id)handler
{
  fitsCopy = fits;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88___MSMessageAppContext__requestContentSizeThatFits_presentationStyle_completionHandler___block_invoke;
  block[3] = &unk_1E83A2D60;
  block[4] = self;
  v12 = fitsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = fitsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_presentationWillChangeToPresentationState:(id)state
{
  stateCopy = state;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___MSMessageAppContext__presentationWillChangeToPresentationState___block_invoke;
  v6[3] = &unk_1E83A2CE8;
  v6[4] = self;
  v7 = stateCopy;
  v5 = stateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_presentationDidChangeToPresentationState:(id)state
{
  stateCopy = state;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66___MSMessageAppContext__presentationDidChangeToPresentationState___block_invoke;
  v6[3] = &unk_1E83A2CE8;
  v6[4] = self;
  v7 = stateCopy;
  v5 = stateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_didUpdateMessage:(id)message conversationState:(id)state
{
  messageCopy = message;
  stateCopy = state;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___MSMessageAppContext__didUpdateMessage_conversationState___block_invoke;
  block[3] = &unk_1E83A2C70;
  block[4] = self;
  v11 = stateCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = stateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didReceiveMessage:(id)message conversationState:(id)state
{
  messageCopy = message;
  stateCopy = state;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___MSMessageAppContext__didReceiveMessage_conversationState___block_invoke;
  block[3] = &unk_1E83A2C70;
  block[4] = self;
  v11 = stateCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = stateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didStartSendingMessage:(id)message conversationState:(id)state
{
  messageCopy = message;
  stateCopy = state;
  [(_MSMessageAppContext *)self _keepContextAlive];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___MSMessageAppContext__didStartSendingMessage_conversationState___block_invoke;
  block[3] = &unk_1E83A2C70;
  block[4] = self;
  v11 = stateCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = stateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didCancelSendingMessage:(id)message conversationState:(id)state
{
  messageCopy = message;
  stateCopy = state;
  [(_MSMessageAppContext *)self _keepContextAlive];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67___MSMessageAppContext__didCancelSendingMessage_conversationState___block_invoke;
  block[3] = &unk_1E83A2C70;
  block[4] = self;
  v11 = stateCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = stateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didSelectGPAsset:(id)asset sandboxExtension:(id)extension recipeData:(id)data completion:(id)completion
{
  assetCopy = asset;
  extensionCopy = extension;
  dataCopy = data;
  completionCopy = completion;
  [(_MSMessageAppContext *)self _keepContextAlive];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81___MSMessageAppContext__didSelectGPAsset_sandboxExtension_recipeData_completion___block_invoke;
  block[3] = &unk_1E83A2D38;
  block[4] = self;
  v19 = assetCopy;
  v20 = dataCopy;
  v21 = extensionCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = extensionCopy;
  v16 = dataCopy;
  v17 = assetCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_requestSnapshotThatFits:(id)fits completion:(id)completion
{
  fitsCopy = fits;
  completionCopy = completion;
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
  v19 = fitsCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = fitsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_requestMessageTintColor:(id)color
{
  colorCopy = color;
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
  v15 = colorCopy;
  v13 = colorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_handleTextInputPayload:(id)payload withPayloadID:(id)d completion:(id)completion
{
  payloadCopy = payload;
  dCopy = d;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73___MSMessageAppContext__handleTextInputPayload_withPayloadID_completion___block_invoke;
  v14[3] = &unk_1E83A2D88;
  v14[4] = self;
  v15 = payloadCopy;
  v16 = dCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = dCopy;
  v13 = payloadCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_didRemoveAssetArchiveWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(_MSMessageAppContext *)self _keepContextAlive];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61___MSMessageAppContext__didRemoveAssetArchiveWithIdentifier___block_invoke;
  v6[3] = &unk_1E83A2CE8;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_prepareForPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69___MSMessageAppContext__prepareForPresentationWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E83A2C48;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_volumeButtonPressed:(BOOL)pressed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45___MSMessageAppContext__volumeButtonPressed___block_invoke;
  v3[3] = &unk_1E83A2E00;
  v3[4] = self;
  pressedCopy = pressed;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)_setPluginIdentifierToShow:(id)show completion:(id)completion
{
  showCopy = show;
  completionCopy = completion;
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController _setPluginIdentifierToShow:showCopy completion:completionCopy];
  }
}

- (void)_addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds
{
  representationsCopy = representations;
  dsCopy = ds;
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController _addStickerToStoreWithRepresentations:representationsCopy completionWithStickerIDs:dsCopy];
  }
}

- (void)_addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler
{
  representationsCopy = representations;
  handlerCopy = handler;
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController _addStickerToStoreWithRepresentations:representationsCopy completionHandler:handlerCopy];
  }
}

- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  representationsCopy = representations;
  completionCopy = completion;
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController _addStickerToStoreWithRepresentations:representationsCopy sourceRect:completionCopy completion:{x, y, width, height}];
  }
}

- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect effect:(int64_t)effect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  representationsCopy = representations;
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController _addStickerToStoreWithRepresentations:representationsCopy sourceRect:effect effect:completionCopy completion:{x, y, width, height}];
  }

  else
  {
    [(_MSMessageAppContext *)self _addStickerToStoreWithRepresentations:representationsCopy sourceRect:completionCopy completion:x, y, width, height];
  }
}

- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stickerCopy = sticker;
  completionCopy = completion;
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController _addStickerToStoreWithUISticker:stickerCopy sourceRect:completionCopy completion:{x, y, width, height}];
  }
}

- (void)_prepareForAddStickerFromSubjectLift
{
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController _prepareForAddStickerFromSubjectLift];
  }
}

- (void)_addStickerAnimationDidFinishWithCompletion:(id)completion
{
  completionCopy = completion;
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController _addStickerAnimationDidFinishWithCompletion:completionCopy];
  }
}

- (void)_didRemoveStickerPreview
{
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController _didRemoveStickerPreview];
  }
}

- (void)_animatedStickerCreationProgressChanged:(id)changed progress:(double)progress
{
  changedCopy = changed;
  viewController = [(_MSMessageAppContext *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    [viewController _animatedStickerCreationProgressChanged:changedCopy progress:progress];
  }
}

@end