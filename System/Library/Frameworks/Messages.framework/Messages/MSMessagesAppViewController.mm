@interface MSMessagesAppViewController
- (BOOL)_isAppleInternalAppAndWantsSafeAreaInsets;
- (BOOL)_isInsideUserGeneratedStickerExtension;
- (BOOL)_ms_isInSheet;
- (BOOL)_shouldUseBackwardsCompatibilityOffsets;
- (CGRect)initialFrameBeforeAppearance;
- (MSMessagesAppPresentationContext)presentationContext;
- (MSMessagesAppPresentationStyle)presentationStyle;
- (MSMessagesAppViewController)initWithCoder:(id)a3;
- (MSMessagesAppViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)a3;
- (UIEdgeInsets)_balloonMaskEdgeInsets;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (_MSMessageComposeExtensionImplProtocol)appContext;
- (double)_percentExpanded;
- (double)messageCornerRadius;
- (void)_addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4;
- (void)_addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4;
- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)_balloonMaskEdgeInsets;
- (void)_conversation:(id)a3 didSelectMessage:(id)a4;
- (void)_conversation:(id)a3 willSelectMessage:(id)a4;
- (void)_dismissAndPresentPhotosApp;
- (void)_emojiStickerDragEnded;
- (void)_emojiStickerDragStarted;
- (void)_prepareForPresentationWithCompletionHandler:(id)a3;
- (void)_presentAlertSheetWith:(id)a3 styles:(id)a4 completion:(id)a5;
- (void)_presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 completion:(id)a6;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7;
- (void)_presentContextMenuWithButtonTitles:(id)a3 imageNames:(id)a4 buttonFrame:(CGRect)a5 completion:(id)a6;
- (void)_requestFullScreenModalPresentationWithSize:(CGSize)a3;
- (void)_requestHostSceneIdentifierWithCompletion:(id)a3;
- (void)_setAppPresentationStyle:(unint64_t)a3;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)_setSendingEnabled:(BOOL)a3;
- (void)_setUpEmojiDragNotificationObservers;
- (void)_updateLayoutMargins;
- (void)addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)contentDidLoad;
- (void)dealloc;
- (void)dismiss;
- (void)generateSnapshotWithContentSize:(CGSize)a3 completion:(id)a4;
- (void)invalidateMessageTintColor;
- (void)messageCornerRadius;
- (void)requestPresentationStyle:(MSMessagesAppPresentationStyle)presentationStyle;
- (void)requestPresentationWithStickerType:(id)a3 identifier:(id)a4;
- (void)requestResize;
- (void)requestStickerExtensionMetadataDictionary:(id)a3;
- (void)setInitialFrameBeforeAppearance:(CGRect)a3;
- (void)setNeedsSizeMatchBeforeSnapshotSwap;
- (void)setProvidesExplicitSizeSnapshot;
- (void)setReadyForDisplay;
- (void)setShouldPerformSendAnimationOnAppear;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (MSMessagesAppViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MSMessagesAppViewController;
  v3 = [(MSMessagesAppViewController *)&v7 initWithCoder:a3];
  if (v3)
  {
    v4 = [[_MSMessagesAppPresentationControllerDelegate alloc] initWithMessagesAppViewController:v3];
    sheetPresentationControllerDelegate = v3->_sheetPresentationControllerDelegate;
    v3->_sheetPresentationControllerDelegate = v4;

    [(MSMessagesAppViewController *)v3 _setUpEmojiDragNotificationObservers];
  }

  return v3;
}

- (MSMessagesAppViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = MSMessagesAppViewController;
  v4 = [(MSMessagesAppViewController *)&v8 init];
  if (v4)
  {
    if (v3)
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
    v3 = appContext;
  }

  else
  {
    v3 = [(MSMessagesAppViewController *)self extensionContext];
  }

  return v3;
}

- (void)_setUpEmojiDragNotificationObservers
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__emojiStickerDragStarted name:*MEMORY[0x1E69DE058] object:0];
  [v3 addObserver:self selector:sel__emojiStickerDragEnded name:*MEMORY[0x1E69DE070] object:0];
  [v3 addObserver:self selector:sel__emojiStickerDragEnded name:*MEMORY[0x1E69DE060] object:0];
}

