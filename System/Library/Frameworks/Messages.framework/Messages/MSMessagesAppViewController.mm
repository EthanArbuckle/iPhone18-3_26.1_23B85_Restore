@interface MSMessagesAppViewController
- (BOOL)_isAppleInternalAppAndWantsSafeAreaInsets;
- (BOOL)_isInsideUserGeneratedStickerExtension;
- (BOOL)_ms_isInSheet;
- (BOOL)_shouldUseBackwardsCompatibilityOffsets;
- (CGRect)initialFrameBeforeAppearance;
- (MSMessagesAppPresentationContext)presentationContext;
- (MSMessagesAppPresentationStyle)presentationStyle;
- (MSMessagesAppViewController)initWithCoder:(id)coder;
- (MSMessagesAppViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate;
- (UIEdgeInsets)_balloonMaskEdgeInsets;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (_MSMessageComposeExtensionImplProtocol)appContext;
- (double)_percentExpanded;
- (double)messageCornerRadius;
- (void)_addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler;
- (void)_addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds;
- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion;
- (void)_balloonMaskEdgeInsets;
- (void)_conversation:(id)_conversation didSelectMessage:(id)message;
- (void)_conversation:(id)_conversation willSelectMessage:(id)message;
- (void)_dismissAndPresentPhotosApp;
- (void)_emojiStickerDragEnded;
- (void)_emojiStickerDragStarted;
- (void)_prepareForPresentationWithCompletionHandler:(id)handler;
- (void)_presentAlertSheetWith:(id)with styles:(id)styles completion:(id)completion;
- (void)_presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion;
- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle completion:(id)completion;
- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion;
- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion;
- (void)_presentContextMenuWithButtonTitles:(id)titles imageNames:(id)names buttonFrame:(CGRect)frame completion:(id)completion;
- (void)_requestFullScreenModalPresentationWithSize:(CGSize)size;
- (void)_requestHostSceneIdentifierWithCompletion:(id)completion;
- (void)_setAppPresentationStyle:(unint64_t)style;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)_setSendingEnabled:(BOOL)enabled;
- (void)_setUpEmojiDragNotificationObservers;
- (void)_updateLayoutMargins;
- (void)addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion;
- (void)contentDidLoad;
- (void)dealloc;
- (void)dismiss;
- (void)generateSnapshotWithContentSize:(CGSize)size completion:(id)completion;
- (void)invalidateMessageTintColor;
- (void)messageCornerRadius;
- (void)requestPresentationStyle:(MSMessagesAppPresentationStyle)presentationStyle;
- (void)requestPresentationWithStickerType:(id)type identifier:(id)identifier;
- (void)requestResize;
- (void)requestStickerExtensionMetadataDictionary:(id)dictionary;
- (void)setInitialFrameBeforeAppearance:(CGRect)appearance;
- (void)setNeedsSizeMatchBeforeSnapshotSwap;
- (void)setProvidesExplicitSizeSnapshot;
- (void)setReadyForDisplay;
- (void)setShouldPerformSendAnimationOnAppear;
- (void)updateSnapshotWithCompletionBlock:(id)block;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)willTransitionToPresentationStyle:(MSMessagesAppPresentationStyle)presentationStyle;
@end

