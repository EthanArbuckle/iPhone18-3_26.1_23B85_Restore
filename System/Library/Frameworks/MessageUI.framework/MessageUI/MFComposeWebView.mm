@interface MFComposeWebView
+ (NSArray)menuCommands;
+ (id)_basicWebViewConfiguration;
+ (id)_webViewConfiguration:(BOOL)configuration;
+ (void)setURLCacheBlock:(id)block;
- (BOOL)_canPerformCommandAction:(SEL)action withSender:(id)sender;
- (BOOL)_getExtensionAndMimeTypeForImageData:(id)data outExtension:(id *)extension outMimeType:(id *)type;
- (BOOL)_shouldShowAddLinkButton;
- (BOOL)_shouldShowInsertPhotosButton;
- (BOOL)_shouldShowMarkupButton;
- (BOOL)_sourceIsManaged;
- (BOOL)_useComposeToolbar;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)resignFirstResponder;
- (CGRect)_linkAccessoryButtonFrameForSourceRect:(CGRect)rect;
- (CGRect)_rectFromMessageDict:(id)dict;
- (CGRect)rectOfElementWithID:(id)d;
- (MFComposeWebView)initWithFrame:(CGRect)frame isQuickReply:(BOOL)reply;
- (MFComposeWebViewDelegate)composeWebViewDelegate;
- (MFMailComposeCoordinator)composeCoordinator;
- (MFMailComposeViewDelegate)mailComposeViewDelegate;
- (MFMailSignatureController)signatureControllerProxy;
- (NSString)compositionContextID;
- (_NSRange)selectedRange;
- (double)inputAccessoryViewHeight;
- (id)_actionWithTitle:(void *)title glyphName:(int)name usePrivateCatalog:(void *)catalog handler:;
- (id)_actionWithTitle:(void *)title glyphName:(void *)name handler:;
- (id)_addInlineAttachmentWithData:(id)data fileName:(id)name type:(id)type contentID:(id)d;
- (id)_attachmentInfoByIdentifier;
- (id)_attachmentInfoByURL;
- (id)_barButtonItemWithAction:(void *)action target:(uint64_t)target selector:;
- (id)_barButtonItemWithImageName:(void *)name title:(void *)title target:(uint64_t)target selector:;
- (id)_barButtonItemWithImageName:(void *)name title:(void *)title target:(uint64_t)target selector:(void *)selector menu:;
- (id)_bodyFieldProxy;
- (id)_captureTextFromCameraAction;
- (id)_filenameForVideoAttachmentAtURL:(id)l;
- (id)_findInteractionScrollViewForInsetAdjustment:(id)adjustment;
- (id)_formattingAction;
- (id)_importDocumentActionWithTitle:(id *)title;
- (id)_insertPhotoActionWithTitle:(void *)title;
- (id)_insertPhotoFromCameraActionWithTitle:(void *)title;
- (id)_mailComposeEditingLeadingInputAssistantGroups;
- (id)_mailComposeEditingTrailingInputAssistantGroups;
- (id)_makeAttachmentDataWithFileURL:(id)l type:(id)type;
- (id)_makeRichLinkTemplateButtonWithOrigin:(CGPoint)origin;
- (id)_markupActionWithTitle:(void *)title;
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
- (id)mimeTypeForFilename:(id)filename;
- (id)nextAttachmentName;
- (id)plainTextContent;
- (int64_t)_webView:(id)view dataOwnerForDragSession:(id)session;
- (int64_t)_webView:(id)view dataOwnerForDropSession:(id)session;
- (void)_addAttachment:(id)attachment;
- (void)_addContextMenusToBuilder:(id)builder;
- (void)_captureTextFromCamera;
- (void)_changeQuoteLevelBy:(int64_t)by;
- (void)_close;
- (void)_composeWebView:(id)view composeBodyIsEmpty:(BOOL)empty;
- (void)_composeWebView:(id)view didChangeHeight:(double)height;
- (void)_decreaseQuoteLevelKeyCommandInvoked:(id)invoked;
- (void)_didTapAddLink:(id)link;
- (void)_didTapCameraButton:(id)button;
- (void)_didTapEditLink:(id)link;
- (void)_didTapEditTextDescription:(id)description;
- (void)_didTapInsertDrawing:(id)drawing;
- (void)_didTapInsertDrawingOrMarkupButton:(id)button;
- (void)_didTapInsertPhotoButton:(id)button;
- (void)_didTapMarkupButton:(id)button;
- (void)_didTapRemoveLink;
- (void)_findInteraction:(id)interaction navigatorPlacementWillChange:(id)change;
- (void)_importDocumentCommandInvoked:(id)invoked;
- (void)_increaseQuoteLevelKeyCommandInvoked:(id)invoked;
- (void)_insertDocumentFromData:(id)data isImage:(BOOL)image contentID:(id)d;
- (void)_insertMediaWithAssetIdentifier:(id)identifier mediaURL:(id)l mediaType:(id)type mediaData:(id)data isVideo:(BOOL)video completion:(id)completion;
- (void)_removeAttachment:(id)attachment;
- (void)_removeInlineAttachment:(id)attachment;
- (void)_scanDocumentCommandInvoked:(id)invoked;
- (void)_showmakeLinkAccessoryButton;
- (void)_updateAppearanceForWritingToolsSession:(BOOL)session;
- (void)_updatePocketContainerInteractionVisible:(BOOL)visible;
- (void)_webView:(id)view didChangeFontAttributes:(id)attributes;
- (void)_webView:(id)view didInsertAttachment:(id)attachment withSource:(id)source;
- (void)_webView:(id)view didInvalidateDataForAttachment:(id)attachment;
- (void)_webView:(id)view didRemoveAttachment:(id)attachment;
- (void)_webView:(id)view didStartInputSession:(id)session;
- (void)_webView:(id)view takeFocus:(int64_t)focus;
- (void)_webView:(id)view webContentProcessDidTerminateWithReason:(int64_t)reason;
- (void)_webViewWebProcessDidBecomeUnresponsive:(id)unresponsive;
- (void)addMailAttributesBeforeDisplayHidingTrailingEmptyQuotes:(BOOL)quotes shouldQuote:(BOOL)quote;
- (void)appendMarkupString:(id)string quote:(BOOL)quote;
- (void)appendOrReplace:(id)replace withMarkupString:(id)string quote:(BOOL)quote completion:(id)completion;
- (void)attachmentTapped:(id)tapped;
- (void)buildMenuWithBuilder:(id)builder;
- (void)composeBodyFieldAddAttachmentWithData:(id)data filename:(id)filename mimeType:(id)type uniqueID:(id)d;
- (void)composeBodyFieldAddLinkPreviewsEnabled:(id)enabled;
- (void)composeBodyFieldDidChange;
- (void)composeBodyFieldDidThrowException:(id)exception;
- (void)composeBodyFieldIsDirtyChanged:(BOOL)changed;
- (void)composeBodyFieldQuickReplyEnabled:(id)enabled;
- (void)compositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted;
- (void)enableQuickReply:(BOOL)reply;
- (void)getHTMLDataObjectRemovingSignature:(BOOL)signature removeQuotes:(BOOL)quotes completion:(id)completion;
- (void)hideMakeLinkAccessoryButton;
- (void)hideMakeLinkAccessoryButtonMenu;
- (void)insertDocumentWithData:(id)data fileName:(id)name mimeType:(id)type contentID:(id)d;
- (void)insertDocumentWithURL:(id)l isDrawingFile:(BOOL)file;
- (void)insertMediaWithPhotoPickerItem:(id)item completion:(id)completion;
- (void)insertPhotoOrVideoWithAssetIdentifier:(id)identifier infoDictionary:(id)dictionary completion:(id)completion;
- (void)insertRichLinkWithURL:(id)l completionHandler:(id)handler;
- (void)insertString:(id)string;
- (void)invalidateInputContextHistory;
- (void)makeRichLinkFromSelection;
- (void)markupSelectedAttachment;
- (void)pasteRichLink;
- (void)placeCaretAtStartOfBodyField;
- (void)prepareDataForDocumentAtURLForInsertion:(id)insertion completion:(id)completion;
- (void)prependMarkupString:(id)string quote:(BOOL)quote;
- (void)prependPreamble:(id)preamble quote:(BOOL)quote;
- (void)prependString:(id)string;
- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)releaseFocusAfterDismissing:(BOOL)dismissing;
- (void)removeAllAttachments;
- (void)removeMediaWithContentIdentifier:(id)identifier;
- (void)removeRichLinkFromSelection;
- (void)replaceAttachment:(id)attachment withDocumentAtURL:(id)l completion:(id)completion;
- (void)replaceFilenamePlaceholderWithAttachment:(id)attachment fileName:(id)name mimeType:(id)type contentID:(id)d;
- (void)replaceImagesIfNecessary;
- (void)retainFocusAfterPresenting;
- (void)richLinkDidFinishLoading:(id)loading;
- (void)richLinkDidStartLoading:(id)loading;
- (void)setCaretPosition:(unint64_t)position;
- (void)setDirty:(BOOL)dirty;
- (void)setMarkupString:(id)string quote:(BOOL)quote;
- (void)setOriginalAttachmentInfo:(id)info;
- (void)setPrefersFirstLineSelection;
- (void)setReplacementFilenamesByContentID:(id)d;
- (void)showOriginalAttachments;
- (void)showRichLinkAccessoryButtonForExistingRichLink:(BOOL)link message:(id)message;
- (void)stripCustomBodyIdentifiers;
- (void)updateInputAssistantItem;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts;
- (void)writingToolsSession:(id)session didReceiveAction:(int64_t)action;
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
    currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
    isPad = [currentDevice isPad];

    if (isPad)
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