- (void)_emojiStickerDragStarted
{
  v3 = [(MSMessagesAppViewController *)self activeConversation];
  v2 = [v3 context];
  [v2 stickerDruidDragStarted];
}

- (void)_emojiStickerDragEnded
{
  v3 = [(MSMessagesAppViewController *)self activeConversation];
  v2 = [v3 context];
  [v2 stickerDruidDragEndedWithPayload:0];
}

- (void)_conversation:(id)a3 willSelectMessage:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [(MSMessagesAppViewController *)self willSelectMessage:a4 conversation:a3];
    }
  }
}

- (void)_conversation:(id)a3 didSelectMessage:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [(MSMessagesAppViewController *)self didSelectMessage:a4 conversation:a3];
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

  v7 = [(MSMessagesAppViewController *)self appContext];
  [v7 requestPresentationStyle:presentationStyle];
}

- (MSMessagesAppPresentationStyle)presentationStyle
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MSMessagesAppViewController *)self appContext];
  v3 = [v2 presentationStyle];

  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 > MSMessagesAppPresentationStyleTranscript)
    {
      v5 = @"Other";
    }

    else
    {
      v5 = off_1E83A2C00[v3];
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1CADE6000, v4, OS_LOG_TYPE_DEFAULT, "Getting presentation style %@", &v7, 0xCu);
  }

  return v3;
}

- (MSMessagesAppPresentationContext)presentationContext
{
  v2 = [(MSMessagesAppViewController *)self appContext];
  v3 = [v2 presentationContext];

  return v3;
}

- (void)requestStickerExtensionMetadataDictionary:(id)a3
{
  v4 = a3;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1CADE6000, v5, OS_LOG_TYPE_DEFAULT, "Requesting Sticker Extension Metadata", v7, 2u);
  }

  v6 = [(MSMessagesAppViewController *)self appContext];
  [v6 _requestStickerExtensionMetadataDictionary:v4];
}

- (void)requestPresentationWithStickerType:(id)a3 identifier:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ms_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1CADE6000, v8, OS_LOG_TYPE_DEFAULT, "Requesting presentation of string app with type: %ld and identifier %@", &v10, 0x16u);
  }

  v9 = [(MSMessagesAppViewController *)self appContext];
  [v9 _requestPresentationWithStickerType:v6 identifier:v7];
}

- (void)invalidateMessageTintColor
{
  v4 = [(MSMessagesAppViewController *)self messageTintColor];
  v3 = [(MSMessagesAppViewController *)self appContext];
  [v3 _remoteViewDidInvalidateMessageTintColorWithUpdatedColor:v4];
}

