@interface MFComposeWebView
+ (NSArray)menuCommands;
+ (id)_basicWebViewConfiguration;
+ (id)_webViewConfiguration:(BOOL)a3;
+ (void)setURLCacheBlock:(id)a3;
- (BOOL)_canPerformCommandAction:(SEL)a3 withSender:(id)a4;
- (BOOL)_getExtensionAndMimeTypeForImageData:(id)a3 outExtension:(id *)a4 outMimeType:(id *)a5;
- (BOOL)_shouldShowAddLinkButton;
- (BOOL)_shouldShowInsertPhotosButton;
- (BOOL)_shouldShowMarkupButton;
- (BOOL)_sourceIsManaged;
- (BOOL)_useComposeToolbar;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)resignFirstResponder;
- (CGRect)_linkAccessoryButtonFrameForSourceRect:(CGRect)a3;
- (CGRect)_rectFromMessageDict:(id)a3;
- (CGRect)rectOfElementWithID:(id)a3;
- (MFComposeWebView)initWithFrame:(CGRect)a3 isQuickReply:(BOOL)a4;
- (MFComposeWebViewDelegate)composeWebViewDelegate;
- (MFMailComposeCoordinator)composeCoordinator;
- (MFMailComposeViewDelegate)mailComposeViewDelegate;
- (MFMailSignatureController)signatureControllerProxy;
- (NSString)compositionContextID;
- (_NSRange)selectedRange;
- (double)inputAccessoryViewHeight;
- (id)_actionWithTitle:(void *)a3 glyphName:(int)a4 usePrivateCatalog:(void *)a5 handler:;
- (id)_actionWithTitle:(void *)a3 glyphName:(void *)a4 handler:;
- (id)_addInlineAttachmentWithData:(id)a3 fileName:(id)a4 type:(id)a5 contentID:(id)a6;
- (id)_attachmentInfoByIdentifier;
- (id)_attachmentInfoByURL;
- (id)_barButtonItemWithAction:(void *)a3 target:(uint64_t)a4 selector:;
- (id)_barButtonItemWithImageName:(void *)a3 title:(void *)a4 target:(uint64_t)a5 selector:;
- (id)_barButtonItemWithImageName:(void *)a3 title:(void *)a4 target:(uint64_t)a5 selector:(void *)a6 menu:;
- (id)_bodyFieldProxy;
- (id)_captureTextFromCameraAction;
- (id)_filenameForVideoAttachmentAtURL:(id)a3;
- (id)_findInteractionScrollViewForInsetAdjustment:(id)a3;
- (id)_formattingAction;
- (id)_importDocumentActionWithTitle:(id *)a1;
- (id)_insertPhotoActionWithTitle:(void *)a1;
- (id)_insertPhotoFromCameraActionWithTitle:(void *)a1;
- (id)_mailComposeEditingLeadingInputAssistantGroups;
- (id)_mailComposeEditingTrailingInputAssistantGroups;
- (id)_makeAttachmentDataWithFileURL:(id)a3 type:(id)a4;
- (id)_makeRichLinkTemplateButtonWithOrigin:(CGPoint)a3;
- (id)_markupActionWithTitle:(void *)a1;
- (id)_scanDocumentAction;
- (id)_showWritingToolsAction;
- (id)_textInputTraits;
- (id)_toolbarItems;
- (id)containsRichText;
- (id)contentIDsForMediaAttachments;
- (id)getCaretPosition;
- (id)htmlString;
- (id)inputAccessoryView;
- (id)inputView;
- (id)keyCommands;
- (id)makeLinkAccessoryButton;
- (id)mimeTypeForFilename:(id)a3;
- (id)nextAttachmentName;
- (id)plainTextContent;
- (int64_t)_webView:(id)a3 dataOwnerForDragSession:(id)a4;
- (int64_t)_webView:(id)a3 dataOwnerForDropSession:(id)a4;
- (void)_addAttachment:(id)a3;
- (void)_addContextMenusToBuilder:(id)a3;
- (void)_captureTextFromCamera;
- (void)_changeQuoteLevelBy:(int64_t)a3;
- (void)_close;
- (void)_composeWebView:(id)a3 composeBodyIsEmpty:(BOOL)a4;
- (void)_composeWebView:(id)a3 didChangeHeight:(double)a4;
- (void)_decreaseQuoteLevelKeyCommandInvoked:(id)a3;
- (void)_didTapAddLink:(id)a3;
- (void)_didTapCameraButton:(id)a3;
- (void)_didTapEditLink:(id)a3;
- (void)_didTapEditTextDescription:(id)a3;
- (void)_didTapInsertDrawing:(id)a3;
- (void)_didTapInsertDrawingOrMarkupButton:(id)a3;
- (void)_didTapInsertPhotoButton:(id)a3;
- (void)_didTapMarkupButton:(id)a3;
- (void)_didTapRemoveLink;
- (void)_findInteraction:(id)a3 navigatorPlacementWillChange:(id)a4;
- (void)_importDocumentCommandInvoked:(id)a3;
- (void)_increaseQuoteLevelKeyCommandInvoked:(id)a3;
- (void)_insertDocumentFromData:(id)a3 isImage:(BOOL)a4 contentID:(id)a5;
- (void)_insertMediaWithAssetIdentifier:(id)a3 mediaURL:(id)a4 mediaType:(id)a5 mediaData:(id)a6 isVideo:(BOOL)a7 completion:(id)a8;
- (void)_removeAttachment:(id)a3;
- (void)_removeInlineAttachment:(id)a3;
- (void)_scanDocumentCommandInvoked:(id)a3;
- (void)_showmakeLinkAccessoryButton;
- (void)_updateAppearanceForWritingToolsSession:(BOOL)a3;
- (void)_updatePocketContainerInteractionVisible:(BOOL)a3;
- (void)_webView:(id)a3 didChangeFontAttributes:(id)a4;
- (void)_webView:(id)a3 didInsertAttachment:(id)a4 withSource:(id)a5;
- (void)_webView:(id)a3 didInvalidateDataForAttachment:(id)a4;
- (void)_webView:(id)a3 didRemoveAttachment:(id)a4;
- (void)_webView:(id)a3 didStartInputSession:(id)a4;
- (void)_webView:(id)a3 takeFocus:(int64_t)a4;
- (void)_webView:(id)a3 webContentProcessDidTerminateWithReason:(int64_t)a4;
- (void)_webViewWebProcessDidBecomeUnresponsive:(id)a3;
- (void)addMailAttributesBeforeDisplayHidingTrailingEmptyQuotes:(BOOL)a3 shouldQuote:(BOOL)a4;
- (void)appendMarkupString:(id)a3 quote:(BOOL)a4;
- (void)appendOrReplace:(id)a3 withMarkupString:(id)a4 quote:(BOOL)a5 completion:(id)a6;
- (void)attachmentTapped:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)composeBodyFieldAddAttachmentWithData:(id)a3 filename:(id)a4 mimeType:(id)a5 uniqueID:(id)a6;
- (void)composeBodyFieldAddLinkPreviewsEnabled:(id)a3;
- (void)composeBodyFieldDidChange;
- (void)composeBodyFieldDidThrowException:(id)a3;
- (void)composeBodyFieldIsDirtyChanged:(BOOL)a3;
- (void)composeBodyFieldQuickReplyEnabled:(id)a3;
- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4;
- (void)enableQuickReply:(BOOL)a3;
- (void)getHTMLDataObjectRemovingSignature:(BOOL)a3 removeQuotes:(BOOL)a4 completion:(id)a5;
- (void)hideMakeLinkAccessoryButton;
- (void)hideMakeLinkAccessoryButtonMenu;
- (void)insertDocumentWithData:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6;
- (void)insertDocumentWithURL:(id)a3 isDrawingFile:(BOOL)a4;
- (void)insertMediaWithPhotoPickerItem:(id)a3 completion:(id)a4;
- (void)insertPhotoOrVideoWithAssetIdentifier:(id)a3 infoDictionary:(id)a4 completion:(id)a5;
- (void)insertRichLinkWithURL:(id)a3 completionHandler:(id)a4;
- (void)insertString:(id)a3;
- (void)invalidateInputContextHistory;
- (void)makeRichLinkFromSelection;
- (void)markupSelectedAttachment;
- (void)pasteRichLink;
- (void)placeCaretAtStartOfBodyField;
- (void)prepareDataForDocumentAtURLForInsertion:(id)a3 completion:(id)a4;
- (void)prependMarkupString:(id)a3 quote:(BOOL)a4;
- (void)prependPreamble:(id)a3 quote:(BOOL)a4;
- (void)prependString:(id)a3;
- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)releaseFocusAfterDismissing:(BOOL)a3;
- (void)removeAllAttachments;
- (void)removeMediaWithContentIdentifier:(id)a3;
- (void)removeRichLinkFromSelection;
- (void)replaceAttachment:(id)a3 withDocumentAtURL:(id)a4 completion:(id)a5;
- (void)replaceFilenamePlaceholderWithAttachment:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6;
- (void)replaceImagesIfNecessary;
- (void)retainFocusAfterPresenting;
- (void)richLinkDidFinishLoading:(id)a3;
- (void)richLinkDidStartLoading:(id)a3;
- (void)setCaretPosition:(unint64_t)a3;
- (void)setDirty:(BOOL)a3;
- (void)setMarkupString:(id)a3 quote:(BOOL)a4;
- (void)setOriginalAttachmentInfo:(id)a3;
- (void)setPrefersFirstLineSelection;
- (void)setReplacementFilenamesByContentID:(id)a3;
- (void)showOriginalAttachments;
- (void)showRichLinkAccessoryButtonForExistingRichLink:(BOOL)a3 message:(id)a4;
- (void)stripCustomBodyIdentifiers;
- (void)updateInputAssistantItem;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4;
- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4;
@end

@implementation MFComposeWebView

+ (NSArray)menuCommands
{
  v32[5] = *MEMORY[0x1E69E9840];
  v2 = menuCommands_commands;
  if (!menuCommands_commands)
  {
    v31 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"a" modifierFlags:1179648 action:sel__importDocumentCommandInvoked_];
    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v3 = bundle_bundle;
    v4 = [v3 localizedStringForKey:@"IMPORT_DOCUMENT" value:&stru_1F3CF3758 table:@"Main"];
    [v31 setTitle:v4];

    [v31 setRepeatBehavior:2];
    v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"v" modifierFlags:1179648 action:sel__pasteAsQuotationKeyCommandInvoked_];
    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v6 = bundle_bundle;
    v7 = [v6 localizedStringForKey:@"PASTE_AS_QUOTATION" value:&stru_1F3CF3758 table:@"Main"];
    [v5 setTitle:v7];

    [v5 setRepeatBehavior:2];
    v8 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"'" modifierFlags:0x100000 action:sel__increaseQuoteLevelKeyCommandInvoked_];
    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v9 = bundle_bundle;
    v10 = [v9 localizedStringForKey:@"INCREASE_QUOTE_LEVEL" value:&stru_1F3CF3758 table:@"Main"];
    [v8 setTitle:v10];

    [v8 setRepeatBehavior:2];
    v11 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"'" modifierFlags:1572864 action:sel__decreaseQuoteLevelKeyCommandInvoked_];
    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v12 = bundle_bundle;
    v13 = [v12 localizedStringForKey:@"DECREASE_QUOTE_LEVEL" value:&stru_1F3CF3758 table:@"Main"];
    [v11 setTitle:v13];

    [v11 setRepeatBehavior:2];
    v14 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"k" modifierFlags:0x100000 action:sel__didTapAddLink_];
    v15 = _EFLocalizedString();
    [v14 setTitle:v15];

    [v14 setRepeatBehavior:2];
    v16 = [MEMORY[0x1E699B7B0] currentDevice];
    v17 = [v16 isPad];

    if (v17)
    {
      v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"paperclip"];
      [v31 setImage:v18];

      v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.clipboard"];
      [v5 setImage:v19];

      v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"increase.quotelevel"];
      [v8 setImage:v20];

      v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"decrease.quotelevel"];
      [v11 setImage:v21];

      v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"link"];
      [v14 setImage:v22];
    }

    v23 = [MFMailMenuCommand shortcutWithCommand:v31 menu:4];
    v32[0] = v23;
    v24 = [MFMailMenuCommand shortcutWithCommand:v5 menu:7];
    v32[1] = v24;
    v25 = [MFMailMenuCommand shortcutWithCommand:v14 menu:7];
    v32[2] = v25;
    v26 = [MFMailMenuCommand shortcutWithCommand:v8 menu:31];
    v32[3] = v26;
    v27 = [MFMailMenuCommand shortcutWithCommand:v11 menu:31];
    v32[4] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
    v29 = menuCommands_commands;
    menuCommands_commands = v28;

    v2 = menuCommands_commands;
  }

  return v2;
}

+ (void)setURLCacheBlock:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MFComposeWebView_setURLCacheBlock___block_invoke;
  block[3] = &unk_1E806D728;
  v7 = v3;
  v4 = setURLCacheBlock__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&setURLCacheBlock__onceToken, block);
  }
}

void __37__MFComposeWebView_setURLCacheBlock___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) copy];
  v2 = sURLCacheBlock;
  sURLCacheBlock = v1;
}

+ (id)_webViewConfiguration:(BOOL)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _basicWebViewConfiguration];
  v5 = [v4 userContentController];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v6 = objc_alloc(MEMORY[0x1E6985428]);
  if (v3)
  {
    MFUserStyleSheetCSS(2);
  }

  else
  {
    MFUserStyleSheetCSS(1);
  }
  v7 = ;
  v8 = [v6 initWithSource:v7 forMainFrameOnly:0];
  v9 = v23[5];
  v23[5] = v8;

  [v5 _addUserStyleSheet:v23[5]];
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = [MEMORY[0x1E696ADC8] mainQueue];
  v12 = *MEMORY[0x1E69DD8B8];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__MFComposeWebView__webViewConfiguration___block_invoke;
  v19[3] = &unk_1E806D750;
  v21 = &v22;
  v13 = v5;
  v20 = v13;
  v14 = [v10 addObserverForName:v12 object:0 queue:v11 usingBlock:v19];
  v15 = _webViewConfiguration__darkerSystemColorsStatusObserver;
  _webViewConfiguration__darkerSystemColorsStatusObserver = v14;

  v16 = v20;
  v17 = v4;

  _Block_object_dispose(&v22, 8);

  return v17;
}

void __42__MFComposeWebView__webViewConfiguration___block_invoke(uint64_t a1)
{
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v2 = objc_alloc(MEMORY[0x1E6985428]);
  v3 = MFUserStyleSheetCSS(1);
  v4 = [v2 initWithSource:v3 forMainFrameOnly:0];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(a1 + 32) _addUserStyleSheet:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) _removeUserStyleSheet:v7];
}

+ (id)_basicWebViewConfiguration
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69ADD50] commonWebViewConfiguration];
  [v3 setSelectionGranularity:1];
  [v3 _setAttachmentElementEnabled:1];
  [v3 _setColorFilterEnabled:1];
  v4 = [v3 preferences];
  [v4 _setAllowFileAccessFromFileURLs:1];

  v5 = [v3 preferences];
  [v5 _setPunchOutWhiteBackgroundsInDarkMode:1];

  v43[0] = *MEMORY[0x1E699B738];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [v3 _setAdditionalSupportedImageTypes:v6];

  if (_basicWebViewConfiguration_onceToken != -1)
  {
    +[MFComposeWebView _basicWebViewConfiguration];
  }

  [sProxySchemeHandler setOnWebViewConfiguration:v3];
  v36 = objc_alloc_init(MEMORY[0x1E69853F0]);
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v8 = [v7 builtInPlugInsURL];
  v9 = [v8 URLByAppendingPathComponent:@"MessageUI.wkbundle"];
  [v36 setInjectedBundleURL:v9];

  v35 = [objc_alloc(MEMORY[0x1E6985340]) _initWithConfiguration:v36];
  v10 = [MEMORY[0x1E695E000] em_lockdownModeEnabled];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E695E000] em_userDefaults];
    v13 = [v12 integerForKey:*MEMORY[0x1E699AB98]];

    v11 = (v13 & 2) == 0;
  }

  v41[0] = @"isPad";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(MEMORY[0x1E69DC938], "mf_isPadIdiom")}];
  v42[0] = v14;
  v41[1] = @"defaultComposeFontPixelSize";
  v15 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E69DB878] mf_defaultComposeFontPixelSize];
  _UIAccessibilityLargeTextFontSize();
  v16 = [v15 numberWithDouble:?];
  v42[1] = v16;
  v41[2] = @"defaultComposeFontFamily";
  v17 = [MEMORY[0x1E69DB878] mf_messageBodyFont];
  v18 = [v17 familyName];
  v42[2] = v18;
  v41[3] = @"remoteContentProxySchemePrefix";
  v19 = [sProxySchemeHandler schemePrefix];
  v42[3] = v19;
  v41[4] = @"showRemoteImages";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v42[4] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:5];
  [v35 _setObjectsForBundleParametersWithDictionary:v21];

  [v3 setProcessPool:v35];
  v22 = [v3 defaultWebpagePreferences];
  [v22 _setNetworkConnectionIntegrityPolicy:256];

  v23 = [MEMORY[0x1E69ADD10] sharedHandler];
  [v3 setURLSchemeHandler:v23 forURLScheme:*MEMORY[0x1E69B1540]];

  if (objc_opt_respondsToSelector())
  {
    [v3 _setMarkedTextInputEnabled:1];
  }

  v24 = [MEMORY[0x1E696AD88] defaultCenter];
  v25 = [MEMORY[0x1E696ADC8] mainQueue];
  v26 = *MEMORY[0x1E69DDC48];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __46__MFComposeWebView__basicWebViewConfiguration__block_invoke_85;
  v39[3] = &unk_1E806D778;
  v27 = v35;
  v40 = v27;
  v28 = [v24 addObserverForName:v26 object:0 queue:v25 usingBlock:v39];
  v29 = _basicWebViewConfiguration_contentSizeCategoryObserver;
  _basicWebViewConfiguration_contentSizeCategoryObserver = v28;

  if ((v10 & 1) == 0)
  {
    v30 = [MEMORY[0x1E695E000] em_userDefaults];
    v31 = *MEMORY[0x1E699AB98];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __46__MFComposeWebView__basicWebViewConfiguration__block_invoke_2;
    v37[3] = &unk_1E806D7A0;
    v38 = v27;
    v32 = [v30 ef_observeKeyPath:v31 options:1 autoCancelToken:0 usingBlock:v37];
    v33 = _basicWebViewConfiguration_blockRemoteContentObserver;
    _basicWebViewConfiguration_blockRemoteContentObserver = v32;
  }

  return v3;
}