+ (void)setURLCacheBlock:(id)block
{
  blockCopy = block;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MFComposeWebView_setURLCacheBlock___block_invoke;
  block[3] = &unk_1E806D728;
  v7 = blockCopy;
  v4 = setURLCacheBlock__onceToken;
  v5 = blockCopy;
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

+ (id)_webViewConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  _basicWebViewConfiguration = [objc_opt_class() _basicWebViewConfiguration];
  userContentController = [_basicWebViewConfiguration userContentController];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v6 = objc_alloc(MEMORY[0x1E6985428]);
  if (configurationCopy)
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

  [userContentController _addUserStyleSheet:v23[5]];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v12 = *MEMORY[0x1E69DD8B8];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__MFComposeWebView__webViewConfiguration___block_invoke;
  v19[3] = &unk_1E806D750;
  v21 = &v22;
  v13 = userContentController;
  v20 = v13;
  v14 = [defaultCenter addObserverForName:v12 object:0 queue:mainQueue usingBlock:v19];
  v15 = _webViewConfiguration__darkerSystemColorsStatusObserver;
  _webViewConfiguration__darkerSystemColorsStatusObserver = v14;

  v16 = v20;
  v17 = _basicWebViewConfiguration;

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
  commonWebViewConfiguration = [MEMORY[0x1E69ADD50] commonWebViewConfiguration];
  [commonWebViewConfiguration setSelectionGranularity:1];
  [commonWebViewConfiguration _setAttachmentElementEnabled:1];
  [commonWebViewConfiguration _setColorFilterEnabled:1];
  preferences = [commonWebViewConfiguration preferences];
  [preferences _setAllowFileAccessFromFileURLs:1];

  preferences2 = [commonWebViewConfiguration preferences];
  [preferences2 _setPunchOutWhiteBackgroundsInDarkMode:1];

  v43[0] = *MEMORY[0x1E699B738];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [commonWebViewConfiguration _setAdditionalSupportedImageTypes:v6];

  if (_basicWebViewConfiguration_onceToken != -1)
  {
    +[MFComposeWebView _basicWebViewConfiguration];
  }

  [sProxySchemeHandler setOnWebViewConfiguration:commonWebViewConfiguration];
  v36 = objc_alloc_init(MEMORY[0x1E69853F0]);
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  builtInPlugInsURL = [v7 builtInPlugInsURL];
  v9 = [builtInPlugInsURL URLByAppendingPathComponent:@"MessageUI.wkbundle"];
  [v36 setInjectedBundleURL:v9];

  v35 = [objc_alloc(MEMORY[0x1E6985340]) _initWithConfiguration:v36];
  em_lockdownModeEnabled = [MEMORY[0x1E695E000] em_lockdownModeEnabled];
  if (em_lockdownModeEnabled)
  {
    v11 = 0;
  }

  else
  {
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v13 = [em_userDefaults integerForKey:*MEMORY[0x1E699AB98]];

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
  mf_messageBodyFont = [MEMORY[0x1E69DB878] mf_messageBodyFont];
  familyName = [mf_messageBodyFont familyName];
  v42[2] = familyName;
  v41[3] = @"remoteContentProxySchemePrefix";
  schemePrefix = [sProxySchemeHandler schemePrefix];
  v42[3] = schemePrefix;
  v41[4] = @"showRemoteImages";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v42[4] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:5];
  [v35 _setObjectsForBundleParametersWithDictionary:v21];

  [commonWebViewConfiguration setProcessPool:v35];
  defaultWebpagePreferences = [commonWebViewConfiguration defaultWebpagePreferences];
  [defaultWebpagePreferences _setNetworkConnectionIntegrityPolicy:256];

  mEMORY[0x1E69ADD10] = [MEMORY[0x1E69ADD10] sharedHandler];
  [commonWebViewConfiguration setURLSchemeHandler:mEMORY[0x1E69ADD10] forURLScheme:*MEMORY[0x1E69B1540]];

  if (objc_opt_respondsToSelector())
  {
    [commonWebViewConfiguration _setMarkedTextInputEnabled:1];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v26 = *MEMORY[0x1E69DDC48];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __46__MFComposeWebView__basicWebViewConfiguration__block_invoke_85;
  v39[3] = &unk_1E806D778;
  v27 = v35;
  v40 = v27;
  v28 = [defaultCenter addObserverForName:v26 object:0 queue:mainQueue usingBlock:v39];
  v29 = _basicWebViewConfiguration_contentSizeCategoryObserver;
  _basicWebViewConfiguration_contentSizeCategoryObserver = v28;

  if ((em_lockdownModeEnabled & 1) == 0)
  {
    em_userDefaults2 = [MEMORY[0x1E695E000] em_userDefaults];
    v31 = *MEMORY[0x1E699AB98];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __46__MFComposeWebView__basicWebViewConfiguration__block_invoke_2;
    v37[3] = &unk_1E806D7A0;
    v38 = v27;
    v32 = [em_userDefaults2 ef_observeKeyPath:v31 options:1 autoCancelToken:0 usingBlock:v37];
    v33 = _basicWebViewConfiguration_blockRemoteContentObserver;
    _basicWebViewConfiguration_blockRemoteContentObserver = v32;
  }

  return commonWebViewConfiguration;
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

- (MFComposeWebView)initWithFrame:(CGRect)frame isQuickReply:(BOOL)reply
{
  replyCopy = reply;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = [objc_opt_class() _webViewConfiguration:reply];
  v64.receiver = self;
  v64.super_class = MFComposeWebView;
  height = [(MFComposeWebView *)&v64 initWithFrame:v10 configuration:x, y, width, height];

  if (height)
  {
    [(MFComposeWebView *)height _overrideViewportWithArguments:&unk_1F3D16728];
    v12 = MEMORY[0x1E695DFF8];
    v13 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v16 = [v13 stringWithFormat:@"applewebdata://%@", uUIDString];
    v17 = [v12 URLWithString:v16];
    v18 = [(MFComposeWebView *)height loadHTMLString:@"<body dir=auto>" baseURL:v17];

    [(MFComposeWebView *)height setNavigationDelegate:height];
    [(MFComposeWebView *)height _setInputDelegate:height];
    [(MFComposeWebView *)height setUIDelegate:height];
    [(MFComposeWebView *)height _setDragInteractionPolicy:1];
    [(MFComposeWebView *)height setFindInteractionEnabled:1];
    _remoteObjectRegistry = [(MFComposeWebView *)height _remoteObjectRegistry];
    v20 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F3D55AB0];
    bodyFieldObserverInterface = height->_bodyFieldObserverInterface;
    height->_bodyFieldObserverInterface = v20;

    [_remoteObjectRegistry registerExportedObject:height interface:height->_bodyFieldObserverInterface];
    v22 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F3DA7610];
    richLinkGeneratorInterface = height->_richLinkGeneratorInterface;
    height->_richLinkGeneratorInterface = v22;

    linkGenerator = [MEMORY[0x1E69ADD28] linkGenerator];
    [_remoteObjectRegistry registerExportedObject:linkGenerator interface:height->_richLinkGeneratorInterface];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:height selector:sel__menuDidHide_ name:*MEMORY[0x1E69DE0E0] object:0];

    height->_shouldShowStandardButtons = 1;
    v26 = objc_opt_new();
    attachmentsByUniqueIdentifier = height->_attachmentsByUniqueIdentifier;
    height->_attachmentsByUniqueIdentifier = v26;

    v28 = objc_opt_new();
    attachmentCIDsByIdentifier = height->_attachmentCIDsByIdentifier;
    height->_attachmentCIDsByIdentifier = v28;

    v30 = objc_opt_new();
    originalAttachmentWrappers = height->_originalAttachmentWrappers;
    height->_originalAttachmentWrappers = v30;

    height->_originalAttachmentsWereRestored = 0;
    v32 = objc_opt_new();
    richLinkActivityIndicators = height->_richLinkActivityIndicators;
    height->_richLinkActivityIndicators = v32;

    height->_isQuickReply = replyCopy;
    if ([(MFComposeWebView *)height _useComposeToolbar])
    {
      v34 = objc_alloc(MEMORY[0x1E69DD6C0]);
      scrollView = [(MFComposeWebView *)height scrollView];
      v36 = [v34 initWithScrollView:scrollView edge:4];

      objc_storeStrong(&height->_composeInputAccessoryPocketContainerInteraction, v36);
      v37 = [[MFComposeInputAccessoryView alloc] initWithToolbarItems:0];
      composeInputAccessoryView = height->_composeInputAccessoryView;
      height->_composeInputAccessoryView = v37;

      [(MFComposeInputAccessoryView *)height->_composeInputAccessoryView addInteraction:v36];
      window = [(MFComposeWebView *)height window];
      windowScene = [window windowScene];
      effectiveGeometry = [windowScene effectiveGeometry];
      interfaceOrientation = [effectiveGeometry interfaceOrientation];

      [(MFComposeWebView *)height _updatePocketContainerInteractionVisible:(interfaceOrientation - 5) < 0xFFFFFFFFFFFFFFFELL];
    }

    objc_initWeak(&location, height);
    v43 = MEMORY[0x1E699AF40];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke;
    v61[3] = &unk_1E806D7C8;
    objc_copyWeak(&v62, &location);
    [v43 addScriptHandlerForWebView:height key:@"PlainTextLinkHighlighted" handler:v61];
    v44 = MEMORY[0x1E699AF40];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_2;
    v59[3] = &unk_1E806D7C8;
    objc_copyWeak(&v60, &location);
    [v44 addScriptHandlerForWebView:height key:@"RichLinkHighlighted" handler:v59];
    v45 = MEMORY[0x1E699AF40];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_3;
    v57[3] = &unk_1E806D7C8;
    objc_copyWeak(&v58, &location);
    [v45 addScriptHandlerForWebView:height key:@"RichLinkPlaceholderInserted" handler:v57];
    v46 = MEMORY[0x1E699AF40];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_4;
    v55[3] = &unk_1E806D7F0;
    objc_copyWeak(&v56, &location);
    [v46 addScriptHandlerForWebView:height key:@"RichLinkLoaded" handler:v55];
    if ((_os_feature_enabled_impl() & replyCopy) == 1)
    {
      v47 = MEMORY[0x1E699AF40];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_5;
      v53[3] = &unk_1E806D818;
      objc_copyWeak(&v54, &location);
      [v47 addScriptHandlerForWebView:height key:@"DidChangeHeight" handler:v53];
      v48 = MEMORY[0x1E699AF40];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __47__MFComposeWebView_initWithFrame_isQuickReply___block_invoke_6;
      v51[3] = &unk_1E806D818;
      objc_copyWeak(&v52, &location);
      [v48 addScriptHandlerForWebView:height key:@"MessageBodyIsEmpty" handler:v51];
      objc_destroyWeak(&v52);
      objc_destroyWeak(&v54);
    }

    height->_webProcessCrashCount = 0;
    lastCrashDate = height->_lastCrashDate;
    height->_lastCrashDate = 0;

    objc_destroyWeak(&v56);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  return height;
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
  becomeFirstResponder = [(MFComposeWebView *)&v9 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    [(MFComposeWebView *)self updateInputAssistantItem];
    mailComposeViewDelegate = [(MFComposeWebView *)self mailComposeViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      [mailComposeViewDelegate composeWebViewDidBecomeFirstResponder];
    }

    [_TtC9MessageUI20MessageUITipsManager setShouldDisplayTo:1];
    WeakRetained = objc_loadWeakRetained(&self->_composeCoordinator);
    [WeakRetained setFocusedField:@"body"];

    if ([(MFComposeWebView *)self _useComposeToolbar])
    {
      composeInputAccessoryView = [(MFComposeWebView *)self composeInputAccessoryView];
      [composeInputAccessoryView setHidden:0];

      v7 = objc_loadWeakRetained(&self->_composeWebViewDelegate);
      if (objc_opt_respondsToSelector())
      {
        [v7 composeWebView:self didHideInputAccessoryView:0];
      }
    }
  }

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v8.receiver = self;
  v8.super_class = MFComposeWebView;
  resignFirstResponder = [(MFComposeWebView *)&v8 resignFirstResponder];
  if (resignFirstResponder)
  {
    mailComposeViewDelegate = [(MFComposeWebView *)self mailComposeViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      [mailComposeViewDelegate composeWebViewDidResignFirstResponder];
    }

    [_TtC9MessageUI20MessageUITipsManager setShouldDisplayTo:0];
    if ([(MFComposeWebView *)self _useComposeToolbar])
    {
      composeInputAccessoryView = [(MFComposeWebView *)self composeInputAccessoryView];
      [composeInputAccessoryView setHidden:1];

      WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained composeWebView:self didHideInputAccessoryView:1];
      }
    }
  }

  return resignFirstResponder;
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  [(MFComposeWebView *)self _canPerformCommandAction:action withSender:senderCopy];
  if (sel_selectAll_ == action)
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
    if (sel_makeRichLinkFromSelection == action)
    {
      selectionContainsLink = self->_selectionContainsLink;
      goto LABEL_18;
    }

    if (sel_pasteRichLink == action)
    {
      generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
      v11 = [generalPasteboard URL];
      selectionContainsLink = [v11 ef_isHTTPOrHTTPSURL];

      goto LABEL_18;
    }

    selfCopy = self;
    v7 = &selfCopy;
LABEL_8:
    v7->super_class = MFComposeWebView;
    selectionContainsLink = [(objc_super *)v7 canPerformAction:action withSender:senderCopy, selfCopy];
    goto LABEL_18;
  }

  selectionContainsLink = sel__increaseQuoteLevel_ == action || sel__decreaseQuoteLevel_ == action;
LABEL_18:

  return selectionContainsLink & 1;
}

- (BOOL)_canPerformCommandAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (sel__pasteAsQuotation_ == action)
    {
      generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
      items = [generalPasteboard items];
      v7 = [items count] != 0;
    }

    else
    {
      v6 = +[MFComposeWebView menuCommands];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__MFComposeWebView__canPerformCommandAction_withSender___block_invoke;
      v11[3] = &__block_descriptor_40_e27_B16__0__MFMailMenuCommand_8l;
      v11[4] = action;
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
  _textInputTraits = [(MFComposeWebView *)&v55 _textInputTraits];
  mailComposeViewDelegate = [(MFComposeWebView *)self mailComposeViewDelegate];
  if (mailComposeViewDelegate)
  {
    if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && ([mailComposeViewDelegate isSmartReplyRestricted] & 1) == 0)
    {
      previousInputContextHistory = [(MFComposeWebView *)self previousInputContextHistory];
      v45 = previousInputContextHistory == 0;

      if (v45)
      {
        inputContextHistory = [mailComposeViewDelegate inputContextHistory];
        [(MFComposeWebView *)self setPreviousInputContextHistory:inputContextHistory];

        v15 = EMLogCompose();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          previousInputContextHistory2 = [(MFComposeWebView *)self previousInputContextHistory];
          ef_publicDescription = [previousInputContextHistory2 ef_publicDescription];
          *buf = 138543362;
          v58 = ef_publicDescription;
          _os_log_impl(&dword_1BE819000, v15, OS_LOG_TYPE_DEFAULT, "[SmartReply] Updated input context history: %{public}@", buf, 0xCu);
        }
      }

      previousInputContextHistory3 = [(MFComposeWebView *)self previousInputContextHistory];
      v18 = objc_alloc(MEMORY[0x1E69DCAF8]);
      threadIdentifier = [previousInputContextHistory3 threadIdentifier];
      recipientNamesByEmailAddress = [previousInputContextHistory3 recipientNamesByEmailAddress];
      firstPerson = [previousInputContextHistory3 firstPerson];
      primaryRecipients = [previousInputContextHistory3 primaryRecipients];
      secondaryRecipients = [previousInputContextHistory3 secondaryRecipients];
      infoDict = [previousInputContextHistory3 infoDict];
      v50 = [v18 initWithThreadIdentifier:threadIdentifier participantsIDtoNames:recipientNamesByEmailAddress firstPerson:firstPerson primaryRecipients:primaryRecipients secondaryRecipients:secondaryRecipients info:infoDict];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = [previousInputContextHistory3 originalContentMessages];
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
            sender = [v28 sender];
            emailAddressValue = [sender emailAddressValue];
            simpleAddress = [emailAddressValue simpleAddress];

            v32 = objc_alloc_init(MEMORY[0x1E69D9678]);
            bodyText = [v28 bodyText];
            [v32 setText:bodyText];

            [v32 setSenderIdentifier:simpleAddress];
            date = [v28 date];
            [v32 setTimestamp:date];

            searchableMessageID = [v28 searchableMessageID];
            stringValue = [searchableMessageID stringValue];
            [v32 setEntryIdentifier:stringValue];

            v37 = MEMORY[0x1E695DFD8];
            toList = [v28 toList];
            v39 = [toList ef_map:&__block_literal_global_262];
            v40 = [v37 setWithArray:v39];
            [v32 setPrimaryRecipientIdentifiers:v40];

            v41 = MEMORY[0x1E695DFD8];
            ccList = [v28 ccList];
            v43 = [ccList ef_map:&__block_literal_global_264];
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
      previousInputContextHistory3 = [mailComposeViewDelegate allRecipientNamesAndAddresses];
      sendingEmailAddressIfExists = [mailComposeViewDelegate sendingEmailAddressIfExists];
      v4 = sendingEmailAddressIfExists;
      v5 = &stru_1F3CF3758;
      if (sendingEmailAddressIfExists)
      {
        v5 = sendingEmailAddressIfExists;
      }

      obj = v5;

      v6 = objc_alloc(MEMORY[0x1E69DCAF8]);
      second = [previousInputContextHistory3 second];
      v8 = [MEMORY[0x1E695DFD8] setWithObject:obj];
      v50 = [v6 initWithRecipientIdentifiers:second senderIdentifiers:v8];

      first = [previousInputContextHistory3 first];
      [v50 updateRecipientNames:first];

      v45 = 0;
    }

    v10 = v50;
    [_textInputTraits setInputContextHistory:v50];
    if (v45)
    {
      activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
      [activeKeyboard responseContextDidChange];

      v10 = v50;
    }
  }

  return _textInputTraits;
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
  _remoteObjectRegistry = [(MFComposeWebView *)self _remoteObjectRegistry];
  [_remoteObjectRegistry unregisterExportedObject:self interface:self->_bodyFieldObserverInterface];

  _remoteObjectRegistry2 = [(MFComposeWebView *)self _remoteObjectRegistry];
  linkGenerator = [MEMORY[0x1E69ADD28] linkGenerator];
  [_remoteObjectRegistry2 unregisterExportedObject:linkGenerator interface:self->_richLinkGeneratorInterface];

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
  firstObject = [(NSArray *)self->_selectedAttachmentIdentifiers firstObject];
  v6 = [(NSMutableDictionary *)attachmentsByUniqueIdentifier objectForKeyedSubscript:firstObject];

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
  inputViewForPreservingFocus = [(MFComposeWebView *)self inputViewForPreservingFocus];
  if (inputViewForPreservingFocus)
  {
  }

  else if ([(MFComposeWebView *)self _useComposeToolbar])
  {
    composeInputAccessoryView = [(MFComposeWebView *)self composeInputAccessoryView];
    goto LABEL_6;
  }

  v6.receiver = self;
  v6.super_class = MFComposeWebView;
  composeInputAccessoryView = [(MFComposeWebView *)&v6 inputAccessoryView];