@implementation MSMessagesAppViewController

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[MSMessagesAppViewController dealloc]";
  _os_log_debug_impl(&dword_1CADE6000, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8 = _MSMainBundleIdentifier();
  if ([v8 isEqualToString:@"com.gamerdelights.gamepigeon.ext"])
  {
    v9 = dyld_program_sdk_at_least();

    if ((v9 & 1) == 0)
    {
      v10 = IMSharedHelperDeviceIsiPad();
      v11 = bottom == 34.0 && top == 34.0;
      v12 = 0.0;
      if (!v11)
      {
        v12 = top;
      }

      if (v10)
      {
        top = v12;
      }
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = MSMessagesAppViewController;
  [(MSMessagesAppViewController *)&v13 _setContentOverlayInsets:top, left, bottom, right];
  [(MSMessagesAppViewController *)self _setNavigationControllerContentInsetAdjustment:top, 0.0, bottom, 0.0];
}

- (MSMessagesAppViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = MSMessagesAppViewController;
  v3 = [(MSMessagesAppViewController *)&v7 initWithCoder:coder];
  if (v3)
  {
    v4 = [[_MSMessagesAppPresentationControllerDelegate alloc] initWithMessagesAppViewController:v3];
    sheetPresentationControllerDelegate = v3->_sheetPresentationControllerDelegate;
    v3->_sheetPresentationControllerDelegate = v4;

    [(MSMessagesAppViewController *)v3 _setUpEmojiDragNotificationObservers];
  }

  return v3;
}

- (MSMessagesAppViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MSMessagesAppViewController;
  v4 = [(MSMessagesAppViewController *)&v8 init];
  if (v4)
  {
    if (delegateCopy)
    {
      v5 = [[_MSMessagesAppPresentationControllerDelegate alloc] initWithMessagesAppViewController:v4];
      sheetPresentationControllerDelegate = v4->_sheetPresentationControllerDelegate;
      v4->_sheetPresentationControllerDelegate = v5;
    }

    [(MSMessagesAppViewController *)v4 _setUpEmojiDragNotificationObservers];
  }

  return v4;
}

- (_MSMessageComposeExtensionImplProtocol)appContext
{
  appContext = self->_appContext;
  if (appContext)
  {
    extensionContext = appContext;
  }

  else
  {
    extensionContext = [(MSMessagesAppViewController *)self extensionContext];
  }

  return extensionContext;
}

- (void)_setUpEmojiDragNotificationObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__emojiStickerDragStarted name:*MEMORY[0x1E69DE058] object:0];
  [defaultCenter addObserver:self selector:sel__emojiStickerDragEnded name:*MEMORY[0x1E69DE070] object:0];
  [defaultCenter addObserver:self selector:sel__emojiStickerDragEnded name:*MEMORY[0x1E69DE060] object:0];
}

- (void)_emojiStickerDragStarted
{
  activeConversation = [(MSMessagesAppViewController *)self activeConversation];
  context = [activeConversation context];
  [context stickerDruidDragStarted];
}

- (void)_emojiStickerDragEnded
{
  activeConversation = [(MSMessagesAppViewController *)self activeConversation];
  context = [activeConversation context];
  [context stickerDruidDragEndedWithPayload:0];
}

- (void)_conversation:(id)_conversation willSelectMessage:(id)message
{
  if (_conversation)
  {
    if (message)
    {
      [(MSMessagesAppViewController *)self willSelectMessage:message conversation:_conversation];
    }
  }
}

- (void)_conversation:(id)_conversation didSelectMessage:(id)message
{
  if (_conversation)
  {
    if (message)
    {
      [(MSMessagesAppViewController *)self didSelectMessage:message conversation:_conversation];
    }
  }
}

- (void)requestPresentationStyle:(MSMessagesAppPresentationStyle)presentationStyle
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (presentationStyle > MSMessagesAppPresentationStyleTranscript)
    {
      v6 = @"Other";
    }

    else
    {
      v6 = off_1E83A2C00[presentationStyle];
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1CADE6000, v5, OS_LOG_TYPE_DEFAULT, "Requesting presentation style %@", &v8, 0xCu);
  }

  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext requestPresentationStyle:presentationStyle];
}

- (MSMessagesAppPresentationStyle)presentationStyle
{
  v9 = *MEMORY[0x1E69E9840];
  appContext = [(MSMessagesAppViewController *)self appContext];
  presentationStyle = [appContext presentationStyle];

  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (presentationStyle > MSMessagesAppPresentationStyleTranscript)
    {
      v5 = @"Other";
    }

    else
    {
      v5 = off_1E83A2C00[presentationStyle];
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1CADE6000, v4, OS_LOG_TYPE_DEFAULT, "Getting presentation style %@", &v7, 0xCu);
  }

  return presentationStyle;
}