void __46__MFComposeWebView__basicWebViewConfiguration__block_invoke()
{
  if (!sURLCacheBlock || ((*(sURLCacheBlock + 16))(), (v0 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v1 = EMLogCompose();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __46__MFComposeWebView__basicWebViewConfiguration__block_invoke_cold_1(v1);
    }

    v0 = 0;
  }

  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isMailPrivacyProtectionAllowed];

  v4 = objc_alloc(MEMORY[0x1E699AE50]);
  v5 = [v4 initWithCache:v0 sourceBundleIdentifier:*MEMORY[0x1E69B17F0]];
  v6 = sURLSession;
  sURLSession = v5;

  v7 = objc_alloc(MEMORY[0x1E699AE48]);
  v8 = [v7 initWithSession:sURLSession schemePrefix:@"x-apple-mail-proxy-" allowProxying:v3];
  v9 = sProxySchemeHandler;
  sProxySchemeHandler = v8;
}

void __46__MFComposeWebView__basicWebViewConfiguration__block_invoke_85(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E69DB878] mf_defaultComposeFontPixelSize];
  _UIAccessibilityLargeTextFontSize();
  v3 = [v2 numberWithDouble:?];
  [v1 _setObject:? forBundleParameter:?];
}

void __46__MFComposeWebView__basicWebViewConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  v4 = [v3 integerValue];

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:(v4 & 2) == 0];
  [v5 _setObject:v6 forBundleParameter:@"showRemoteImages"];
}

- (MFComposeWebView)initWithFrame:(CGRect)a3 isQuickReply:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [objc_opt_class() _webViewConfiguration:a4];
  v64.receiver = self;
  v64.super_class = MFComposeWebView;
  v11 = [(MFComposeWebView *)&v64 initWithFrame:v10 configuration:x, y, width, height];

  if (v11)
  {
    [(MFComposeWebView *)v11 _overrideViewportWithArguments:&unk_1F3D16728];
    v12 = MEMORY[0x1E695DFF8];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [v14 UUIDString];
    v16 = [v13 stringWithFormat:@"applewebdata://%@", v15];
    v17 = [v12 URLWithString:v16];
    v18 = [(MFComposeWebView *)v11 loadHTMLString:@"<body dir=auto>" baseURL:v17];

    [(MFComposeWebView *)v11 setNavigationDelegate:v11];
    [(MFComposeWebView *)v11 _setInputDelegate:v11];
    [(MFComposeWebView *)v11 setUIDelegate:v11];
    [(MFComposeWebView *)v11 _setDragInteractionPolicy:1];
    [(MFComposeWebView *)v11 setFindInteractionEnabled:1];
    v19 = [(MFComposeWebView *)v11 _remoteObjectRegistry];
    v20 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F3D55AB0];
    bodyFieldObserverInterface = v11->_bodyFieldObserverInterface;
    v11->_bodyFieldObserverInterface = v20;

    [v19 registerExportedObject:v11 interface:v11->_bodyFieldObserverInterface];
    v22 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F3DA7610];
    richLinkGeneratorInterface = v11->_richLinkGeneratorInterface;
    v11->_richLinkGeneratorInterface = v22;

    v24 = [MEMORY[0x1E69ADD28] linkGenerator];
    [v19 registerExportedObject:v24 interface:v11->_richLinkGeneratorInterface];

    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v11 selector:sel__menuDidHide_ name:*MEMORY[0x1E69DE0E0] object:0];

    v11->_shouldShowStandardButtons = 1;
    v26 = objc_opt_new();
    attachmentsByUniqueIdentifier = v11->_attachmentsByUniqueIdentifier;
    v11->_attachmentsByUniqueIdentifier = v26;

    v28 = objc_opt_new();
    attachmentCIDsByIdentifier = v11->_attachmentCIDsByIdentifier;
    v11->_attachmentCIDsByIdentifier = v28;

    v30 = objc_opt_new();
    originalAttachmentWrappers = v11->_originalAttachmentWrappers;
    v11->_originalAttachmentWrappers = v30;

    v11->_originalAttachmentsWereRestored = 0;
    v32 = objc_opt_new();
    richLinkActivityIndicators = v11->_richLinkActivityIndicators;
    v11->_richLinkActivityIndicators = v32;

    v11->_isQuickReply = v4;
    if ([(MFComposeWebView *)v11 _useComposeToolbar])
    {
      v34 = objc_alloc(MEMORY[0x1E69DD6C0]);
      v35 = [(MFComposeWebView *)v11 scrollView];
      v36 = [v34 initWithScrollView:v35 edge:4];

      objc_storeStrong(&v11->_composeInputAccessoryPocketContainerInteraction, v36);
      v37 = [[MFComposeInputAccessoryView alloc] initWithToolbarItems:0];
      composeInputAccessoryView = v11->_composeInputAccessoryView;
      v11->_composeInputAccessoryView = v37;

      [(MFComposeInputAccessoryView *)v11->_composeInputAccessoryView addInteraction:v36];
      v39 = [(MFComposeWebView *)v11 window];
      v40 = [v39 windowScene];
      v41 = [v40 effectiveGeometry];
      v42 = [v41 interfaceOrientation];

      [(MFComposeWebView *)v11 _updatePocketContainerInteractionVisible:(v42 - 5) < 0xFFFFFFFFFFFFFFFELL];
    }

    objc_initWeak(&location, v11);
    v43 = MEMORY[0x1E699AF40];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke;
    v61[3] = &unk_1E806D7C8;
    objc_copyWeak(&v62, &location);
    [v43 addScriptHandlerForWebView:v11 key:@"PlainTextLinkHighlighted" handler:v61];
    v44 = MEMORY[0x1E699AF40];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_2;
    v59[3] = &unk_1E806D7C8;
    objc_copyWeak(&v60, &location);
    [v44 addScriptHandlerForWebView:v11 key:@"RichLinkHighlighted" handler:v59];
    v45 = MEMORY[0x1E699AF40];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_3;
    v57[3] = &unk_1E806D7C8;
    objc_copyWeak(&v58, &location);
    [v45 addScriptHandlerForWebView:v11 key:@"RichLinkPlaceholderInserted" handler:v57];
    v46 = MEMORY[0x1E699AF40];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_4;
    v55[3] = &unk_1E806D7F0;
    objc_copyWeak(&v56, &location);
    [v46 addScriptHandlerForWebView:v11 key:@"RichLinkLoaded" handler:v55];
    if ((_os_feature_enabled_impl() & v4) == 1)
    {
      v47 = MEMORY[0x1E699AF40];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_5;
      v53[3] = &unk_1E806D818;
      objc_copyWeak(&v54, &location);
      [v47 addScriptHandlerForWebView:v11 key:@"DidChangeHeight" handler:v53];
      v48 = MEMORY[0x1E699AF40];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_6;
      v51[3] = &unk_1E806D818;
      objc_copyWeak(&v52, &location);
      [v48 addScriptHandlerForWebView:v11 key:@"MessageBodyIsEmpty" handler:v51];
      objc_destroyWeak(&v52);
      objc_destroyWeak(&v54);
    }

    v11->_webProcessCrashCount = 0;
    lastCrashDate = v11->_lastCrashDate;
    v11->_lastCrashDate = 0;

    objc_destroyWeak(&v56);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showRichLinkAccessoryButtonForExistingRichLink:0 message:v3];
}

void __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showRichLinkAccessoryButtonForExistingRichLink:1 message:v3];
}

void __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained richLinkDidStartLoading:v3];
}

void __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained richLinkDidFinishLoading:v3];
}

void __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v4 doubleValue];
  [WeakRetained _composeWebView:WeakRetained didChangeHeight:?];
}

void __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_6(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _composeWebView:WeakRetained composeBodyIsEmpty:{objc_msgSend(v4, "BOOLValue")}];
}

- (BOOL)becomeFirstResponder
{
  v9.receiver = self;
  v9.super_class = MFComposeWebView;
  v3 = [(MFComposeWebView *)&v9 becomeFirstResponder];
  if (v3)
  {
    [(MFComposeWebView *)self updateInputAssistantItem];
    v4 = [(MFComposeWebView *)self mailComposeViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 composeWebViewDidBecomeFirstResponder];
    }

    [_TtC9MessageUI20MessageUITipsManager setShouldDisplayTo:1];
    WeakRetained = objc_loadWeakRetained(&self->_composeCoordinator);
    [WeakRetained setFocusedField:@"body"];

    if ([(MFComposeWebView *)self _useComposeToolbar])
    {
      v6 = [(MFComposeWebView *)self composeInputAccessoryView];
      [v6 setHidden:0];

      v7 = objc_loadWeakRetained(&self->_composeWebViewDelegate);
      if (objc_opt_respondsToSelector())
      {
        [v7 composeWebView:self didHideInputAccessoryView:0];
      }
    }
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v8.receiver = self;
  v8.super_class = MFComposeWebView;
  v3 = [(MFComposeWebView *)&v8 resignFirstResponder];
  if (v3)
  {
    v4 = [(MFComposeWebView *)self mailComposeViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 composeWebViewDidResignFirstResponder];
    }

    [_TtC9MessageUI20MessageUITipsManager setShouldDisplayTo:0];
    if ([(MFComposeWebView *)self _useComposeToolbar])
    {
      v5 = [(MFComposeWebView *)self composeInputAccessoryView];
      [v5 setHidden:1];

      WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained composeWebView:self didHideInputAccessoryView:1];
      }
    }
  }

  return v3;
}

- (id)keyCommands
{
  v2 = MFIsMobileMail();
  v3 = keyCommands_commands;
  if (!keyCommands_commands && (v2 & 1) == 0)
  {
    v4 = +[MFComposeWebView menuCommands];
    v5 = [v4 ef_compactMap:&__block_literal_global_234];
    v6 = keyCommands_commands;
    keyCommands_commands = v5;

    v3 = keyCommands_commands;
  }

  return v3;
}

id __31__MFComposeWebView_keyCommands__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 command];
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  [(MFComposeWebView *)self _canPerformCommandAction:a3 withSender:v6];
  if (sel_selectAll_ == a3)
  {
    if (![(MFComposeWebView *)self _contentViewIsFirstResponder])
    {
      selectionContainsLink = 0;
      goto LABEL_18;
    }

    v14.receiver = self;
    v7 = &v14;
    goto LABEL_8;
  }

  if (self->_shouldShowStandardButtons)
  {
    if (sel_makeRichLinkFromSelection == a3)
    {
      selectionContainsLink = self->_selectionContainsLink;
      goto LABEL_18;
    }

    if (sel_pasteRichLink == a3)
    {
      v10 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v11 = [v10 URL];
      selectionContainsLink = [v11 ef_isHTTPOrHTTPSURL];

      goto LABEL_18;
    }

    v13 = self;
    v7 = &v13;
LABEL_8:
    v7->super_class = MFComposeWebView;
    selectionContainsLink = [(objc_super *)v7 canPerformAction:a3 withSender:v6, v13];
    goto LABEL_18;
  }

  selectionContainsLink = sel__increaseQuoteLevel_ == a3 || sel__decreaseQuoteLevel_ == a3;
LABEL_18:

  return selectionContainsLink & 1;
}

- (BOOL)_canPerformCommandAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (sel__pasteAsQuotation_ == a3)
    {
      v8 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v9 = [v8 items];
      v7 = [v9 count] != 0;
    }

    else
    {
      v6 = +[MFComposeWebView menuCommands];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__MFComposeWebView__canPerformCommandAction_withSender___block_invoke;
      v11[3] = &__block_descriptor_40_e27_B16__0__MFMailMenuCommand_8l;
      v11[4] = a3;
      v7 = [v6 ef_any:v11];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __56__MFComposeWebView__canPerformCommandAction_withSender___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 command];
  v4 = [v3 action] == *(a1 + 32);

  return v4;
}

- (id)_textInputTraits
{
  v59 = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = MFComposeWebView;
  v47 = [(MFComposeWebView *)&v55 _textInputTraits];
  v48 = [(MFComposeWebView *)self mailComposeViewDelegate];
  if (v48)
  {
    if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && ([v48 isSmartReplyRestricted] & 1) == 0)
    {
      v13 = [(MFComposeWebView *)self previousInputContextHistory];
      v45 = v13 == 0;

      if (v45)
      {
        v14 = [v48 inputContextHistory];
        [(MFComposeWebView *)self setPreviousInputContextHistory:v14];

        v15 = EMLogCompose();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(MFComposeWebView *)self previousInputContextHistory];
          v17 = [v16 ef_publicDescription];
          *buf = 138543362;
          v58 = v17;
          _os_log_impl(&dword_1BE819000, v15, OS_LOG_TYPE_DEFAULT, "[SmartReply] Updated input context history: %{public}@", buf, 0xCu);
        }
      }

      v46 = [(MFComposeWebView *)self previousInputContextHistory];
      v18 = objc_alloc(MEMORY[0x1E69DCAF8]);
      v19 = [v46 threadIdentifier];
      v20 = [v46 recipientNamesByEmailAddress];
      v21 = [v46 firstPerson];
      v22 = [v46 primaryRecipients];
      v23 = [v46 secondaryRecipients];
      v24 = [v46 infoDict];
      v50 = [v18 initWithThreadIdentifier:v19 participantsIDtoNames:v20 firstPerson:v21 primaryRecipients:v22 secondaryRecipients:v23 info:v24];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = [v46 originalContentMessages];
      v25 = [(__CFString *)obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v25)
      {
        v26 = *v52;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v52 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v51 + 1) + 8 * i);
            v29 = [v28 sender];
            v30 = [v29 emailAddressValue];
            v31 = [v30 simpleAddress];

            v32 = objc_alloc_init(MEMORY[0x1E69D9678]);
            v33 = [v28 bodyText];
            [v32 setText:v33];

            [v32 setSenderIdentifier:v31];
            v34 = [v28 date];
            [v32 setTimestamp:v34];

            v35 = [v28 searchableMessageID];
            v36 = [v35 stringValue];
            [v32 setEntryIdentifier:v36];

            v37 = MEMORY[0x1E695DFD8];
            v38 = [v28 toList];
            v39 = [v38 ef_map:&__block_literal_global_262];
            v40 = [v37 setWithArray:v39];
            [v32 setPrimaryRecipientIdentifiers:v40];

            v41 = MEMORY[0x1E695DFD8];
            v42 = [v28 ccList];
            v43 = [v42 ef_map:&__block_literal_global_264];
            v44 = [v41 setWithArray:v43];
            [v32 setSecondaryRecipientIdentifiers:v44];

            [v50 addEntry:v32];
          }

          v25 = [(__CFString *)obj countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v25);
      }
    }

    else
    {
      v46 = [v48 allRecipientNamesAndAddresses];
      v3 = [v48 sendingEmailAddressIfExists];
      v4 = v3;
      v5 = &stru_1F3CF3758;
      if (v3)
      {
        v5 = v3;
      }

      obj = v5;

      v6 = objc_alloc(MEMORY[0x1E69DCAF8]);
      v7 = [v46 second];
      v8 = [MEMORY[0x1E695DFD8] setWithObject:obj];
      v50 = [v6 initWithRecipientIdentifiers:v7 senderIdentifiers:v8];

      v9 = [v46 first];
      [v50 updateRecipientNames:v9];

      v45 = 0;
    }

    v10 = v50;
    [v47 setInputContextHistory:v50];
    if (v45)
    {
      v11 = [MEMORY[0x1E69DCBB8] activeKeyboard];
      [v11 responseContextDidChange];

      v10 = v50;
    }
  }

  return v47;
}

id __36__MFComposeWebView__textInputTraits__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddressValue];
  v3 = [v2 simpleAddress];

  return v3;
}

id __36__MFComposeWebView__textInputTraits__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddressValue];
  v3 = [v2 simpleAddress];

  return v3;
}

- (void)_close
{
  v3 = [(MFComposeWebView *)self _remoteObjectRegistry];
  [v3 unregisterExportedObject:self interface:self->_bodyFieldObserverInterface];

  v4 = [(MFComposeWebView *)self _remoteObjectRegistry];
  v5 = [MEMORY[0x1E69ADD28] linkGenerator];
  [v4 unregisterExportedObject:v5 interface:self->_richLinkGeneratorInterface];

  v6.receiver = self;
  v6.super_class = MFComposeWebView;
  [(MFComposeWebView *)&v6 _close];
}

- (void)markupSelectedAttachment
{
  v3 = EMLogCompose();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "Started markup of attachments", v8, 2u);
  }

  attachmentsByUniqueIdentifier = self->_attachmentsByUniqueIdentifier;
  v5 = [(NSArray *)self->_selectedAttachmentIdentifiers firstObject];
  v6 = [(NSMutableDictionary *)attachmentsByUniqueIdentifier objectForKeyedSubscript:v5];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
    [WeakRetained markupAttachment:v6];
  }

  else
  {
    WeakRetained = EMLogCompose();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG))
    {
      [(MFComposeWebView *)WeakRetained markupSelectedAttachment];
    }
  }
}