LABEL_6:

  return composeInputAccessoryView;
}

- (CGRect)_rectFromMessageDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy ef_objectOfClass:objc_opt_class() forKey:@"x"];
  [v4 floatValue];
  v6 = v5;

  v7 = [dictCopy ef_objectOfClass:objc_opt_class() forKey:@"y"];
  [v7 floatValue];
  v9 = v8;

  v10 = [dictCopy ef_objectOfClass:objc_opt_class() forKey:@"width"];
  [v10 floatValue];
  v12 = v11;

  v13 = [dictCopy ef_objectOfClass:objc_opt_class() forKey:@"height"];
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

- (CGRect)_linkAccessoryButtonFrameForSourceRect:(CGRect)rect
{
  height = rect.size.height;
  y = rect.origin.y;
  v6 = rect.origin.x + rect.size.width;
  v7 = rect.origin.x + rect.size.width + 8.0;
  v8 = rect.origin.y + -2.0;
  v17.size.width = 34.0;
  v17.size.height = 28.0;
  v17.origin.x = v7;
  v17.origin.y = rect.origin.y + -2.0;
  MaxX = CGRectGetMaxX(v17);
  scrollView = [(MFComposeWebView *)self scrollView];
  [scrollView frame];
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

- (void)showRichLinkAccessoryButtonForExistingRichLink:(BOOL)link message:(id)message
{
  linkCopy = link;
  messageCopy = message;
  [(MFComposeWebView *)self _rectFromMessageDict:messageCopy];
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  if (linkCopy || v9 > 0.0 && v10 > 0.0 && !CGRectEqualToRect(*&v7, self->_richLinkSourceRect))
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
    v53 = [messageCopy valueForKey:@"url"];
    v23 = [messageCopy objectForKeyedSubscript:@"isAnchor"];
    bOOLValue = [v23 BOOLValue];

    makeLinkAccessoryButton = [(MFComposeWebView *)self makeLinkAccessoryButton];
    [makeLinkAccessoryButton setTag:linkCopy];
    [makeLinkAccessoryButton setFrame:{v16, v18, v20, v22}];
    if (linkCopy)
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
    v64 = linkCopy;
    v63[4] = self;
    v52 = v26;
    v31 = [MEMORY[0x1E69DC628] actionWithTitle:v26 image:0 identifier:0 handler:v63];
    v32 = [MEMORY[0x1E695DF70] arrayWithObject:v31];
    if (v53)
    {
      v33 = MEMORY[0x1E69DC628];
      titleOpenLink = [MEMORY[0x1E69ADD28] titleOpenLink];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __75__MFComposeWebView_showRichLinkAccessoryButtonForExistingRichLink_message___block_invoke_2;
      v60[3] = &unk_1E806D8C8;
      v35 = v53;
      v61 = v35;
      selfCopy = self;
      v36 = [v33 actionWithTitle:titleOpenLink image:0 identifier:0 handler:v60];

      [v32 addObject:v36];
      if (_os_feature_enabled_impl() && !linkCopy && ((bOOLValue ^ 1) & 1) == 0)
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
        v41 = [messageCopy valueForKey:@"description"];
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
    [makeLinkAccessoryButton setMenu:v48];

    scrollView = [(MFComposeWebView *)self scrollView];
    makeLinkAccessoryButton2 = [(MFComposeWebView *)self makeLinkAccessoryButton];
    [scrollView addSubview:makeLinkAccessoryButton2];

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

- (id)_actionWithTitle:(void *)title glyphName:(void *)name handler:
{
  v7 = a2;
  titleCopy = title;
  nameCopy = name;
  if (self)
  {
    self = [(MFComposeWebView *)self _actionWithTitle:v7 glyphName:titleCopy usePrivateCatalog:0 handler:nameCopy];
  }

  return self;
}

- (void)richLinkDidStartLoading:(id)loading
{
  loadingCopy = loading;
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

  v10 = [loadingCopy ef_objectOfClass:objc_opt_class() forKey:@"linkID"];
  if (v10)
  {
    if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
    {
      richLinkActivityIndicators = [(MFComposeWebView *)self richLinkActivityIndicators];
      v13 = [richLinkActivityIndicators objectForKeyedSubscript:v10];

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
        centerXAnchor = [v18 centerXAnchor];
        centerXAnchor2 = [v20 centerXAnchor];
        v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        [v18 addConstraint:v23];

        centerYAnchor = [v18 centerYAnchor];
        centerYAnchor2 = [v20 centerYAnchor];
        v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        [v18 addConstraint:v26];

        scrollView = [(MFComposeWebView *)self scrollView];
        [scrollView addSubview:v18];

        richLinkActivityIndicators2 = [(MFComposeWebView *)self richLinkActivityIndicators];
        [richLinkActivityIndicators2 setObject:v20 forKeyedSubscript:v10];
      }
    }
  }
}

- (void)richLinkDidFinishLoading:(id)loading
{
  loadingCopy = loading;
  if (loadingCopy)
  {
    richLinkActivityIndicators = [(MFComposeWebView *)self richLinkActivityIndicators];
    v5 = [richLinkActivityIndicators objectForKeyedSubscript:loadingCopy];

    superview = [v5 superview];
    [superview removeFromSuperview];

    [v5 removeFromSuperview];
    richLinkActivityIndicators2 = [(MFComposeWebView *)self richLinkActivityIndicators];
    [richLinkActivityIndicators2 removeObjectForKey:loadingCopy];
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
    scrollView = [(MFComposeWebView *)self scrollView];
    [scrollView addSubview:self->_makeLinkAccessoryButton];

    makeLinkAccessoryButton = self->_makeLinkAccessoryButton;
  }

  return makeLinkAccessoryButton;
}

- (id)_makeRichLinkTemplateButtonWithOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  v5 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v5 setFrame:{x, y, 34.0, 28.0}];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v5 setTintColor:whiteColor];

  systemGray2Color = [MEMORY[0x1E69DC888] systemGray2Color];
  [v5 setBackgroundColor:systemGray2Color];

  layer = [v5 layer];
  [layer setCornerRadius:9.0];

  return v5;
}

- (void)_showmakeLinkAccessoryButton
{
  makeLinkAccessoryButton = [(MFComposeWebView *)self makeLinkAccessoryButton];
  [makeLinkAccessoryButton setHidden:0];
  v3 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MFComposeWebView__showmakeLinkAccessoryButton__block_invoke;
  v5[3] = &unk_1E806C570;
  v4 = makeLinkAccessoryButton;
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
      makeLinkAccessoryButton = [(MFComposeWebView *)self makeLinkAccessoryButton];
      v5 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__MFComposeWebView_hideMakeLinkAccessoryButton__block_invoke;
      v9[3] = &unk_1E806C570;
      v10 = makeLinkAccessoryButton;
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
    makeLinkAccessoryButton = [(MFComposeWebView *)self makeLinkAccessoryButton];
    menu = [makeLinkAccessoryButton menu];
    [makeLinkAccessoryButton setMenu:0];
    [makeLinkAccessoryButton setMenu:menu];
  }
}

- (void)insertRichLinkWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy insertRichLinkWithURL:lCopy completionHandler:handlerCopy];
}

- (void)makeRichLinkFromSelection
{
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy makeRichLinkFromSelection];
}

- (void)removeRichLinkFromSelection
{
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy removeRichLinkFromSelection];

  [(MFComposeWebView *)self hideMakeLinkAccessoryButton];
}

- (void)pasteRichLink
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  v5 = [generalPasteboard URL];

  if ([v5 ef_isHTTPOrHTTPSURL])
  {
    _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
    [_bodyFieldProxy insertRichLinkWithURL:v5 completionHandler:&__block_literal_global_321];
  }
}

- (void)enableQuickReply:(BOOL)reply
{
  if (self->_isQuickReply != reply)
  {
    replyCopy = reply;
    self->_isQuickReply = reply;
    _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
    [_bodyFieldProxy enableQuickReply:replyCopy];
  }
}

- (void)invalidateInputContextHistory
{
  [(MFComposeWebView *)self setPreviousInputContextHistory:0];
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard responseContextDidChange];
}

- (BOOL)_useComposeToolbar
{
  if (!MFSolariumFeatureEnabled() || ([MEMORY[0x1E69DC938] mf_isPadIdiom] & 1) != 0)
  {
    return 0;
  }

  composeCoordinator = [(MFComposeWebView *)self composeCoordinator];
  v3 = composeCoordinator == 0;

  return v3;
}

- (double)inputAccessoryViewHeight
{
  composeInputAccessoryView = [(MFComposeWebView *)self composeInputAccessoryView];
  inputAccessoryView = [(MFComposeWebView *)self inputAccessoryView];

  v5 = 0.0;
  if (inputAccessoryView && composeInputAccessoryView)
  {
    [composeInputAccessoryView intrinsicContentSize];
    v5 = v6;
  }

  return v5;
}

- (void)_updatePocketContainerInteractionVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(MFComposeWebView *)self _useComposeToolbar])
  {
    composeInputAccessoryView = self->_composeInputAccessoryView;
    if (composeInputAccessoryView)
    {
      if (self->_composeInputAccessoryPocketContainerInteraction)
      {
        interactions = [(MFComposeInputAccessoryView *)composeInputAccessoryView interactions];
        v7 = interactions;
        composeInputAccessoryPocketContainerInteraction = self->_composeInputAccessoryPocketContainerInteraction;
        if (visibleCopy)
        {
          v9 = [interactions containsObject:composeInputAccessoryPocketContainerInteraction];

          if ((v9 & 1) == 0)
          {
            v10 = self->_composeInputAccessoryView;
            v11 = self->_composeInputAccessoryPocketContainerInteraction;

            [(MFComposeInputAccessoryView *)v10 addInteraction:v11];
          }
        }

        else
        {
          v12 = [interactions containsObject:composeInputAccessoryPocketContainerInteraction];

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
    _remoteObjectRegistry = [(MFComposeWebView *)self _remoteObjectRegistry];
    v5 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F3DA7670];
    v6 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v5];
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

    _remoteObjectRegistry = [(MFComposeWebView *)self _remoteObjectRegistry];
    v15 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v4];
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
    compositionContext = [WeakRetained compositionContext];
    contextID = [compositionContext contextID];
  }

  else
  {
    contextID = self->_compositionContextID;
  }

  return contextID;
}

- (id)_attachmentInfoByURL
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  compositionContext = [WeakRetained compositionContext];
  attachments = [compositionContext attachments];

  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(attachments, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = attachments;
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
        contentID = [v8 contentID];
        v10 = MFCreateURLForContentID();

        v11 = [MFComposeAttachmentInfo alloc];
        fileName = [v8 fileName];
        isBasicImage = [v8 isBasicImage];
        isDisplayableImage = [v8 isDisplayableImage];
        className = [v8 className];
        v16 = [(MFComposeAttachmentInfo *)v11 initWithURL:v10 filename:fileName isBasicImage:isBasicImage isDisplayableImage:isDisplayableImage className:className];
        absoluteString = [v10 absoluteString];
        [v4 setObject:v16 forKeyedSubscript:absoluteString];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  return v4;
}