- (MSMessagesAppPresentationContext)presentationContext
{
  appContext = [(MSMessagesAppViewController *)self appContext];
  presentationContext = [appContext presentationContext];

  return presentationContext;
}

- (void)requestStickerExtensionMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1CADE6000, v5, OS_LOG_TYPE_DEFAULT, "Requesting Sticker Extension Metadata", v7, 2u);
  }

  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext _requestStickerExtensionMetadataDictionary:dictionaryCopy];
}

- (void)requestPresentationWithStickerType:(id)type identifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  identifierCopy = identifier;
  v8 = ms_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = typeCopy;
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&dword_1CADE6000, v8, OS_LOG_TYPE_DEFAULT, "Requesting presentation of string app with type: %ld and identifier %@", &v10, 0x16u);
  }

  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext _requestPresentationWithStickerType:typeCopy identifier:identifierCopy];
}

- (void)invalidateMessageTintColor
{
  messageTintColor = [(MSMessagesAppViewController *)self messageTintColor];
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext _remoteViewDidInvalidateMessageTintColorWithUpdatedColor:messageTintColor];
}

- (void)generateSnapshotWithContentSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v42 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v8 = 0.0;
  v9 = height;
  v10 = width;
  if ([(MSMessagesAppViewController *)self _shouldUseBackwardsCompatibilityOffsets])
  {
    activeConversation = [(MSMessagesAppViewController *)self activeConversation];
    selectedMessage = [activeConversation selectedMessage];
    isFromMe = [selectedMessage isFromMe];

    if ((isFromMe & 1) == 0)
    {
      CKUIBehaviorClass = getCKUIBehaviorClass();
      v15 = IMLogHandleForCategory();
      v16 = v15;
      if (CKUIBehaviorClass)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [MSMessagesAppViewController generateSnapshotWithContentSize:? completion:?];
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MSMessagesAppViewController generateSnapshotWithContentSize:completion:];
      }

      cKUIBehaviorClass = [(objc_class *)CKUIBehaviorClass sharedBehaviors];
      [cKUIBehaviorClass pluginBackwardsCompatibilityLeadingTrailingOffset];
      v8 = -v18;
    }

    v19 = getCKUIBehaviorClass();
    v20 = IMLogHandleForCategory();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [MSMessagesAppViewController generateSnapshotWithContentSize:v19 completion:?];
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MSMessagesAppViewController generateSnapshotWithContentSize:completion:];
    }

    sharedBehaviors = [(objc_class *)v19 sharedBehaviors];
    [sharedBehaviors pluginBackwardsCompatibilityLeadingTrailingOffset];
    v24 = v23;

    v25 = getCKUIBehaviorClass();
    v26 = IMLogHandleForCategory();
    v27 = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [MSMessagesAppViewController generateSnapshotWithContentSize:v25 completion:?];
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MSMessagesAppViewController generateSnapshotWithContentSize:completion:];
    }

    v10 = width + v24;

    sharedBehaviors2 = [(objc_class *)v25 sharedBehaviors];
    [sharedBehaviors2 pluginBackwardsCompatibilityBottomOffset];
    v9 = height + v29;
  }

  v44.origin.y = 0.0;
  v44.origin.x = v8;
  v44.size.width = width;
  v44.size.height = height;
  if (CGRectIsEmpty(v44))
  {
    v30 = ms_defaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[MSMessagesAppViewController generateSnapshotWithContentSize:completion:]";
      _os_log_impl(&dword_1CADE6000, v30, OS_LOG_TYPE_DEFAULT, "%s Not taking a new snapshot because bounds were empty", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v31 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithBounds:{0.0, 0.0, v10, v9}];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __74__MSMessagesAppViewController_generateSnapshotWithContentSize_completion___block_invoke;
    v35[3] = &unk_1E83A2B80;
    v35[4] = self;
    *&v35[5] = v8;
    v35[6] = 0;
    *&v35[7] = width;
    *&v35[8] = height;
    v32 = [v31 imageWithActions:v35];
    v33 = ms_defaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      [v32 size];
      v34 = NSStringFromCGSize(v43);
      *buf = 136315650;
      v37 = "[MSMessagesAppViewController generateSnapshotWithContentSize:completion:]";
      v38 = 2112;
      v39 = v34;
      v40 = 2112;
      v41 = v32;
      _os_log_impl(&dword_1CADE6000, v33, OS_LOG_TYPE_DEFAULT, "%s Took new snapshot image with size %@. snapshotImage: %@", buf, 0x20u);
    }

    (completionCopy)[2](completionCopy, v32);
  }
}