- (id)inputAccessoryView
{
  v3 = [(MFComposeWebView *)self inputViewForPreservingFocus];
  if (v3)
  {
  }

  else if ([(MFComposeWebView *)self _useComposeToolbar])
  {
    v4 = [(MFComposeWebView *)self composeInputAccessoryView];
    goto LABEL_6;
  }

  v6.receiver = self;
  v6.super_class = MFComposeWebView;
  v4 = [(MFComposeWebView *)&v6 inputAccessoryView];
LABEL_6:

  return v4;
}

- (CGRect)_rectFromMessageDict:(id)a3
{
  v3 = a3;
  v4 = [v3 ef_objectOfClass:objc_opt_class() forKey:@"x"];
  [v4 floatValue];
  v6 = v5;

  v7 = [v3 ef_objectOfClass:objc_opt_class() forKey:@"y"];
  [v7 floatValue];
  v9 = v8;

  v10 = [v3 ef_objectOfClass:objc_opt_class() forKey:@"width"];
  [v10 floatValue];
  v12 = v11;

  v13 = [v3 ef_objectOfClass:objc_opt_class() forKey:@"height"];
  [v13 floatValue];
  v15 = v14;

  v16 = v6;
  v17 = v9;
  v18 = v12;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_linkAccessoryButtonFrameForSourceRect:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  v6 = a3.origin.x + a3.size.width;
  v7 = a3.origin.x + a3.size.width + 8.0;
  v8 = a3.origin.y + -2.0;
  v17.size.width = 34.0;
  v17.size.height = 28.0;
  v17.origin.x = v7;
  v17.origin.y = a3.origin.y + -2.0;
  MaxX = CGRectGetMaxX(v17);
  v10 = [(MFComposeWebView *)self scrollView];
  [v10 frame];
  v12 = v11;

  if (MaxX + 8.0 > v12)
  {
    v7 = v6 + -34.0 + -8.0;
    v8 = y + height + -28.0 + -2.0;
  }

  v13 = 34.0;
  v14 = 28.0;
  v15 = v7;
  v16 = v8;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)showRichLinkAccessoryButtonForExistingRichLink:(BOOL)a3 message:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(MFComposeWebView *)self _rectFromMessageDict:v6];
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  if (v4 || v9 > 0.0 && v10 > 0.0 && !CGRectEqualToRect(*&v7, self->_richLinkSourceRect))
  {
    self->_richLinkSourceRect.origin.x = v11;
    self->_richLinkSourceRect.origin.y = v12;
    self->_richLinkSourceRect.size.width = v13;
    self->_richLinkSourceRect.size.height = v14;
    [(MFComposeWebView *)self _linkAccessoryButtonFrameForSourceRect:v11, v12, v13, v14];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v53 = [v6 valueForKey:@"url"];
    v23 = [v6 objectForKeyedSubscript:@"isAnchor"];
    v24 = [v23 BOOLValue];

    v25 = [(MFComposeWebView *)self makeLinkAccessoryButton];
    [v25 setTag:v4];
    [v25 setFrame:{v16, v18, v20, v22}];
    if (v4)
    {
      [MEMORY[0x1E69ADD28] titleConvertToPlainLink];
    }

    else
    {
      [MEMORY[0x1E69ADD28] titleConvertToRichLink];
    }
    v26 = ;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __75__MFComposeWebView_showRichLinkAccessoryButtonForExistingRichLink_message___block_invoke;
    v63[3] = &unk_1E806D8A0;
    v64 = v4;
    v63[4] = self;
    v52 = v26;
    v31 = [MEMORY[0x1E69DC628] actionWithTitle:v26 image:0 identifier:0 handler:v63];
    v32 = [MEMORY[0x1E695DF70] arrayWithObject:v31];
    if (v53)
    {
      v33 = MEMORY[0x1E69DC628];
      v34 = [MEMORY[0x1E69ADD28] titleOpenLink];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __75__MFComposeWebView_showRichLinkAccessoryButtonForExistingRichLink_message___block_invoke_2;
      v60[3] = &unk_1E806D8C8;
      v35 = v53;
      v61 = v35;
      v62 = self;
      v36 = [v33 actionWithTitle:v34 image:0 identifier:0 handler:v60];

      [v32 addObject:v36];
      if (_os_feature_enabled_impl() && !v4 && ((v24 ^ 1) & 1) == 0)
      {
        v51 = v36;
        v37 = _EFLocalizedString();
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __75__MFComposeWebView_showRichLinkAccessoryButtonForExistingRichLink_message___block_invoke_3;
        v58[3] = &unk_1E806C520;
        v58[4] = self;
        v59 = v35;
        v38 = [(MFComposeWebView *)self _actionWithTitle:v37 glyphName:0 handler:v58];

        [v32 addObject:v38];
        v39 = _EFLocalizedString();
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __75__MFComposeWebView_showRichLinkAccessoryButtonForExistingRichLink_message___block_invoke_4;
        v57[3] = &unk_1E806C570;
        v57[4] = self;
        v40 = [(MFComposeWebView *)self _actionWithTitle:v39 glyphName:0 handler:v57];

        [v32 addObject:v40];
        v41 = [v6 valueForKey:@"description"];
        v42 = [v41 isEqualToString:&stru_1F3CF3758];
        if (v41)
        {
          v43 = v42;
        }

        else
        {
          v43 = 1;
        }

        if (v43 == 1)
        {
          v44 = _EFLocalizedString();
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = __75__MFComposeWebView_showRichLinkAccessoryButtonForExistingRichLink_message___block_invoke_5;
          v56[3] = &unk_1E806C570;
          v56[4] = self;
          v45 = [(MFComposeWebView *)self _actionWithTitle:v44 glyphName:0 handler:v56];

          [v32 addObject:v45];
        }

        else
        {
          v46 = _EFLocalizedString();
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __75__MFComposeWebView_showRichLinkAccessoryButtonForExistingRichLink_message___block_invoke_6;
          v54[3] = &unk_1E806C520;
          v54[4] = self;
          v55 = v41;
          v47 = [(MFComposeWebView *)self _actionWithTitle:v46 glyphName:0 handler:v54];

          [v32 addObject:v47];
          v45 = v55;
        }

        v36 = v51;
      }
    }

    v48 = [MEMORY[0x1E69DCC60] menuWithChildren:v32];
    [v25 setMenu:v48];

    v49 = [(MFComposeWebView *)self scrollView];
    v50 = [(MFComposeWebView *)self makeLinkAccessoryButton];
    [v49 addSubview:v50];

    [(MFComposeWebView *)self _showmakeLinkAccessoryButton];
  }

  else if (*MEMORY[0x1E695F060] == v13 && *(MEMORY[0x1E695F060] + 8) == v14)
  {
    p_richLinkSourceRect = &self->_richLinkSourceRect;
    v29 = MEMORY[0x1E695F058];
    if (!CGRectEqualToRect(*MEMORY[0x1E695F058], self->_richLinkSourceRect))
    {
      v66.origin.x = p_richLinkSourceRect->origin.x;
      v66.origin.y = self->_richLinkSourceRect.origin.y;
      v66.size.width = self->_richLinkSourceRect.size.width;
      v66.size.height = self->_richLinkSourceRect.size.height;
      v67 = CGRectInset(v66, -22.0, -10.0);
      v68 = CGRectOffset(v67, 14.0, 0.0);
      v65.x = v11;
      v65.y = v12;
      if (!CGRectContainsPoint(v68, v65))
      {
        v30 = v29[1];
        p_richLinkSourceRect->origin = *v29;
        self->_richLinkSourceRect.size = v30;
        [(MFComposeWebView *)self hideMakeLinkAccessoryButton];
      }
    }
  }
}

uint64_t __75__MFComposeWebView_showRichLinkAccessoryButtonForExistingRichLink_message___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 removeRichLinkFromSelection];
  }

  else
  {
    return [v2 makeRichLinkFromSelection];
  }
}

void __75__MFComposeWebView_showRichLinkAccessoryButtonForExistingRichLink_message___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  v4 = [v2 ef_urlByAddingSchemeIfNeeded];

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:0];

  [*(a1 + 40) hideMakeLinkAccessoryButton];
}

- (id)_actionWithTitle:(void *)a3 glyphName:(void *)a4 handler:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    a1 = [(MFComposeWebView *)a1 _actionWithTitle:v7 glyphName:v8 usePrivateCatalog:0 handler:v9];
  }

  return a1;
}

- (void)richLinkDidStartLoading:(id)a3
{
  v29 = a3;
  [(MFComposeWebView *)self _rectFromMessageDict:?];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  p_richLinkSourceRect = &self->_richLinkSourceRect;
  if (CGRectIntersectsRect(v31, self->_richLinkSourceRect))
  {
    x = p_richLinkSourceRect->origin.x;
    y = self->_richLinkSourceRect.origin.y;
    width = self->_richLinkSourceRect.size.width;
    height = self->_richLinkSourceRect.size.height;
    v9 = *(MEMORY[0x1E695F058] + 16);
    p_richLinkSourceRect->origin = *MEMORY[0x1E695F058];
    self->_richLinkSourceRect.size = v9;
  }

  v10 = [v29 ef_objectOfClass:objc_opt_class() forKey:@"linkID"];
  if (v10)
  {
    if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
    {
      v12 = [(MFComposeWebView *)self richLinkActivityIndicators];
      v13 = [v12 objectForKeyedSubscript:v10];

      if (!v13)
      {
        [(MFComposeWebView *)self _linkAccessoryButtonFrameForSourceRect:x, y, width, height];
        v15 = v14;
        v17 = v16;
        [(MFComposeWebView *)self hideMakeLinkAccessoryButton];
        v18 = [(MFComposeWebView *)self _makeRichLinkTemplateButtonWithOrigin:v15, v17];
        v19 = objc_alloc(MEMORY[0x1E69DC638]);
        v20 = [v19 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v20 setActivityIndicatorViewStyle:3];
        [v20 startAnimating];
        [v18 addSubview:v20];
        v21 = [v18 centerXAnchor];
        v22 = [v20 centerXAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
        [v18 addConstraint:v23];

        v24 = [v18 centerYAnchor];
        v25 = [v20 centerYAnchor];
        v26 = [v24 constraintEqualToAnchor:v25];
        [v18 addConstraint:v26];

        v27 = [(MFComposeWebView *)self scrollView];
        [v27 addSubview:v18];

        v28 = [(MFComposeWebView *)self richLinkActivityIndicators];
        [v28 setObject:v20 forKeyedSubscript:v10];
      }
    }
  }
}

- (void)richLinkDidFinishLoading:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(MFComposeWebView *)self richLinkActivityIndicators];
    v5 = [v4 objectForKeyedSubscript:v8];

    v6 = [v5 superview];
    [v6 removeFromSuperview];

    [v5 removeFromSuperview];
    v7 = [(MFComposeWebView *)self richLinkActivityIndicators];
    [v7 removeObjectForKey:v8];
  }
}

- (id)makeLinkAccessoryButton
{
  makeLinkAccessoryButton = self->_makeLinkAccessoryButton;
  if (!makeLinkAccessoryButton)
  {
    v4 = [(MFComposeWebView *)self _makeRichLinkTemplateButtonWithOrigin:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v5 = self->_makeLinkAccessoryButton;
    self->_makeLinkAccessoryButton = v4;

    v6 = self->_makeLinkAccessoryButton;
    v7 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"chevron.down" forView:23];
    [(UIButton *)v6 setImage:v7 forState:0];

    [(UIButton *)self->_makeLinkAccessoryButton setHidden:1];
    [(UIButton *)self->_makeLinkAccessoryButton setAlpha:0.0];
    [(UIButton *)self->_makeLinkAccessoryButton setContextMenuInteractionEnabled:1];
    [(UIButton *)self->_makeLinkAccessoryButton setShowsMenuAsPrimaryAction:1];
    v8 = [(MFComposeWebView *)self scrollView];
    [v8 addSubview:self->_makeLinkAccessoryButton];

    makeLinkAccessoryButton = self->_makeLinkAccessoryButton;
  }

  return makeLinkAccessoryButton;
}

- (id)_makeRichLinkTemplateButtonWithOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v5 setFrame:{x, y, 34.0, 28.0}];
  v6 = [MEMORY[0x1E69DC888] whiteColor];
  [v5 setTintColor:v6];

  v7 = [MEMORY[0x1E69DC888] systemGray2Color];
  [v5 setBackgroundColor:v7];

  v8 = [v5 layer];
  [v8 setCornerRadius:9.0];

  return v5;
}

- (void)_showmakeLinkAccessoryButton
{
  v2 = [(MFComposeWebView *)self makeLinkAccessoryButton];
  [v2 setHidden:0];
  v3 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MFComposeWebView__showmakeLinkAccessoryButton__block_invoke;
  v5[3] = &unk_1E806C570;
  v4 = v2;
  v6 = v4;
  [v3 animateWithDuration:v5 animations:&__block_literal_global_319 completion:0.1];
}

- (void)hideMakeLinkAccessoryButton
{
  makeLinkAccessoryButton = self->_makeLinkAccessoryButton;
  if (makeLinkAccessoryButton)
  {
    if (([(UIButton *)makeLinkAccessoryButton isHidden]& 1) == 0)
    {
      v4 = [(MFComposeWebView *)self makeLinkAccessoryButton];
      v5 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__MFComposeWebView_hideMakeLinkAccessoryButton__block_invoke;
      v9[3] = &unk_1E806C570;
      v10 = v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __47__MFComposeWebView_hideMakeLinkAccessoryButton__block_invoke_2;
      v7[3] = &unk_1E806D6F0;
      v8 = v10;
      v6 = v10;
      [v5 animateWithDuration:v9 animations:v7 completion:0.1];
    }
  }
}

- (void)hideMakeLinkAccessoryButtonMenu
{
  makeLinkAccessoryButton = self->_makeLinkAccessoryButton;
  if (makeLinkAccessoryButton && ([(UIButton *)makeLinkAccessoryButton isHidden]& 1) == 0)
  {
    v5 = [(MFComposeWebView *)self makeLinkAccessoryButton];
    v4 = [v5 menu];
    [v5 setMenu:0];
    [v5 setMenu:v4];
  }
}

- (void)insertRichLinkWithURL:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v7 insertRichLinkWithURL:v8 completionHandler:v6];
}

- (void)makeRichLinkFromSelection
{
  v2 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v2 makeRichLinkFromSelection];
}

- (void)removeRichLinkFromSelection
{
  v3 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v3 removeRichLinkFromSelection];

  [(MFComposeWebView *)self hideMakeLinkAccessoryButton];
}

- (void)pasteRichLink
{
  v3 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v5 = [v3 URL];

  if ([v5 ef_isHTTPOrHTTPSURL])
  {
    v4 = [(MFComposeWebView *)self _bodyFieldProxy];
    [v4 insertRichLinkWithURL:v5 completionHandler:&__block_literal_global_321];
  }
}

- (void)enableQuickReply:(BOOL)a3
{
  if (self->_isQuickReply != a3)
  {
    v3 = a3;
    self->_isQuickReply = a3;
    v4 = [(MFComposeWebView *)self _bodyFieldProxy];
    [v4 enableQuickReply:v3];
  }
}

- (void)invalidateInputContextHistory
{
  [(MFComposeWebView *)self setPreviousInputContextHistory:0];
  v2 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [v2 responseContextDidChange];
}

- (BOOL)_useComposeToolbar
{
  if (!MFSolariumFeatureEnabled() || ([MEMORY[0x1E69DC938] mf_isPadIdiom] & 1) != 0)
  {
    return 0;
  }

  v4 = [(MFComposeWebView *)self composeCoordinator];
  v3 = v4 == 0;

  return v3;
}

- (double)inputAccessoryViewHeight
{
  v3 = [(MFComposeWebView *)self composeInputAccessoryView];
  v4 = [(MFComposeWebView *)self inputAccessoryView];

  v5 = 0.0;
  if (v4 && v3)
  {
    [v3 intrinsicContentSize];
    v5 = v6;
  }

  return v5;
}

- (void)_updatePocketContainerInteractionVisible:(BOOL)a3
{
  v3 = a3;
  if ([(MFComposeWebView *)self _useComposeToolbar])
  {
    composeInputAccessoryView = self->_composeInputAccessoryView;
    if (composeInputAccessoryView)
    {
      if (self->_composeInputAccessoryPocketContainerInteraction)
      {
        v6 = [(MFComposeInputAccessoryView *)composeInputAccessoryView interactions];
        v7 = v6;
        composeInputAccessoryPocketContainerInteraction = self->_composeInputAccessoryPocketContainerInteraction;
        if (v3)
        {
          v9 = [v6 containsObject:composeInputAccessoryPocketContainerInteraction];

          if ((v9 & 1) == 0)
          {
            v10 = self->_composeInputAccessoryView;
            v11 = self->_composeInputAccessoryPocketContainerInteraction;

            [(MFComposeInputAccessoryView *)v10 addInteraction:v11];
          }
        }

        else
        {
          v12 = [v6 containsObject:composeInputAccessoryPocketContainerInteraction];

          if (v12)
          {
            v13 = self->_composeInputAccessoryView;
            v14 = self->_composeInputAccessoryPocketContainerInteraction;

            [(MFComposeInputAccessoryView *)v13 removeInteraction:v14];
          }
        }
      }
    }
  }
}

- (MFMailSignatureController)signatureControllerProxy
{
  signatureControllerProxy = self->_signatureControllerProxy;
  if (!signatureControllerProxy)
  {
    v4 = [(MFComposeWebView *)self _remoteObjectRegistry];
    v5 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F3DA7670];
    v6 = [v4 remoteObjectProxyWithInterface:v5];
    v7 = self->_signatureControllerProxy;
    self->_signatureControllerProxy = v6;

    signatureControllerProxy = self->_signatureControllerProxy;
  }

  return signatureControllerProxy;
}