- (void)appendOrReplace:(id)replace withMarkupString:(id)string quote:(BOOL)quote completion:(id)completion
{
  quoteCopy = quote;
  replaceCopy = replace;
  stringCopy = string;
  completionCopy = completion;
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  compositionType = [WeakRetained compositionType];
  _attachmentInfoByURL = [(MFComposeWebView *)self _attachmentInfoByURL];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__MFComposeWebView_appendOrReplace_withMarkupString_quote_completion___block_invoke;
  v18[3] = &unk_1E806D910;
  v18[4] = self;
  v17 = completionCopy;
  v19 = v17;
  [_bodyFieldProxy appendOrReplace:replaceCopy withMarkupString:stringCopy quote:quoteCopy composeType:compositionType attachmentInfoByURL:_attachmentInfoByURL completionHandler:v18];
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

- (void)insertString:(id)string
{
  stringCopy = string;
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy insertString:stringCopy];

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
        contentID = [v5 contentID];
        v8 = MFCreateURLForContentID();
        fileName = [v5 fileName];
        isBasicImage = [v5 isBasicImage];
        isDisplayableImage = [v5 isDisplayableImage];
        className = [v5 className];
        v13 = [(MFComposeAttachmentInfo *)v6 initWithURL:v8 filename:fileName isBasicImage:isBasicImage isDisplayableImage:isDisplayableImage className:className];
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
  promise = [MEMORY[0x1E699B868] promise];
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  _attachmentInfoByIdentifier = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__MFComposeWebView_plainTextContent__block_invoke;
  v9[3] = &unk_1E806D938;
  v6 = promise;
  v10 = v6;
  [_bodyFieldProxy plainTextContentUsingAttachmentInfoByIdentifier:_attachmentInfoByIdentifier completionHandler:v9];

  future = [v6 future];

  return future;
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

- (void)setCaretPosition:(unint64_t)position
{
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy setCaretPosition:position];
}

- (id)getCaretPosition
{
  promise = [MEMORY[0x1E699B868] promise];
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__MFComposeWebView_getCaretPosition__block_invoke;
  v8[3] = &unk_1E806D960;
  v5 = promise;
  v9 = v5;
  [_bodyFieldProxy getCaretPosition:v8];

  future = [v5 future];

  return future;
}

- (_NSRange)selectedRange
{
  v2 = 0;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)insertDocumentWithURL:(id)l isDrawingFile:(BOOL)file
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MFComposeWebView_insertDocumentWithURL_isDrawingFile___block_invoke;
  v4[3] = &unk_1E806D9B0;
  v4[4] = self;
  [(MFComposeWebView *)self prepareDataForDocumentAtURLForInsertion:l completion:v4];
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

- (void)prepareDataForDocumentAtURLForInsertion:(id)insertion completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  insertionCopy = insertion;
  completionCopy = completion;
  lastPathComponent = [insertionCopy lastPathComponent];
  v9 = [(MFComposeWebView *)self mimeTypeForFilename:lastPathComponent];
  startAccessingSecurityScopedResource = [insertionCopy startAccessingSecurityScopedResource];
  v14 = 0;
  v11 = [MEMORY[0x1E69AD6B0] dataWithContentsOfURL:insertionCopy options:1 error:&v14];
  v12 = v14;
  if (startAccessingSecurityScopedResource)
  {
    [insertionCopy stopAccessingSecurityScopedResource];
  }

  if (!v11 || !lastPathComponent || !v9)
  {
    v13 = EMLogCompose();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413314;
      v16 = insertionCopy;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = lastPathComponent;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_1BE819000, v13, OS_LOG_TYPE_ERROR, "Error while preparing data for the document at url: %@\ndata: %@\nfileName: %@\nmimeType: %@\n%@", buf, 0x34u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11, lastPathComponent, v9);
  }
}

- (id)mimeTypeForFilename:(id)filename
{
  v3 = [MEMORY[0x1E69B15F0] mimeTypeForFileName:filename];
  if (![(__CFString *)v3 length])
  {

    v3 = @"application/octet-stream";
  }

  return v3;
}

- (void)setOriginalAttachmentInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy count])
  {
    objc_storeStrong(&self->_originalAttachmentWrappers, info);
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
          contentID = [v5 contentID];
          preferredFilename = [v5 preferredFilename];
          mimeType = [v5 mimeType];
          regularFileContents = [v5 regularFileContents];
          _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __43__MFComposeWebView_showOriginalAttachments__block_invoke;
          v19[3] = &unk_1E806D9D8;
          v19[4] = self;
          v11 = regularFileContents;
          v20 = v11;
          v12 = preferredFilename;
          v21 = v12;
          v13 = mimeType;
          v22 = v13;
          v14 = contentID;
          v23 = v14;
          [_bodyFieldProxy countDuplicatedAttachments:v12 completionHandler:v19];

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

- (void)insertDocumentWithData:(id)data fileName:(id)name mimeType:(id)type contentID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  nameCopy = name;
  typeCopy = type;
  dCopy = d;
  v14 = EMLogCompose();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = dCopy;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "Inserting document data with content ID %{public}@", buf, 0xCu);
  }

  if (dataCopy && nameCopy && ([(MFComposeWebView *)self _addInlineAttachmentWithData:dataCopy fileName:nameCopy type:typeCopy contentID:dCopy], v15 = objc_claimAutoreleasedReturnValue(), (v16 = v15) != 0))
  {
    className = [v15 className];
    v22 = [className isEqualToString:0x1F3CF38B8];

    objc_initWeak(buf, self);
    _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
    isSinglePagePDFFile = [v16 isSinglePagePDFFile];
    fileUTType = [v16 fileUTType];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__MFComposeWebView_insertDocumentWithData_fileName_mimeType_contentID___block_invoke;
    v23[3] = &unk_1E806DA00;
    objc_copyWeak(&v25, buf);
    v21 = v16;
    v24 = v21;
    [_bodyFieldProxy insertAttachmentAsImage:v22 isSinglePagePDF:isSinglePagePDFFile contentType:fileUTType completionHandler:v23];

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

- (void)insertPhotoOrVideoWithAssetIdentifier:(id)identifier infoDictionary:(id)dictionary completion:(id)completion
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  completionCopy = completion;
  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69DDE08]];
  v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69DE8E0]];
  v12 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69DDE00]];
  v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69DE960]];
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

  [(MFComposeWebView *)self _insertMediaWithAssetIdentifier:identifierCopy mediaURL:v16 mediaType:v12 mediaData:v13 isVideo:v14 & v15 completion:completionCopy];
}

- (void)insertMediaWithPhotoPickerItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  contentIdentifier = [itemCopy contentIdentifier];
  assetURL = [itemCopy assetURL];
  contentType = [itemCopy contentType];
  identifier = [contentType identifier];
  assetData = [itemCopy assetData];
  -[MFComposeWebView _insertMediaWithAssetIdentifier:mediaURL:mediaType:mediaData:isVideo:completion:](self, "_insertMediaWithAssetIdentifier:mediaURL:mediaType:mediaData:isVideo:completion:", contentIdentifier, assetURL, identifier, assetData, [itemCopy isVideo], completionCopy);
}

- (void)_insertMediaWithAssetIdentifier:(id)identifier mediaURL:(id)l mediaType:(id)type mediaData:(id)data isVideo:(BOOL)video completion:(id)completion
{
  videoCopy = video;
  identifierCopy = identifier;
  lCopy = l;
  typeCopy = type;
  dataCopy = data;
  completionCopy = completion;
  if (videoCopy)
  {
    v29 = dataCopy;
    v19 = [(MFComposeWebView *)self _filenameForVideoAttachmentAtURL:lCopy];
    if (typeCopy)
    {
      v20 = [MEMORY[0x1E6982C40] typeWithIdentifier:typeCopy];
    }

    else
    {
      v20 = 0;
    }

    preferredMIMEType = [v20 preferredMIMEType];
    v26 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:25];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke;
    v42[3] = &unk_1E806DA28;
    v42[4] = self;
    v43 = lCopy;
    v27 = preferredMIMEType;
    v44 = v27;
    v28 = v19;
    v45 = v28;
    v46 = identifierCopy;
    v47 = completionCopy;
    [v26 performBlock:v42];

    dataCopy = v29;
  }

  else
  {
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__3;
    v40[4] = __Block_byref_object_dispose__3;
    v21 = dataCopy;
    v41 = v21;
    if (!lCopy || v21)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __100__MFComposeWebView__insertMediaWithAssetIdentifier_mediaURL_mediaType_mediaData_isVideo_completion___block_invoke_5;
      v30[3] = &unk_1E806DA50;
      v30[4] = self;
      v33 = v40;
      v31 = identifierCopy;
      v32 = completionCopy;
      mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
      [mainThreadScheduler performSyncBlock:v30];

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
      v35 = lCopy;
      selfCopy = self;
      v37 = identifierCopy;
      v38 = completionCopy;
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

- (void)removeMediaWithContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v14 = v6;
  v15 = &v23;
  v16 = &v17;
  [(NSMutableDictionary *)attachmentsByUniqueIdentifier enumerateKeysAndObjectsUsingBlock:v13];
  if (v24[5] && v18[5])
  {
    v7 = [(MFComposeWebView *)self _attachmentForIdentifier:?];
    _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
    v9 = v18[5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__MFComposeWebView_removeMediaWithContentIdentifier___block_invoke_2;
    v11[3] = &unk_1E806C520;
    v11[4] = self;
    v10 = v7;
    v12 = v10;
    [_bodyFieldProxy removeMediaAttachment:v9 completionHandler:v11];
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

- (void)_insertDocumentFromData:(id)data isImage:(BOOL)image contentID:(id)d
{
  imageCopy = image;
  dataCopy = data;
  dCopy = d;
  if (dataCopy)
  {
    v10 = dataCopy;
    v18 = 0;
    v19 = 0;
    v11 = [(MFComposeWebView *)self _getExtensionAndMimeTypeForImageData:v10 outExtension:&v19 outMimeType:&v18];
    v12 = v19;
    v13 = v18;
    if (v11)
    {
      v14 = MEMORY[0x1E696AEC0];
      if (imageCopy)
      {
        imageCount = self->_imageCount;
        self->_imageCount = imageCount + 1;
        v16 = [v14 stringWithFormat:@"image%lu.%@", imageCount, v12];
      }

      else
      {
        nextAttachmentName = [(MFComposeWebView *)self nextAttachmentName];
        v16 = [v14 stringWithFormat:@"%@.%@", nextAttachmentName, v12];
      }

      [(MFComposeWebView *)self insertDocumentWithData:v10 fileName:v16 mimeType:v13 contentID:dCopy];
    }

    else
    {
      v16 = 0;
    }
  }
}

- (id)contentIDsForMediaAttachments
{
  allValues = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier allValues];
  v3 = [allValues ef_compactMap:&__block_literal_global_416];

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
  composeCoordinator = [(MFComposeWebView *)self composeCoordinator];

  if (!composeCoordinator)
  {
    if ([(MFComposeWebView *)self _useComposeToolbar])
    {
      composeInputAccessoryView = [(MFComposeWebView *)self composeInputAccessoryView];
      _toolbarItems = [(MFComposeWebView *)self _toolbarItems];
      [composeInputAccessoryView updateToolbarItems:_toolbarItems];
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

      inputAssistantItem = [(MFComposeWebView *)self inputAssistantItem];
      [inputAssistantItem _setShowsBarButtonItemsInline:1];
      _mailComposeEditingLeadingInputAssistantGroups = [(MFComposeWebView *)self _mailComposeEditingLeadingInputAssistantGroups];
      if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
      {
        leadingBarButtonGroups = [inputAssistantItem leadingBarButtonGroups];
        firstObject = [leadingBarButtonGroups firstObject];
        if ([firstObject _isSystemGroup])
        {
          v9 = [firstObject _setShouldAlwaysCollapse:1];
        }

        else
        {
          v12 = EMLogCompose();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [MFComposeWebView updateInputAssistantItem];
          }
        }

        v13 = __44__MFComposeWebView_updateInputAssistantItem__block_invoke(v9, leadingBarButtonGroups, _mailComposeEditingLeadingInputAssistantGroups);
        [inputAssistantItem setLeadingBarButtonGroups:v13];
      }

      else
      {
        [inputAssistantItem setLeadingBarButtonGroups:_mailComposeEditingLeadingInputAssistantGroups];
        appleIntelligenceGroup = [(MFComposeWebView *)self appleIntelligenceGroup];
        if (appleIntelligenceGroup)
        {
          v11 = 44.0;
        }

        else
        {
          v11 = 64.0;
        }

        [inputAssistantItem _setMarginOverride:v11];
      }

      _mailComposeEditingTrailingInputAssistantGroups = [(MFComposeWebView *)self _mailComposeEditingTrailingInputAssistantGroups];
      if ([_mailComposeEditingTrailingInputAssistantGroups count])
      {
        [inputAssistantItem setTrailingBarButtonGroups:_mailComposeEditingTrailingInputAssistantGroups];
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

- (void)getHTMLDataObjectRemovingSignature:(BOOL)signature removeQuotes:(BOOL)quotes completion:(id)completion
{
  signatureCopy = signature;
  completionCopy = completion;
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  _attachmentInfoByIdentifier = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__MFComposeWebView_getHTMLDataObjectRemovingSignature_removeQuotes_completion___block_invoke;
  v12[3] = &unk_1E806DB08;
  quotesCopy = quotes;
  v11 = completionCopy;
  v13 = v11;
  [_bodyFieldProxy htmlStringsAttachmentURLsAndPlainTextAlternativeRemovingSignature:signatureCopy attachmentInfoByIdentifier:_attachmentInfoByIdentifier completion:v12];
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
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy placeCaretAtStartOfBody];
}

- (id)htmlString
{
  v3 = EMLogCompose();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "MFComposeWebView - htmlString", buf, 2u);
  }

  promise = [MEMORY[0x1E699B868] promise];
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  _attachmentInfoByIdentifier = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__MFComposeWebView_htmlString__block_invoke;
  v10[3] = &unk_1E806DB30;
  v7 = promise;
  v11 = v7;
  [_bodyFieldProxy htmlStringUsingAttachmentInfoByIdentifier:_attachmentInfoByIdentifier completionHandler:v10];

  future = [v7 future];

  return future;
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

  promise = [MEMORY[0x1E699B868] promise];
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__MFComposeWebView_containsRichText__block_invoke;
  v9[3] = &unk_1E806D6F0;
  v6 = promise;
  v10 = v6;
  [_bodyFieldProxy containsRichText:v9];

  future = [v6 future];

  return future;
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

- (CGRect)rectOfElementWithID:(id)d
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
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy forceNextSelectionFromSecondToFirstLine];
}

- (void)prependMarkupString:(id)string quote:(BOOL)quote
{
  quoteCopy = quote;
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFComposeWebView.m" lineNumber:1341 description:{@"string is nil, JavaScript will crash"}];
  }

  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  compositionType = [WeakRetained compositionType];
  _attachmentInfoByIdentifier = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  [_bodyFieldProxy addMarkupString:stringCopy quote:quoteCopy emptyFirst:0 prepended:1 composeType:compositionType attachmentInfoByURL:_attachmentInfoByIdentifier];
}