void __74__MSMessagesAppViewController_generateSnapshotWithContentSize_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) view];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v5 = getCKIsRunningInMacCatalystSymbolLoc_ptr;
  v11 = getCKIsRunningInMacCatalystSymbolLoc_ptr;
  if (!getCKIsRunningInMacCatalystSymbolLoc_ptr)
  {
    v6 = ChatKitLibrary();
    v9[3] = dlsym(v6, "CKIsRunningInMacCatalyst");
    getCKIsRunningInMacCatalystSymbolLoc_ptr = v9[3];
    v5 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v5)
  {
    v7 = __74__MSMessagesAppViewController_generateSnapshotWithContentSize_completion___block_invoke_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  [v4 drawViewHierarchyInRect:v5() != 0 afterScreenUpdates:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  blockCopy = block;
  view = [(MSMessagesAppViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;

  [(MSMessagesAppViewController *)self generateSnapshotWithContentSize:blockCopy completion:v6, v8];
}

- (BOOL)_isAppleInternalAppAndWantsSafeAreaInsets
{
  v2 = _MSMainBundleIdentifier();
  if ([v2 isEqualToString:*MEMORY[0x1E69A69D0]] && (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, (v4 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    bOOLValue = 0;
  }

  else if ([v2 hasPrefix:@"com.apple."])
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    infoDictionary = [v6 infoDictionary];
    v8 = [infoDictionary objectForKeyedSubscript:@"MSMessagesOverlayAppearanceDisableInsetsForGrabber"];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = dyld_program_sdk_at_least();
  }

  return bOOLValue;
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  if ([(MSMessagesAppViewController *)self _isAppleInternalAppAndWantsSafeAreaInsets])
  {
    _ms_isInSheet = [(MSMessagesAppViewController *)self _ms_isInSheet];
    presentationStyle = [(MSMessagesAppViewController *)self presentationStyle];
    if (_ms_isInSheet)
    {
      v5 = 0.0;
      v6 = 20.0;
      v7 = 0.0;
      v8 = 0.0;
      goto LABEL_10;
    }
  }

  else
  {
    presentationStyle = [(MSMessagesAppViewController *)self presentationStyle];
  }

  if (presentationStyle == MSMessagesAppPresentationStyleTranscript)
  {

    [(MSMessagesAppViewController *)self _transcriptSpecificSafeAreaInsets];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MSMessagesAppViewController;
    [(MSMessagesAppViewController *)&v9 additionalSafeAreaInsets];
  }

LABEL_10:
  result.right = v8;
  result.bottom = v7;
  result.left = v5;
  result.top = v6;
  return result;
}

- (void)_updateLayoutMargins
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (BOOL)_ms_isInSheet
{
  if ([(MSMessagesAppViewController *)self presentationStyle]== MSMessagesAppPresentationStyleTranscript)
  {
    return 0;
  }

  traitCollection = [(MSMessagesAppViewController *)self traitCollection];
  v3 = [traitCollection _presentationSemanticContext] == 2;

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MSMessagesAppViewController;
  [(MSMessagesAppViewController *)&v5 viewDidLoad];
  view = [(MSMessagesAppViewController *)self view];
  layer = [view layer];
  [layer setHitTestsAsOpaque:1];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v9.receiver = self;
  v9.super_class = MSMessagesAppViewController;
  [(MSMessagesAppViewController *)&v9 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  sheetPresentationControllerDelegate = self->_sheetPresentationControllerDelegate;
  if (sheetPresentationControllerDelegate)
  {
    _rootSheetPresentationController = [windowCopy _rootSheetPresentationController];
    [_rootSheetPresentationController setDelegate:sheetPresentationControllerDelegate];
  }
}

- (void)setInitialFrameBeforeAppearance:(CGRect)appearance
{
  height = appearance.size.height;
  width = appearance.size.width;
  y = appearance.origin.y;
  x = appearance.origin.x;
  self->_initialFrameBeforeAppearance = appearance;
  if (!CGRectEqualToRect(appearance, *MEMORY[0x1E695F058]))
  {
    view = [(MSMessagesAppViewController *)self view];
    [view setFrame:{x, y, width, height}];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MSMessagesAppViewController;
  [(MSMessagesAppViewController *)&v4 viewWillAppear:appear];
  [(MSMessagesAppViewController *)self setInitialFrameBeforeAppearance:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MSMessagesAppViewController;
  [(MSMessagesAppViewController *)&v4 viewDidAppear:appear];
  if ([(MSMessagesAppViewController *)self displaysAfterAppearance])
  {
    [(MSMessagesAppViewController *)self setReadyForDisplay];
  }

  if (![(MSMessagesAppViewController *)self viewHasAppeared])
  {
    [(MSMessagesAppViewController *)self setViewHasAppeared:1];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v2.receiver = self;
  v2.super_class = MSMessagesAppViewController;
  [(MSMessagesAppViewController *)&v2 viewSafeAreaInsetsDidChange];
}

- (void)setProvidesExplicitSizeSnapshot
{
  if (![(MSMessagesAppViewController *)self providesExplicitSizeSnapshot])
  {
    appContext = [(MSMessagesAppViewController *)self appContext];
    [appContext _remoteViewProvidesExplicitSizeSnapshot];

    [(MSMessagesAppViewController *)self setProvidesExplicitSizeSnapshot:1];
  }
}

- (void)setNeedsSizeMatchBeforeSnapshotSwap
{
  if (![(MSMessagesAppViewController *)self needsSizeMatchBeforeSnapshotSwap])
  {
    appContext = [(MSMessagesAppViewController *)self appContext];
    [appContext _remoteViewNeedsSizeMatchBeforeSnapshotSwap];

    [(MSMessagesAppViewController *)self setNeedsSizeMatchBeforeSnapshotSwap:1];
  }
}

- (void)setReadyForDisplay
{
  if (![(MSMessagesAppViewController *)self isReadyForDisplay])
  {
    appContext = [(MSMessagesAppViewController *)self appContext];
    [appContext _remoteViewDidBecomeReadyForDisplay];

    [(MSMessagesAppViewController *)self setIsReadyForDisplay:1];
  }
}

- (void)requestResize
{
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext requestResize];
}

- (void)contentDidLoad
{
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext contentDidLoad];
}

- (UIEdgeInsets)_balloonMaskEdgeInsets
{
  activeConversation = [(MSMessagesAppViewController *)self activeConversation];
  selectedMessage = [activeConversation selectedMessage];
  isFromMe = [selectedMessage isFromMe];

  CKUIBehaviorClass = getCKUIBehaviorClass();
  v6 = IMLogHandleForCategory();
  v7 = v6;
  if (CKUIBehaviorClass)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(MSMessagesAppViewController *)CKUIBehaviorClass _balloonMaskEdgeInsets];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MSMessagesAppViewController _balloonMaskEdgeInsets];
  }

  cKUIBehaviorClass = [(objc_class *)CKUIBehaviorClass sharedBehaviors];
  [cKUIBehaviorClass pluginBalloonInsetsForMessageFromMe:isFromMe];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (void)_prepareForPresentationWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle completion:(id)completion
{
  completionCopy = completion;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy completion:completionCopy];
}

- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion
{
  completionCopy = completion;
  imageCopy = image;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy image:imageCopy completion:completionCopy];
}

- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion
{
  completionCopy = completion;
  destructiveButtonTitleCopy = destructiveButtonTitle;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext presentAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy destructiveButtonTitle:destructiveButtonTitleCopy completion:completionCopy];
}

- (void)_presentAlertSheetWith:(id)with styles:(id)styles completion:(id)completion
{
  completionCopy = completion;
  stylesCopy = styles;
  withCopy = with;
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext presentAlertSheetWith:withCopy styles:stylesCopy completion:completionCopy];
}