- (id)_bodyFieldProxy
{
  bodyFieldProxy = self->_bodyFieldProxy;
  if (!bodyFieldProxy)
  {
    v4 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F3DA76D0];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
    [v4 setClasses:v8 forSelector:sel_htmlStringsAttachmentURLsAndPlainTextAlternativeRemovingSignature_attachmentInfoByIdentifier_completion_ argumentIndex:1 ofReply:1];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    [v4 setClasses:v13 forSelector:sel_plainTextContentUsingAttachmentInfoByIdentifier_completionHandler_ argumentIndex:0 ofReply:1];

    v14 = [(MFComposeWebView *)self _remoteObjectRegistry];
    v15 = [v14 remoteObjectProxyWithInterface:v4];
    v16 = self->_bodyFieldProxy;
    self->_bodyFieldProxy = v15;

    bodyFieldProxy = self->_bodyFieldProxy;
  }

  return bodyFieldProxy;
}

- (MFMailComposeViewDelegate)mailComposeViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);

  return WeakRetained;
}

- (NSString)compositionContextID
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained compositionContext];
    v6 = [v5 contextID];
  }

  else
  {
    v6 = self->_compositionContextID;
  }

  return v6;
}

- (id)_attachmentInfoByURL
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v3 = [WeakRetained compositionContext];
  v19 = [v3 attachments];

  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v19, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v19;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 contentID];
        v10 = MFCreateURLForContentID();

        v11 = [MFComposeAttachmentInfo alloc];
        v12 = [v8 fileName];
        v13 = [v8 isBasicImage];
        v14 = [v8 isDisplayableImage];
        v15 = [v8 className];
        v16 = [(MFComposeAttachmentInfo *)v11 initWithURL:v10 filename:v12 isBasicImage:v13 isDisplayableImage:v14 className:v15];
        v17 = [v10 absoluteString];
        [v4 setObject:v16 forKeyedSubscript:v17];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  return v4;
}

- (void)appendOrReplace:(id)a3 withMarkupString:(id)a4 quote:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(MFComposeWebView *)self _bodyFieldProxy];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v15 = [WeakRetained compositionType];
  v16 = [(MFComposeWebView *)self _attachmentInfoByURL];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__MFComposeWebView_appendOrReplace_withMarkupString_quote_completion___block_invoke;
  v18[3] = &unk_1E806D910;
  v18[4] = self;
  v17 = v12;
  v19 = v17;
  [v13 appendOrReplace:v10 withMarkupString:v11 quote:v7 composeType:v15 attachmentInfoByURL:v16 completionHandler:v18];
}

void __70__MFComposeWebView_appendOrReplace_withMarkupString_quote_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EMLogCompose();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 allKeys];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Appending or replacing attachments %{public}@", &v7, 0xCu);
  }

  [*(*(a1 + 32) + 2120) addEntriesFromDictionary:v3];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (void)insertString:(id)a3
{
  v5 = a3;
  v4 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v4 insertString:v5];

  [(MFComposeWebView *)self composeBodyFieldDidChange];
}

- (id)_attachmentInfoByIdentifier
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_attachmentsByUniqueIdentifier, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_attachmentsByUniqueIdentifier;
  v2 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v17 = *v22;
    do
    {
      v20 = v2;
      for (i = 0; i != v20; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v21 + 1) + 8 * i);
        v5 = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier objectForKeyedSubscript:v4];
        v6 = [MFComposeAttachmentInfo alloc];
        v7 = [v5 contentID];
        v8 = MFCreateURLForContentID();
        v9 = [v5 fileName];
        v10 = [v5 isBasicImage];
        v11 = [v5 isDisplayableImage];
        v12 = [v5 className];
        v13 = [(MFComposeAttachmentInfo *)v6 initWithURL:v8 filename:v9 isBasicImage:v10 isDisplayableImage:v11 className:v12];
        [v19 setObject:v13 forKeyedSubscript:v4];
      }

      v2 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v2);
  }

  v14 = [v19 copy];

  return v14;
}

- (id)plainTextContent
{
  v3 = [MEMORY[0x1E699B868] promise];
  v4 = [(MFComposeWebView *)self _bodyFieldProxy];
  v5 = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__MFComposeWebView_plainTextContent__block_invoke;
  v9[3] = &unk_1E806D938;
  v6 = v3;
  v10 = v6;
  [v4 plainTextContentUsingAttachmentInfoByIdentifier:v5 completionHandler:v9];

  v7 = [v6 future];

  return v7;
}

void __36__MFComposeWebView_plainTextContent__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v21;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = *v24;
    v22 = *MEMORY[0x1E69B1540];
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = plainTextDocumentFromStringsAndQuoteLevels(v7, 0);
          [v2 addObject:v8];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_16;
          }

          v8 = v7;
          if ([v8 isFileURL])
          {
            v9 = MEMORY[0x1E695DFF8];
            v10 = MEMORY[0x1E696AEC0];
            v11 = [v8 resourceSpecifier];
            v12 = [v10 stringWithFormat:@"%@:%@", v22, v11];
            v13 = [v9 URLWithString:v12];

            v8 = v13;
LABEL_12:
            v16 = [MEMORY[0x1E69B15D0] defaultManager];
            v17 = [v16 attachmentForCID:v8];

            if (v17)
            {
              [v2 addObject:v17];
            }

            goto LABEL_15;
          }

          v14 = [v8 scheme];
          v15 = [v14 isEqualToString:v22];

          if (v15)
          {
            goto LABEL_12;
          }
        }

LABEL_15:

LABEL_16:
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  v18 = *(a1 + 32);
  v19 = [v2 copy];
  [v18 finishWithResult:v19];
}

- (void)setCaretPosition:(unint64_t)a3
{
  v4 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v4 setCaretPosition:a3];
}

- (id)getCaretPosition
{
  v3 = [MEMORY[0x1E699B868] promise];
  v4 = [(MFComposeWebView *)self _bodyFieldProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__MFComposeWebView_getCaretPosition__block_invoke;
  v8[3] = &unk_1E806D960;
  v5 = v3;
  v9 = v5;
  [v4 getCaretPosition:v8];

  v6 = [v5 future];

  return v6;
}

- (_NSRange)selectedRange
{
  v2 = 0;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)insertDocumentWithURL:(id)a3 isDrawingFile:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MFComposeWebView_insertDocumentWithURL_isDrawingFile___block_invoke;
  v4[3] = &unk_1E806D9B0;
  v4[4] = self;
  [(MFComposeWebView *)self prepareDataForDocumentAtURLForInsertion:a3 completion:v4];
}

void __56__MFComposeWebView_insertDocumentWithURL_isDrawingFile___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__MFComposeWebView_insertDocumentWithURL_isDrawingFile___block_invoke_2;
  v14[3] = &unk_1E806D988;
  v15 = *(a1 + 32);
  v10 = v7;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v13 performSyncBlock:v14];
}

- (void)prepareDataForDocumentAtURLForInsertion:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 lastPathComponent];
  v9 = [(MFComposeWebView *)self mimeTypeForFilename:v8];
  v10 = [v6 startAccessingSecurityScopedResource];
  v14 = 0;
  v11 = [MEMORY[0x1E69AD6B0] dataWithContentsOfURL:v6 options:1 error:&v14];
  v12 = v14;
  if (v10)
  {
    [v6 stopAccessingSecurityScopedResource];
  }

  if (!v11 || !v8 || !v9)
  {
    v13 = EMLogCompose();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413314;
      v16 = v6;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_1BE819000, v13, OS_LOG_TYPE_ERROR, "Error while preparing data for the document at url: %@\ndata: %@\nfileName: %@\nmimeType: %@\n%@", buf, 0x34u);
    }
  }

  if (v7)
  {
    v7[2](v7, v11, v8, v9);
  }
}

- (id)mimeTypeForFilename:(id)a3
{
  v3 = [MEMORY[0x1E69B15F0] mimeTypeForFileName:a3];
  if (![(__CFString *)v3 length])
  {

    v3 = @"application/octet-stream";
  }

  return v3;
}

- (void)setOriginalAttachmentInfo:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    objc_storeStrong(&self->_originalAttachmentWrappers, a3);
  }
}

- (void)showOriginalAttachments
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self->_originalAttachmentsWereRestored)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_originalAttachmentWrappers;
    v3 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v3)
    {
      v16 = *v25;
      do
      {
        v17 = v3;
        v4 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = v4;
          v5 = *(*(&v24 + 1) + 8 * v4);
          v6 = [v5 contentID];
          v7 = [v5 preferredFilename];
          v8 = [v5 mimeType];
          v9 = [v5 regularFileContents];
          v10 = [(MFComposeWebView *)self _bodyFieldProxy];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __43__MFComposeWebView_showOriginalAttachments__block_invoke;
          v19[3] = &unk_1E806D9D8;
          v19[4] = self;
          v11 = v9;
          v20 = v11;
          v12 = v7;
          v21 = v12;
          v13 = v8;
          v22 = v13;
          v14 = v6;
          v23 = v14;
          [v10 countDuplicatedAttachments:v12 completionHandler:v19];

          v4 = v18 + 1;
        }

        while (v17 != v18 + 1);
        v3 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v3);
    }

    self->_originalAttachmentsWereRestored = 1;
  }
}

void __43__MFComposeWebView_showOriginalAttachments__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  for (i = 0; i < [v4 intValue]; ++i)
  {
    [*(a1 + 32) replaceFilenamePlaceholderWithAttachment:*(a1 + 40) fileName:*(a1 + 48) mimeType:*(a1 + 56) contentID:*(a1 + 64)];
  }
}

- (void)insertDocumentWithData:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = EMLogCompose();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v13;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "Inserting document data with content ID %{public}@", buf, 0xCu);
  }

  if (v10 && v11 && ([(MFComposeWebView *)self _addInlineAttachmentWithData:v10 fileName:v11 type:v12 contentID:v13], v15 = objc_claimAutoreleasedReturnValue(), (v16 = v15) != 0))
  {
    v17 = [v15 className];
    v22 = [v17 isEqualToString:0x1F3CF38B8];

    objc_initWeak(buf, self);
    v18 = [(MFComposeWebView *)self _bodyFieldProxy];
    v19 = [v16 isSinglePagePDFFile];
    v20 = [v16 fileUTType];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__MFComposeWebView_insertDocumentWithData_fileName_mimeType_contentID___block_invoke;
    v23[3] = &unk_1E806DA00;
    objc_copyWeak(&v25, buf);
    v21 = v16;
    v24 = v21;
    [v18 insertAttachmentAsImage:v22 isSinglePagePDF:v19 contentType:v20 completionHandler:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = EMLogCompose();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MFComposeWebView insertDocumentWithData:fileName:mimeType:contentID:];
    }
  }
}

void __71__MFComposeWebView_insertDocumentWithData_fileName_mimeType_contentID___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) contentID];
    [WeakRetained[265] setObject:v4 forKeyedSubscript:v6];

    [WeakRetained composeBodyFieldDidChange];
    v5 = [WeakRetained mailComposeViewDelegate];
    [v5 didInsertAttachment:*(a1 + 32)];
  }
}

- (void)insertPhotoOrVideoWithAssetIdentifier:(id)a3 infoDictionary:(id)a4 completion:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DDE08]];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DE8E0]];
  v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DDE00]];
  v13 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DE960]];
  v14 = v10 != 0;
  v15 = v11 == 0;
  if (v14 && v15)
  {
    v16 = v10;
  }

  else
  {
    v16 = v11;
  }

  [(MFComposeWebView *)self _insertMediaWithAssetIdentifier:v17 mediaURL:v16 mediaType:v12 mediaData:v13 isVideo:v14 & v15 completion:v9];
}

- (void)insertMediaWithPhotoPickerItem:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 contentIdentifier];
  v8 = [v12 assetURL];
  v9 = [v12 contentType];
  v10 = [v9 identifier];
  v11 = [v12 assetData];
  -[MFComposeWebView _insertMediaWithAssetIdentifier:mediaURL:mediaType:mediaData:isVideo:completion:](self, "_insertMediaWithAssetIdentifier:mediaURL:mediaType:mediaData:isVideo:completion:", v7, v8, v10, v11, [v12 isVideo], v6);
}

- (void)_insertMediaWithAssetIdentifier:(id)a3 mediaURL:(id)a4 mediaType:(id)a5 mediaData:(id)a6 isVideo:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (v9)
  {
    v29 = v17;
    v19 = [(MFComposeWebView *)self _filenameForVideoAttachmentAtURL:v15];
    if (v16)
    {
      v20 = [MEMORY[0x1E6982C40] typeWithIdentifier:v16];
    }

    else
    {
      v20 = 0;
    }

    v25 = [v20 preferredMIMEType];
    v26 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:25];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke;
    v42[3] = &unk_1E806DA28;
    v42[4] = self;
    v43 = v15;
    v27 = v25;
    v44 = v27;
    v28 = v19;
    v45 = v28;
    v46 = v14;
    v47 = v18;
    [v26 performBlock:v42];

    v17 = v29;
  }

  else
  {
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__3;
    v40[4] = __Block_byref_object_dispose__3;
    v21 = v17;
    v41 = v21;
    if (!v15 || v21)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke_5;
      v30[3] = &unk_1E806DA50;
      v30[4] = self;
      v33 = v40;
      v31 = v14;
      v32 = v18;
      v24 = [MEMORY[0x1E699B978] mainThreadScheduler];
      [v24 performSyncBlock:v30];

      v23 = v31;
    }

    else
    {
      v22 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:25];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke_3;
      v34[3] = &unk_1E806DA78;
      v39 = v40;
      v35 = v15;
      v36 = self;
      v37 = v14;
      v38 = v18;
      [v22 performBlock:v34];

      v23 = v35;
    }

    _Block_object_dispose(v40, 8);
  }
}

void __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _makeAttachmentDataWithFileURL:*(a1 + 40) type:*(a1 + 48)];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke_2;
  v11[3] = &unk_1E806DA28;
  v12 = *(a1 + 32);
  v3 = v2;
  v13 = v3;
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v14 = v9;
  v15 = v8;
  v10 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v10 performSyncBlock:v11];
}

uint64_t __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) insertDocumentWithData:*(a1 + 40) fileName:*(a1 + 48) mimeType:*(a1 + 56) contentID:*(a1 + 64)];
  result = *(a1 + 72);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69AD6B0] dataWithContentsOfURL:*(a1 + 32)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke_4;
  v10[3] = &unk_1E806DA50;
  v5 = *(a1 + 64);
  v9 = *(a1 + 40);
  v6 = *(&v9 + 1);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v5;
  v11 = v9;
  v12 = v7;
  v8 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v8 performSyncBlock:v10];
}

uint64_t __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _insertDocumentFromData:*(*(*(a1 + 56) + 8) + 40) isImage:1 contentID:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _insertDocumentFromData:*(*(*(a1 + 56) + 8) + 40) isImage:1 contentID:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeMediaWithContentIdentifier:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  attachmentsByUniqueIdentifier = self->_attachmentsByUniqueIdentifier;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__MFComposeWebView_removeMediaWithContentIdentifier___block_invoke;
  v13[3] = &unk_1E806DAA0;
  v6 = v4;
  v14 = v6;
  v15 = &v23;
  v16 = &v17;
  [(NSMutableDictionary *)attachmentsByUniqueIdentifier enumerateKeysAndObjectsUsingBlock:v13];
  if (v24[5] && v18[5])
  {
    v7 = [(MFComposeWebView *)self _attachmentForIdentifier:?];
    v8 = [(MFComposeWebView *)self _bodyFieldProxy];
    v9 = v18[5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__MFComposeWebView_removeMediaWithContentIdentifier___block_invoke_2;
    v11[3] = &unk_1E806C520;
    v11[4] = self;
    v10 = v7;
    v12 = v10;
    [v8 removeMediaAttachment:v9 completionHandler:v11];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

void __53__MFComposeWebView_removeMediaWithContentIdentifier___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = [v8 contentID];
  if ([v9 isEqualToString:a1[4]])
  {
    v10 = [v8 isMediaFile];

    if (v10)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a3);
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (void)_insertDocumentFromData:(id)a3 isImage:(BOOL)a4 contentID:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = v8;
    v18 = 0;
    v19 = 0;
    v11 = [(MFComposeWebView *)self _getExtensionAndMimeTypeForImageData:v10 outExtension:&v19 outMimeType:&v18];
    v12 = v19;
    v13 = v18;
    if (v11)
    {
      v14 = MEMORY[0x1E696AEC0];
      if (v6)
      {
        imageCount = self->_imageCount;
        self->_imageCount = imageCount + 1;
        v16 = [v14 stringWithFormat:@"image%lu.%@", imageCount, v12];
      }

      else
      {
        v17 = [(MFComposeWebView *)self nextAttachmentName];
        v16 = [v14 stringWithFormat:@"%@.%@", v17, v12];
      }

      [(MFComposeWebView *)self insertDocumentWithData:v10 fileName:v16 mimeType:v13 contentID:v9];
    }

    else
    {
      v16 = 0;
    }
  }
}

- (id)contentIDsForMediaAttachments
{
  v2 = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier allValues];
  v3 = [v2 ef_compactMap:&__block_literal_global_416];

  return v3;
}