- (void)appendMarkupString:(id)string quote:(BOOL)quote
{
  quoteCopy = quote;
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFComposeWebView.m" lineNumber:1346 description:{@"string is nil, JavaScript will crash"}];
  }

  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  compositionType = [WeakRetained compositionType];
  _attachmentInfoByIdentifier = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  [_bodyFieldProxy addMarkupString:stringCopy quote:quoteCopy emptyFirst:0 prepended:0 composeType:compositionType attachmentInfoByURL:_attachmentInfoByIdentifier];
}

- (void)addMailAttributesBeforeDisplayHidingTrailingEmptyQuotes:(BOOL)quotes shouldQuote:(BOOL)quote
{
  quoteCopy = quote;
  quotesCopy = quotes;
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy addMailAttributesBeforeDisplayHidingTrailingEmptyQuotes:quotesCopy shouldQuote:quoteCopy];
}

- (void)prependString:(id)string
{
  stringCopy = string;
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  mf_stringByEscapingHTMLCodes = [stringCopy mf_stringByEscapingHTMLCodes];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  compositionType = [WeakRetained compositionType];
  _attachmentInfoByIdentifier = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  [_bodyFieldProxy addMarkupString:mf_stringByEscapingHTMLCodes quote:0 emptyFirst:0 prepended:1 composeType:compositionType attachmentInfoByURL:_attachmentInfoByIdentifier];
}

- (void)prependPreamble:(id)preamble quote:(BOOL)quote
{
  quoteCopy = quote;
  preambleCopy = preamble;
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy prependPreamble:preambleCopy quote:quoteCopy layoutDirection:{objc_msgSend(*MEMORY[0x1E69DDA98], "userInterfaceLayoutDirection")}];
}

- (void)replaceImagesIfNecessary
{
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy replaceImagesIfNecessary];
}

- (void)stripCustomBodyIdentifiers
{
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy stripCustomBodyIdentifiers];
}

- (void)setReplacementFilenamesByContentID:(id)d
{
  dCopy = d;
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy setReplacementFilenamesByContentID:dCopy];
}

- (void)setMarkupString:(id)string quote:(BOOL)quote
{
  quoteCopy = quote;
  stringCopy = string;
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  compositionType = [WeakRetained compositionType];
  _attachmentInfoByIdentifier = [(MFComposeWebView *)self _attachmentInfoByIdentifier];
  [_bodyFieldProxy addMarkupString:stringCopy quote:quoteCopy emptyFirst:1 prepended:1 composeType:compositionType attachmentInfoByURL:_attachmentInfoByIdentifier];
}

- (void)replaceAttachment:(id)attachment withDocumentAtURL:(id)l completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  lCopy = l;
  completionCopy = completion;
  v10 = EMLogCompose();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [attachmentCopy ef_publicDescription];
    *buf = 134218242;
    selfCopy = self;
    v28 = 2114;
    v29 = ef_publicDescription;
    _os_log_impl(&dword_1BE819000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Replacing attachment: %{public}@", buf, 0x16u);
  }

  mimeType = [attachmentCopy mimeType];
  v13 = [(MFComposeWebView *)self _makeAttachmentDataWithFileURL:lCopy type:mimeType];

  fileName = [attachmentCopy fileName];
  if (v13 && ([attachmentCopy mimeType], v15 = objc_claimAutoreleasedReturnValue(), -[MFComposeWebView _addInlineAttachmentWithData:fileName:type:contentID:](self, "_addInlineAttachmentWithData:fileName:type:contentID:", v13, fileName, v15, 0), v16 = objc_claimAutoreleasedReturnValue(), v15, v16))
  {
    WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
    compositionContext = [WeakRetained compositionContext];

    [compositionContext removeAttachment:attachmentCopy];
    v18 = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier allKeysForObject:attachmentCopy];
    firstObject = [v18 firstObject];

    v20 = [(MFComposeWebView *)self _attachmentForIdentifier:firstObject];
    [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier setObject:v16 forKeyedSubscript:firstObject];
    fileWrapperUsingFetchedLocalData = [v16 fileWrapperUsingFetchedLocalData];
    fileUTType = [attachmentCopy fileUTType];
    [v20 setFileWrapper:fileWrapperUsingFetchedLocalData contentType:fileUTType completion:0];

    mailComposeViewDelegate = [(MFComposeWebView *)self mailComposeViewDelegate];
    [mailComposeViewDelegate didInsertAttachment:v16];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v16);
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
  compositionContext = [WeakRetained compositionContext];

  attachments = [compositionContext attachments];
  ef_notEmpty = [attachments ef_notEmpty];

  if (ef_notEmpty)
  {
    [compositionContext removeAllAttachments];
    mailComposeViewDelegate = [(MFComposeWebView *)self mailComposeViewDelegate];
    [mailComposeViewDelegate didRemoveAttachment:0];
  }
}

- (void)_changeQuoteLevelBy:(int64_t)by
{
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v4 = [bundle_bundle localizedStringForKey:@"UNDO_QUOTE_LEVEL" value:&stru_1F3CF3758 table:@"Main"];
  [_bodyFieldProxy changeQuoteLevelBy:by withUndoActionName:v4];
}

- (id)_actionWithTitle:(void *)title glyphName:(int)name usePrivateCatalog:(void *)catalog handler:
{
  v9 = a2;
  titleCopy = title;
  catalogCopy = catalog;
  if (self)
  {
    if (name)
    {
      [MEMORY[0x1E69DCAB8] _systemImageNamed:titleCopy];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:titleCopy];
    }
    v12 = ;
    v13 = MEMORY[0x1E69DC628];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__MFComposeWebView__actionWithTitle_glyphName_usePrivateCatalog_handler___block_invoke;
    v15[3] = &unk_1E806DB58;
    v16 = catalogCopy;
    self = [v13 actionWithTitle:v9 image:v12 identifier:0 handler:v15];
  }

  return self;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v5.receiver = self;
  v5.super_class = MFComposeWebView;
  [(MFComposeWebView *)&v5 buildMenuWithBuilder:builderCopy];
  [(MFComposeWebView *)self _addContextMenusToBuilder:builderCopy];
}