- (void)_presentContextMenuWithButtonTitles:(id)titles imageNames:(id)names buttonFrame:(CGRect)frame completion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  completionCopy = completion;
  namesCopy = names;
  titlesCopy = titles;
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext presentContextMenuWithButtonTitles:titlesCopy imageNames:namesCopy buttonFrame:completionCopy completion:{x, y, width, height}];
}

- (void)_presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion
{
  completionCopy = completion;
  stylesCopy = styles;
  titlesCopy = titles;
  messageCopy = message;
  titleCopy = title;
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext presentAlertSheetWithTitle:titleCopy message:messageCopy buttonTitles:titlesCopy styles:stylesCopy completion:completionCopy];
}

- (void)_requestHostSceneIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext requestHostSceneIdentifierWithCompletion:completionCopy];
}

- (void)_setAppPresentationStyle:(unint64_t)style
{
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext setPresentationStyle:style];
}

- (void)_requestFullScreenModalPresentationWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext requestFullScreenModalPresentationWithSize:{width, height}];
}

- (double)_percentExpanded
{
  view = [(MSMessagesAppViewController *)self view];
  window = [view window];

  _rootSheetPresentationController = [window _rootSheetPresentationController];
  _detentValues = [_rootSheetPresentationController _detentValues];
  if ([_detentValues count] > 1)
  {
    view2 = [(MSMessagesAppViewController *)self view];
    [view2 bounds];
    v10 = v9;
    view3 = [(MSMessagesAppViewController *)self view];
    [view3 safeAreaInsets];
    v13 = v10 - v12;
    v14 = [_detentValues objectAtIndexedSubscript:1];
    [v14 doubleValue];
    v16 = v15;
    v17 = [_detentValues objectAtIndexedSubscript:0];
    [v17 doubleValue];
    v7 = (v13 - v16) / (v18 - v16);
  }

  else if ([(MSMessagesAppViewController *)self presentationStyle]== MSMessagesAppPresentationStyleExpanded)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)_shouldUseBackwardsCompatibilityOffsets
{
  v2 = dyld_program_sdk_at_least();
  if ((v2 & 1) == 0)
  {
    v3 = ms_defaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(MSMessagesAppViewController *)v3 _shouldUseBackwardsCompatibilityOffsets];
    }
  }

  return v2 ^ 1;
}