id __49__MFComposeWebView_contentIDsForMediaAttachments__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isMediaFile])
  {
    v3 = [v2 contentID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateInputAssistantItem
{
  v3 = [(MFComposeWebView *)self composeCoordinator];

  if (!v3)
  {
    if ([(MFComposeWebView *)self _useComposeToolbar])
    {
      v15 = [(MFComposeWebView *)self composeInputAccessoryView];
      v4 = [(MFComposeWebView *)self _toolbarItems];
      [v15 updateToolbarItems:v4];
    }

    else
    {
      if (self)
      {
        if (self->__didUpdateInputAssistantItem)
        {
          return;
        }

        self->__didUpdateInputAssistantItem = 1;
      }

      v5 = [(MFComposeWebView *)self inputAssistantItem];
      [v5 _setShowsBarButtonItemsInline:1];
      v6 = [(MFComposeWebView *)self _mailComposeEditingLeadingInputAssistantGroups];
      if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
      {
        v7 = [v5 leadingBarButtonGroups];
        v8 = [v7 firstObject];
        if ([v8 _isSystemGroup])
        {
          v9 = [v8 _setShouldAlwaysCollapse:1];
        }

        else
        {
          v12 = EMLogCompose();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [MFComposeWebView updateInputAssistantItem];
          }
        }

        v13 = __44__MFComposeWebView_updateInputAssistantItem__block_invoke(v9, v7, v6);
        [v5 setLeadingBarButtonGroups:v13];
      }

      else
      {
        [v5 setLeadingBarButtonGroups:v6];
        v10 = [(MFComposeWebView *)self appleIntelligenceGroup];
        if (v10)
        {
          v11 = 44.0;
        }

        else
        {
          v11 = 64.0;
        }

        [v5 _setMarginOverride:v11];
      }

      v14 = [(MFComposeWebView *)self _mailComposeEditingTrailingInputAssistantGroups];
      if ([v14 count])
      {
        [v5 setTrailingBarButtonGroups:v14];
      }
    }
  }
}

id __44__MFComposeWebView_updateInputAssistantItem__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  v7 = [v5 count];
  if (v6 && v7)
  {
    v8 = [v4 arrayByAddingObjectsFromArray:v5];
  }

  else
  {
    if (v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = v5;
    }

    v8 = v9;
  }

  v10 = v8;

  return v10;
}

- (void)getHTMLDataObjectRemovingSignature:(BOOL)a3 removeQuotes:(BOOL)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [(MFComposeWebView *)self _bodyFieldProxy];
  v10 = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__MFComposeWebView_getHTMLDataObjectRemovingSignature_removeQuotes_completion___block_invoke;
  v12[3] = &unk_1E806DB08;
  v14 = a4;
  v11 = v8;
  v13 = v11;
  [v9 htmlStringsAttachmentURLsAndPlainTextAlternativeRemovingSignature:v6 attachmentInfoByIdentifier:v10 completion:v12];
}

void __79__MFComposeWebView_getHTMLDataObjectRemovingSignature_removeQuotes_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a2;
  v9 = a4;
  v10 = a5;
  v11 = [a3 ef_map:&__block_literal_global_422];
  v12 = plainTextDocumentFromStringsAndQuoteLevels(v9, *(a1 + 40));
  v13 = [objc_alloc(MEMORY[0x1E69B1680]) initWithContentIDs:v10];
  v14 = [[MFHTMLDataObject alloc] initWithHTMLString:v15 otherHTMLStringsAndAttachments:v11 plainTextAlternative:v12 quotedAttachmentsInfo:v13];
  (*(*(a1 + 32) + 16))();
}

id __79__MFComposeWebView_getHTMLDataObjectRemovingSignature_removeQuotes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E69B15D0] defaultManager];
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v2];
    v5 = [v3 attachmentForCID:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)placeCaretAtStartOfBodyField
{
  v2 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v2 placeCaretAtStartOfBody];
}

- (id)htmlString
{
  v3 = EMLogCompose();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "MFComposeWebView - htmlString", buf, 2u);
  }

  v4 = [MEMORY[0x1E699B868] promise];
  v5 = [(MFComposeWebView *)self _bodyFieldProxy];
  v6 = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__MFComposeWebView_htmlString__block_invoke;
  v10[3] = &unk_1E806DB30;
  v7 = v4;
  v11 = v7;
  [v5 htmlStringUsingAttachmentInfoByIdentifier:v6 completionHandler:v10];

  v8 = [v7 future];

  return v8;
}

void __30__MFComposeWebView_htmlString__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = EMLogCompose();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Finished retrieving the HTML string", v5, 2u);
  }

  [*(a1 + 32) finishWithResult:v3];
}

- (id)containsRichText
{
  v3 = EMLogCompose();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "MFComposeWebView - containsRichText", buf, 2u);
  }

  v4 = [MEMORY[0x1E699B868] promise];
  v5 = [(MFComposeWebView *)self _bodyFieldProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__MFComposeWebView_containsRichText__block_invoke;
  v9[3] = &unk_1E806D6F0;
  v6 = v4;
  v10 = v6;
  [v5 containsRichText:v9];

  v7 = [v6 future];

  return v7;
}

void __36__MFComposeWebView_containsRichText__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = EMLogCompose();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Does the webview contain rich text? Answer: %{BOOL}d", v7, 8u);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v5 finishWithResult:v6];
}

- (CGRect)rectOfElementWithID:(id)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setPrefersFirstLineSelection
{
  v2 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v2 forceNextSelectionFromSecondToFirstLine];
}

- (void)prependMarkupString:(id)a3 quote:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  if (!v12)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MFComposeWebView.m" lineNumber:1341 description:{@"string is nil, JavaScript will crash"}];
  }

  v7 = [(MFComposeWebView *)self _bodyFieldProxy];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v9 = [WeakRetained compositionType];
  v10 = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  [v7 addMarkupString:v12 quote:v4 emptyFirst:0 prepended:1 composeType:v9 attachmentInfoByURL:v10];
}

- (void)appendMarkupString:(id)a3 quote:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  if (!v12)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MFComposeWebView.m" lineNumber:1346 description:{@"string is nil, JavaScript will crash"}];
  }

  v7 = [(MFComposeWebView *)self _bodyFieldProxy];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v9 = [WeakRetained compositionType];
  v10 = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  [v7 addMarkupString:v12 quote:v4 emptyFirst:0 prepended:0 composeType:v9 attachmentInfoByURL:v10];
}

- (void)addMailAttributesBeforeDisplayHidingTrailingEmptyQuotes:(BOOL)a3 shouldQuote:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v6 addMailAttributesBeforeDisplayHidingTrailingEmptyQuotes:v5 shouldQuote:v4];
}

- (void)prependString:(id)a3
{
  v9 = a3;
  v4 = [(MFComposeWebView *)self _bodyFieldProxy];
  v5 = [v9 mf_stringByEscapingHTMLCodes];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v7 = [WeakRetained compositionType];
  v8 = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  [v4 addMarkupString:v5 quote:0 emptyFirst:0 prepended:1 composeType:v7 attachmentInfoByURL:v8];
}

- (void)prependPreamble:(id)a3 quote:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v6 prependPreamble:v7 quote:v4 layoutDirection:{objc_msgSend(*MEMORY[0x1E69DDA98], "userInterfaceLayoutDirection")}];
}

- (void)replaceImagesIfNecessary
{
  v2 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v2 replaceImagesIfNecessary];
}

- (void)stripCustomBodyIdentifiers
{
  v2 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v2 stripCustomBodyIdentifiers];
}

- (void)setReplacementFilenamesByContentID:(id)a3
{
  v5 = a3;
  v4 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v4 setReplacementFilenamesByContentID:v5];
}

- (void)setMarkupString:(id)a3 quote:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(MFComposeWebView *)self _bodyFieldProxy];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v8 = [WeakRetained compositionType];
  v9 = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  [v6 addMarkupString:v10 quote:v4 emptyFirst:1 prepended:1 composeType:v8 attachmentInfoByURL:v9];
}

- (void)replaceAttachment:(id)a3 withDocumentAtURL:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v25 = a5;
  v10 = EMLogCompose();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 ef_publicDescription];
    *buf = 134218242;
    v27 = self;
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&dword_1BE819000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Replacing attachment: %{public}@", buf, 0x16u);
  }

  v12 = [v8 mimeType];
  v13 = [(MFComposeWebView *)self _makeAttachmentDataWithFileURL:v9 type:v12];

  v14 = [v8 fileName];
  if (v13 && ([v8 mimeType], v15 = objc_claimAutoreleasedReturnValue(), -[MFComposeWebView _addInlineAttachmentWithData:fileName:type:contentID:](self, "_addInlineAttachmentWithData:fileName:type:contentID:", v13, v14, v15, 0), v16 = objc_claimAutoreleasedReturnValue(), v15, v16))
  {
    WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
    v24 = [WeakRetained compositionContext];

    [v24 removeAttachment:v8];
    v18 = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier allKeysForObject:v8];
    v19 = [v18 firstObject];

    v20 = [(MFComposeWebView *)self _attachmentForIdentifier:v19];
    [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier setObject:v16 forKeyedSubscript:v19];
    v21 = [v16 fileWrapperUsingFetchedLocalData];
    v22 = [v8 fileUTType];
    [v20 setFileWrapper:v21 contentType:v22 completion:0];

    v23 = [(MFComposeWebView *)self mailComposeViewDelegate];
    [v23 didInsertAttachment:v16];

    if (v25)
    {
      v25[2](v25, v16);
    }
  }

  else
  {
    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MFComposeWebView replaceAttachment:withDocumentAtURL:completion:];
    }
  }
}

- (void)removeAllAttachments
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v7 = [WeakRetained compositionContext];

  v4 = [v7 attachments];
  v5 = [v4 ef_notEmpty];

  if (v5)
  {
    [v7 removeAllAttachments];
    v6 = [(MFComposeWebView *)self mailComposeViewDelegate];
    [v6 didRemoveAttachment:0];
  }
}

- (void)_changeQuoteLevelBy:(int64_t)a3
{
  v5 = [(MFComposeWebView *)self _bodyFieldProxy];
  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v4 = [bundle_bundle localizedStringForKey:@"UNDO_QUOTE_LEVEL" value:&stru_1F3CF3758 table:@"Main"];
  [v5 changeQuoteLevelBy:a3 withUndoActionName:v4];
}

- (id)_actionWithTitle:(void *)a3 glyphName:(int)a4 usePrivateCatalog:(void *)a5 handler:
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    if (a4)
    {
      [MEMORY[0x1E69DCAB8] _systemImageNamed:v10];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:v10];
    }
    v12 = ;
    v13 = MEMORY[0x1E69DC628];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__MFComposeWebView__actionWithTitle_glyphName_usePrivateCatalog_handler___block_invoke;
    v15[3] = &unk_1E806DB58;
    v16 = v11;
    a1 = [v13 actionWithTitle:v9 image:v12 identifier:0 handler:v15];
  }

  return a1;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFComposeWebView;
  [(MFComposeWebView *)&v5 buildMenuWithBuilder:v4];
  [(MFComposeWebView *)self _addContextMenusToBuilder:v4];
}

- (void)_addContextMenusToBuilder:(id)a3
{
  v59[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 system];
  v6 = [MEMORY[0x1E69DCC88] contextSystem];
  v7 = v6;
  if (v5 == v6)
  {
    v8 = [(MFComposeWebView *)self _contentViewIsFirstResponder];

    if (v8)
    {
      objc_initWeak(&location, self);
      v43 = [MEMORY[0x1E695DF70] array];
      v9 = _EFLocalizedString();
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __46__MFComposeWebView__addContextMenusToBuilder___block_invoke;
      v56[3] = &unk_1E806DB80;
      objc_copyWeak(&v57, &location);
      v41 = [(MFComposeWebView *)self _actionWithTitle:v9 glyphName:@"doc.on.clipboard" handler:v56];

      [v43 addObject:v41];
      if ([(MFComposeWebView *)self _shouldShowAddLinkButton])
      {
        v10 = _EFLocalizedString();
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_2;
        v54[3] = &unk_1E806DB80;
        objc_copyWeak(&v55, &location);
        v11 = [(MFComposeWebView *)self _actionWithTitle:v10 glyphName:@"link" handler:v54];

        [v43 addObject:v11];
        objc_destroyWeak(&v55);
      }

      v40 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3CF3758 image:0 identifier:0 options:1 children:v43];
      [v4 insertChildMenu:? atEndOfMenuForIdentifier:?];
      if (bundle_onceToken != -1)
      {
        [MFComposeWebView _addContextMenusToBuilder:];
      }

      v12 = bundle_bundle;
      v13 = [v12 localizedStringForKey:@"INCREASE" value:&stru_1F3CF3758 table:@"Main"];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_3;
      v52[3] = &unk_1E806DB80;
      objc_copyWeak(&v53, &location);
      v42 = [(MFComposeWebView *)self _actionWithTitle:v13 glyphName:@"increase.quotelevel" handler:v52];

      [v42 setAttributes:8];
      if (bundle_onceToken != -1)
      {
        [MFComposeWebView _addContextMenusToBuilder:];
      }

      v14 = bundle_bundle;
      v15 = [v14 localizedStringForKey:@"DECREASE" value:&stru_1F3CF3758 table:@"Main"];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_4;
      v50[3] = &unk_1E806DB80;
      objc_copyWeak(&v51, &location);
      v16 = [(MFComposeWebView *)self _actionWithTitle:v15 glyphName:@"decrease.quotelevel" handler:v50];

      [v16 setAttributes:8];
      v17 = MEMORY[0x1E69DCC60];
      if (bundle_onceToken != -1)
      {
        [MFComposeWebView _addContextMenusToBuilder:];
      }

      v18 = bundle_bundle;
      v19 = [v18 localizedStringForKey:@"QUOTE_LEVEL" value:&stru_1F3CF3758 table:@"Main"];
      v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"quotelevel"];
      v59[0] = v16;
      v59[1] = v42;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
      v22 = [v17 menuWithTitle:v19 image:v20 identifier:0 options:0 children:v21];

      v23 = *MEMORY[0x1E69DE190];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_5;
      v48[3] = &unk_1E806DBA8;
      v39 = v22;
      v49 = v39;
      [v4 replaceChildrenOfMenuForIdentifier:v23 fromChildrenBlock:v48];
      v24 = [MEMORY[0x1E695E0F0] mutableCopy];
      if ([(MFComposeWebView *)self _shouldShowMarkupButton])
      {
        if (bundle_onceToken != -1)
        {
          [MFComposeWebView _addContextMenusToBuilder:];
        }

        v25 = bundle_bundle;
        v26 = [v25 localizedStringForKey:@"MARKUP_ATTACHMENT" value:&stru_1F3CF3758 table:@"Main"];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_6;
        v46[3] = &unk_1E806DB80;
        objc_copyWeak(&v47, &location);
        v27 = [(MFComposeWebView *)self _actionWithTitle:v26 glyphName:@"pencil.tip.crop.circle" handler:v46];

        [v24 addObject:v27];
        objc_destroyWeak(&v47);
      }

      if (bundle_onceToken != -1)
      {
        [MFComposeWebView _addContextMenusToBuilder:];
      }

      v28 = bundle_bundle;
      v29 = [v28 localizedStringForKey:@"INSERT_PHOTO_OR_VIDEO" value:&stru_1F3CF3758 table:@"Main"];
      v30 = [(MFComposeWebView *)self _insertPhotoActionWithTitle:v29];
      [v24 ef_addOptionalObject:v30];

      if (bundle_onceToken != -1)
      {
        [MFComposeWebView _addContextMenusToBuilder:];
      }

      v31 = bundle_bundle;
      v32 = [v31 localizedStringForKey:@"IMPORT_DOCUMENT" value:&stru_1F3CF3758 table:@"Main"];
      v33 = [(MFComposeWebView *)&self->super.super.super.super.isa _importDocumentActionWithTitle:v32];
      [v24 ef_addOptionalObject:v33];

      v34 = [(MFComposeWebView *)self _scanDocumentAction];
      [v24 ef_addOptionalObject:v34];

      if (bundle_onceToken != -1)
      {
        [MFComposeWebView _addContextMenusToBuilder:];
      }

      v35 = bundle_bundle;
      v36 = [v35 localizedStringForKey:@"INSERT_DRAWING_BUTTON" value:&stru_1F3CF3758 table:@"Main"];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_7;
      v44[3] = &unk_1E806DB80;
      objc_copyWeak(&v45, &location);
      v37 = [(MFComposeWebView *)self _actionWithTitle:v36 glyphName:@"pencil.tip.crop.circle.badge.plus" handler:v44];

      [v24 addObject:v37];
      v38 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3CF3758 image:0 identifier:0 options:1 children:v24];
      [v4 insertChildMenu:v38 atEndOfMenuForIdentifier:v23];

      objc_destroyWeak(&v45);
      objc_destroyWeak(&v51);

      objc_destroyWeak(&v53);
      objc_destroyWeak(&v57);

      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __46__MFComposeWebView__addContextMenusToBuilder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pasteAndMatchStyleKeyCommandInvoked:WeakRetained];
}

void __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapAddLink:WeakRetained];
}

void __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _increaseQuoteLevel:WeakRetained];
}

void __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _decreaseQuoteLevel:WeakRetained];
}

id __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 arrayByAddingObject:*(a1 + 32)];

  return v2;
}

void __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapMarkupButton:WeakRetained];
}