- (void)_addContextMenusToBuilder:(id)builder
{
  v59[2] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  system = [builderCopy system];
  contextSystem = [MEMORY[0x1E69DCC88] contextSystem];
  v7 = contextSystem;
  if (system == contextSystem)
  {
    _contentViewIsFirstResponder = [(MFComposeWebView *)self _contentViewIsFirstResponder];

    if (_contentViewIsFirstResponder)
    {
      objc_initWeak(&location, self);
      array = [MEMORY[0x1E695DF70] array];
      v9 = _EFLocalizedString();
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __46__MFComposeWebView__addContextMenusToBuilder___block_invoke;
      v56[3] = &unk_1E806DB80;
      objc_copyWeak(&v57, &location);
      v41 = [(MFComposeWebView *)self _actionWithTitle:v9 glyphName:@"doc.on.clipboard" handler:v56];

      [array addObject:v41];
      if ([(MFComposeWebView *)self _shouldShowAddLinkButton])
      {
        v10 = _EFLocalizedString();
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_2;
        v54[3] = &unk_1E806DB80;
        objc_copyWeak(&v55, &location);
        v11 = [(MFComposeWebView *)self _actionWithTitle:v10 glyphName:@"link" handler:v54];

        [array addObject:v11];
        objc_destroyWeak(&v55);
      }

      v40 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3CF3758 image:0 identifier:0 options:1 children:array];
      [builderCopy insertChildMenu:? atEndOfMenuForIdentifier:?];
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
      [builderCopy replaceChildrenOfMenuForIdentifier:v23 fromChildrenBlock:v48];
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

      _scanDocumentAction = [(MFComposeWebView *)self _scanDocumentAction];
      [v24 ef_addOptionalObject:_scanDocumentAction];

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
      [builderCopy insertChildMenu:v38 atEndOfMenuForIdentifier:v23];

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

- (id)_insertPhotoActionWithTitle:(void *)title
{
  v3 = a2;
  if (title)
  {
    if (MFIsAuthorizedToAccessPhotoLibrary() && ([title _shouldShowInsertPhotosButton] & 1) != 0)
    {
      objc_initWeak(&location, title);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __48__MFComposeWebView__insertPhotoActionWithTitle___block_invoke;
      v5[3] = &unk_1E806DB80;
      objc_copyWeak(&v6, &location);
      title = [(MFComposeWebView *)title _actionWithTitle:v3 glyphName:@"photo.on.rectangle" handler:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {
      title = 0;
    }
  }

  return title;
}

- (id)_importDocumentActionWithTitle:(id *)title
{
  v3 = a2;
  if (title)
  {
    WeakRetained = objc_loadWeakRetained(title + 252);
    canShowAttachmentPicker = [WeakRetained canShowAttachmentPicker];

    if (canShowAttachmentPicker)
    {
      objc_initWeak(&location, title);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __51__MFComposeWebView__importDocumentActionWithTitle___block_invoke;
      v7[3] = &unk_1E806DB80;
      objc_copyWeak(&v8, &location);
      title = [(MFComposeWebView *)title _actionWithTitle:v3 glyphName:@"doc" handler:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    else
    {
      title = 0;
    }
  }

  return title;
}

- (id)_scanDocumentAction
{
  selfCopy = self;
  if (self)
  {
    if ([MEMORY[0x1E699A340] isSupported])
    {
      objc_initWeak(&location, selfCopy);
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
      selfCopy = [(MFComposeWebView *)selfCopy _actionWithTitle:v2 glyphName:@"doc.text.viewfinder" handler:v4];
      objc_destroyWeak(&v5);

      objc_destroyWeak(&location);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

void __46__MFComposeWebView__addContextMenusToBuilder___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapInsertDrawing:WeakRetained];
}

- (void)setDirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  ++self->_dirtyChangeIgnoreCount;
  self->_dirty = dirty;
  objc_initWeak(&location, self);
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__MFComposeWebView_setDirty___block_invoke;
  v6[3] = &unk_1E806DB80;
  objc_copyWeak(&v7, &location);
  [_bodyFieldProxy setDirty:dirtyCopy completionHandler:v6];

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
  inputViewForPreservingFocus = [(MFComposeWebView *)self inputViewForPreservingFocus];

  if (inputViewForPreservingFocus)
  {
    inputViewForPreservingFocus2 = [(MFComposeWebView *)self inputViewForPreservingFocus];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MFComposeWebView;
    inputViewForPreservingFocus2 = [(MFComposeWebView *)&v6 inputView];
  }

  return inputViewForPreservingFocus2;
}

- (void)retainFocusAfterPresenting
{
  v3 = objc_alloc(MEMORY[0x1E69DCB00]);
  v5 = [v3 initWithFrame:0 inputViewStyle:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setUserInteractionEnabled:0];
  [v5 setAllowsSelfSizing:1];
  [(MFComposeWebView *)self setInputViewForPreservingFocus:v5];
  firstResponder = [(MFComposeWebView *)self firstResponder];
  [firstResponder reloadInputViews];
}

- (void)releaseFocusAfterDismissing:(BOOL)dismissing
{
  if (dismissing)
  {
    selfCopy = self;
    [(MFComposeWebView *)selfCopy resignFirstResponder];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__MFComposeWebView_releaseFocusAfterDismissing___block_invoke;
    block[3] = &unk_1E806C520;
    block[4] = selfCopy;
    v8 = selfCopy;
    v4 = selfCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(MFComposeWebView *)self setInputViewForPreservingFocus:0];
    firstResponder = [(MFComposeWebView *)self firstResponder];
    [firstResponder reloadInputViews];
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
  flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
  [v3 addObject:flexibleSpaceItem];

  _formattingAction = [(MFComposeWebView *)&self->super.super.super.super.isa _formattingAction];
  if (_formattingAction)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:_formattingAction];
    [v3 addObject:v6];
  }

  _showWritingToolsAction = [(MFComposeWebView *)self _showWritingToolsAction];
  if (_showWritingToolsAction)
  {
    v8 = [(MFComposeWebView *)self _barButtonItemWithAction:_showWritingToolsAction target:self selector:sel__didTapShowWritingTools_];
    [v3 addObject:v8];
  }

  array = [MEMORY[0x1E695DF70] array];
  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v10 = [bundle_bundle localizedStringForKey:@"TAKE_PHOTO_OR_VIDEO" value:&stru_1F3CF3758 table:@"Main"];
  v11 = [(MFComposeWebView *)self _insertPhotoFromCameraActionWithTitle:v10];
  [array ef_addOptionalObject:v11];

  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v12 = [bundle_bundle localizedStringForKey:@"PHOTO_LIBRARY" value:&stru_1F3CF3758 table:@"Main"];
  v13 = [(MFComposeWebView *)self _insertPhotoActionWithTitle:v12];
  [array ef_addOptionalObject:v13];

  _scanDocumentAction = [(MFComposeWebView *)self _scanDocumentAction];
  [array ef_addOptionalObject:_scanDocumentAction];

  _captureTextFromCameraAction = [(MFComposeWebView *)self _captureTextFromCameraAction];
  if (_captureTextFromCameraAction)
  {
    [array ef_addOptionalObject:_captureTextFromCameraAction];
  }

  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v16 = [bundle_bundle localizedStringForKey:@"IMPORT_DOCUMENT" value:&stru_1F3CF3758 table:@"Main"];
  v17 = [(MFComposeWebView *)&self->super.super.super.super.isa _importDocumentActionWithTitle:v16];
  [array ef_addOptionalObject:v17];

  v18 = [MEMORY[0x1E69DCC60] menuWithChildren:array];
  if ([array count])
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
  if (self && (WeakRetained = objc_loadWeakRetained(self + 252), v3 = objc_opt_respondsToSelector(), WeakRetained, (v3 & 1) != 0))
  {
    objc_initWeak(&location, self);
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
  selfCopy = self;
  if (self)
  {
    if ([MEMORY[0x1E69DD318] isWritingToolsAvailable])
    {
      objc_initWeak(&location, selfCopy);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __43__MFComposeWebView__showWritingToolsAction__block_invoke;
      v3[3] = &unk_1E806DB80;
      objc_copyWeak(&v4, &location);
      selfCopy = [(MFComposeWebView *)selfCopy _actionWithTitle:@"apple.writing.tools" glyphName:1 usePrivateCatalog:v3 handler:?];
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)_barButtonItemWithAction:(void *)action target:(uint64_t)target selector:
{
  v7 = a2;
  actionCopy = action;
  v9 = 0;
  if (self && v7)
  {
    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    title = [v7 title];
    image = [v7 image];
    v9 = [v10 initWithTitle:title image:image target:actionCopy action:target menu:0];
  }

  return v9;
}

- (id)_insertPhotoFromCameraActionWithTitle:(void *)title
{
  v3 = a2;
  if (title)
  {
    if ([title _shouldShowInsertPhotosButton])
    {
      objc_initWeak(&location, title);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __58__MFComposeWebView__insertPhotoFromCameraActionWithTitle___block_invoke;
      v5[3] = &unk_1E806DB80;
      objc_copyWeak(&v6, &location);
      title = [(MFComposeWebView *)title _actionWithTitle:v3 glyphName:@"camera" handler:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {
      title = 0;
    }
  }

  return title;
}

- (id)_captureTextFromCameraAction
{
  if (self)
  {
    firstResponder = [self firstResponder];
    if ([firstResponder canPerformAction:sel_captureTextFromCamera_ withSender:0])
    {
      v2 = [MEMORY[0x1E69DC628] captureTextFromCameraActionForResponder:firstResponder identifier:0];
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

- (id)_barButtonItemWithImageName:(void *)name title:(void *)title target:(uint64_t)target selector:(void *)selector menu:
{
  v11 = a2;
  nameCopy = name;
  titleCopy = title;
  selectorCopy = selector;
  if (self)
  {
    v15 = [MEMORY[0x1E69DCAB8] mf_assistantBarSystemImageNamed:v11];
    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:nameCopy image:v15 target:titleCopy action:target menu:selectorCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_markupActionWithTitle:(void *)title
{
  v3 = a2;
  if (title)
  {
    objc_initWeak(&location, title);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__MFComposeWebView__markupActionWithTitle___block_invoke;
    v5[3] = &unk_1E806DB80;
    objc_copyWeak(&v6, &location);
    title = [(MFComposeWebView *)title _actionWithTitle:v3 glyphName:@"pencil.tip.crop.circle" handler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return title;
}

- (id)_mailComposeEditingLeadingInputAssistantGroups
{
  v17[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  _formattingAction = [(MFComposeWebView *)&self->super.super.super.super.isa _formattingAction];
  if (_formattingAction)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:_formattingAction];
    v6 = objc_alloc(MEMORY[0x1E69DC720]);
    v17[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v8 = [v6 initWithBarButtonItems:v7 representativeItem:0];

    [array addObject:v8];
  }

  _showWritingToolsAction = [(MFComposeWebView *)self _showWritingToolsAction];
  if (_showWritingToolsAction)
  {
    v10 = [(MFComposeWebView *)self _barButtonItemWithAction:_showWritingToolsAction target:self selector:sel__didTapShowWritingTools_];
    v11 = objc_alloc(MEMORY[0x1E69DC720]);
    v16 = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v13 = [v11 initWithBarButtonItems:v12 representativeItem:0];

    [(MFComposeWebView *)self setAppleIntelligenceGroup:v13];
    [array addObject:v13];
  }

  [(MFComposeWebView *)self set_leadingInputAssistantItemGroups:array];
  _leadingInputAssistantItemGroups = [(MFComposeWebView *)self _leadingInputAssistantItemGroups];

  return _leadingInputAssistantItemGroups;
}

- (id)_mailComposeEditingTrailingInputAssistantGroups
{
  v37[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  if (WeakRetained)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v4 = bundle_bundle;
    v5 = [v4 localizedStringForKey:@"TAKE_PHOTO_OR_VIDEO" value:&stru_1F3CF3758 table:@"Main"];
    v6 = [(MFComposeWebView *)self _insertPhotoFromCameraActionWithTitle:v5];
    v7 = [(MFComposeWebView *)self _barButtonItemWithAction:v6 target:self selector:sel__didTapCameraButton_];

    v34 = v7;
    [array2 ef_addOptionalObject:v7];
    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v8 = bundle_bundle;
    v9 = [v8 localizedStringForKey:@"PHOTO_LIBRARY" value:&stru_1F3CF3758 table:@"Main"];
    v10 = [(MFComposeWebView *)self _insertPhotoActionWithTitle:v9];
    v11 = [(MFComposeWebView *)self _barButtonItemWithAction:v10 target:self selector:sel__didTapInsertPhotoButton_];

    v33 = v11;
    [array2 ef_addOptionalObject:v11];
    _scanDocumentAction = [(MFComposeWebView *)self _scanDocumentAction];
    v13 = [(MFComposeWebView *)self _barButtonItemWithAction:_scanDocumentAction target:self selector:sel__scanDocumentCommandInvoked_];

    v32 = v13;
    [array2 ef_addOptionalObject:v13];
    textFromCameraButtonItem = [(MFComposeWebView *)self textFromCameraButtonItem];
    [array2 ef_addOptionalObject:textFromCameraButtonItem];

    if (bundle_onceToken != -1)
    {
      [MFComposeWebView _changeQuoteLevelBy:];
    }

    v15 = bundle_bundle;
    v16 = [v15 localizedStringForKey:@"IMPORT_DOCUMENT" value:&stru_1F3CF3758 table:@"Main"];
    v17 = [(MFComposeWebView *)&self->super.super.super.super.isa _importDocumentActionWithTitle:v16];
    v18 = [(MFComposeWebView *)self _barButtonItemWithAction:v17 target:self selector:sel__importDocumentCommandInvoked_];

    [(MFComposeWebView *)self setDocumentItem:v18];
    [array2 ef_addOptionalObject:v18];
    if ([array2 count])
    {
      if (bundle_onceToken != -1)
      {
        [MFComposeWebView _changeQuoteLevelBy:];
      }

      v19 = bundle_bundle;
      v20 = [v19 localizedStringForKey:@"INSERT_ATTACHMENT_ACTIONS" value:&stru_1F3CF3758 table:@"Main"];
      v21 = [(MFComposeWebView *)self _barButtonItemWithImageName:v20 title:0 target:0 selector:?];

      v22 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:array2 representativeItem:v21];
      [v22 _setShouldAlwaysCollapse:1];
      [array addObject:v22];
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

    [array addObject:v29];
    [(MFComposeWebView *)self set_trailingInputAssistantItemGroups:array];
  }

  _trailingInputAssistantItemGroups = [(MFComposeWebView *)self _trailingInputAssistantItemGroups];

  return _trailingInputAssistantItemGroups;
}

- (id)_barButtonItemWithImageName:(void *)name title:(void *)title target:(uint64_t)target selector:
{
  v9 = a2;
  nameCopy = name;
  titleCopy = title;
  if (self)
  {
    v12 = [(MFComposeWebView *)self _barButtonItemWithImageName:v9 title:nameCopy target:titleCopy selector:target menu:0];
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

- (void)_didTapCameraButton:(id)button
{
  buttonCopy = button;
  [(MFComposeWebView *)self donateHasUsedAttachment];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained showPhotoPickerWithSourceType:1 fromSource:buttonCopy];
}

- (void)_didTapMarkupButton:(id)button
{
  if ([(MFComposeWebView *)self _shouldShowMarkupButton])
  {

    [(MFComposeWebView *)self markupSelectedAttachment];
  }
}

- (void)_didTapInsertPhotoButton:(id)button
{
  buttonCopy = button;
  [(MFComposeWebView *)self donateHasUsedAttachment];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained showPhotoPickerWithSourceType:0 fromSource:buttonCopy];
}

- (void)_didTapInsertDrawingOrMarkupButton:(id)button
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

- (void)_didTapInsertDrawing:(id)drawing
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained insertDrawing];
}

- (void)_importDocumentCommandInvoked:(id)invoked
{
  [(MFComposeWebView *)self donateHasUsedAttachment];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained importDocument];
}

- (void)_scanDocumentCommandInvoked:(id)invoked
{
  [(MFComposeWebView *)self donateHasUsedAttachment];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained scanDocument];
}

- (void)_removeInlineAttachment:(id)attachment
{
  attachmentCopy = attachment;
  undoManager = [(MFComposeWebView *)self undoManager];
  v5 = undoManager;
  if (undoManager)
  {
    v6 = [undoManager prepareWithInvocationTarget:self];
    v7 = [attachmentCopy fetchDataSynchronously:0];
    fileName = [attachmentCopy fileName];
    mimeType = [attachmentCopy mimeType];
    v10 = [v6 _addInlineAttachmentWithData:v7 fileName:fileName type:mimeType contentID:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  compositionContext = [WeakRetained compositionContext];
  [compositionContext removeAttachment:attachmentCopy];
}

- (void)_increaseQuoteLevelKeyCommandInvoked:(id)invoked
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained changeQuoteLevel:1];
}

- (void)_decreaseQuoteLevelKeyCommandInvoked:(id)invoked
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  [WeakRetained changeQuoteLevel:-1];
}

- (void)_didTapAddLink:(id)link
{
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy setEditLinkFlag];

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

- (void)_didTapEditLink:(id)link
{
  linkCopy = link;
  [(MFComposeWebView *)self hideMakeLinkAccessoryButton];
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy setEditLinkFlag];

  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MFComposeWebView__didTapEditLink___block_invoke;
  v7[3] = &unk_1E806DB30;
  v7[4] = self;
  [WeakRetained editLink:linkCopy completion:v7];
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
  _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
  [_bodyFieldProxy removeLink];
}

- (void)_didTapEditTextDescription:(id)description
{
  descriptionCopy = description;
  [(MFComposeWebView *)self hideMakeLinkAccessoryButton];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MFComposeWebView__didTapEditTextDescription___block_invoke;
  v6[3] = &unk_1E806DB30;
  v6[4] = self;
  [WeakRetained editTextDescription:descriptionCopy completion:v6];
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

- (void)replaceFilenamePlaceholderWithAttachment:(id)attachment fileName:(id)name mimeType:(id)type contentID:(id)d
{
  v36 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  nameCopy = name;
  typeCopy = type;
  dCopy = d;
  v14 = EMLogCompose();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:nameCopy];
    *buf = 134218498;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = dCopy;
    *&buf[22] = 2114;
    v33 = v15;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "<%p> Replacing placehold with attachment for content ID: %{public}@, file name: %{public}@", buf, 0x20u);
  }

  if (attachmentCopy && nameCopy && ([(MFComposeWebView *)self _addInlineAttachmentWithData:attachmentCopy fileName:nameCopy type:typeCopy contentID:dCopy], v16 = objc_claimAutoreleasedReturnValue(), (v17 = v16) != 0))
  {
    className = [v16 className];
    if (([className isEqualToString:0x1F3CF38B8] & 1) != 0 || objc_msgSend(className, "isEqualToString:", 0x1F3CF38F8))
    {
      _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __89__MFComposeWebView_replaceFilenamePlaceholderWithAttachment_fileName_mimeType_contentID___block_invoke;
      v30[3] = &unk_1E806DBD0;
      v30[4] = self;
      v31 = v17;
      [_bodyFieldProxy replaceFilenamePlaceholderWithImage:nameCopy completionHandler:v30];
    }

    else
    {
      _bodyFieldProxy2 = [(MFComposeWebView *)self _bodyFieldProxy];
      [_bodyFieldProxy2 placeCaretAtStartOfBody];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v33 = __Block_byref_object_copy__3;
      v34 = __Block_byref_object_dispose__3;
      v35 = 0;
      fileWrapperUsingFetchedLocalData = [v17 fileWrapperUsingFetchedLocalData];
      mimeType = [v17 mimeType];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __89__MFComposeWebView_replaceFilenamePlaceholderWithAttachment_fileName_mimeType_contentID___block_invoke_2;
      v26[3] = &unk_1E806DBF8;
      v26[4] = self;
      v29 = buf;
      v27 = nameCopy;
      v28 = v17;
      v24 = [(MFComposeWebView *)self _insertAttachmentWithFileWrapper:fileWrapperUsingFetchedLocalData contentType:mimeType completion:v26];
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
      v20 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:nameCopy];
      [MFComposeWebView replaceFilenamePlaceholderWithAttachment:dCopy fileName:v20 mimeType:buf contentID:v17];
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

- (id)_addInlineAttachmentWithData:(id)data fileName:(id)name type:(id)type contentID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  nameCopy = name;
  typeCopy = type;
  dCopy = d;
  v14 = EMLogCompose();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:nameCopy];
    v25 = 134218498;
    selfCopy = self;
    v27 = 2114;
    v28 = dCopy;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "<%p> _addInlineAttachmentWithData for content ID: %{public}@, file name: %{public}@", &v25, 0x20u);
  }

  if ([MEMORY[0x1E69B15F0] shouldCreatePlaceholderAttachmentForAttachmentWithSize:{objc_msgSend(dataCopy, "length")}] && (objc_msgSend(MEMORY[0x1E69B15D8], "isPlaceholderSerializedRepresentation:", dataCopy) & 1) == 0)
  {
    v16 = [MEMORY[0x1E69B15D8] attachmentPlaceholderForData:dataCopy fileName:nameCopy type:typeCopy contentID:dCopy];
    serializedRepresentation = [v16 serializedRepresentation];

    dataCopy = serializedRepresentation;
  }

  mailComposeViewDelegate = [(MFComposeWebView *)self mailComposeViewDelegate];
  compositionContext = [mailComposeViewDelegate compositionContext];
  v20 = [compositionContext addAttachmentData:dataCopy mimeType:typeCopy fileName:nameCopy contentID:dCopy];

  if (v20)
  {
    [mailComposeViewDelegate didCreateAttachment:v20];
    undoManager = [(MFComposeWebView *)self undoManager];
    v22 = undoManager;
    if (undoManager)
    {
      v23 = [undoManager prepareWithInvocationTarget:self];
      [v23 _removeInlineAttachment:v20];
    }
  }

  return v20;
}

- (id)_makeAttachmentDataWithFileURL:(id)l type:(id)type
{
  lCopy = l;
  typeCopy = type;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager attributesOfItemAtPath:path error:0];

  v10 = *MEMORY[0x1E696A3B8];
  v11 = [v9 objectForKey:*MEMORY[0x1E696A3B8]];

  if (!v11 || ([v9 objectForKey:v10], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "unsignedIntegerValue"), v12, !objc_msgSend(MEMORY[0x1E69B15F0], "shouldCreatePlaceholderAttachmentForAttachmentWithSize:", v13)) || (v14 = MEMORY[0x1E69B15D8], objc_msgSend(lCopy, "path"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "lastPathComponent"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "attachmentPlaceholderForFileURL:fileName:fileSize:type:contentID:", lCopy, v16, v13, typeCopy, 0), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, objc_msgSend(v17, "serializedRepresentation"), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
  {
    v18 = [MEMORY[0x1E69AD6B0] dataWithContentsOfURL:lCopy];
  }

  return v18;
}

- (id)_filenameForVideoAttachmentAtURL:(id)l
{
  lCopy = l;
  if (bundle_onceToken != -1)
  {
    [MFComposeWebView _changeQuoteLevelBy:];
  }

  v5 = bundle_bundle;
  v6 = [v5 localizedStringForKey:@"VIDEO" value:&stru_1F3CF3758 table:@"Main"];

  mailComposeViewDelegate = [(MFComposeWebView *)self mailComposeViewDelegate];
  compositionContext = [mailComposeViewDelegate compositionContext];
  attachments = [compositionContext attachments];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__MFComposeWebView__filenameForVideoAttachmentAtURL___block_invoke;
  v18[3] = &unk_1E806DC20;
  v10 = v6;
  v19 = v10;
  v11 = [attachments indexesOfObjectsPassingTest:v18];

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
  pathExtension = [lCopy pathExtension];
  v16 = [v14 stringByAppendingPathExtension:pathExtension];

  return v16;
}

BOOL __53__MFComposeWebView__filenameForVideoAttachmentAtURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fileName];
  v4 = [v3 rangeOfString:*(a1 + 32)] == 0;

  return v4;
}

- (BOOL)_getExtensionAndMimeTypeForImageData:(id)data outExtension:(id *)extension outMimeType:(id *)type
{
  dataCopy = data;
  v8 = dataCopy;
  if (dataCopy && (v9 = CGImageSourceCreateWithData(dataCopy, 0), (v10 = v9) != 0))
  {
    v11 = CGImageSourceGetType(v9);
    v12 = v11 != 0;
    if (v11)
    {
      v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:v11];
      *extension = [v13 preferredFilenameExtension];
      *type = [v13 preferredMIMEType];
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
  firstObject = [(NSArray *)self->_selectedAttachmentIdentifiers firstObject];
  v4 = [(NSMutableDictionary *)attachmentsByUniqueIdentifier objectForKeyedSubscript:firstObject];

  v5 = !v4 && (_os_feature_enabled_impl() & 1) != 0;
  return v5;
}

- (BOOL)_shouldShowInsertPhotosButton
{
  if (![(MFComposeWebView *)self _sourceIsManaged])
  {
    return 1;
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  mayOpenFromUnmanagedToManaged = [mEMORY[0x1E69ADFB8] mayOpenFromUnmanagedToManaged];

  return mayOpenFromUnmanagedToManaged;
}

- (BOOL)_shouldShowMarkupButton
{
  attachmentsByUniqueIdentifier = self->_attachmentsByUniqueIdentifier;
  firstObject = [(NSArray *)self->_selectedAttachmentIdentifiers firstObject];
  v4 = [(NSMutableDictionary *)attachmentsByUniqueIdentifier objectForKeyedSubscript:firstObject];

  if (v4)
  {
    contentTypeConformsToMarkup = [v4 contentTypeConformsToMarkup];
  }

  else
  {
    contentTypeConformsToMarkup = 0;
  }

  return contentTypeConformsToMarkup;
}

- (void)_composeWebView:(id)view didChangeHeight:(double)height
{
  if (_os_feature_enabled_impl())
  {
    WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained composeWebView:self didChangeHeight:height];
    }
  }
}

- (void)_composeWebView:(id)view composeBodyIsEmpty:(BOOL)empty
{
  emptyCopy = empty;
  WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeWebView:self composeBodyIsEmpty:emptyCopy];
  }
}

- (void)composeBodyFieldDidThrowException:(id)exception
{
  exceptionCopy = exception;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MFComposeWebView_composeBodyFieldDidThrowException___block_invoke;
  block[3] = &unk_1E806C570;
  v6 = exceptionCopy;
  v4 = exceptionCopy;
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

- (void)composeBodyFieldIsDirtyChanged:(BOOL)changed
{
  if (!self->_dirtyChangeIgnoreCount)
  {
    self->_dirty = changed;
  }
}

- (void)composeBodyFieldAddAttachmentWithData:(id)data filename:(id)filename mimeType:(id)type uniqueID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  filenameCopy = filename;
  typeCopy = type;
  dCopy = d;
  v14 = EMLogCompose();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:filenameCopy];
    *buf = 138543362;
    v23 = v15;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "Adding rich link preview [%{public}@]", buf, 0xCu);
  }

  if (dataCopy && filenameCopy && dCopy)
  {
    v16 = [(MFComposeWebView *)self _addInlineAttachmentWithData:dataCopy fileName:filenameCopy type:typeCopy contentID:dCopy];
    if (v16)
    {
      _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __85__MFComposeWebView_composeBodyFieldAddAttachmentWithData_filename_mimeType_uniqueID___block_invoke;
      v20[3] = &unk_1E806DBD0;
      v20[4] = self;
      v21 = v16;
      [_bodyFieldProxy replaceRichLinkPlaceholderImage:dCopy completionHandler:v20];
    }

    else
    {
      v18 = EMLogCompose();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:filenameCopy];
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

- (void)attachmentTapped:(id)tapped
{
  v11 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  v5 = EMLogCompose();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = tappedCopy;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "Attachment tapped with content ID: %{public}@", &v9, 0xCu);
  }

  defaultManager = [MEMORY[0x1E69B15D0] defaultManager];
  v7 = [defaultManager attachmentForContentID:tappedCopy];

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