- (void)generateSnapshotWithContentSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v42 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = 0.0;
  v9 = height;
  v10 = width;
  if ([(MSMessagesAppViewController *)self _shouldUseBackwardsCompatibilityOffsets])
  {
    v11 = [(MSMessagesAppViewController *)self activeConversation];
    v12 = [v11 selectedMessage];
    v13 = [v12 isFromMe];

    if ((v13 & 1) == 0)
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

      v17 = [(objc_class *)CKUIBehaviorClass sharedBehaviors];
      [v17 pluginBackwardsCompatibilityLeadingTrailingOffset];
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

    v22 = [(objc_class *)v19 sharedBehaviors];
    [v22 pluginBackwardsCompatibilityLeadingTrailingOffset];
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

    v28 = [(objc_class *)v25 sharedBehaviors];
    [v28 pluginBackwardsCompatibilityBottomOffset];
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

    v7[2](v7, 0);
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

    (v7)[2](v7, v32);
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

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  v9 = a3;
  v4 = [(MSMessagesAppViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  [(MSMessagesAppViewController *)self generateSnapshotWithContentSize:v9 completion:v6, v8];
}

- (BOOL)_isAppleInternalAppAndWantsSafeAreaInsets
{
  v2 = _MSMainBundleIdentifier();
  if ([v2 isEqualToString:*MEMORY[0x1E69A69D0]] && (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, (v4 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v5 = 0;
  }

  else if ([v2 hasPrefix:@"com.apple."])
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 infoDictionary];
    v8 = [v7 objectForKeyedSubscript:@"MSMessagesOverlayAppearanceDisableInsetsForGrabber"];
    v5 = [v8 BOOLValue];
  }

  else
  {
    v5 = dyld_program_sdk_at_least();
  }

  return v5;
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  if ([(MSMessagesAppViewController *)self _isAppleInternalAppAndWantsSafeAreaInsets])
  {
    v3 = [(MSMessagesAppViewController *)self _ms_isInSheet];
    v4 = [(MSMessagesAppViewController *)self presentationStyle];
    if (v3)
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
    v4 = [(MSMessagesAppViewController *)self presentationStyle];
  }

  if (v4 == MSMessagesAppPresentationStyleTranscript)
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

  v4 = [(MSMessagesAppViewController *)self traitCollection];
  v3 = [v4 _presentationSemanticContext] == 2;

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MSMessagesAppViewController;
  [(MSMessagesAppViewController *)&v5 viewDidLoad];
  v3 = [(MSMessagesAppViewController *)self view];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:1];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9.receiver = self;
  v9.super_class = MSMessagesAppViewController;
  [(MSMessagesAppViewController *)&v9 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  sheetPresentationControllerDelegate = self->_sheetPresentationControllerDelegate;
  if (sheetPresentationControllerDelegate)
  {
    v8 = [v6 _rootSheetPresentationController];
    [v8 setDelegate:sheetPresentationControllerDelegate];
  }
}

- (void)setInitialFrameBeforeAppearance:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_initialFrameBeforeAppearance = a3;
  if (!CGRectEqualToRect(a3, *MEMORY[0x1E695F058]))
  {
    v8 = [(MSMessagesAppViewController *)self view];
    [v8 setFrame:{x, y, width, height}];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MSMessagesAppViewController;
  [(MSMessagesAppViewController *)&v4 viewWillAppear:a3];
  [(MSMessagesAppViewController *)self setInitialFrameBeforeAppearance:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MSMessagesAppViewController;
  [(MSMessagesAppViewController *)&v4 viewDidAppear:a3];
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
    v3 = [(MSMessagesAppViewController *)self appContext];
    [v3 _remoteViewProvidesExplicitSizeSnapshot];

    [(MSMessagesAppViewController *)self setProvidesExplicitSizeSnapshot:1];
  }
}

- (void)setNeedsSizeMatchBeforeSnapshotSwap
{
  if (![(MSMessagesAppViewController *)self needsSizeMatchBeforeSnapshotSwap])
  {
    v3 = [(MSMessagesAppViewController *)self appContext];
    [v3 _remoteViewNeedsSizeMatchBeforeSnapshotSwap];

    [(MSMessagesAppViewController *)self setNeedsSizeMatchBeforeSnapshotSwap:1];
  }
}

- (void)setReadyForDisplay
{
  if (![(MSMessagesAppViewController *)self isReadyForDisplay])
  {
    v3 = [(MSMessagesAppViewController *)self appContext];
    [v3 _remoteViewDidBecomeReadyForDisplay];

    [(MSMessagesAppViewController *)self setIsReadyForDisplay:1];
  }
}

- (void)requestResize
{
  v2 = [(MSMessagesAppViewController *)self appContext];
  [v2 requestResize];
}

- (void)contentDidLoad
{
  v2 = [(MSMessagesAppViewController *)self appContext];
  [v2 contentDidLoad];
}

- (UIEdgeInsets)_balloonMaskEdgeInsets
{
  v2 = [(MSMessagesAppViewController *)self activeConversation];
  v3 = [v2 selectedMessage];
  v4 = [v3 isFromMe];

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

  v8 = [(objc_class *)CKUIBehaviorClass sharedBehaviors];
  [v8 pluginBalloonInsetsForMessageFromMe:v4];
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

- (void)_prepareForPresentationWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MSMessagesAppViewController *)self appContext];
  [v14 presentAlertWithTitle:v13 message:v12 buttonTitle:v11 completion:v10];
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(MSMessagesAppViewController *)self appContext];
  [v17 presentAlertWithTitle:v16 message:v15 buttonTitle:v14 image:v13 completion:v12];
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(MSMessagesAppViewController *)self appContext];
  [v17 presentAlertWithTitle:v16 message:v15 buttonTitle:v14 destructiveButtonTitle:v13 completion:v12];
}

- (void)_presentAlertSheetWith:(id)a3 styles:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MSMessagesAppViewController *)self appContext];
  [v11 presentAlertSheetWith:v10 styles:v9 completion:v8];
}