- (id)_insertPhotoActionWithTitle:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (MFIsAuthorizedToAccessPhotoLibrary() && ([a1 _shouldShowInsertPhotosButton] & 1) != 0)
    {
      objc_initWeak(&location, a1);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __48__MFComposeWebView__insertPhotoActionWithTitle___block_invoke;
      v5[3] = &unk_1E806DB80;
      objc_copyWeak(&v6, &location);
      a1 = [(MFComposeWebView *)a1 _actionWithTitle:v3 glyphName:@"photo.on.rectangle" handler:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)_importDocumentActionWithTitle:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 252);
    v5 = [WeakRetained canShowAttachmentPicker];

    if (v5)
    {
      objc_initWeak(&location, a1);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __51__MFComposeWebView__importDocumentActionWithTitle___block_invoke;
      v7[3] = &unk_1E806DB80;
      objc_copyWeak(&v8, &location);
      a1 = [(MFComposeWebView *)a1 _actionWithTitle:v3 glyphName:@"doc" handler:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)_scanDocumentAction
{
  v1 = a1;
  if (a1)
  {
    if ([MEMORY[0x1E699A340] isSupported])
    {
      objc_initWeak(&location, v1);
      if (bundle_onceToken != -1)
      {
        [MFComposeWebView _addContextMenusToBuilder:];
      }

      v2 = [bundle_bundle localizedStringForKey:@"SCAN_DOCUMENT_MENU_ITEM" value:&stru_1F3CF3758 table:@"Main"];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __39__MFComposeWebView__scanDocumentAction__block_invoke;
      v4[3] = &unk_1E806DB80;
      objc_copyWeak(&v5, &location);
      v1 = [(MFComposeWebView *)v1 _actionWithTitle:v2 glyphName:@"doc.text.viewfinder" handler:v4];
      objc_destroyWeak(&v5);

      objc_destroyWeak(&location);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

void __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapInsertDrawing:WeakRetained];
}

- (void)setDirty:(BOOL)a3
{
  v3 = a3;
  ++self->_dirtyChangeIgnoreCount;
  self->_dirty = a3;
  objc_initWeak(&location, self);
  v5 = [(MFComposeWebView *)self _bodyFieldProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__MFComposeWebView_setDirty___block_invoke;
  v6[3] = &unk_1E806DB80;
  objc_copyWeak(&v7, &location);
  [v5 setDirty:v3 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __29__MFComposeWebView_setDirty___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    --WeakRetained[259];
  }
}

- (id)nextAttachmentName
{
  v3 = MEMORY[0x1E696AEC0];
  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v4 = bundle_bundle;
  v5 = [v4 localizedStringForKey:@"DEFAULT_ATTACHMENT_NAME" value:&stru_1F3CF3758 table:@"Main"];
  v6 = self->_attachmentSequenceNumber + 1;
  self->_attachmentSequenceNumber = v6;
  v7 = [v3 localizedStringWithFormat:@"%@ %ld", v5, v6];

  return v7;
}

- (id)inputView
{
  v3 = [(MFComposeWebView *)self inputViewForPreservingFocus];

  if (v3)
  {
    v4 = [(MFComposeWebView *)self inputViewForPreservingFocus];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MFComposeWebView;
    v4 = [(MFComposeWebView *)&v6 inputView];
  }

  return v4;
}

- (void)retainFocusAfterPresenting
{
  v3 = objc_alloc(MEMORY[0x1E69DCB00]);
  v5 = [v3 initWithFrame:0 inputViewStyle:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setUserInteractionEnabled:0];
  [v5 setAllowsSelfSizing:1];
  [(MFComposeWebView *)self setInputViewForPreservingFocus:v5];
  v4 = [(MFComposeWebView *)self firstResponder];
  [v4 reloadInputViews];
}

- (void)releaseFocusAfterDismissing:(BOOL)a3
{
  if (a3)
  {
    v5 = self;
    [(MFComposeWebView *)v5 resignFirstResponder];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__MFComposeWebView_releaseFocusAfterDismissing___block_invoke;
    block[3] = &unk_1E806C520;
    block[4] = v5;
    v8 = v5;
    v4 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(MFComposeWebView *)self setInputViewForPreservingFocus:0];
    v6 = [(MFComposeWebView *)self firstResponder];
    [v6 reloadInputViews];
  }
}

uint64_t __48__MFComposeWebView_releaseFocusAfterDismissing___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInputViewForPreservingFocus:0];
  v2 = *(a1 + 40);

  return [v2 becomeFirstResponder];
}

- (id)_toolbarItems
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
  [v3 addObject:v4];

  v5 = [(MFComposeWebView *)&self->super.super.super.super.isa _formattingAction];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v5];
    [v3 addObject:v6];
  }

  v7 = [(MFComposeWebView *)self _showWritingToolsAction];
  if (v7)
  {
    v8 = [(MFComposeWebView *)self _barButtonItemWithAction:v7 target:self selector:sel__didTapShowWritingTools_];
    [v3 addObject:v8];
  }

  v9 = [MEMORY[0x1E695DF70] array];
  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v10 = [bundle_bundle localizedStringForKey:@"TAKE_PHOTO_OR_VIDEO" value:&stru_1F3CF3758 table:@"Main"];
  v11 = [(MFComposeWebView *)self _insertPhotoFromCameraActionWithTitle:v10];
  [v9 ef_addOptionalObject:v11];

  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v12 = [bundle_bundle localizedStringForKey:@"PHOTO_LIBRARY" value:&stru_1F3CF3758 table:@"Main"];
  v13 = [(MFComposeWebView *)self _insertPhotoActionWithTitle:v12];
  [v9 ef_addOptionalObject:v13];

  v14 = [(MFComposeWebView *)self _scanDocumentAction];
  [v9 ef_addOptionalObject:v14];

  v15 = [(MFComposeWebView *)self _captureTextFromCameraAction];
  if (v15)
  {
    [v9 ef_addOptionalObject:v15];
  }

  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v16 = [bundle_bundle localizedStringForKey:@"IMPORT_DOCUMENT" value:&stru_1F3CF3758 table:@"Main"];
  v17 = [(MFComposeWebView *)&self->super.super.super.super.isa _importDocumentActionWithTitle:v16];
  [v9 ef_addOptionalObject:v17];

  v18 = [MEMORY[0x1E69DCC60] menuWithChildren:v9];
  if ([v9 count])
  {
    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v19 = [bundle_bundle localizedStringForKey:@"INSERT_ATTACHMENT_ACTIONS" value:&stru_1F3CF3758 table:@"Main"];
    v20 = [(MFComposeWebView *)self _barButtonItemWithImageName:v19 title:0 target:0 selector:v18 menu:?];

    [v3 addObject:v20];
  }

  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v21 = bundle_bundle;
  v22 = [v21 localizedStringForKey:@"INSERT_DRAWING_MENU_ITEM" value:&stru_1F3CF3758 table:@"Main"];
  v23 = [(MFComposeWebView *)self _markupActionWithTitle:v22];
  v24 = [(MFComposeWebView *)self _barButtonItemWithAction:v23 target:self selector:sel__didTapInsertDrawingOrMarkupButton_];

  [v3 addObject:v24];

  return v3;
}

- (id)_formattingAction
{
  if (a1 && (WeakRetained = objc_loadWeakRetained(a1 + 252), v3 = objc_opt_respondsToSelector(), WeakRetained, (v3 & 1) != 0))
  {
    objc_initWeak(&location, a1);
    v4 = [MEMORY[0x1E69DCAB8] mf_assistantBarSystemImageNamed:@"textformat"];
    v5 = MEMORY[0x1E69DC628];
    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _addContextMenusToBuilder:];
    }

    v6 = [bundle_bundle localizedStringForKey:@"FORMAT_TEXT" value:&stru_1F3CF3758 table:@"Main"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__MFComposeWebView__formattingAction__block_invoke;
    v9[3] = &unk_1E806D678;
    objc_copyWeak(&v10, &location);
    v7 = [v5 actionWithTitle:v6 image:v4 identifier:0 handler:v9];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_showWritingToolsAction
{
  v1 = a1;
  if (a1)
  {
    if ([MEMORY[0x1E69DD318] isWritingToolsAvailable])
    {
      objc_initWeak(&location, v1);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __43__MFComposeWebView__showWritingToolsAction__block_invoke;
      v3[3] = &unk_1E806DB80;
      objc_copyWeak(&v4, &location);
      v1 = [(MFComposeWebView *)v1 _actionWithTitle:@"apple.writing.tools" glyphName:1 usePrivateCatalog:v3 handler:?];
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)_barButtonItemWithAction:(void *)a3 target:(uint64_t)a4 selector:
{
  v7 = a2;
  v8 = a3;
  v9 = 0;
  if (a1 && v7)
  {
    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    v11 = [v7 title];
    v12 = [v7 image];
    v9 = [v10 initWithTitle:v11 image:v12 target:v8 action:a4 menu:0];
  }

  return v9;
}

- (id)_insertPhotoFromCameraActionWithTitle:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if ([a1 _shouldShowInsertPhotosButton])
    {
      objc_initWeak(&location, a1);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __58__MFComposeWebView__insertPhotoFromCameraActionWithTitle___block_invoke;
      v5[3] = &unk_1E806DB80;
      objc_copyWeak(&v6, &location);
      a1 = [(MFComposeWebView *)a1 _actionWithTitle:v3 glyphName:@"camera" handler:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)_captureTextFromCameraAction
{
  if (a1)
  {
    v1 = [a1 firstResponder];
    if ([v1 canPerformAction:sel_captureTextFromCamera_ withSender:0])
    {
      v2 = [MEMORY[0x1E69DC628] captureTextFromCameraActionForResponder:v1 identifier:0];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_barButtonItemWithImageName:(void *)a3 title:(void *)a4 target:(uint64_t)a5 selector:(void *)a6 menu:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (a1)
  {
    v15 = [MEMORY[0x1E69DCAB8] mf_assistantBarSystemImageNamed:v11];
    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v12 image:v15 target:v13 action:a5 menu:v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_markupActionWithTitle:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__MFComposeWebView__markupActionWithTitle___block_invoke;
    v5[3] = &unk_1E806DB80;
    objc_copyWeak(&v6, &location);
    a1 = [(MFComposeWebView *)a1 _actionWithTitle:v3 glyphName:@"pencil.tip.crop.circle" handler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return a1;
}

- (id)_mailComposeEditingLeadingInputAssistantGroups
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MFComposeWebView *)&self->super.super.super.super.isa _formattingAction];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v4];
    v6 = objc_alloc(MEMORY[0x1E69DC720]);
    v17[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v8 = [v6 initWithBarButtonItems:v7 representativeItem:0];

    [v3 addObject:v8];
  }

  v9 = [(MFComposeWebView *)self _showWritingToolsAction];
  if (v9)
  {
    v10 = [(MFComposeWebView *)self _barButtonItemWithAction:v9 target:self selector:sel__didTapShowWritingTools_];
    v11 = objc_alloc(MEMORY[0x1E69DC720]);
    v16 = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v13 = [v11 initWithBarButtonItems:v12 representativeItem:0];

    [(MFComposeWebView *)self setAppleIntelligenceGroup:v13];
    [v3 addObject:v13];
  }

  [(MFComposeWebView *)self set_leadingInputAssistantItemGroups:v3];
  v14 = [(MFComposeWebView *)self _leadingInputAssistantItemGroups];

  return v14;
}

- (id)_mailComposeEditingTrailingInputAssistantGroups
{
  v37[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  if (WeakRetained)
  {
    v35 = [MEMORY[0x1E695DF70] array];
    v3 = [MEMORY[0x1E695DF70] array];
    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v4 = bundle_bundle;
    v5 = [v4 localizedStringForKey:@"TAKE_PHOTO_OR_VIDEO" value:&stru_1F3CF3758 table:@"Main"];
    v6 = [(MFComposeWebView *)self _insertPhotoFromCameraActionWithTitle:v5];
    v7 = [(MFComposeWebView *)self _barButtonItemWithAction:v6 target:self selector:sel__didTapCameraButton_];

    v34 = v7;
    [v3 ef_addOptionalObject:v7];
    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v8 = bundle_bundle;
    v9 = [v8 localizedStringForKey:@"PHOTO_LIBRARY" value:&stru_1F3CF3758 table:@"Main"];
    v10 = [(MFComposeWebView *)self _insertPhotoActionWithTitle:v9];
    v11 = [(MFComposeWebView *)self _barButtonItemWithAction:v10 target:self selector:sel__didTapInsertPhotoButton_];

    v33 = v11;
    [v3 ef_addOptionalObject:v11];
    v12 = [(MFComposeWebView *)self _scanDocumentAction];
    v13 = [(MFComposeWebView *)self _barButtonItemWithAction:v12 target:self selector:sel__scanDocumentCommandInvoked_];

    v32 = v13;
    [v3 ef_addOptionalObject:v13];
    v14 = [(MFComposeWebView *)self textFromCameraButtonItem];
    [v3 ef_addOptionalObject:v14];

    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v15 = bundle_bundle;
    v16 = [v15 localizedStringForKey:@"IMPORT_DOCUMENT" value:&stru_1F3CF3758 table:@"Main"];
    v17 = [(MFComposeWebView *)&self->super.super.super.super.isa _importDocumentActionWithTitle:v16];
    v18 = [(MFComposeWebView *)self _barButtonItemWithAction:v17 target:self selector:sel__importDocumentCommandInvoked_];

    [(MFComposeWebView *)self setDocumentItem:v18];
    [v3 ef_addOptionalObject:v18];
    if ([v3 count])
    {
      if (bundle_onceToken != -1)
      {
        [MFComposeWebView _changeQuoteLevelBy:];
      }

      v19 = bundle_bundle;
      v20 = [v19 localizedStringForKey:@"INSERT_ATTACHMENT_ACTIONS" value:&stru_1F3CF3758 table:@"Main"];
      v21 = [(MFComposeWebView *)self _barButtonItemWithImageName:v20 title:0 target:0 selector:?];

      v22 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v3 representativeItem:v21];
      [v22 _setShouldAlwaysCollapse:1];
      [v35 addObject:v22];
      [(MFComposeWebView *)self setInsertAttachmentGroup:v22];
    }

    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v23 = bundle_bundle;
    v24 = [v23 localizedStringForKey:@"INSERT_DRAWING_MENU_ITEM" value:&stru_1F3CF3758 table:@"Main"];
    v25 = [(MFComposeWebView *)self _markupActionWithTitle:v24];
    v26 = [(MFComposeWebView *)self _barButtonItemWithAction:v25 target:self selector:sel__didTapInsertDrawingOrMarkupButton_];

    v27 = objc_alloc(MEMORY[0x1E69DC720]);
    v37[0] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v29 = [v27 initWithBarButtonItems:v28 representativeItem:0];

    [v35 addObject:v29];
    [(MFComposeWebView *)self set_trailingInputAssistantItemGroups:v35];
  }

  v30 = [(MFComposeWebView *)self _trailingInputAssistantItemGroups];

  return v30;
}

- (id)_barButtonItemWithImageName:(void *)a3 title:(void *)a4 target:(uint64_t)a5 selector:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = [(MFComposeWebView *)a1 _barButtonItemWithImageName:v9 title:v10 target:v11 selector:a5 menu:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __37__MFComposeWebView__formattingAction__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v9 sender];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = WeakRetained;
    }

    v7 = v6;

    [WeakRetained donateHasUsedAttachment];
    v8 = [WeakRetained mailComposeViewDelegate];
    [v8 showStyleSelector:v7];
  }
}

void __48__MFComposeWebView__insertPhotoActionWithTitle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapInsertPhotoButton:WeakRetained];
}

void __58__MFComposeWebView__insertPhotoFromCameraActionWithTitle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapCameraButton:WeakRetained];
}

void __39__MFComposeWebView__scanDocumentAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scanDocumentCommandInvoked:WeakRetained];
}

void __51__MFComposeWebView__importDocumentActionWithTitle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _importDocumentCommandInvoked:WeakRetained];
}

void __43__MFComposeWebView__markupActionWithTitle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapInsertDrawingOrMarkupButton:WeakRetained];
}

void __43__MFComposeWebView__showWritingToolsAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapShowWritingTools:WeakRetained];
}

- (void)_didTapCameraButton:(id)a3
{
  v5 = a3;
  [(MFComposeWebView *)self donateHasUsedAttachment];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained showPhotoPickerWithSourceType:1 fromSource:v5];
}

- (void)_didTapMarkupButton:(id)a3
{
  if ([(MFComposeWebView *)self _shouldShowMarkupButton])
  {

    [(MFComposeWebView *)self markupSelectedAttachment];
  }
}

- (void)_didTapInsertPhotoButton:(id)a3
{
  v5 = a3;
  [(MFComposeWebView *)self donateHasUsedAttachment];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained showPhotoPickerWithSourceType:0 fromSource:v5];
}

- (void)_didTapInsertDrawingOrMarkupButton:(id)a3
{
  [(MFComposeWebView *)self donateHasUsedAttachment];
  if ([(MFComposeWebView *)self _shouldShowMarkupButton])
  {

    [(MFComposeWebView *)self markupSelectedAttachment];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
    [WeakRetained insertDrawing];
  }
}

- (void)_didTapInsertDrawing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained insertDrawing];
}

- (void)_importDocumentCommandInvoked:(id)a3
{
  [(MFComposeWebView *)self donateHasUsedAttachment];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained importDocument];
}

- (void)_scanDocumentCommandInvoked:(id)a3
{
  [(MFComposeWebView *)self donateHasUsedAttachment];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained scanDocument];
}

- (void)_removeInlineAttachment:(id)a3
{
  v13 = a3;
  v4 = [(MFComposeWebView *)self undoManager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 prepareWithInvocationTarget:self];
    v7 = [v13 fetchDataSynchronously:0];
    v8 = [v13 fileName];
    v9 = [v13 mimeType];
    v10 = [v6 _addInlineAttachmentWithData:v7 fileName:v8 type:v9 contentID:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v12 = [WeakRetained compositionContext];
  [v12 removeAttachment:v13];
}

- (void)_increaseQuoteLevelKeyCommandInvoked:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained changeQuoteLevel:1];
}

- (void)_decreaseQuoteLevelKeyCommandInvoked:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained changeQuoteLevel:-1];
}

- (void)_didTapAddLink:(id)a3
{
  v4 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v4 setEditLinkFlag];

  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MFComposeWebView__didTapAddLink___block_invoke;
  v6[3] = &unk_1E806DB30;
  v6[4] = self;
  [WeakRetained addLink:v6];
}

void __35__MFComposeWebView__didTapAddLink___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] ef_urlWithString:v3];
    if (v4)
    {
      v5 = [*(a1 + 32) _bodyFieldProxy];
      v6 = [v4 ef_urlByAddingSchemeIfNeeded];
      v7 = [v6 absoluteString];
      [v5 addLink:v7];

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 2016));
      [WeakRetained setHasAddedEditableHyperlink:1];
    }

    else
    {
      v9 = EMLogCompose();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __35__MFComposeWebView__didTapAddLink___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = EMLogCompose();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Adding hyperlink was cancelled.", v10, 2u);
    }
  }
}