- (void)composeBodyFieldQuickReplyEnabled:(id)enabled
{
  enabledCopy = enabled;
  enabledCopy[2](enabledCopy, [(MFComposeWebView *)self isQuickReply]);
}

- (void)composeBodyFieldAddLinkPreviewsEnabled:(id)enabled
{
  enabledCopy = enabled;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  enabledCopy[2](enabledCopy, [em_userDefaults BOOLForKey:*MEMORY[0x1E699AB60]] ^ 1);
}

- (void)_findInteraction:(id)interaction navigatorPlacementWillChange:(id)change
{
  inlinePlacement = [change inlinePlacement];
  if (inlinePlacement)
  {
    v9 = inlinePlacement;
    v6 = 0.0;
    if ([inlinePlacement isShowing])
    {
      [v9 intrinsicContentSize];
      v6 = v7;
    }

    WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
    [WeakRetained findNavigatorPanelDidChangeHeight:v6];

    inlinePlacement = v9;
  }
}

- (id)_findInteractionScrollViewForInsetAdjustment:(id)adjustment
{
  scrollView = [(MFComposeWebView *)self scrollView];

  return scrollView;
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  targetFrame = [actionCopy targetFrame];
  isMainFrame = [targetFrame isMainFrame];

  v11 = handlerCopy[2];
  if (isMainFrame)
  {
    v11(handlerCopy, 1);
  }

  else
  {
    v11(handlerCopy, 0);
    v12 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      request = [actionCopy request];
      v16 = [request URL];
      v17 = 138543874;
      v18 = v14;
      v19 = 2048;
      selfCopy = self;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&dword_1BE819000, v12, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: Blocking navigation action for request whose target frame is not the main frame (iframe, probably): %@", &v17, 0x20u);
    }
  }
}

- (void)_webView:(id)view didStartInputSession:(id)session
{
  if (self)
  {
    if (self->__didReloadInputAssistantItemOnFocus)
    {
      return;
    }

    self->__didReloadInputAssistantItemOnFocus = 1;
  }

  _captureTextFromCameraAction = [(MFComposeWebView *)self _captureTextFromCameraAction];
  if (!_captureTextFromCameraAction)
  {
    v6 = EMLogCompose();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "Text-from-camera button was not added to input assistant.", v16, 2u);
    }

    goto LABEL_17;
  }

  v6 = [(MFComposeWebView *)self _barButtonItemWithAction:_captureTextFromCameraAction target:self selector:sel__captureTextFromCamera];
  insertAttachmentGroup = [(MFComposeWebView *)self insertAttachmentGroup];
  if (insertAttachmentGroup)
  {
    _useComposeToolbar = [(MFComposeWebView *)self _useComposeToolbar];

    if (!_useComposeToolbar)
    {
      v11 = MEMORY[0x1E695DF70];
      insertAttachmentGroup2 = [(MFComposeWebView *)self insertAttachmentGroup];
      barButtonItems = [insertAttachmentGroup2 barButtonItems];
      composeInputAccessoryView = [v11 arrayWithArray:barButtonItems];

      documentItem = [(MFComposeWebView *)self documentItem];
      if (documentItem && [composeInputAccessoryView containsObject:documentItem])
      {
        [composeInputAccessoryView insertObject:v6 atIndex:{objc_msgSend(composeInputAccessoryView, "indexOfObject:", documentItem)}];
        insertAttachmentGroup3 = [(MFComposeWebView *)self insertAttachmentGroup];
        [insertAttachmentGroup3 setBarButtonItems:composeInputAccessoryView];
      }

      else
      {
        insertAttachmentGroup3 = [composeInputAccessoryView arrayByAddingObject:v6];
        insertAttachmentGroup4 = [(MFComposeWebView *)self insertAttachmentGroup];
        [insertAttachmentGroup4 setBarButtonItems:insertAttachmentGroup3];
      }

      goto LABEL_16;
    }
  }

  [(MFComposeWebView *)self setTextFromCameraButtonItem:v6];
  if ([(MFComposeWebView *)self _useComposeToolbar])
  {
    composeInputAccessoryView = [(MFComposeWebView *)self composeInputAccessoryView];
    documentItem = [(MFComposeWebView *)self _toolbarItems];
    [composeInputAccessoryView updateToolbarItems:documentItem];
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

  firstResponder = [(MFComposeWebView *)self firstResponder];
  if ([firstResponder canPerformAction:sel_captureTextFromCamera_ withSender:0])
  {
    [firstResponder captureTextFromCamera:0];
  }
}

- (void)_webViewWebProcessDidBecomeUnresponsive:(id)unresponsive
{
  v20 = *MEMORY[0x1E69E9840];
  unresponsiveCopy = unresponsive;
  v6 = EMLogCompose();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = 138544386;
    v11 = v8;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = v9;
    v16 = 2112;
    v17 = unresponsiveCopy;
    v18 = 1024;
    _webProcessIdentifier = [unresponsiveCopy _webProcessIdentifier];
    _os_log_error_impl(&dword_1BE819000, v6, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: %{public}@ %@ (pid: %d)", &v10, 0x30u);
  }

  [(MFComposeWebView *)self _killWebContentProcess];
}

- (void)_webView:(id)view webContentProcessDidTerminateWithReason:(int64_t)reason
{
  v46 = *MEMORY[0x1E69E9840];
  viewCopy = view;
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
    _webProcessIdentifier = [viewCopy _webProcessIdentifier];
    webProcessCrashCount = self->_webProcessCrashCount;
    *buf = 138544898;
    v33 = v23;
    v34 = 2048;
    selfCopy = self;
    v36 = 2114;
    v37 = v24;
    v38 = 2112;
    v39 = viewCopy;
    v40 = 1024;
    v41 = _webProcessIdentifier;
    v42 = 2048;
    reasonCopy = reason;
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
      v28 = viewCopy;
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

- (void)_webView:(id)view didInvalidateDataForAttachment:(id)attachment
{
  v11 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v6 = EMLogCompose();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = attachmentCopy;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Webview did invalidate data for attachment: %{public}@", &v7, 0x16u);
  }

  [(MFComposeWebView *)self _removeAttachment:attachmentCopy];
  [(MFComposeWebView *)self _addAttachment:attachmentCopy];
}