- (double)messageCornerRadius
{
  CKUIBehaviorClass = getCKUIBehaviorClass();
  v3 = IMLogHandleForCategory();
  v4 = v3;
  if (CKUIBehaviorClass)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(MSMessagesAppViewController *)CKUIBehaviorClass messageCornerRadius];
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [MSMessagesAppViewController messageCornerRadius];
  }

  cKUIBehaviorClass = [(objc_class *)CKUIBehaviorClass sharedBehaviors];
  [cKUIBehaviorClass balloonCornerRadius];
  v7 = v6;

  return v7;
}

- (CGRect)initialFrameBeforeAppearance
{
  x = self->_initialFrameBeforeAppearance.origin.x;
  y = self->_initialFrameBeforeAppearance.origin.y;
  width = self->_initialFrameBeforeAppearance.size.width;
  height = self->_initialFrameBeforeAppearance.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)dismiss
{
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext dismiss];
}

- (void)willTransitionToPresentationStyle:(MSMessagesAppPresentationStyle)presentationStyle
{
  _isInsideUserGeneratedStickerExtension = [(MSMessagesAppViewController *)self _isInsideUserGeneratedStickerExtension];
  if (presentationStyle == MSMessagesAppPresentationStyleCompact && _isInsideUserGeneratedStickerExtension)
  {
    _ms_currentFirstResponder = [MEMORY[0x1E69DCE60] _ms_currentFirstResponder];
    [_ms_currentFirstResponder resignFirstResponder];
  }
}