- (void)_didTapEditLink:(id)a3
{
  v4 = a3;
  [(MFComposeWebView *)self hideMakeLinkAccessoryButton];
  v5 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v5 setEditLinkFlag];

  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MFComposeWebView__didTapEditLink___block_invoke;
  v7[3] = &unk_1E806DB30;
  v7[4] = self;
  [WeakRetained editLink:v4 completion:v7];
}

void __36__MFComposeWebView__didTapEditLink___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] ef_urlWithString:v3];
    if (v4)
    {
      v5 = [*(a1 + 32) _bodyFieldProxy];
      v6 = [v4 ef_urlByAddingSchemeIfNeeded];
      v7 = [v6 absoluteString];
      [v5 updateLinkFromExistingLink:v7 isEditing:1];
    }

    else
    {
      v5 = EMLogCompose();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __36__MFComposeWebView__didTapEditLink___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = EMLogCompose();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Editing hyperlink was cancelled.", v8, 2u);
    }
  }
}

- (void)_didTapRemoveLink
{
  [(MFComposeWebView *)self hideMakeLinkAccessoryButton];
  v3 = [(MFComposeWebView *)self _bodyFieldProxy];
  [v3 removeLink];
}

- (void)_didTapEditTextDescription:(id)a3
{
  v4 = a3;
  [(MFComposeWebView *)self hideMakeLinkAccessoryButton];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MFComposeWebView__didTapEditTextDescription___block_invoke;
  v6[3] = &unk_1E806DB30;
  v6[4] = self;
  [WeakRetained editTextDescription:v4 completion:v6];
}

void __47__MFComposeWebView__didTapEditTextDescription___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [*(a1 + 32) _bodyFieldProxy];
    [v4 addTextDescriptionToLink:v3];
  }

  else
  {
    v4 = EMLogCompose();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Adding text description to hyperlink was cancelled.", v5, 2u);
    }
  }
}

- (void)replaceFilenamePlaceholderWithAttachment:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = EMLogCompose();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v11];
    *buf = 134218498;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    *&buf[22] = 2114;
    v33 = v15;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "<%p> Replacing placehold with attachment for content ID: %{public}@, file name: %{public}@", buf, 0x20u);
  }

  if (v10 && v11 && ([(MFComposeWebView *)self _addInlineAttachmentWithData:v10 fileName:v11 type:v12 contentID:v13], v16 = objc_claimAutoreleasedReturnValue(), (v17 = v16) != 0))
  {
    v18 = [v16 className];
    if (([v18 isEqualToString:0x1F3CF38B8] & 1) != 0 || objc_msgSend(v18, "isEqualToString:", 0x1F3CF38F8))
    {
      v19 = [(MFComposeWebView *)self _bodyFieldProxy];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __89__MFComposeWebView_replaceFilenamePlaceholderWithAttachment_fileName_mimeType_contentID___block_invoke;
      v30[3] = &unk_1E806DBD0;
      v30[4] = self;
      v31 = v17;
      [v19 replaceFilenamePlaceholderWithImage:v11 completionHandler:v30];
    }

    else
    {
      v21 = [(MFComposeWebView *)self _bodyFieldProxy];
      [v21 placeCaretAtStartOfBody];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v33 = __Block_byref_object_copy__3;
      v34 = __Block_byref_object_dispose__3;
      v35 = 0;
      v22 = [v17 fileWrapperUsingFetchedLocalData];
      v23 = [v17 mimeType];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __89__MFComposeWebView_replaceFilenamePlaceholderWithAttachment_fileName_mimeType_contentID___block_invoke_2;
      v26[3] = &unk_1E806DBF8;
      v26[4] = self;
      v29 = buf;
      v27 = v11;
      v28 = v17;
      v24 = [(MFComposeWebView *)self _insertAttachmentWithFileWrapper:v22 contentType:v23 completion:v26];
      v25 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v24;

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v17 = EMLogCompose();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v11];
      [MFComposeWebView replaceFilenamePlaceholderWithAttachment:v13 fileName:v20 mimeType:buf contentID:v17];
    }
  }
}

void __89__MFComposeWebView_replaceFilenamePlaceholderWithAttachment_fileName_mimeType_contentID___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = [*(a1 + 40) contentID];
    [*(*(a1 + 32) + 2120) setObject:v3 forKeyedSubscript:v5];
  }

  v4 = [*(a1 + 32) mailComposeViewDelegate];
  [v4 didInsertAttachment:*(a1 + 40)];
}

void __89__MFComposeWebView_replaceFilenamePlaceholderWithAttachment_fileName_mimeType_contentID___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _addAttachment:*(*(*(a1 + 56) + 8) + 40)];
    v5 = [*(a1 + 32) _bodyFieldProxy];
    v3 = *(a1 + 40);
    v4 = [*(*(*(a1 + 56) + 8) + 40) uniqueIdentifier];
    [v5 replaceFilenamePlaceholderWithAttachment:v3 identifier:v4];

    v6 = [*(a1 + 32) mailComposeViewDelegate];
    [v6 didInsertAttachment:*(a1 + 48)];
  }
}

- (id)_addInlineAttachmentWithData:(id)a3 fileName:(id)a4 type:(id)a5 contentID:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = EMLogCompose();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v11];
    v25 = 134218498;
    v26 = self;
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "<%p> _addInlineAttachmentWithData for content ID: %{public}@, file name: %{public}@", &v25, 0x20u);
  }

  if ([MEMORY[0x1E69B15F0] shouldCreatePlaceholderAttachmentForAttachmentWithSize:{objc_msgSend(v10, "length")}] && (objc_msgSend(MEMORY[0x1E69B15D8], "isPlaceholderSerializedRepresentation:", v10) & 1) == 0)
  {
    v16 = [MEMORY[0x1E69B15D8] attachmentPlaceholderForData:v10 fileName:v11 type:v12 contentID:v13];
    v17 = [v16 serializedRepresentation];

    v10 = v17;
  }

  v18 = [(MFComposeWebView *)self mailComposeViewDelegate];
  v19 = [v18 compositionContext];
  v20 = [v19 addAttachmentData:v10 mimeType:v12 fileName:v11 contentID:v13];

  if (v20)
  {
    [v18 didCreateAttachment:v20];
    v21 = [(MFComposeWebView *)self undoManager];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 prepareWithInvocationTarget:self];
      [v23 _removeInlineAttachment:v20];
    }
  }

  return v20;
}

- (id)_makeAttachmentDataWithFileURL:(id)a3 type:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v5 path];
  v9 = [v7 attributesOfItemAtPath:v8 error:0];

  v10 = *MEMORY[0x1E696A3B8];
  v11 = [v9 objectForKey:*MEMORY[0x1E696A3B8]];

  if (!v11 || ([v9 objectForKey:v10], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "unsignedIntegerValue"), v12, !objc_msgSend(MEMORY[0x1E69B15F0], "shouldCreatePlaceholderAttachmentForAttachmentWithSize:", v13)) || (v14 = MEMORY[0x1E69B15D8], objc_msgSend(v5, "path"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "lastPathComponent"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "attachmentPlaceholderForFileURL:fileName:fileSize:type:contentID:", v5, v16, v13, v6, 0), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, objc_msgSend(v17, "serializedRepresentation"), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
  {
    v18 = [MEMORY[0x1E69AD6B0] dataWithContentsOfURL:v5];
  }

  return v18;
}

- (id)_filenameForVideoAttachmentAtURL:(id)a3
{
  v4 = a3;
  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v5 = bundle_bundle;
  v6 = [v5 localizedStringForKey:@"VIDEO" value:&stru_1F3CF3758 table:@"Main"];

  v7 = [(MFComposeWebView *)self mailComposeViewDelegate];
  v8 = [v7 compositionContext];
  v9 = [v8 attachments];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__MFComposeWebView__filenameForVideoAttachmentAtURL___block_invoke;
  v18[3] = &unk_1E806DC20;
  v10 = v6;
  v19 = v10;
  v11 = [v9 indexesOfObjectsPassingTest:v18];

  v12 = [v11 count];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%lu", v10, v12];
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;
  v15 = [v4 pathExtension];
  v16 = [v14 stringByAppendingPathExtension:v15];

  return v16;
}

BOOL __53__MFComposeWebView__filenameForVideoAttachmentAtURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fileName];
  v4 = [v3 rangeOfString:*(a1 + 32)] == 0;

  return v4;
}

- (BOOL)_getExtensionAndMimeTypeForImageData:(id)a3 outExtension:(id *)a4 outMimeType:(id *)a5
{
  v7 = a3;
  v8 = v7;
  if (v7 && (v9 = CGImageSourceCreateWithData(v7, 0), (v10 = v9) != 0))
  {
    v11 = CGImageSourceGetType(v9);
    v12 = v11 != 0;
    if (v11)
    {
      v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:v11];
      *a4 = [v13 preferredFilenameExtension];
      *a5 = [v13 preferredMIMEType];
    }

    CFRelease(v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_shouldShowAddLinkButton
{
  attachmentsByUniqueIdentifier = self->_attachmentsByUniqueIdentifier;
  v3 = [(NSArray *)self->_selectedAttachmentIdentifiers firstObject];
  v4 = [(NSMutableDictionary *)attachmentsByUniqueIdentifier objectForKeyedSubscript:v3];

  v5 = !v4 && (_os_feature_enabled_impl() & 1) != 0;
  return v5;
}

- (BOOL)_shouldShowInsertPhotosButton
{
  if (![(MFComposeWebView *)self _sourceIsManaged])
  {
    return 1;
  }

  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 mayOpenFromUnmanagedToManaged];

  return v3;
}

- (BOOL)_shouldShowMarkupButton
{
  attachmentsByUniqueIdentifier = self->_attachmentsByUniqueIdentifier;
  v3 = [(NSArray *)self->_selectedAttachmentIdentifiers firstObject];
  v4 = [(NSMutableDictionary *)attachmentsByUniqueIdentifier objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 contentTypeConformsToMarkup];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_composeWebView:(id)a3 didChangeHeight:(double)a4
{
  if (_os_feature_enabled_impl())
  {
    WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained composeWebView:self didChangeHeight:a4];
    }
  }
}

- (void)_composeWebView:(id)a3 composeBodyIsEmpty:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeWebView:self composeBodyIsEmpty:v4];
  }
}

- (void)composeBodyFieldDidThrowException:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MFComposeWebView_composeBodyFieldDidThrowException___block_invoke;
  block[3] = &unk_1E806C570;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)composeBodyFieldDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeWebViewTextChanged:self];
  }
}

- (void)composeBodyFieldIsDirtyChanged:(BOOL)a3
{
  if (!self->_dirtyChangeIgnoreCount)
  {
    self->_dirty = a3;
  }
}

- (void)composeBodyFieldAddAttachmentWithData:(id)a3 filename:(id)a4 mimeType:(id)a5 uniqueID:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = EMLogCompose();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v11];
    *buf = 138543362;
    v23 = v15;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "Adding rich link preview [%{public}@]", buf, 0xCu);
  }

  if (v10 && v11 && v13)
  {
    v16 = [(MFComposeWebView *)self _addInlineAttachmentWithData:v10 fileName:v11 type:v12 contentID:v13];
    if (v16)
    {
      v17 = [(MFComposeWebView *)self _bodyFieldProxy];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __85__MFComposeWebView_composeBodyFieldAddAttachmentWithData_filename_mimeType_uniqueID___block_invoke;
      v20[3] = &unk_1E806DBD0;
      v20[4] = self;
      v21 = v16;
      [v17 replaceRichLinkPlaceholderImage:v13 completionHandler:v20];
    }

    else
    {
      v18 = EMLogCompose();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v11];
        [MFComposeWebView composeBodyFieldAddAttachmentWithData:v19 filename:buf mimeType:v18 uniqueID:?];
      }
    }
  }
}

void __85__MFComposeWebView_composeBodyFieldAddAttachmentWithData_filename_mimeType_uniqueID___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = [*(a1 + 40) contentID];
    [*(*(a1 + 32) + 2120) setObject:v3 forKeyedSubscript:v5];
  }

  v4 = [*(a1 + 32) mailComposeViewDelegate];
  [v4 didInsertAttachment:*(a1 + 40)];
}

- (void)attachmentTapped:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = EMLogCompose();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "Attachment tapped with content ID: %{public}@", &v9, 0xCu);
  }

  v6 = [MEMORY[0x1E69B15D0] defaultManager];
  v7 = [v6 attachmentForContentID:v4];

  if (!v7)
  {
    WeakRetained = EMLogCompose();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      [MFComposeWebView attachmentTapped:];
    }

    goto LABEL_8;
  }

  if ([v7 contentTypeConformsToMarkup])
  {
    WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
    [WeakRetained markupAttachment:v7];
LABEL_8:
  }
}

- (void)composeBodyFieldQuickReplyEnabled:(id)a3
{
  v4 = a3;
  v4[2](v4, [(MFComposeWebView *)self isQuickReply]);
}

- (void)composeBodyFieldAddLinkPreviewsEnabled:(id)a3
{
  v4 = a3;
  v3 = [MEMORY[0x1E695E000] em_userDefaults];
  v4[2](v4, [v3 BOOLForKey:*MEMORY[0x1E699AB60]] ^ 1);
}

- (void)_findInteraction:(id)a3 navigatorPlacementWillChange:(id)a4
{
  v5 = [a4 inlinePlacement];
  if (v5)
  {
    v9 = v5;
    v6 = 0.0;
    if ([v5 isShowing])
    {
      [v9 intrinsicContentSize];
      v6 = v7;
    }

    WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
    [WeakRetained findNavigatorPanelDidChangeHeight:v6];

    v5 = v9;
  }
}

- (id)_findInteractionScrollViewForInsetAdjustment:(id)a3
{
  v3 = [(MFComposeWebView *)self scrollView];

  return v3;
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v7 targetFrame];
  v10 = [v9 isMainFrame];

  v11 = v8[2];
  if (v10)
  {
    v11(v8, 1);
  }

  else
  {
    v11(v8, 0);
    v12 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v7 request];
      v16 = [v15 URL];
      v17 = 138543874;
      v18 = v14;
      v19 = 2048;
      v20 = self;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&dword_1BE819000, v12, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: Blocking navigation action for request whose target frame is not the main frame (iframe, probably): %@", &v17, 0x20u);
    }
  }
}

- (void)_webView:(id)a3 didStartInputSession:(id)a4
{
  if (self)
  {
    if (self->__didReloadInputAssistantItemOnFocus)
    {
      return;
    }

    self->__didReloadInputAssistantItemOnFocus = 1;
  }

  v5 = [(MFComposeWebView *)self _captureTextFromCameraAction];
  if (!v5)
  {
    v6 = EMLogCompose();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "Text-from-camera button was not added to input assistant.", v16, 2u);
    }

    goto LABEL_17;
  }

  v6 = [(MFComposeWebView *)self _barButtonItemWithAction:v5 target:self selector:sel__captureTextFromCamera];
  v7 = [(MFComposeWebView *)self insertAttachmentGroup];
  if (v7)
  {
    v8 = [(MFComposeWebView *)self _useComposeToolbar];

    if (!v8)
    {
      v11 = MEMORY[0x1E695DF70];
      v12 = [(MFComposeWebView *)self insertAttachmentGroup];
      v13 = [v12 barButtonItems];
      v9 = [v11 arrayWithArray:v13];

      v10 = [(MFComposeWebView *)self documentItem];
      if (v10 && [v9 containsObject:v10])
      {
        [v9 insertObject:v6 atIndex:{objc_msgSend(v9, "indexOfObject:", v10)}];
        v14 = [(MFComposeWebView *)self insertAttachmentGroup];
        [v14 setBarButtonItems:v9];
      }

      else
      {
        v14 = [v9 arrayByAddingObject:v6];
        v15 = [(MFComposeWebView *)self insertAttachmentGroup];
        [v15 setBarButtonItems:v14];
      }

      goto LABEL_16;
    }
  }

  [(MFComposeWebView *)self setTextFromCameraButtonItem:v6];
  if ([(MFComposeWebView *)self _useComposeToolbar])
  {
    v9 = [(MFComposeWebView *)self composeInputAccessoryView];
    v10 = [(MFComposeWebView *)self _toolbarItems];
    [v9 updateToolbarItems:v10];
LABEL_16:
  }

LABEL_17:
}

- (void)_captureTextFromCamera
{
  [(MFComposeWebView *)self donateHasUsedAttachment];
  v3 = EMLogCompose();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "Capturing text from camera", v5, 2u);
  }

  v4 = [(MFComposeWebView *)self firstResponder];
  if ([v4 canPerformAction:sel_captureTextFromCamera_ withSender:0])
  {
    [v4 captureTextFromCamera:0];
  }
}

- (void)_webViewWebProcessDidBecomeUnresponsive:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = EMLogCompose();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = 138544386;
    v11 = v8;
    v12 = 2048;
    v13 = self;
    v14 = 2114;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    v18 = 1024;
    v19 = [v5 _webProcessIdentifier];
    _os_log_error_impl(&dword_1BE819000, v6, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: %{public}@ %@ (pid: %d)", &v10, 0x30u);
  }

  [(MFComposeWebView *)self _killWebContentProcess];
}