- (void)_webView:(id)view didInsertAttachment:(id)attachment withSource:(id)source
{
  v46 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v7 = EMLogCompose();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy7 = self;
    v44 = 2114;
    *v45 = attachmentCopy;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "<%p> WebView didInsertAttachment: %{public}@", buf, 0x16u);
  }

  uniqueIdentifier = [attachmentCopy uniqueIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  compositionContext = [WeakRetained compositionContext];
  v9 = 2120;
  v10 = [(NSMutableDictionary *)self->_attachmentCIDsByIdentifier objectForKeyedSubscript:uniqueIdentifier];
  if (v10)
  {
    v11 = EMLogCompose();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy7 = self;
      v44 = 2114;
      *v45 = attachmentCopy;
      *&v45[8] = 2114;
      *&v45[10] = v10;
      _os_log_impl(&dword_1BE819000, v11, OS_LOG_TYPE_DEFAULT, "<%p> Webview did insert attachment: %{public}@, for content ID: %{public}@", buf, 0x20u);
    }

    [(NSMutableDictionary *)self->_attachmentCIDsByIdentifier setObject:0 forKeyedSubscript:uniqueIdentifier];
    attachments = [compositionContext attachments];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __60__MFComposeWebView__webView_didInsertAttachment_withSource___block_invoke;
    v40[3] = &unk_1E806DC70;
    contentID = v10;
    v41 = contentID;
    v14 = [attachments ef_firstObjectPassingTest:v40];

    info = [attachmentCopy info];
    v16 = EMLogCompose();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [v14 ef_publicDescription];
      *buf = 134218498;
      selfCopy7 = self;
      v44 = 2114;
      *v45 = ef_publicDescription;
      *&v45[8] = 2114;
      *&v45[10] = info;
      _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_DEFAULT, "<%p> Found attachment %{public}@, for wkAttachment info: %{public}@", buf, 0x20u);
    }

    if (v14)
    {
      v18 = EMLogCompose();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy7 = self;
        v44 = 2114;
        *v45 = info;
        _os_log_impl(&dword_1BE819000, v18, OS_LOG_TYPE_DEFAULT, "<%p> Loaded attachment with info: %{public}@", buf, 0x16u);
      }

      fileWrapperUsingFetchedLocalData = [v14 fileWrapperUsingFetchedLocalData];
      fileUTType = [v14 fileUTType];
      [attachmentCopy setFileWrapper:fileWrapperUsingFetchedLocalData contentType:fileUTType completion:0];

      [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier setObject:v14 forKeyedSubscript:uniqueIdentifier];
      if (_os_feature_enabled_impl())
      {
        shouldPreserveFidelity = [info shouldPreserveFidelity];
      }

      else
      {
        shouldPreserveFidelity = 0;
      }

      [v14 setShouldPreserveFidelity:shouldPreserveFidelity];
      [WeakRetained didInsertAttachment:v14];
    }

    else if (!self->_attachmentDataMissingAlertDisplayed)
    {
      data = [info data];
      if (data || ([info fileWrapper], (data = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        filePath = [info filePath];
        v32 = [filePath isEqualToString:&stru_1F3CF3758];

        if (v32)
        {
          v31 = EMLogCompose();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            selfCopy7 = self;
            v44 = 2114;
            *v45 = attachmentCopy;
            *&v45[8] = 2114;
            *&v45[10] = contentID;
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
    selfCopy7 = self;
    v44 = 2114;
    *v45 = uniqueIdentifier;
    _os_log_impl(&dword_1BE819000, v22, OS_LOG_TYPE_DEFAULT, "<%p> Did not find the contentID for identifier: %{public}@, looking into _attachmentsByUniqueIdentifier.", buf, 0x16u);
  }

  v23 = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier objectForKeyedSubscript:uniqueIdentifier];
  contentID = [v23 contentID];

  if (contentID)
  {
    attachments2 = [compositionContext attachments];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __60__MFComposeWebView__webView_didInsertAttachment_withSource___block_invoke_551;
    v38[3] = &unk_1E806DC70;
    v39 = contentID;
    v25 = [attachments2 ef_any:v38];

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
    selfCopy7 = self;
    v44 = 1024;
    *v45 = v25;
    *&v45[4] = 2114;
    *&v45[6] = contentID;
    _os_log_impl(&dword_1BE819000, v27, OS_LOG_TYPE_DEFAULT, "<%p> Found existing: %{BOOL}d contentID: %{public}@ in context", buf, 0x1Cu);
  }

  if ((v25 & 1) == 0)
  {
    [(MFComposeWebView *)self _addAttachment:attachmentCopy];
    v28 = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier objectForKeyedSubscript:uniqueIdentifier];
    if ([v28 isSinglePagePDFFile])
    {
      _bodyFieldProxy = [(MFComposeWebView *)self _bodyFieldProxy];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __60__MFComposeWebView__webView_didInsertAttachment_withSource___block_invoke_552;
      v35[3] = &unk_1E806DC98;
      v35[4] = self;
      v36 = uniqueIdentifier;
      v37 = v28;
      [_bodyFieldProxy displayAttachmentWithIdentifierAsSinglePagePDF:v36 completionHandler:v35];
    }
  }

  if (contentID)
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

- (void)_webView:(id)view didRemoveAttachment:(id)attachment
{
  v11 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v6 = EMLogCompose();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = attachmentCopy;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Webview did remove attachment: %{public}@", &v7, 0x16u);
  }

  [(MFComposeWebView *)self _removeAttachment:attachmentCopy];
}

- (void)_webView:(id)view didChangeFontAttributes:(id)attributes
{
  attributesCopy = attributes;
  mailComposeViewDelegate = [(MFComposeWebView *)self mailComposeViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [mailComposeViewDelegate composeWebViewDidChangeFontAttributes:attributesCopy];
  }
}

- (int64_t)_webView:(id)view dataOwnerForDropSession:(id)session
{
  if ([(MFComposeWebView *)self _sourceIsManaged:view])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_webView:(id)view dataOwnerForDragSession:(id)session
{
  if ([(MFComposeWebView *)self _sourceIsManaged:view])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_webView:(id)view takeFocus:(int64_t)focus
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  if (focus == 1)
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

- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts
{
  sessionCopy = session;
  contextsCopy = contexts;
  v12.receiver = self;
  v12.super_class = MFComposeWebView;
  if ([(MFComposeWebView *)&v12 respondsToSelector:sel_willBeginWritingToolsSession_requestContexts_])
  {
    v11.receiver = self;
    v11.super_class = MFComposeWebView;
    [(MFComposeWebView *)&v11 willBeginWritingToolsSession:sessionCopy requestContexts:contextsCopy];
  }

  if (sessionCopy)
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

- (void)writingToolsSession:(id)session didReceiveAction:(int64_t)action
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = MFComposeWebView;
  if ([(MFComposeWebView *)&v10 respondsToSelector:sel_writingToolsSession_didReceiveAction_])
  {
    v9.receiver = self;
    v9.super_class = MFComposeWebView;
    [(MFComposeWebView *)&v9 writingToolsSession:sessionCopy didReceiveAction:action];
  }

  if (action == 3)
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

- (void)compositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  finishedCopy = finished;
  length = range.length;
  location = range.location;
  sessionCopy = session;
  textCopy = text;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = MFComposeWebView;
  if ([(MFComposeWebView *)&v19 respondsToSelector:sel_compositionSession_didReceiveText_replacementRange_inContext_finished_])
  {
    v18.receiver = self;
    v18.super_class = MFComposeWebView;
    [(MFComposeWebView *)&v18 compositionSession:sessionCopy didReceiveText:textCopy replacementRange:location inContext:length finished:contextCopy, finishedCopy];
  }

  if (finishedCopy)
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

- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  finishedCopy = finished;
  length = range.length;
  location = range.location;
  sessionCopy = session;
  suggestionsCopy = suggestions;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = MFComposeWebView;
  if ([(MFComposeWebView *)&v19 respondsToSelector:sel_proofreadingSession_didReceiveSuggestions_processedRange_inContext_finished_])
  {
    v18.receiver = self;
    v18.super_class = MFComposeWebView;
    [(MFComposeWebView *)&v18 proofreadingSession:sessionCopy didReceiveSuggestions:suggestionsCopy processedRange:location inContext:length finished:contextCopy, finishedCopy];
  }

  if (finishedCopy)
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

- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = MFComposeWebView;
  if ([(MFComposeWebView *)&v10 respondsToSelector:sel_didEndWritingToolsSession_accepted_])
  {
    v9.receiver = self;
    v9.super_class = MFComposeWebView;
    [(MFComposeWebView *)&v9 didEndWritingToolsSession:sessionCopy accepted:acceptedCopy];
  }

  v7 = EMLogCompose();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "[Writing Tools] Did end writing tools session", v8, 2u);
  }

  [(MFComposeWebView *)self _updateAppearanceForWritingToolsSession:0];
}

- (void)_updateAppearanceForWritingToolsSession:(BOOL)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_composeWebViewDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeWebView:self hasActiveWritingToolsSession:sessionCopy];
  }
}

- (void)_addAttachment:(id)attachment
{
  v42 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v5 = EMLogCompose();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v40 = 2114;
    v41 = attachmentCopy;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Adding attachment: %{public}@", buf, 0x16u);
  }

  uniqueIdentifier = [attachmentCopy uniqueIdentifier];
  info = [attachmentCopy info];
  v7 = info;
  if (info)
  {
    name = [info name];
    v9 = name;
    if (name)
    {
      lastPathComponent = name;
    }

    else
    {
      filePath = [v7 filePath];
      lastPathComponent = [filePath lastPathComponent];
    }

    contentType = [v7 contentType];
    if (contentType)
    {
      v13 = [MEMORY[0x1E6982C40] typeWithMIMEType:contentType];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [MEMORY[0x1E6982C40] typeWithIdentifier:contentType];
      }

      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if ([v16 conformsToType:*MEMORY[0x1E6982DC8]])
    {
      v17 = [lastPathComponent stringByAppendingString:@".zip"];

      data = [v7 data];
      if (data)
      {
        v19 = 0;
      }

      else
      {
        v25 = MEMORY[0x1E695DFF8];
        filePath2 = [v7 filePath];
        v27 = [v25 fileURLWithPath:filePath2 isDirectory:1];

        archive = [MEMORY[0x1E69B1600] archive];
        v37 = 0;
        data = [archive compressFolder:v27 error:&v37];
        v19 = v37;
      }

      if (v19 || !data)
      {
        v29 = EMLogCompose();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          ef_publicDescription = [v19 ef_publicDescription];
          [(MFComposeWebView *)ef_publicDescription _addAttachment:buf, v29];
        }
      }

      v23 = @"application/zip";
    }

    else
    {
      preferredMIMEType = [v16 preferredMIMEType];
      v21 = preferredMIMEType;
      v22 = @"application/octet-stream";
      if (preferredMIMEType)
      {
        v22 = preferredMIMEType;
      }

      v23 = v22;

      data2 = [v7 data];
      v19 = data2;
      if (data2)
      {
        v19 = data2;
        v17 = lastPathComponent;
        data = v19;
      }

      else
      {
        v31 = MEMORY[0x1E695DEF0];
        filePath3 = [v7 filePath];
        data = [v31 dataWithContentsOfFile:filePath3 options:3 error:0];

        v17 = lastPathComponent;
      }
    }

    if (data)
    {
      if (_os_feature_enabled_impl())
      {
        shouldPreserveFidelity = [v7 shouldPreserveFidelity];
      }

      else
      {
        shouldPreserveFidelity = 0;
      }

      v34 = [(MFComposeWebView *)self _addInlineAttachmentWithData:data fileName:v17 type:v23 contentID:0];
      [v34 setShouldPreserveFidelity:shouldPreserveFidelity];
      [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier setObject:v34 forKeyedSubscript:uniqueIdentifier];
      mailComposeViewDelegate = [(MFComposeWebView *)self mailComposeViewDelegate];
      [mailComposeViewDelegate didInsertAttachment:v34];
    }
  }
}

- (void)_removeAttachment:(id)attachment
{
  v24 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  uniqueIdentifier = [attachmentCopy uniqueIdentifier];
  v6 = [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier objectForKeyedSubscript:uniqueIdentifier];
  contentID = [v6 contentID];

  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  compositionContext = [WeakRetained compositionContext];

  v10 = EMLogCompose();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v20 = 2114;
    v21 = attachmentCopy;
    v22 = 2114;
    v23 = contentID;
    _os_log_impl(&dword_1BE819000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Removing attachment: %{public}@, content ID: %{public}@", buf, 0x20u);
  }

  if (!self->_isFinishing)
  {
    if (contentID)
    {
      contentVariationAttachmentCID = [compositionContext contentVariationAttachmentCID];
      v12 = [contentID isEqualToString:contentVariationAttachmentCID];

      if ((v12 & 1) == 0)
      {
        attachments = [compositionContext attachments];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __38__MFComposeWebView__removeAttachment___block_invoke;
        v16[3] = &unk_1E806DC70;
        v17 = contentID;
        v14 = [attachments ef_firstObjectPassingTest:v16];

        if (v14)
        {
          [compositionContext removeAttachment:v14];
          mailComposeViewDelegate = [(MFComposeWebView *)self mailComposeViewDelegate];
          [mailComposeViewDelegate didRemoveAttachment:v14];
        }

        [(NSMutableDictionary *)self->_attachmentsByUniqueIdentifier removeObjectForKey:uniqueIdentifier];
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
  compositionContext = [WeakRetained compositionContext];
  v4 = [compositionContext sourceAccountManagement] == 2;

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