- (void)_presentContextMenuWithButtonTitles:(id)a3 imageNames:(id)a4 buttonFrame:(CGRect)a5 completion:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(MSMessagesAppViewController *)self appContext];
  [v16 presentContextMenuWithButtonTitles:v15 imageNames:v14 buttonFrame:v13 completion:{x, y, width, height}];
}

- (void)_presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(MSMessagesAppViewController *)self appContext];
  [v17 presentAlertSheetWithTitle:v16 message:v15 buttonTitles:v14 styles:v13 completion:v12];
}

- (void)_requestHostSceneIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MSMessagesAppViewController *)self appContext];
  [v5 requestHostSceneIdentifierWithCompletion:v4];
}

- (void)_setAppPresentationStyle:(unint64_t)a3
{
  v4 = [(MSMessagesAppViewController *)self appContext];
  [v4 setPresentationStyle:a3];
}

- (void)_requestFullScreenModalPresentationWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(MSMessagesAppViewController *)self appContext];
  [v5 requestFullScreenModalPresentationWithSize:{width, height}];
}

- (double)_percentExpanded
{
  v3 = [(MSMessagesAppViewController *)self view];
  v4 = [v3 window];

  v5 = [v4 _rootSheetPresentationController];
  v6 = [v5 _detentValues];
  if ([v6 count] > 1)
  {
    v8 = [(MSMessagesAppViewController *)self view];
    [v8 bounds];
    v10 = v9;
    v11 = [(MSMessagesAppViewController *)self view];
    [v11 safeAreaInsets];
    v13 = v10 - v12;
    v14 = [v6 objectAtIndexedSubscript:1];
    [v14 doubleValue];
    v16 = v15;
    v17 = [v6 objectAtIndexedSubscript:0];
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

  v5 = [(objc_class *)CKUIBehaviorClass sharedBehaviors];
  [v5 balloonCornerRadius];
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
  v2 = [(MSMessagesAppViewController *)self appContext];
  [v2 dismiss];
}

- (void)willTransitionToPresentationStyle:(MSMessagesAppPresentationStyle)presentationStyle
{
  v4 = [(MSMessagesAppViewController *)self _isInsideUserGeneratedStickerExtension];
  if (presentationStyle == MSMessagesAppPresentationStyleCompact && v4)
  {
    v5 = [MEMORY[0x1E69DCE60] _ms_currentFirstResponder];
    [v5 resignFirstResponder];
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
    v3 = [v2 inputItems];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v13 + 1) + 8 * i) userInfo];
          v9 = [v8 objectForKeyedSubscript:@"context-is-sue"];
          v10 = [v9 isEqual:&unk_1F4AC7048];

          if (v10)
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_setSendingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(MSMessagesAppViewController *)self presentationStyle]== 4)
  {
    v5 = [(MSMessagesAppViewController *)self appContext];
    [v5 _setSendingEnabled:v3];
  }
}

- (void)setShouldPerformSendAnimationOnAppear
{
  [(MSMessagesAppViewController *)self setPerformSendAnimationOnAppear:1];
  v3 = [(MSMessagesAppViewController *)self performSendAnimationOnAppear];

  [(MSMessagesAppViewController *)self didChangeShouldPerformSendAnimationOnAppear:v3];
}

- (void)_dismissAndPresentPhotosApp
{
  v2 = [(MSMessagesAppViewController *)self appContext];
  [v2 dismissAndPresentPhotosApp];
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A250];
  v7 = a4;
  v8 = [v5 errorWithDomain:v6 code:3328 userInfo:0];
  (*(a4 + 2))(v7, v8, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A250];
  v7 = a4;
  v8 = [v5 errorWithDomain:v6 code:3328 userInfo:0];
  (*(a4 + 2))(v7, 0, v8, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
}

- (void)addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A250];
  v8 = a5;
  v9 = [v6 errorWithDomain:v7 code:3328 userInfo:0];
  (*(a5 + 2))(v8, 0, v9);
}

- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v11 = a5;
  if (objc_opt_respondsToSelector())
  {
    v12 = [v13 representations];
    -[MSMessagesAppViewController _addStickerToStoreWithRepresentations:sourceRect:effect:completion:](self, "_addStickerToStoreWithRepresentations:sourceRect:effect:completion:", v12, [v13 effectType], v11, x, y, width, height);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    v11[2](v11, 0, v12);
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