- (BOOL)_isInsideUserGeneratedStickerExtension
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[_MSMessageAppContext activeExtensionContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    inputItems = [v2 inputItems];
    v4 = [inputItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(inputItems);
          }

          userInfo = [*(*(&v13 + 1) + 8 * i) userInfo];
          v9 = [userInfo objectForKeyedSubscript:@"context-is-sue"];
          v10 = [v9 isEqual:&unk_1F4AC7048];

          if (v10)
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        v5 = [inputItems countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setSendingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(MSMessagesAppViewController *)self presentationStyle]== 4)
  {
    appContext = [(MSMessagesAppViewController *)self appContext];
    [appContext _setSendingEnabled:enabledCopy];
  }
}

- (void)setShouldPerformSendAnimationOnAppear
{
  [(MSMessagesAppViewController *)self setPerformSendAnimationOnAppear:1];
  performSendAnimationOnAppear = [(MSMessagesAppViewController *)self performSendAnimationOnAppear];

  [(MSMessagesAppViewController *)self didChangeShouldPerformSendAnimationOnAppear:performSendAnimationOnAppear];
}

- (void)_dismissAndPresentPhotosApp
{
  appContext = [(MSMessagesAppViewController *)self appContext];
  [appContext dismissAndPresentPhotosApp];
}

- (void)_addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A250];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:3328 userInfo:0];
  (*(handler + 2))(handlerCopy, v8, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
}

- (void)_addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A250];
  dsCopy = ds;
  v8 = [v5 errorWithDomain:v6 code:3328 userInfo:0];
  (*(ds + 2))(dsCopy, 0, v8, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
}

- (void)addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A250];
  completionCopy = completion;
  v9 = [v6 errorWithDomain:v7 code:3328 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v9);
}

- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stickerCopy = sticker;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    representations = [stickerCopy representations];
    -[MSMessagesAppViewController _addStickerToStoreWithRepresentations:sourceRect:effect:completion:](self, "_addStickerToStoreWithRepresentations:sourceRect:effect:completion:", representations, [stickerCopy effectType], completionCopy, x, y, width, height);
  }

  else
  {
    representations = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    completionCopy[2](completionCopy, 0, representations);
  }
}

- (void)generateSnapshotWithContentSize:(objc_class *)a1 completion:.cold.1(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1CADE6000, v2, v3, "Loaded weak linked class: '%@': %s:%i (%s)", v4, v5, v6, v7, v8);
}

- (void)generateSnapshotWithContentSize:completion:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)generateSnapshotWithContentSize:(objc_class *)a1 completion:.cold.3(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1CADE6000, v2, v3, "Loaded weak linked class: '%@': %s:%i (%s)", v4, v5, v6, v7, v8);
}

- (void)generateSnapshotWithContentSize:completion:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)generateSnapshotWithContentSize:(objc_class *)a1 completion:.cold.5(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1CADE6000, v2, v3, "Loaded weak linked class: '%@': %s:%i (%s)", v4, v5, v6, v7, v8);
}

- (void)generateSnapshotWithContentSize:completion:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

uint64_t __74__MSMessagesAppViewController_generateSnapshotWithContentSize_completion___block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [(MSMessagesAppViewController *)v0 _updateLayoutMargins];
}

- (void)_balloonMaskEdgeInsets
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)messageCornerRadius
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

@end