- (void)_webView:(id)a3 webContentProcessDidTerminateWithReason:(int64_t)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ([(MFComposeWebView *)self _lastCrashDateExceedsThreshhold])
  {
    self->_webProcessCrashCount = 0;
    v8 = 1;
  }

  else
  {
    v8 = self->_webProcessCrashCount + 1;
  }

  self->_webProcessCrashCount = v8;
  v9 = EMLogCompose();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(a2);
    v25 = [v7 _webProcessIdentifier];
    webProcessCrashCount = self->_webProcessCrashCount;
    *buf = 138544898;
    v33 = v23;
    v34 = 2048;
    v35 = self;
    v36 = 2114;
    v37 = v24;
    v38 = 2112;
    v39 = v7;
    v40 = 1024;
    v41 = v25;
    v42 = 2048;
    v43 = a4;
    v44 = 2048;
    v45 = webProcessCrashCount;
    _os_log_error_impl(&dword_1BE819000, v9, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: %{public}@ %@ (pid: %d; reason: %ld; crash count: %ld)", buf, 0x44u);
  }

  v10 = self->_webProcessCrashCount;
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v11 = [(MFComposeWebView *)self URL];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __69__MFComposeWebView__webView_webContentProcessDidTerminateWithReason___block_invoke_2;
      v27[3] = &unk_1E806DC48;
      v27[4] = self;
      v30 = a2;
      v28 = v7;
      v29 = v11;
      v12 = v11;
      dispatch_async(MEMORY[0x1E69E96A0], v27);
    }

    else
    {
      v13 = EMLogCompose();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(MFComposeWebView *)&self->_webProcessCrashCount _webView:v13 webContentProcessDidTerminateWithReason:v14, v15, v16, v17, v18, v19];
      }
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MFComposeWebView__webView_webContentProcessDidTerminateWithReason___block_invoke;
    block[3] = &unk_1E806C570;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v20 = [MEMORY[0x1E695DF00] now];
  lastCrashDate = self->_lastCrashDate;
  self->_lastCrashDate = v20;
}

void __69__MFComposeWebView__webView_webContentProcessDidTerminateWithReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E695DFF8];
  v4 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v9 UUIDString];
  v6 = [v4 stringWithFormat:@"applewebdata://%@", v5];
  v7 = [v3 URLWithString:v6];
  v8 = [v2 loadHTMLString:@"<body dir=auto>" baseURL:v7];

  v10 = [*(a1 + 32) mailComposeViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 composeWebViewDidTerminate:*(a1 + 32)];
  }
}

void __69__MFComposeWebView__webView_webContentProcessDidTerminateWithReason___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = EMLogCompose();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(a1 + 32);
    v11 = NSStringFromSelector(*(a1 + 56));
    v12 = *(a1 + 40);
    *buf = 138544130;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_error_impl(&dword_1BE819000, v2, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: %{public}@ We are unable to restore the web content, setting error message to web view %@", buf, 0x2Au);
  }

  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _addContextMenusToBuilder:];
  }

  v3 = [bundle_bundle localizedStringForKey:@"MESSAGE_CAUSED_PROBLEM_REPEATEDLY" value:&stru_1F3CF3758 table:@"Main"];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v3 mf_stringByEscapingHTMLCodes];
  v7 = [v5 localizedStringWithFormat:@"<html dir=auto><body><i><font color=#888>%@</font></i></body></html>", v6];
  [v4 _loadAlternateHTMLString:v7 baseURL:0 forUnreachableURL:*(a1 + 48)];
}

- (void)_webView:(id)a3 didInvalidateDataForAttachment:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = EMLogCompose();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = self;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Webview did invalidate data for attachment: %{public}@", &v7, 0x16u);
  }

  [(MFComposeWebView *)self _removeAttachment:v5];
  [(MFComposeWebView *)self _addAttachment:v5];
}

- (void)_webView:(id)a3 didInsertAttachment:(id)a4 withSource:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = EMLogCompose();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v43 = self;
    v44 = 2114;
    *v45 = v6;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "<%p> WebView didInsertAttachment: %{public}@", buf, 0x16u);
  }

  v8 = [v6 uniqueIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v33 = [WeakRetained compositionContext];
  v9 = 2120;
  v10 = [(NSMutableDictionary *)self->_attachmentCIDsByIdentifier objectForKeyedSubscript:v8];
  if (v10)
  {
    v11 = EMLogCompose();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v43 = self;
      v44 = 2114;
      *v45 = v6;
      *&v45[8] = 2114;
      *&v45[10] = v10;
      _os_log_impl(&dword_1BE819000, v11, OS_LOG_TYPE_DEFAULT, "<%p> Webview did insert attachment: %{public}@, for content ID: %{public}@", buf, 0x20u);
    }

    [(NSMutableDictionary *)self->_attachmentCIDsByIdentifier setObject:0 forKeyedSubscript:v8];
    v12 = [v33 attachments];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __60__MFComposeWebView__webView_didInsertAttachment_withSource___block_invoke;
    v40[3] = &unk_1E806DC70;
    v13 = v10;
    v41 = v13;
    v14 = [v12 ef_firstObjectPassingTest:v40];

    v15 = [v6 info];
    v16 = EMLogCompose();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v14 ef_publicDescription];
      *buf = 134218498;
      v43 = self;
      v44 = 2114;
      *v45 = v17;
      *&v45[8] = 2114;
      *&v45[10] = v15;
      _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_DEFAULT, "<%p> Found attachment %{public}@, for wkAttachment info: %{public}@", buf, 0x20u);
    }

    if (v14)
    {
      v18 = EMLogCompose();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v43 = self;
        v44 = 2114;
        *v45 = v15;
        _os_log_impl(&dword_1BE819000, v18, OS_LOG_TYPE_DEFAULT, "<%p> Loaded attachment with info: %{public}@", buf, 0x16u);
      }

      v19 = [v14 fileWrapperUsingFetchedLocalData];
      v20 = [v14 fileUTType];
      [v6 setFileWrapper:v19 contentType:v20 completion:0];

      [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier setObject:v14 forKeyedSubscript:v8];
      if (_os_feature_enabled_impl())
      {
        v21 = [v15 shouldPreserveFidelity];
      }

      else
      {
        v21 = 0;
      }

      [v14 setShouldPreserveFidelity:v21];
      [WeakRetained didInsertAttachment:v14];
    }

    else if (!self->_attachmentDataMissingAlertDisplayed)
    {
      v26 = [v15 data];
      if (v26 || ([v15 fileWrapper], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v30 = [v15 filePath];
        v32 = [v30 isEqualToString:&stru_1F3CF3758];

        if (v32)
        {
          v31 = EMLogCompose();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            v43 = self;
            v44 = 2114;
            *v45 = v6;
            *&v45[8] = 2114;
            *&v45[10] = v13;
            _os_log_error_impl(&dword_1BE819000, v31, OS_LOG_TYPE_ERROR, "<%p> Failed to insert attachment %{public}@, content ID: %{public}@", buf, 0x20u);
          }

          self->_attachmentDataMissingAlertDisplayed = 1;
          if (objc_opt_respondsToSelector())
          {
            [WeakRetained showMissingAttachmentDataAlert];
          }
        }
      }
    }

    v9 = &v41;
LABEL_32:

    goto LABEL_33;
  }

  v22 = EMLogCompose();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v43 = self;
    v44 = 2114;
    *v45 = v8;
    _os_log_impl(&dword_1BE819000, v22, OS_LOG_TYPE_DEFAULT, "<%p> Did not find the contentID for identifier: %{public}@, looking into _attachmentsByUniqueIdentifier.", buf, 0x16u);
  }

  v23 = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier objectForKeyedSubscript:v8];
  v13 = [v23 contentID];

  if (v13)
  {
    v24 = [v33 attachments];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __60__MFComposeWebView__webView_didInsertAttachment_withSource___block_invoke_551;
    v38[3] = &unk_1E806DC70;
    v39 = v13;
    v25 = [v24 ef_any:v38];

    v9 = &v39;
  }

  else
  {
    v25 = 0;
  }

  v27 = EMLogCompose();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v43 = self;
    v44 = 1024;
    *v45 = v25;
    *&v45[4] = 2114;
    *&v45[6] = v13;
    _os_log_impl(&dword_1BE819000, v27, OS_LOG_TYPE_DEFAULT, "<%p> Found existing: %{BOOL}d contentID: %{public}@ in context", buf, 0x1Cu);
  }

  if ((v25 & 1) == 0)
  {
    [(MFComposeWebView *)self _addAttachment:v6];
    v28 = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier objectForKeyedSubscript:v8];
    if ([v28 isSinglePagePDFFile])
    {
      v29 = [(MFComposeWebView *)self _bodyFieldProxy];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __60__MFComposeWebView__webView_didInsertAttachment_withSource___block_invoke_552;
      v35[3] = &unk_1E806DC98;
      v35[4] = self;
      v36 = v8;
      v37 = v28;
      [v29 displayAttachmentWithIdentifierAsSinglePagePDF:v36 completionHandler:v35];
    }
  }

  if (v13)
  {
    goto LABEL_32;
  }

LABEL_33:
}

uint64_t __60__MFComposeWebView__webView_didInsertAttachment_withSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __60__MFComposeWebView__webView_didInsertAttachment_withSource___block_invoke_551(uint64_t a1, void *a2)
{
  v3 = [a2 contentID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __60__MFComposeWebView__webView_didInsertAttachment_withSource___block_invoke_552(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(*(a1 + 32) + 2112) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v3 = [*(a1 + 48) contentID];
  [*(*(a1 + 32) + 2120) setObject:v3 forKeyedSubscript:v4];
}

- (void)_webView:(id)a3 didRemoveAttachment:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = EMLogCompose();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = self;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Webview did remove attachment: %{public}@", &v7, 0x16u);
  }

  [(MFComposeWebView *)self _removeAttachment:v5];
}

- (void)_webView:(id)a3 didChangeFontAttributes:(id)a4
{
  v6 = a4;
  v5 = [(MFComposeWebView *)self mailComposeViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 composeWebViewDidChangeFontAttributes:v6];
  }
}

- (int64_t)_webView:(id)a3 dataOwnerForDropSession:(id)a4
{
  if ([(MFComposeWebView *)self _sourceIsManaged:a3])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_webView:(id)a3 dataOwnerForDragSession:(id)a4
{
  if ([(MFComposeWebView *)self _sourceIsManaged:a3])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_webView:(id)a3 takeFocus:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  if (a4 == 1)
  {
    v7 = 16;
  }

  else
  {
    v7 = 32;
  }

  v8 = WeakRetained;
  [WeakRetained takeFocusFromComposeWebView:self inDirection:v7];
}

- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MFComposeWebView;
  if ([(MFComposeWebView *)&v12 respondsToSelector:sel_willBeginWritingToolsSession_requestContexts_])
  {
    v11.receiver = self;
    v11.super_class = MFComposeWebView;
    [(MFComposeWebView *)&v11 willBeginWritingToolsSession:v6 requestContexts:v7];
  }

  if (v6)
  {
    v8 = EMLogCompose();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "[Writing Tools] Will begin writing tools session", v10, 2u);
    }

    [(MFComposeWebView *)self _updateAppearanceForWritingToolsSession:1];
  }

  else
  {
    v9 = EMLogCompose();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BE819000, v9, OS_LOG_TYPE_DEFAULT, "[Writing Tools] Will begin writing tools without an active session", v10, 2u);
    }
  }
}

- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MFComposeWebView;
  if ([(MFComposeWebView *)&v10 respondsToSelector:sel_writingToolsSession_didReceiveAction_])
  {
    v9.receiver = self;
    v9.super_class = MFComposeWebView;
    [(MFComposeWebView *)&v9 writingToolsSession:v6 didReceiveAction:a4];
  }

  if (a4 == 3)
  {
    v7 = EMLogCompose();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "[Writing Tools] Did receive writing tools restart action", v8, 2u);
    }

    [(MFComposeWebView *)self _updateAppearanceForWritingToolsSession:1];
  }
}

- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v7 = a7;
  length = a5.length;
  location = a5.location;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = MFComposeWebView;
  if ([(MFComposeWebView *)&v19 respondsToSelector:sel_compositionSession_didReceiveText_replacementRange_inContext_finished_])
  {
    v18.receiver = self;
    v18.super_class = MFComposeWebView;
    [(MFComposeWebView *)&v18 compositionSession:v13 didReceiveText:v14 replacementRange:location inContext:length finished:v15, v7];
  }

  if (v7)
  {
    v16 = EMLogCompose();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_DEFAULT, "[Writing Tools] Did finish receiving text", v17, 2u);
    }

    [(MFComposeWebView *)self _updateAppearanceForWritingToolsSession:0];
  }
}

- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v7 = a7;
  length = a5.length;
  location = a5.location;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = MFComposeWebView;
  if ([(MFComposeWebView *)&v19 respondsToSelector:sel_proofreadingSession_didReceiveSuggestions_processedRange_inContext_finished_])
  {
    v18.receiver = self;
    v18.super_class = MFComposeWebView;
    [(MFComposeWebView *)&v18 proofreadingSession:v13 didReceiveSuggestions:v14 processedRange:location inContext:length finished:v15, v7];
  }

  if (v7)
  {
    v16 = EMLogCompose();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_DEFAULT, "[Writing Tools] Did finish proofreading session", v17, 2u);
    }

    [(MFComposeWebView *)self _updateAppearanceForWritingToolsSession:0];
  }
}

- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MFComposeWebView;
  if ([(MFComposeWebView *)&v10 respondsToSelector:sel_didEndWritingToolsSession_accepted_])
  {
    v9.receiver = self;
    v9.super_class = MFComposeWebView;
    [(MFComposeWebView *)&v9 didEndWritingToolsSession:v6 accepted:v4];
  }

  v7 = EMLogCompose();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "[Writing Tools] Did end writing tools session", v8, 2u);
  }

  [(MFComposeWebView *)self _updateAppearanceForWritingToolsSession:0];
}

- (void)_updateAppearanceForWritingToolsSession:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeWebView:self hasActiveWritingToolsSession:v3];
  }
}

- (void)_addAttachment:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = EMLogCompose();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v39 = self;
    v40 = 2114;
    v41 = v4;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Adding attachment: %{public}@", buf, 0x16u);
  }

  v36 = [v4 uniqueIdentifier];
  v6 = [v4 info];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 name];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [v7 filePath];
      v10 = [v11 lastPathComponent];
    }

    v12 = [v7 contentType];
    if (v12)
    {
      v13 = [MEMORY[0x1E6982C40] typeWithMIMEType:v12];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [MEMORY[0x1E6982C40] typeWithIdentifier:v12];
      }

      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if ([v16 conformsToType:*MEMORY[0x1E6982DC8]])
    {
      v17 = [v10 stringByAppendingString:@".zip"];

      v18 = [v7 data];
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v25 = MEMORY[0x1E695DFF8];
        v26 = [v7 filePath];
        v27 = [v25 fileURLWithPath:v26 isDirectory:1];

        v28 = [MEMORY[0x1E69B1600] archive];
        v37 = 0;
        v18 = [v28 compressFolder:v27 error:&v37];
        v19 = v37;
      }

      if (v19 || !v18)
      {
        v29 = EMLogCompose();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = [v19 ef_publicDescription];
          [(MFComposeWebView *)v30 _addAttachment:buf, v29];
        }
      }

      v23 = @"application/zip";
    }

    else
    {
      v20 = [v16 preferredMIMEType];
      v21 = v20;
      v22 = @"application/octet-stream";
      if (v20)
      {
        v22 = v20;
      }

      v23 = v22;

      v24 = [v7 data];
      v19 = v24;
      if (v24)
      {
        v19 = v24;
        v17 = v10;
        v18 = v19;
      }

      else
      {
        v31 = MEMORY[0x1E695DEF0];
        v32 = [v7 filePath];
        v18 = [v31 dataWithContentsOfFile:v32 options:3 error:0];

        v17 = v10;
      }
    }

    if (v18)
    {
      if (_os_feature_enabled_impl())
      {
        v33 = [v7 shouldPreserveFidelity];
      }

      else
      {
        v33 = 0;
      }

      v34 = [(MFComposeWebView *)self _addInlineAttachmentWithData:v18 fileName:v17 type:v23 contentID:0];
      [v34 setShouldPreserveFidelity:v33];
      [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier setObject:v34 forKeyedSubscript:v36];
      v35 = [(MFComposeWebView *)self mailComposeViewDelegate];
      [v35 didInsertAttachment:v34];
    }
  }
}

- (void)_removeAttachment:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  v6 = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier objectForKeyedSubscript:v5];
  v7 = [v6 contentID];

  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v9 = [WeakRetained compositionContext];

  v10 = EMLogCompose();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v19 = self;
    v20 = 2114;
    v21 = v4;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_1BE819000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Removing attachment: %{public}@, content ID: %{public}@", buf, 0x20u);
  }

  if (!self->_isFinishing)
  {
    if (v7)
    {
      v11 = [v9 contentVariationAttachmentCID];
      v12 = [v7 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        v13 = [v9 attachments];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __38__MFComposeWebView__removeAttachment___block_invoke;
        v16[3] = &unk_1E806DC70;
        v17 = v7;
        v14 = [v13 ef_firstObjectPassingTest:v16];

        if (v14)
        {
          [v9 removeAttachment:v14];
          v15 = [(MFComposeWebView *)self mailComposeViewDelegate];
          [v15 didRemoveAttachment:v14];
        }

        [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier removeObjectForKey:v5];
      }
    }
  }
}

uint64_t __38__MFComposeWebView__removeAttachment___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)_sourceIsManaged
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v3 = [WeakRetained compositionContext];
  v4 = [v3 sourceAccountManagement] == 2;

  return v4;
}

- (MFComposeWebViewDelegate)composeWebViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);

  return WeakRetained;
}

- (MFMailComposeCoordinator)composeCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_composeCoordinator);

  return WeakRetained;
}

- (void)replaceFilenamePlaceholderWithAttachment:(uint64_t)a1 fileName:(void *)a2 mimeType:(uint8_t *)buf contentID:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Failed to attach item with content ID: %{public}@, file name: %{public}@", buf, 0x16u);
}

- (void)composeBodyFieldAddAttachmentWithData:(os_log_t)log filename:mimeType:uniqueID:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Failed to attach rich link preview [%{public}@]", buf, 0xCu);
}

- (void)_addAttachment:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Failed to load folder: %{public}@", buf, 0xCu);
}

@end