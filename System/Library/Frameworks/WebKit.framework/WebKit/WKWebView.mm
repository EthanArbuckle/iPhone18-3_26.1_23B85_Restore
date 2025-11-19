@interface WKWebView
+ (BOOL)_willUpgradeToHTTPS:(id)a3;
+ (BOOL)handlesURLScheme:(NSString *)urlScheme;
+ (NSString)_stringForFind;
+ (void)_permissionChanged:(id)a3 forOrigin:(id)a4;
+ (void)_setApplicationBundleIdentifier:(id)a3;
+ (void)_setStringForFind:(id)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)presentingApplicationAuditToken;
- (BOOL)_allMediaPresentationsClosed;
- (BOOL)_allowAnimationControls;
- (BOOL)_allowsAnyAnimationToPlay;
- (BOOL)_allowsDoubleTapGestures;
- (BOOL)_beginBackSwipeForTesting;
- (BOOL)_canBeginAutomaticLiveResize;
- (BOOL)_completeBackSwipeForTesting;
- (BOOL)_contentViewIsFirstResponder;
- (BOOL)_hasServiceWorkerBackgroundActivityForTesting;
- (BOOL)_hasServiceWorkerForegroundActivityForTesting;
- (BOOL)_hasVisibleColorExtensionView:(unsigned __int8)a3;
- (BOOL)_isBackground;
- (BOOL)_isDisplayingPDF;
- (BOOL)_isDisplayingStandaloneImageDocument;
- (BOOL)_isDisplayingStandaloneMediaDocument;
- (BOOL)_isEditable;
- (BOOL)_isInFullscreen;
- (BOOL)_isNavigationSwipeGestureRecognizer:(id)a3;
- (BOOL)_isValid;
- (BOOL)_isWindowResizingEnabled;
- (BOOL)_mayAutomaticallyShowVideoPictureInPicture;
- (BOOL)_mayContainEditableElementsInRect:(CGRect)a3;
- (BOOL)_negotiatedLegacyTLS;
- (BOOL)_restoreScrollAndZoomStateForTransaction:(const void *)a3;
- (BOOL)_scrollToRect:(FloatRect)a3 origin:(FloatPoint)a4 minimumScrollDistance:(float)a5;
- (BOOL)_scrollViewIsRubberBanding:(id)a3;
- (BOOL)_scrollViewIsRubberBandingForRefreshControl;
- (BOOL)_selectionRectIsFullyVisibleAndNonEmpty;
- (BOOL)_shouldHideTopScrollPocket;
- (BOOL)_shouldUpdateKeyboardWithInfo:(id)a3;
- (BOOL)_tryClose;
- (BOOL)_useSystemAppearance;
- (BOOL)_webProcessIsResponsive;
- (BOOL)_wirelessVideoPlaybackDisabled;
- (BOOL)_zoomToRect:(FloatRect)a3 withOrigin:(FloatPoint)a4 fitEntireRect:(BOOL)a5 minimumScale:(double)a6 maximumScale:(double)a7 minimumScrollDistance:(float)a8;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canGoBack;
- (BOOL)canGoForward;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)hasOnlySecureContent;
- (BOOL)isLoading;
- (BOOL)resignFirstResponder;
- (BOOL)supportsTextReplacement;
- (CALayer)_layerForFindOverlay;
- (CGFloat)pageZoom;
- (CGPoint)_contentOffsetAdjustedForObscuredInset:(CGPoint)a3;
- (CGPoint)_convertPointFromContentsToView:(CGPoint)a3;
- (CGPoint)_convertPointFromViewToContents:(CGPoint)a3;
- (CGPoint)_initialContentOffsetForScrollView;
- (CGRect)_contentBoundsExtendedForRubberbandingWithScale:(double)a3;
- (CGRect)_contentRectForUserInteraction;
- (CGRect)_contentVisibleRect;
- (CGRect)_dragCaretRect;
- (CGRect)_inputViewBoundsInWindow;
- (CGRect)_tapHighlightViewRect;
- (CGRect)_uiTextCaretRect;
- (CGRect)_visibleContentRect;
- (CGRect)_visibleRectInEnclosingView:(id)a3;
- (CGSize)_fixedLayoutSize;
- (CGSize)_maximumUnobscuredSizeOverride;
- (CGSize)_minimumLayoutSizeOverride;
- (CGSize)_minimumUnobscuredSizeOverride;
- (CGSize)_viewportSizeForCSSViewportUnits;
- (CGSize)scrollView:(id)a3 contentSizeForZoomScale:(double)a4 withProposedSize:(CGSize)a5;
- (Class)_intelligenceBaseClass;
- (FloatRect)visibleRectInViewCoordinates;
- (FloatSize)activeViewLayoutSize:(const CGRect *)a3;
- (NSArray)_certificateChain;
- (NSArray)_corsDisablingPatterns;
- (NSArray)_scrollPerformanceData;
- (NSArray)certificateChain;
- (NSData)_dataForDisplayedPDF;
- (NSData)_sessionStateData;
- (NSString)_MIMEType;
- (NSString)_applicationNameForUserAgent;
- (NSString)_caLayerTreeAsText;
- (NSString)_proxyName;
- (NSString)_remoteInspectionNameOverride;
- (NSString)_scrollingTreeAsText;
- (NSString)_suggestedFilenameForDisplayedPDF;
- (NSString)_uiViewTreeAsText;
- (NSString)_userAgent;
- (NSString)customUserAgent;
- (NSString)mediaType;
- (NSString)title;
- (NSURL)URL;
- (NSURL)_mainFrameURL;
- (NSURL)_resourceDirectoryURL;
- (OpaqueWKPage)_pageForTesting;
- (OptionSet<WebKit::ViewStabilityFlag>)_viewStabilityState:(id)a3;
- (RectEdges<float>)_obscuredInsetsForFixedColorExtension;
- (RefPtr<WebKit::ViewSnapshot,)_takeViewSnapshot;
- (RefPtr<WebKit::WebPageProxy,)_protectedPage;
- (RetainPtr<WKWebView>)_horizontallyAttachedInspectorWebView;
- (UIColor)_sampledPageTopColor;
- (UIColor)themeColor;
- (UIColor)underPageBackgroundColor;
- (UIEdgeInsets)_computedContentInset;
- (UIEdgeInsets)_computedObscuredInset;
- (UIEdgeInsets)_computedObscuredInsetForWarningView;
- (UIEdgeInsets)_computedUnobscuredSafeAreaInset;
- (UIEdgeInsets)_contentInsetsFromSystemMinimumLayoutMargins;
- (UIEdgeInsets)_obscuredInsets;
- (UIEdgeInsets)_scrollViewSystemContentInset;
- (UIEdgeInsets)_unobscuredSafeAreaInsets;
- (UIEdgeInsets)currentlyVisibleContentInsetsWithScale:(double)a3 obscuredInsets:(UIEdgeInsets)a4;
- (UIEdgeInsets)maximumViewportInset;
- (UIEdgeInsets)minimumViewportInset;
- (UIEventAttribution)_uiEventAttribution;
- (WKBackForwardList)backForwardList;
- (WKBrowsingContextHandle)_handle;
- (WKFullscreenState)fullscreenState;
- (WKHistoryDelegatePrivate)_historyDelegate;
- (WKMediaCaptureState)cameraCaptureState;
- (WKMediaCaptureState)microphoneCaptureState;
- (WKNavigation)goBack;
- (WKNavigation)goForward;
- (WKNavigation)goToBackForwardListItem:(WKBackForwardListItem *)item;
- (WKNavigation)loadData:(NSData *)data MIMEType:(NSString *)MIMEType characterEncodingName:(NSString *)characterEncodingName baseURL:(NSURL *)baseURL;
- (WKNavigation)loadFileRequest:(NSURLRequest *)request allowingReadAccessToURL:(NSURL *)readAccessURL;
- (WKNavigation)loadFileURL:(NSURL *)URL allowingReadAccessToURL:(NSURL *)readAccessURL;
- (WKNavigation)loadHTMLString:(NSString *)string baseURL:(NSURL *)baseURL;
- (WKNavigation)loadRequest:(NSURLRequest *)request;
- (WKNavigation)loadSimulatedRequest:(NSURLRequest *)request response:(NSURLResponse *)response responseData:(NSData *)data;
- (WKNavigation)loadSimulatedRequest:(NSURLRequest *)request responseHTMLString:(NSString *)string;
- (WKNavigation)loadSimulatedRequest:(NSURLRequest *)request withResponse:(NSURLResponse *)response responseData:(NSData *)data;
- (WKNavigation)loadSimulatedRequest:(NSURLRequest *)request withResponseHTMLString:(NSString *)string;
- (WKNavigation)reload;
- (WKNavigation)reloadFromOrigin;
- (WKWebView)initWithCoder:(NSCoder *)coder;
- (WKWebView)initWithFrame:(CGRect)a3;
- (WKWebView)initWithFrame:(CGRect)frame configuration:(WKWebViewConfiguration *)configuration;
- (WKWebViewConfiguration)configuration;
- (WKWebViewContentProviderRegistry)_contentProviderRegistry;
- (_WKDiagnosticLoggingDelegate)_diagnosticLoggingDelegate;
- (_WKFindDelegate)_findDelegate;
- (_WKFrameHandle)_mainFrame;
- (_WKFullscreenDelegate)_fullscreenDelegate;
- (_WKIconLoadingDelegate)_iconLoadingDelegate;
- (_WKInspector)_inspector;
- (_WKResourceLoadDelegate)_resourceLoadDelegate;
- (_WKSessionState)_sessionState;
- (_WKWebViewPrintProvider)_printProvider;
- (atomic_uchar)intelligenceTextEffectCoordinator:(WebCore:(uint64_t *)a2 :DestinationColorSpace *)a1 contentPreviewForRange:completion:;
- (double)_contentZoomScale;
- (double)_overrideDeviceScaleFactor;
- (double)_pageScale;
- (double)_targetContentZoomScaleForRect:(const FloatRect *)a3 currentScale:(double)a4 fitEntireRect:(BOOL)a5 minimumScale:(double)a6 maximumScale:(double)a7;
- (double)estimatedProgress;
- (float)_adjustScrollRectToAvoidHighlightOverlay:(FloatRect)a3;
- (id).cxx_construct;
- (id)UIDelegate;
- (id)_animationForFindOverlay:(BOOL)a3;
- (id)_attachmentForIdentifier:(id)a3;
- (id)_colorExtensionViewForTesting:(unint64_t)a3;
- (id)_contentSizeCategory;
- (id)_contentsOfUserInterfaceItem:(id)a3;
- (id)_currentContentView;
- (id)_insertAttachmentWithFileWrapper:(id)a3 contentType:(id)a4 completion:(id)a5;
- (id)_insertAttachmentWithFileWrapper:(id)a3 contentType:(id)a4 options:(id)a5 completion:(id)a6;
- (id)_insertAttachmentWithFilename:(id)a3 contentType:(id)a4 data:(id)a5 options:(id)a6 completion:(id)a7;
- (id)_insertionPointColor;
- (id)_loadData:(id)a3 MIMEType:(id)a4 characterEncodingName:(id)a5 baseURL:(id)a6 userData:(id)a7;
- (id)_loadRequest:(id)a3 shouldOpenExternalURLs:(BOOL)a4;
- (id)_loadRequest:(id)a3 shouldOpenExternalURLsPolicy:(int64_t)a4;
- (id)_propertiesOfLayerWithID:(unint64_t)a3;
- (id)_reloadExpiredOnly;
- (id)_reloadWithoutContentBlockers;
- (id)_remoteObjectRegistry;
- (id)_restoreSessionState:(id)a3 andNavigate:(BOOL)a4;
- (id)_retainActiveFocusedState;
- (id)_scrollbarState:(unint64_t)a3 processID:(unint64_t)a4 isVertical:(BOOL)a5;
- (id)_scrollbarStateForScrollingNodeID:(unint64_t)a3 processID:(unint64_t)a4 isVertical:(BOOL)a5;
- (id)_searchableObject;
- (id)_sessionStateWithFilter:(id)a3;
- (id)_snapshotLayerContentsForBackForwardListItem:(id)a3;
- (id)_textInputTraits;
- (id)_viewForFindUI;
- (id)findInteraction:(id)a3 sessionForView:(id)a4;
- (id)fullScreenWindowController;
- (id)interactionState;
- (id)navigationDelegate;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)undoManager;
- (id)valueForUndefinedKey:(id)a3;
- (id)viewForZoomingInScrollView:(id)a3;
- (int)_deviceOrientationIgnoringOverrides;
- (int)_gpuProcessIdentifier;
- (int)_networkProcessIdentifier;
- (int)_provisionalWebProcessIdentifier;
- (int)_webProcessIdentifier;
- (int64_t)_displayCaptureState;
- (int64_t)_effectiveDataOwner:(int64_t)a3;
- (int64_t)_paginationMode;
- (int64_t)_systemAudioCaptureState;
- (int64_t)_webProcessState;
- (uint64_t)_evaluateJavaScript:(WTF *)this asAsyncFunction:(void *)a2 withSourceURL:withArguments:forceUserGesture:inFrame:inWorld:completionHandler:;
- (uint64_t)_internalDoAfterNextPresentationUpdate:(const void *)a1 withoutWaitingForPainting:withoutWaitingForAnimatedResize:;
- (uint64_t)_internalDoAfterNextPresentationUpdate:(uint64_t)a1 withoutWaitingForPainting:withoutWaitingForAnimatedResize:;
- (uint64_t)_internalDoAfterNextPresentationUpdate:withoutWaitingForPainting:withoutWaitingForAnimatedResize:;
- (uint64_t)_showWarningView:(uint64_t)a1 completionHandler:;
- (uint64_t)closeAllMediaPresentationsWithCompletionHandler:(WTF *)this;
- (uint64_t)closeAllMediaPresentationsWithCompletionHandler:(uint64_t)a1;
- (uint64_t)compositionSession:didReceiveText:replacementRange:inContext:finished:;
- (uint64_t)createPDFWithConfiguration:(const void *)a1 completionHandler:;
- (uint64_t)createPDFWithConfiguration:(uint64_t)a1 completionHandler:;
- (uint64_t)createWebArchiveDataWithCompletionHandler:(const void *)a1;
- (uint64_t)createWebArchiveDataWithCompletionHandler:(uint64_t)a1;
- (uint64_t)didEndWritingToolsSession:accepted:;
- (uint64_t)fetchDataOfTypes:()WTF::ShouldValidateKey completionHandler:;
- (uint64_t)fetchDataOfTypes:(uint64_t)a1 completionHandler:(WTF::StringImpl *)a2;
- (uint64_t)findString:(const void *)a1 withConfiguration:completionHandler:;
- (uint64_t)findString:(uint64_t)a1 withConfiguration:completionHandler:;
- (uint64_t)intelligenceTextEffectCoordinator:(const void *)a1 contentPreviewForRange:completion:;
- (uint64_t)intelligenceTextEffectCoordinator:(const void *)a1 decorateReplacementsForRange:completion:;
- (uint64_t)intelligenceTextEffectCoordinator:(const void *)a1 rectsForProofreadingSuggestionsInRange:completion:;
- (uint64_t)intelligenceTextEffectCoordinator:(const void *)a1 setSelectionForRange:completion:;
- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 contentPreviewForRange:completion:;
- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 decorateReplacementsForRange:completion:;
- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 rectsForProofreadingSuggestionsInRange:completion:;
- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 setSelectionForRange:completion:;
- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 textPreviewsForRange:completion:;
- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 updateTextVisibilityForRange:visible:identifier:completion:;
- (uint64_t)observeValueForKeyPath:(id *)a1 ofObject:change:context:;
- (uint64_t)observeValueForKeyPath:(uint64_t)a1 ofObject:change:context:;
- (uint64_t)proofreadingSession:didReceiveSuggestions:processedRange:inContext:finished:;
- (uint64_t)requestMediaPlaybackStateWithCompletionHandler:(const void *)a1;
- (uint64_t)requestMediaPlaybackStateWithCompletionHandler:(uint64_t)a1;
- (uint64_t)restoreData:(WTF *)this completionHandler:(void *)a2;
- (uint64_t)restoreData:(uint64_t)a1 completionHandler:(void *)a2;
- (uint64_t)resumeDownloadFromResumeData:(const void *)a1 completionHandler:;
- (uint64_t)resumeDownloadFromResumeData:(uint64_t)a1 completionHandler:;
- (uint64_t)resumeDownloadFromResumeData:(uint64_t)result completionHandler:(uint64_t)a2;
- (uint64_t)setCameraCaptureState:(const void *)a1 completionHandler:;
- (uint64_t)setCameraCaptureState:(uint64_t)a1 completionHandler:;
- (uint64_t)setMicrophoneCaptureState:(const void *)a1 completionHandler:;
- (uint64_t)setMicrophoneCaptureState:(uint64_t)a1 completionHandler:;
- (uint64_t)startDownloadUsingRequest:(const void *)a1 completionHandler:;
- (uint64_t)startDownloadUsingRequest:(uint64_t)a1 completionHandler:;
- (uint64_t)startDownloadUsingRequest:(uint64_t)result completionHandler:(uint64_t)a2;
- (uint64_t)takeSnapshotWithConfiguration:(const void *)a1 completionHandler:;
- (uint64_t)takeSnapshotWithConfiguration:(uint64_t)a1 completionHandler:;
- (uint64_t)willBeginWritingToolsSession:(const void *)a1 requestContexts:;
- (uint64_t)willBeginWritingToolsSession:(uint64_t)a1 requestContexts:;
- (uint64_t)willBeginWritingToolsSession:(uint64_t)a1 requestContexts:(uint64_t)a2;
- (unint64_t)_countOfUpdatesWithLayerChanges;
- (unint64_t)_displayCaptureSurfaces;
- (unint64_t)_effectiveObscuredInsetEdgesAffectedBySafeArea;
- (unint64_t)_fixedContainerEdges;
- (unint64_t)_mediaMutedState;
- (unint64_t)_resetFocusPreservationCount;
- (unint64_t)allowedWritingToolsResultOptions;
- (unint64_t)axesToPreventScrollingForPanGestureInScrollView:(id)a3;
- (void)_UITraitHDRHeadroomUsageDidChange;
- (void)_accessibilityRetrieveRectsAtSelectionOffset:(int64_t)a3 withText:(id)a4 completionHandler:(id)a5;
- (void)_acquireResizeAssertionForReason:(id)a3;
- (void)_addAppHighlight;
- (void)_addAppHighlightInNewGroup:(BOOL)a3 originatedInApp:(BOOL)a4;
- (void)_addEventAttributionWithSourceID:(unsigned __int8)a3 destinationURL:(id)a4 sourceDescription:(id)a5 purchaser:(id)a6 reportEndpoint:(id)a7 optionalNonce:(id)a8 applicationBundleID:(id)a9 ephemeral:(BOOL)a10;
- (void)_addLayerForFindOverlay;
- (void)_addReasonToHideTopScrollPocket:(unsigned __int8)a3;
- (void)_addShortcut:(id)a3;
- (void)_addUpdateVisibleContentRectPreCommitHandler;
- (void)_adjustVisibilityForTargetedElements:(id)a3 completionHandler:(id)a4;
- (void)_appPrivacyReportTestingData:(id)a3;
- (void)_archiveWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)_becomeFirstResponderWithSelectionMovingForward:(BOOL)a3 completionHandler:(id)a4;
- (void)_beginAnimatedResizeWithUpdates:(id)a3;
- (void)_beginAutomaticLiveResizeIfNeeded;
- (void)_beginLiveResize;
- (void)_callAsyncJavaScript:(id)a3 arguments:(id)a4 inFrame:(id)a5 inContentWorld:(id)a6 completionHandler:(id)a7;
- (void)_cancelAnimatedResize;
- (void)_cancelFixedColorExtensionFadeAnimationsForTesting;
- (void)_changeListType:(id)a3;
- (void)_clearAppPrivacyReportTestingData:(id)a3;
- (void)_clearBackForwardCache;
- (void)_clearOverrideLayoutParameters;
- (void)_clearServiceWorkerEntitlementOverride:(id)a3;
- (void)_clearWarningView;
- (void)_clearWarningViewIfForMainFrameNavigation;
- (void)_closeAllMediaPresentations;
- (void)_completeTextManipulation:(id)a3 completion:(id)a4;
- (void)_completeTextManipulationForItems:(id)a3 completion:(id)a4;
- (void)_computePagesForPrinting:(id)a3 completionHandler:(id)a4;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_convertPoint:(CGPoint)a3 fromFrame:(id)a4 toMainFrameCoordinates:(id)a5;
- (void)_convertRect:(CGRect)a3 fromFrame:(id)a4 toMainFrameCoordinates:(id)a5;
- (void)_couldNotRestorePageState;
- (void)_countStringMatches:(id)a3 options:(unint64_t)a4 maxCount:(unint64_t)a5;
- (void)_createIconDataFromImageData:(id)a3 withLengths:(id)a4 completionHandler:(id)a5;
- (void)_createPDFPageNumberIndicator:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)a3 :(CGRect)a4 ObjectIdentifierMainThreadAccessTraits<uint64_t> :(unint64_t)a5 PDFPluginIdentifierType withFrame:pageCount:;
- (void)_dataTaskWithRequest:(id)a3 runAtForegroundPriority:(BOOL)a4 completionHandler:(id)a5;
- (void)_decodeImageData:(id)a3 preferredSize:(id)a4 completionHandler:(id)a5;
- (void)_decreaseListLevel:(id)a3;
- (void)_decrementFocusPreservationCount;
- (void)_define:(id)a3;
- (void)_denyNextUserMediaRequest;
- (void)_destroyResizeAnimationView;
- (void)_detectDataWithTypes:(unint64_t)a3 completionHandler:(id)a4;
- (void)_didAddLayerForFindOverlay:(id)a3;
- (void)_didChangeEditorState;
- (void)_didCommitLayerTree:(const void *)a3;
- (void)_didCommitLayerTreeDuringAnimatedResize:(const void *)a3;
- (void)_didCommitLoadForMainFrame;
- (void)_didCompleteAnimatedResize;
- (void)_didDisableBrowserExtensions:(id)a3;
- (void)_didEnableBrowserExtensions:(id)a3;
- (void)_didEndPartialIntelligenceTextAnimation;
- (void)_didFailNavigation:(Navigation *)a3;
- (void)_didFinishLoadingDataForCustomContentProviderWithSuggestedFilename:(const void *)a3 data:(id)a4;
- (void)_didFinishNavigation:(Navigation *)a3;
- (void)_didFinishScrolling:(id)a3;
- (void)_didInsertAttachment:(void *)a3 withSource:(id)a4;
- (void)_didInvalidateDataForAttachment:(void *)a3;
- (void)_didInvokeUIScrollViewDelegateCallback;
- (void)_didLoadAppInitiatedRequest:(id)a3;
- (void)_didLoadNonAppInitiatedRequest:(id)a3;
- (void)_didRelaunchProcess;
- (void)_didRemoveAttachment:(void *)a3;
- (void)_didRemoveLayerForFindOverlay;
- (void)_didSameDocumentNavigationForMainFrame:(unsigned __int8)a3;
- (void)_didScroll;
- (void)_didStartProvisionalLoadForMainFrame;
- (void)_didStopDeferringGeometryUpdates;
- (void)_disableBackForwardSnapshotVolatilityForTesting;
- (void)_disableURLSchemeCheckInDataDetectors;
- (void)_dispatchSetDeviceOrientation:(int)a3;
- (void)_dispatchSetOrientationForMediaCapture:(int)a3;
- (void)_dispatchSetViewLayoutSize:(FloatSize)a3;
- (void)_doAfterActivityStateUpdate:(id)a3;
- (void)_doAfterNextPresentationUpdate:(id)a3;
- (void)_doAfterNextPresentationUpdateWithoutWaitingForPainting:(id)a3;
- (void)_doAfterNextStablePresentationUpdate:(id)a3;
- (void)_doAfterNextVisibleContentRectAndPresentationUpdate:;
- (void)_doAfterNextVisibleContentRectAndPresentationUpdate:(id)a3;
- (void)_doAfterNextVisibleContentRectAndStablePresentationUpdate:(id)a3;
- (void)_doAfterNextVisibleContentRectUpdate:(id)a3;
- (void)_doAfterProcessingAllPendingMouseEvents:(id)a3;
- (void)_dumpPrivateClickMeasurement:(id)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_enclosingScrollerScrollingEnded:(id)a3;
- (void)_endAnimatedFullScreenExit;
- (void)_endAnimatedResize;
- (void)_endLiveResize;
- (void)_enhancedWindowingToggled:(id)a3;
- (void)_ensureResizeAnimationView;
- (void)_enterFullscreen;
- (void)_enterInWindow;
- (void)_evaluateJavaScript:(__n128)a3 asAsyncFunction:withSourceURL:withArguments:forceUserGesture:inFrame:inWorld:completionHandler:;
- (void)_evaluateJavaScript:(id)a3 asAsyncFunction:(BOOL)a4 withSourceURL:(id)a5 withArguments:(id)a6 forceUserGesture:(BOOL)a7 inFrame:(id)a8 inWorld:(id)a9 completionHandler:(id)a10;
- (void)_evaluateJavaScript:(id)a3 inFrame:(id)a4 inContentWorld:(id)a5 completionHandler:(id)a6;
- (void)_evaluateJavaScript:(id)a3 withSourceURL:(id)a4 inFrame:(id)a5 inContentWorld:(id)a6 completionHandler:(id)a7;
- (void)_evaluateJavaScript:(id)a3 withSourceURL:(id)a4 inFrame:(id)a5 inContentWorld:(id)a6 withUserGesture:(BOOL)a7 completionHandler:(id)a8;
- (void)_evaluateJavaScript:(void *)a1 asAsyncFunction:withSourceURL:withArguments:forceUserGesture:inFrame:inWorld:completionHandler:;
- (void)_evaluateJavaScriptWithoutUserGesture:(id)a3 completionHandler:(id)a4;
- (void)_executeEditCommand:(id)a3 argument:(id)a4 completion:(id)a5;
- (void)_exitInWindow;
- (void)_fetchDataOfTypes:(unint64_t)a3 completionHandler:(id)a4;
- (void)_findSelected:(id)a3;
- (void)_findString:(id)a3 options:(unint64_t)a4 maxCount:(unint64_t)a5;
- (void)_firePresentationUpdateForPendingStableStatePresentationCallbacks;
- (void)_focusTextInputContext:(id)a3 placeCaretAt:(CGPoint)a4 completionHandler:(id)a5;
- (void)_forceScrollPocketsToRecomputeElementRegions;
- (void)_frameInfoFromHandle:(id)a3 completionHandler:(id)a4;
- (void)_frameOrBoundsMayHaveChanged;
- (void)_frameOrBoundsWillChange;
- (void)_frameTrees:(id)a3;
- (void)_frames:(id)a3;
- (void)_getApplicationManifestWithCompletionHandler:(id)a3;
- (void)_getContentsAsAttributedStringWithCompletionHandler:(id)a3;
- (void)_getContentsAsStringWithCompletionHandler:(id)a3;
- (void)_getContentsAsStringWithCompletionHandlerKeepIPCConnectionAliveForTesting:(id)a3;
- (void)_getContentsOfAllFramesAsStringWithCompletionHandler:(id)a3;
- (void)_getInformationFromImageData:(id)a3 completionHandler:(id)a4;
- (void)_getMainResourceDataWithCompletionHandler:(id)a3;
- (void)_getNotifyStateForTesting:(id)a3 completionHandler:(id)a4;
- (void)_getPDFFirstPageSizeInFrame:(id)a3 completionHandler:(id)a4;
- (void)_getProcessDisplayNameWithCompletionHandler:(id)a3;
- (void)_getTextFragmentMatchWithCompletionHandler:(id)a3;
- (void)_getWebArchiveDataWithCompletionHandler:(id)a3;
- (void)_gpuToWebProcessConnectionCountForTesting:(id)a3;
- (void)_grantAccessToAssetServices;
- (void)_hideContentUntilNextUpdate;
- (void)_hideFindOverlay;
- (void)_hideFindUI;
- (void)_hidePasswordView;
- (void)_increaseListLevel:(id)a3;
- (void)_indent:(id)a3;
- (void)_initializeWithConfiguration:(id)a3;
- (void)_insertNestedOrderedList:(id)a3;
- (void)_insertNestedUnorderedList:(id)a3;
- (void)_insertOrderedList:(id)a3;
- (void)_insertUnorderedList:(id)a3;
- (void)_installScreenTimeWebpageControllerIfNeeded;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
- (void)_intelligenceCollectRemoteContentIn:(CGRect)a3 remoteContextWrapper:(id)a4;
- (void)_internalDoAfterNextPresentationUpdate:(id)a3 withoutWaitingForPainting:(BOOL)a4 withoutWaitingForAnimatedResize:(BOOL)a5;
- (void)_internalDoAfterNextPresentationUpdate:(uint64_t)a1 withoutWaitingForPainting:withoutWaitingForAnimatedResize:;
- (void)_invalidateResizeAssertions;
- (void)_isForcedIntoAppBoundMode:(id)a3;
- (void)_isJITEnabled:(id)a3;
- (void)_isLayerTreeFrozenForTesting:(id)a3;
- (void)_isNavigatingToAppBoundDomain:(id)a3;
- (void)_keyboardChangedWithInfo:(id)a3 adjustScrollView:(BOOL)a4;
- (void)_keyboardDidChangeFrame:(id)a3;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_killWebContentProcess;
- (void)_killWebContentProcessAndResetState;
- (void)_lastNavigationWasAppInitiated:(id)a3;
- (void)_launchInitialProcessIfNecessary;
- (void)_loadAlternateHTMLString:(id)a3 baseURL:(id)a4 forUnreachableURL:(id)a5;
- (void)_loadAndDecodeImage:(id)a3 constrainedToSize:(CGSize)a4 maximumBytesFromNetwork:(unint64_t)a5 completionHandler:(id)a6;
- (void)_loadServiceWorker:(id)a3 usingModules:(BOOL)a4 completionHandler:(id)a5;
- (void)_lookup:(id)a3;
- (void)_navigationGestureDidBegin;
- (void)_navigationGestureDidEnd;
- (void)_nextAccessoryTab:(id)a3;
- (void)_nowPlayingMediaTitleAndArtist:(id)a3;
- (void)_numberOfVisibilityAdjustmentRectsWithCompletionHandler:(id)a3;
- (void)_outdent:(id)a3;
- (void)_overrideLayoutParametersWithMinimumLayoutSize:(CGSize)a3 minimumUnobscuredSizeOverride:(CGSize)a4 maximumUnobscuredSizeOverride:(CGSize)a5;
- (void)_overrideViewportWithArguments:(id)a3;
- (void)_pasteAndMatchStyle:(id)a3;
- (void)_pasteAsQuotation:(id)a3;
- (void)_pauseAllAnimationsWithCompletionHandler:(id)a3;
- (void)_pauseNowPlayingMediaSession:(id)a3;
- (void)_playAllAnimationsWithCompletionHandler:(id)a3;
- (void)_playPredominantOrNowPlayingMediaSession:(id)a3;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_preconnectToServer:(id)a3;
- (void)_presentLockdownMode;
- (void)_presentLockdownModeAlertIfNeeded;
- (void)_previousAccessoryTab:(id)a3;
- (void)_processDidExit;
- (void)_processDidResumeForTesting;
- (void)_processWillSuspendForTesting:(id)a3;
- (void)_processWillSuspendImminentlyForTesting;
- (void)_processWillSwap;
- (void)_processWillSwapOrDidExit;
- (void)_promptForReplace:(id)a3;
- (void)_proofreadingSessionShowDetailsForSuggestionWithUUID:(id)a3 relativeToRect:(CGRect)a4;
- (void)_proofreadingSessionUpdateState:(unsigned __int8)a3 forSuggestionWithUUID:(id)a4;
- (void)_recalculateViewportSizesWithMinimumViewportInset:(UIEdgeInsets)a3 maximumViewportInset:(UIEdgeInsets)a4 throwOnInvalidInput:(BOOL)a5;
- (void)_registerForNotifications;
- (void)_reinsertTopFixedColorExtensionViewIfNeeded;
- (void)_removeAnyPDFPageNumberIndicator;
- (void)_removeDataDetectedLinks:(id)a3;
- (void)_removeLayerForFindOverlay;
- (void)_removePDFPageNumberIndicator:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)a3 :ObjectIdentifierMainThreadAccessTraits<uint64_t> :PDFPluginIdentifierType;
- (void)_removeReasonToHideTopScrollPocket:(unsigned __int8)a3;
- (void)_requestActivatedElementAtPosition:(CGPoint)a3 completionBlock:(id)a4;
- (void)_requestActiveNowPlayingSessionInfo:(id)a3;
- (void)_requestAllTargetableElementsInfo:(double)a3 completionHandler:(id)a4;
- (void)_requestAllTextWithCompletionHandler:(id)a3;
- (void)_requestTargetedElementInfo:(id)a3 completionHandler:(id)a4;
- (void)_requestTextExtraction:(CGRect)a3 completionHandler:(id)a4;
- (void)_requestTextInputContextsInRect:(CGRect)a3 completionHandler:(id)a4;
- (void)_rescheduleEndLiveResizeTimer;
- (void)_resetCachedScrollViewBackgroundColor;
- (void)_resetContentOffset;
- (void)_resetInteraction;
- (void)_resetNavigationGestureStateForTesting;
- (void)_resetObscuredInsets;
- (void)_resetObscuredInsetsForTesting;
- (void)_resetScrollViewInsetAdjustmentBehavior;
- (void)_resetUnobscuredSafeAreaInsets;
- (void)_resetVisibilityAdjustmentsForTargetedElements:(id)a3 completionHandler:(id)a4;
- (void)_resizeWhileHidingContentWithUpdates:(id)a3;
- (void)_restoreAndScrollToAppHighlight:(id)a3;
- (void)_restoreAppHighlights:(id)a3;
- (void)_restoreData:(id)a3 completionHandler:(id)a4;
- (void)_restoreFromSessionStateData:(id)a3;
- (void)_restorePageScrollPosition:(optional<WebCore:(FloatPoint)a4 :(RectEdges<float>)a5 FloatPoint>)a3 scrollOrigin:(double)a6 previousObscuredInset:scale:;
- (void)_restorePageStateToUnobscuredCenter:(optional<WebCore:(double)a4 :FloatPoint>)a3 scale:;
- (void)_resumeAllMediaPlayback;
- (void)_resumePage:(id)a3;
- (void)_revokeAccessToAssetServices;
- (void)_saveBackForwardSnapshotForItem:(id)a3;
- (void)_saveResources:(id)a3 suggestedFileName:(id)a4 completionHandler:(id)a5;
- (void)_scheduleVisibleContentRectUpdateAfterScrollInView:(id)a3;
- (void)_scrollToAndRevealSelectionIfNeeded;
- (void)_scrollToContentScrollPosition:(FloatPoint)a3 scrollOrigin:(IntPoint)a4 animated:(BOOL)a5;
- (void)_scrollToEdge:(unint64_t)a3 animated:(BOOL)a4;
- (void)_scrollViewDidInterruptDecelerating:(id)a3;
- (void)_serviceWorkersEnabled:(id)a3;
- (void)_setAddsVisitedLinks:(BOOL)a3;
- (void)_setAllowsMediaDocumentInlinePlayback:(BOOL)a3;
- (void)_setApplicationNameForUserAgent:(id)a3;
- (void)_setAvoidsUnsafeArea:(BOOL)a3;
- (void)_setBackgroundExtendsBeyondPage:(BOOL)a3;
- (void)_setCORSDisablingPatterns:(id)a3;
- (void)_setCanUseCredentialStorage:(BOOL)a3;
- (void)_setDeviceOrientationUserPermissionHandlerForTesting:(id)a3;
- (void)_setDiagnosticLoggingDelegate:(id)a3;
- (void)_setDisplayCaptureState:(int64_t)a3 completionHandler:(id)a4;
- (void)_setDragInteractionPolicy:(unint64_t)a3;
- (void)_setEditable:(BOOL)a3;
- (void)_setEphemeralUIEventAttribution:(id)a3 forApplicationWithBundleID:(id)a4;
- (void)_setFindDelegate:(id)a3;
- (void)_setFixedLayoutSize:(CGSize)a3;
- (void)_setFont:(id)a3 sender:(id)a4;
- (void)_setFontSize:(double)a3 sender:(id)a4;
- (void)_setFullscreenDelegate:(id)a3;
- (void)_setGamepadsRecentlyAccessed:(BOOL)a3;
- (void)_setGapBetweenPages:(double)a3;
- (void)_setHasCustomContentView:(BOOL)a3 loadedMIMEType:(const void *)a4;
- (void)_setHistoryDelegate:(id)a3;
- (void)_setIconLoadingDelegate:(id)a3;
- (void)_setIndexOfGetDisplayMediaDeviceSelectedForTesting:(id)a3;
- (void)_setInputDelegate:(id)a3;
- (void)_setInterfaceOrientationOverride:(int64_t)a3;
- (void)_setLayoutMode:(unint64_t)a3;
- (void)_setMediaCaptureEnabled:(BOOL)a3;
- (void)_setMinimumEffectiveDeviceWidth:(double)a3;
- (void)_setNeedsScrollGeometryUpdates:(BOOL)a3;
- (void)_setNowPlayingMetadataObserver:(id)a3;
- (void)_setObscuredInsetEdgesAffectedBySafeArea:(unint64_t)a3;
- (void)_setObscuredInsetsInternal:(UIEdgeInsets)a3;
- (void)_setOpaqueInternal:(BOOL)a3;
- (void)_setOverrideDeviceScaleFactor:(double)a3;
- (void)_setPageLength:(double)a3;
- (void)_setPageMuted:(unint64_t)a3;
- (void)_setPageScale:(double)a3 withOrigin:(CGPoint)a4;
- (void)_setPageZoomFactor:(double)a3;
- (void)_setPaginationBehavesLikeColumns:(BOOL)a3;
- (void)_setPaginationMode:(int64_t)a3;
- (void)_setPointerTouchCompatibilitySimulatorEnabled:(BOOL)a3;
- (void)_setPrivateClickMeasurementAppBundleIDForTesting:(id)a3 completionHandler:(id)a4;
- (void)_setPrivateClickMeasurementAttributionReportURLsForTesting:(id)a3 destinationURL:(id)a4 completionHandler:(id)a5;
- (void)_setPrivateClickMeasurementAttributionTokenPublicKeyURLForTesting:(id)a3 completionHandler:(id)a4;
- (void)_setPrivateClickMeasurementAttributionTokenSignatureURLForTesting:(id)a3 completionHandler:(id)a4;
- (void)_setPrivateClickMeasurementOverrideTimerForTesting:(BOOL)a3 completionHandler:(id)a4;
- (void)_setRemoteInspectionNameOverride:(id)a3;
- (void)_setResourceLoadDelegate:(id)a3;
- (void)_setScrollPerformanceDataCollectionEnabled:(BOOL)a3;
- (void)_setShouldSuppressTopColorExtensionView:(BOOL)a3;
- (void)_setStatisticsCrossSiteLoadWithLinkDecorationForTesting:(id)a3 withToHost:(id)a4 withWasFiltered:(BOOL)a5 withCompletionHandler:(id)a6;
- (void)_setSuppressSoftwareKeyboard:(BOOL)a3;
- (void)_setSystemAudioCaptureState:(int64_t)a3 completionHandler:(id)a4;
- (void)_setSystemCanPromptForGetDisplayMediaForTesting:(BOOL)a3;
- (void)_setSystemPreviewCompletionHandlerForLoadTesting:(id)a3;
- (void)_setTextColor:(id)a3 sender:(id)a4;
- (void)_setTextZoomFactor:(double)a3;
- (void)_setThrottleStateForTesting:(int)a3;
- (void)_setUIEventAttribution:(id)a3;
- (void)_setUnobscuredSafeAreaInsets:(UIEdgeInsets)a3;
- (void)_setUseSystemAppearance:(BOOL)a3;
- (void)_setViewScale:(double)a3;
- (void)_setViewportSizeForCSSViewportUnits:(CGSize)a3;
- (void)_setupPageConfiguration:(void *)a3 withPool:(void *)a4;
- (void)_setupScrollAndContentViews;
- (void)_share:(id)a3;
- (void)_showDigitalCredentialsPicker:(const void *)a3 completionHandler:(void *)a4;
- (void)_showFindOverlay;
- (void)_showPasswordViewWithDocumentName:(id)a3 passwordHandler:(id)a4;
- (void)_showWarningView:(const void *)a3 completionHandler:(void *)a4;
- (void)_showWarningView:(uint64_t)a1 completionHandler:(unsigned __int8 *)a2;
- (void)_showWarningViewWithTitle:(id)a3 warning:(id)a4 details:(id)a5 completionHandler:(id)a6;
- (void)_showWarningViewWithURL:(id)a3 title:(id)a4 warning:(id)a5 details:(id)a6 completionHandler:(id)a7;
- (void)_showWarningViewWithURL:(id)a3 title:(id)a4 warning:(id)a5 detailsWithLinks:(id)a6 completionHandler:(id)a7;
- (void)_simulateClickOverFirstMatchingTextInViewportWithUserInteraction:(id)a3 completionHandler:(id)a4;
- (void)_simulateDeviceOrientationChangeWithAlpha:(double)a3 beta:(double)a4 gamma:(double)a5;
- (void)_snapshotRectAfterScreenUpdates:(BOOL)a3 rectInViewCoordinates:(CGRect)a4 intoImageOfWidth:(double)a5 completionHandler:(id)a6;
- (void)_startImageAnalysis:(id)a3 target:(id)a4;
- (void)_startTextManipulationsWithConfiguration:(id)a3 completion:(id)a4;
- (void)_stopAllMediaPlayback;
- (void)_stopMediaCapture;
- (void)_storeAppHighlight:(const void *)a3;
- (void)_suspendAllMediaPlayback;
- (void)_suspendPage:(id)a3;
- (void)_switchFromStaticFontRegistryToUserFontRegistry;
- (void)_takeFindStringFromSelection:(id)a3;
- (void)_takePDFSnapshotWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)_targetedPreviewForElementWithID:(id)a3 completionHandler:(id)a4;
- (void)_terminateIdleServiceWorkersForTesting;
- (void)_textFragmentDirectiveFromSelectionWithCompletionHandler:(id)a3;
- (void)_textFragmentRangesWithCompletionHandlerForTesting:(id)a3;
- (void)_toggleInWindow;
- (void)_togglePictureInPicture;
- (void)_toggleStrikeThrough:(id)a3;
- (void)_trackTransactionCommit:(const void *)a3;
- (void)_translate:(id)a3;
- (void)_transliterateChinese:(id)a3;
- (void)_triggerSystemPreviewActionOnElement:(unint64_t)a3 document:(id)a4 page:(unint64_t)a5;
- (void)_uninstallScreenTimeWebpageController;
- (void)_updateDrawingAreaSize;
- (void)_updateFindOverlayPosition;
- (void)_updateFindOverlaysOutsideContentView:(id)a3;
- (void)_updateFixedColorExtensionViewFrames;
- (void)_updateFixedColorExtensionViews;
- (void)_updateFixedContainerEdges:(const void *)a3;
- (void)_updateHiddenScrollPocketEdges;
- (void)_updateLastKnownWindowSizeAndOrientation;
- (void)_updateLiveResizeTransform;
- (void)_updateMediaPlaybackControlsManager;
- (void)_updateNeedsTopScrollPocketDueToVisibleContentInset;
- (void)_updatePDFPageNumberIndicator:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)a3 :(CGRect)a4 ObjectIdentifierMainThreadAccessTraits<uint64_t> :PDFPluginIdentifierType withFrame:;
- (void)_updatePDFPageNumberIndicator:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)a3 :(unint64_t)a4 ObjectIdentifierMainThreadAccessTraits<uint64_t> :PDFPluginIdentifierType currentPage:;
- (void)_updatePDFPageNumberIndicatorIfNeeded;
- (void)_updatePageLoadObserverState;
- (void)_updatePrefersSolidColorHardPocket;
- (void)_updateScreenTimeBasedOnWindowVisibility;
- (void)_updateScreenTimeViewGeometry;
- (void)_updateScrollGeometryWithContentOffset:(CGPoint)a3 contentSize:(CGSize)a4;
- (void)_updateScrollViewBackground;
- (void)_updateScrollViewForTransaction:(const void *)a3;
- (void)_updateScrollViewIndicatorStyle;
- (void)_updateScrollViewInsetAdjustmentBehavior;
- (void)_updateTopScrollPocketCaptureColor;
- (void)_updateVisibleContentRects;
- (void)_updateWebpagePreferences:(id)a3;
- (void)_videoControlsManagerDidChange;
- (void)_videosInElementFullscreenChanged;
- (void)_willOpenAppLink;
- (void)_windowDidRotate:(id)a3;
- (void)_zoomOutWithOrigin:(FloatPoint)a3 animated:(BOOL)a4;
- (void)_zoomToCenter:(FloatPoint)a3 atScale:(double)a4 animated:(BOOL)a5 honorScrollability:(BOOL)a6;
- (void)_zoomToFocusRect:(const FloatRect *)a3 selectionRect:(const FloatRect *)a4 fontSize:(float)a5 minimumScale:(double)a6 maximumScale:(double)a7 allowScaling:(BOOL)a8 forceScroll:(BOOL)a9;
- (void)_zoomToRect:(FloatRect)a3 atScale:(double)a4 origin:(FloatPoint)a5 animated:(BOOL)a6;
- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)addShortcut:(id)a3;
- (void)alignCenter:(id)a3;
- (void)alignJustified:(id)a3;
- (void)alignLeft:(id)a3;
- (void)alignRight:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)callAsyncJavaScript:(NSString *)functionBody arguments:(NSDictionary *)arguments inFrame:(WKFrameInfo *)frame inContentWorld:(WKContentWorld *)contentWorld completionHandler:(void *)completionHandler;
- (void)captureTextFromCamera:(id)a3;
- (void)closeAllMediaPresentationsWithCompletionHandler:(void *)a1;
- (void)closeAllMediaPresentationsWithCompletionHandler:(void *)completionHandler;
- (void)closeFullScreenWindowController;
- (void)colorExtensionViewDidAppear:(id)a3;
- (void)colorExtensionViewWillDisappear:(id)a3;
- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)compositionSession:didReceiveText:replacementRange:inContext:finished:;
- (void)copy:(id)a3;
- (void)createPDFWithConfiguration:(WKPDFConfiguration *)pdfConfiguration completionHandler:(void *)completionHandler;
- (void)createPDFWithConfiguration:(uint64_t)a1 completionHandler:(WebCore::SharedBuffer *)a2;
- (void)createWebArchiveDataWithCompletionHandler:(uint64_t)a1;
- (void)createWebArchiveDataWithCompletionHandler:(void *)completionHandler;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)decreaseSize:(id)a3;
- (void)define:(id)a3;
- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4;
- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4;
- (void)didEndWritingToolsSession:accepted:;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)a3;
- (void)evaluateJavaScript:(NSString *)javaScriptString completionHandler:(void *)completionHandler;
- (void)evaluateJavaScript:(NSString *)javaScriptString inFrame:(WKFrameInfo *)frame inContentWorld:(WKContentWorld *)contentWorld completionHandler:(void *)completionHandler;
- (void)fetchDataOfTypes:()WTF::ShouldValidateKey completionHandler:;
- (void)fetchDataOfTypes:(uint64_t)a1 completionHandler:;
- (void)fetchDataOfTypes:(unint64_t)a3 completionHandler:(id)a4;
- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
- (void)findSelected:(id)a3;
- (void)findString:(NSString *)string withConfiguration:(WKFindConfiguration *)configuration completionHandler:(void *)completionHandler;
- (void)findString:(uint64_t)a1 withConfiguration:(uint64_t)a2 completionHandler:;
- (void)increaseSize:(id)a3;
- (void)intelligenceTextEffectCoordinator:(id)a3 contentPreviewForRange:(_NSRange)a4 completion:(id)a5;
- (void)intelligenceTextEffectCoordinator:(id)a3 decorateReplacementsForRange:(_NSRange)a4 completion:(id)a5;
- (void)intelligenceTextEffectCoordinator:(id)a3 rectsForProofreadingSuggestionsInRange:(_NSRange)a4 completion:(id)a5;
- (void)intelligenceTextEffectCoordinator:(id)a3 setSelectionForRange:(_NSRange)a4 completion:(id)a5;
- (void)intelligenceTextEffectCoordinator:(id)a3 textPreviewsForRange:(_NSRange)a4 completion:(id)a5;
- (void)intelligenceTextEffectCoordinator:(id)a3 updateTextVisibilityForRange:(_NSRange)a4 visible:(BOOL)a5 identifier:(id)a6 completion:(id)a7;
- (void)intelligenceTextEffectCoordinator:(uint64_t)a1 rectsForProofreadingSuggestionsInRange:(uint64_t)a2 completion:;
- (void)intelligenceTextEffectCoordinator:(uint64_t)a1 textPreviewsForRange:(uint64_t *)a2 completion:;
- (void)intelligenceTextEffectCoordinator:(uint64_t)a1 updateTextVisibilityForRange:visible:identifier:completion:;
- (void)layoutSubviews;
- (void)lookup:(id)a3;
- (void)makeTextWritingDirectionLeftToRight:(id)a3;
- (void)makeTextWritingDirectionNatural:(id)a3;
- (void)makeTextWritingDirectionRightToLeft:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)paste:(id)a3;
- (void)pasteAndMatchStyle:(id)a3;
- (void)pauseAllMediaPlaybackWithCompletionHandler:(void *)completionHandler;
- (void)performTextSearchWithQueryString:(id)a3 usingOptions:(id)a4 resultAggregator:(id)a5;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)promptForReplace:(id)a3;
- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6;
- (void)proofreadingSession:didReceiveSuggestions:processedRange:inContext:finished:;
- (void)removeFromSuperview;
- (void)replace:(id)a3;
- (void)requestMediaPlaybackStateWithCompletionHandler:(void *)completionHandler;
- (void)restoreData:(id)a3 completionHandler:(id)a4;
- (void)restoreData:(uint64_t)a1 completionHandler:(char)a2;
- (void)restoreData:(void *)a1 completionHandler:(void *)a2;
- (void)resumeDownloadFromResumeData:(NSData *)resumeData completionHandler:(void *)completionHandler;
- (void)safeAreaInsetsDidChange;
- (void)scrollView:(id)a3 handleScrollUpdate:(id)a4 completion:(id)a5;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)select:(id)a3;
- (void)selectAll:(id)a3;
- (void)setAllMediaPlaybackSuspended:(BOOL)suspended completionHandler:(void *)completionHandler;
- (void)setAllowsBackForwardNavigationGestures:(BOOL)allowsBackForwardNavigationGestures;
- (void)setAllowsLinkPreview:(BOOL)allowsLinkPreview;
- (void)setBackgroundColor:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCameraCaptureState:(WKMediaCaptureState)state completionHandler:(void *)completionHandler;
- (void)setCustomUserAgent:(NSString *)customUserAgent;
- (void)setFindInteractionEnabled:(BOOL)findInteractionEnabled;
- (void)setFrame:(CGRect)a3;
- (void)setInspectable:(BOOL)inspectable;
- (void)setInteractionState:(id)interactionState;
- (void)setMediaType:(NSString *)mediaType;
- (void)setMicrophoneCaptureState:(WKMediaCaptureState)state completionHandler:(void *)completionHandler;
- (void)setMinimumViewportInset:(UIEdgeInsets)minimumViewportInset maximumViewportInset:(UIEdgeInsets)maximumViewportInset;
- (void)setNavigationDelegate:(id)navigationDelegate;
- (void)setObscuredContentInsets:(UIEdgeInsets)a3;
- (void)setOpaque:(BOOL)a3;
- (void)setPageZoom:(CGFloat)pageZoom;
- (void)setPresentingApplicationAuditToken:(id *)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setUIDelegate:(id)UIDelegate;
- (void)setUnderPageBackgroundColor:(UIColor *)underPageBackgroundColor;
- (void)share:(id)a3;
- (void)startDownloadUsingRequest:(NSURLRequest *)request completionHandler:(void *)completionHandler;
- (void)stopLoading;
- (void)takeSnapshotWithConfiguration:(WKSnapshotConfiguration *)snapshotConfiguration completionHandler:(void *)completionHandler;
- (void)takeSnapshotWithConfiguration:(uint64_t)a1 completionHandler:;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
- (void)translate:(id)a3;
- (void)transliterateChinese:(id)a3;
- (void)useSelectionForFind:(id)a3;
- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4;
- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4;
@end

@implementation WKWebView

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 52) = 0;
  *(self + 53) = 0;
  *(self + 54) = 0;
  *(self + 55) = 0;
  *(self + 56) = 0;
  *(self + 57) = 0;
  *(self + 58) = 0;
  *(self + 59) = 0;
  *(self + 60) = 0;
  *(self + 244) = 0;
  *(self + 73) = 0;
  *(self + 74) = 0;
  *(self + 75) = 0;
  *(self + 78) = 0;
  *(self + 79) = 0;
  *(self + 80) = 0;
  *(self + 81) = 0;
  *(self + 82) = 0;
  *(self + 83) = 0;
  *(self + 84) = 0;
  *(self + 85) = 0;
  *(self + 86) = 0;
  *(self + 87) = 0;
  *(self + 712) = 0;
  *(self + 744) = 0;
  *(self + 94) = 0;
  *(self + 95) = 0;
  *(self + 96) = 0;
  *(self + 776) = xmmword_19E703520;
  *(self + 792) = 0;
  *(self + 199) = 0;
  *(self + 400) = 0;
  *(self + 101) = 0;
  v2 = *(MEMORY[0x1E695F058] + 16);
  *(self + 51) = *MEMORY[0x1E695F058];
  *(self + 52) = v2;
  *(self + 848) = 0;
  *(self + 856) = 0;
  *(self + 860) = 0;
  *(self + 868) = 0;
  *(self + 109) = 0;
  *(self + 110) = 0;
  *(self + 888) = 1;
  *(self + 900) = 0;
  *(self + 904) = 0;
  *(self + 908) = 0;
  *(self + 912) = 0;
  *(self + 916) = 0;
  *(self + 920) = 0;
  *(self + 928) = 0;
  *(self + 936) = 0;
  *(self + 968) = 0;
  *(self + 976) = 0;
  *(self + 1008) = 0;
  *(self + 1016) = 0;
  *(self + 1032) = 0;
  *(self + 1040) = 0;
  *(self + 1056) = 0;
  *(self + 1064) = 0;
  *(self + 1080) = 0;
  *(self + 1144) = 0;
  *(self + 1152) = 0;
  *(self + 1168) = 0;
  *(self + 889) = 0;
  *(self + 68) = 0u;
  *(self + 69) = 0u;
  *(self + 1120) = 0;
  *(self + 1176) = 0;
  *(self + 1224) = 0;
  *(self + 197) = 0;
  *(self + 200) = 0;
  *(self + 201) = 0;
  *(self + 199) = 0;
  *(self + 202) = 0;
  *(self + 203) = 0;
  *(self + 204) = 0;
  *(self + 206) = 0;
  *(self + 207) = 0;
  *(self + 209) = 0;
  *(self + 210) = 0;
  *(self + 211) = 0;
  *(self + 215) = 0;
  *(self + 216) = 0;
  *(self + 217) = 0;
  *(self + 218) = 0;
  *(self + 1752) = 0;
  *(self + 1753) = 0;
  *(self + 222) = 0;
  *(self + 223) = 0;
  *(self + 1792) = 0;
  *(self + 1800) = 0;
  *(self + 228) = 0;
  *(self + 229) = 0;
  *(self + 231) = 0;
  *(self + 233) = 0;
  *(self + 1872) = 0;
  *(self + 1880) = 0;
  *(self + 1888) = 0;
  *(self + 1896) = 0;
  *(self + 1904) = 0;
  *(self + 1912) = 0;
  *(self + 1920) = 0;
  *(self + 1928) = 0;
  *(self + 242) = 0;
  *(self + 244) = 0;
  *(self + 245) = 0;
  *(self + 123) = 0u;
  *(self + 124) = 0u;
  *(self + 2000) = 0;
  return self;
}

- (BOOL)_mayAutomaticallyShowVideoPictureInPicture
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && (v3 = *(m_ptr + 66)) != 0)
  {
    return WebKit::VideoPresentationManagerProxy::mayAutomaticallyShowVideoPictureInPicture(v3);
  }

  else
  {
    return 0;
  }
}

- (WKWebViewContentProviderRegistry)_contentProviderRegistry
{
  result = self->_contentProviderRegistry.m_ptr;
  if (!result)
  {
    result = [[WKWebViewContentProviderRegistry alloc] initWithConfiguration:[(WKWebView *)self configuration]];
    m_ptr = self->_contentProviderRegistry.m_ptr;
    self->_contentProviderRegistry.m_ptr = result;
    if (m_ptr)
    {

      return self->_contentProviderRegistry.m_ptr;
    }
  }

  return result;
}

- (WKWebViewConfiguration)configuration
{
  v2 = [(WKWebViewConfiguration *)self->_configuration.m_ptr copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)_insertionPointColor
{
  result = [-[WKWebView _textInputTraits](self "_textInputTraits")];
  if (!result)
  {
    v3 = MEMORY[0x1E69DC888];

    return [v3 insertionPointColor];
  }

  return result;
}

- (id)_textInputTraits
{
  if (![(WKWebView *)self usesStandardContentView])
  {
    return 0;
  }

  m_ptr = self->_contentView.m_ptr;

  return [(WKContentView *)m_ptr textInputTraitsForWebView];
}

- (BOOL)_isWindowResizingEnabled
{
  v2 = [-[WKWebView window](self "window")];

  return [v2 _enhancedWindowingEnabled];
}

- (void)_setupScrollAndContentViews
{
  [(WKWebView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [[WKScrollView alloc] initWithFrame:v3, v5, v7, v9];
  m_ptr = self->_scrollView.m_ptr;
  self->_scrollView.m_ptr = v11;
  if (m_ptr)
  {

    v11 = self->_scrollView.m_ptr;
  }

  [(WKScrollView *)v11 setInternalDelegate:self];
  [(WKBaseScrollView *)self->_scrollView.m_ptr setBaseScrollViewDelegate:self];
  [(WKScrollView *)self->_scrollView.m_ptr setBouncesZoom:1];
  if (objc_opt_respondsToSelector())
  {
    [(WKScrollView *)self->_scrollView.m_ptr setTracksImmediatelyWhileDecelerating:0];
    [(WKScrollView *)self->_scrollView.m_ptr _setAvoidsJumpOnInterruptedBounce:1];
  }

  v13 = [-[WKScrollView panGestureRecognizer](self->_scrollView.m_ptr "panGestureRecognizer")];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  v16 = self->_scrollViewDefaultAllowedTouchTypes.m_ptr;
  self->_scrollViewDefaultAllowedTouchTypes.m_ptr = v14;
  if (v16)
  {
  }

  [(WKWebView *)self _updateScrollViewInsetAdjustmentBehavior];
  [(WKWebView *)self addSubview:self->_scrollView.m_ptr];
  [(WKWebView *)self _dispatchSetDeviceOrientation:[(WKWebView *)self _deviceOrientationIgnoringOverrides]];
  [(WKWebView *)self _dispatchSetOrientationForMediaCapture:[(WKWebView *)self _deviceOrientationIgnoringOverrides]];
  [-[WKContentView layer](self->_contentView.m_ptr "layer")];
  [(WKContentView *)self->_contentView.m_ptr setFrame:v4, v6, v8, v10];
  [(WKScrollView *)self->_scrollView.m_ptr addSubview:self->_contentView.m_ptr];
  v17 = self->_scrollView.m_ptr;
  v18 = [(WKContentView *)self->_contentView.m_ptr unscaledView];

  [(WKScrollView *)v17 addSubview:v18];
}

- (void)_updateScrollViewInsetAdjustmentBehavior
{
  if (![(WKScrollView *)self->_scrollView.m_ptr _contentInsetAdjustmentBehaviorWasExternallyOverridden])
  {
    m_ptr = self->_scrollView.m_ptr;
    if ([(WKWebView *)self _safeAreaShouldAffectObscuredInsets])
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    [(WKScrollView *)m_ptr _setContentInsetAdjustmentBehaviorInternal:v4];
  }
}

- (int)_deviceOrientationIgnoringOverrides
{
  v2 = [-[WKWebView window](self "window")];
  if (v2)
  {
    v3 = [objc_msgSend(v2 "effectiveGeometry")];
  }

  else
  {
    v3 = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  }

  if ((v3 - 2) > 2)
  {
    return 0;
  }

  else
  {
    return dword_19E703870[v3 - 2];
  }
}

- (void)_updateScrollViewBackground
{
  scrollViewBackgroundColor(&v16, self, 1);
  m_colorAndFlags = self->_perProcessState.scrollViewBackgroundColor.m_colorAndFlags;
  if ((m_colorAndFlags & 0x8000000000000) != 0)
  {
    if ((v16 & 0x8000000000000) != 0)
    {
      v13 = 0;
      v14 = 0;
      v18 = *((m_colorAndFlags & 0xFFFFFFFFFFFFLL) + 4);
      v17 = *((v16 & 0xFFFFFFFFFFFFLL) + 4);
      do
      {
        if (*(&v18 + v14) != *(&v17 + v14))
        {
          break;
        }

        v13 = v14++ > 2;
      }

      while (v14 != 4);
      if (!((v16 ^ m_colorAndFlags) >> 56) && v13 && BYTE6(m_colorAndFlags) == BYTE6(v16))
      {
        goto LABEL_12;
      }
    }
  }

  else if (m_colorAndFlags == v16 && (v16 & 0x8000000000000) == 0)
  {
    goto LABEL_12;
  }

  m_ptr = self->_scrollView.m_ptr;
  WebCore::cocoaColor(&v18, &v16, v3);
  [(WKScrollView *)m_ptr _setBackgroundColorInternal:v18];
  v8 = v18;
  *&v18 = 0;
  if (v8)
  {
  }

  v9 = self->_perProcessState.scrollViewBackgroundColor.m_colorAndFlags;
  if (v9 != v16)
  {
    if ((v9 & 0x8000000000000) != 0)
    {
      v15 = (v9 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, v7);
      }
    }

    v10 = v16;
    self->_perProcessState.scrollViewBackgroundColor.m_colorAndFlags = v16;
    if ((v10 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

LABEL_12:
  [(WKWebView *)self _updateScrollViewIndicatorStyle];
  if ((v16 & 0x8000000000000) != 0)
  {
    v12 = (v16 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, v11);
    }
  }
}

- (void)_resetCachedScrollViewBackgroundColor
{
  p_perProcessState = &self->_perProcessState;
  m_colorAndFlags = self->_perProcessState.scrollViewBackgroundColor.m_colorAndFlags;
  if ((m_colorAndFlags & 0x8000000000000) != 0)
  {
    v4 = (m_colorAndFlags & 0xFFFFFFFFFFFFLL);
    add = atomic_fetch_add((m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v4);
      v6 = p_perProcessState;
      WTF::fastFree(v4, a2);
      p_perProcessState = v6;
    }
  }

  p_perProcessState->scrollViewBackgroundColor.m_colorAndFlags = 0;
}

- (void)_updateScrollViewIndicatorStyle
{
  scrollViewBackgroundColor(&v7, self, 0);
  WebCore::Color::lightness(&v7);
  if (v3 > 0.5)
  {
    goto LABEL_2;
  }

  if ((v7 & 0x8000000000000) != 0)
  {
    if (*((v7 & 0xFFFFFFFFFFFFLL) + 0x10) <= 0.0)
    {
LABEL_2:
      v4 = 1;
      goto LABEL_8;
    }
  }

  else if (!v7)
  {
    goto LABEL_2;
  }

  v4 = 2;
LABEL_8:
  [(WKScrollView *)self->_scrollView.m_ptr _setIndicatorStyleInternal:v4];
  if ((v7 & 0x8000000000000) != 0)
  {
    v6 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, v5);
    }
  }
}

- (void)_frameOrBoundsMayHaveChanged
{
  [(WKWebView *)self bounds];
  width = v3;
  height = v5;
  v14[4] = v7;
  v14[5] = v8;
  v15.width = v3;
  v15.height = v5;
  [(WKScrollView *)self->_scrollView.m_ptr setFrame:?];
  [(WKWebView *)self _updateFindOverlayPosition];
  if (self->_perProcessState.liveResizeParameters.__engaged_)
  {
    [(WKWebView *)self _updateLiveResizeTransform];
  }

  if (![(WKWebView *)self _shouldDeferGeometryUpdates])
  {
    if (!self->_overriddenLayoutParameters.__engaged_)
    {
      [(WKWebView *)self bounds];
      v14[0] = v9;
      v14[1] = v10;
      v14[2] = v11;
      v14[3] = v12;
      [(WKWebView *)self activeViewLayoutSize:v14];
      [(WKWebView *)self _dispatchSetViewLayoutSize:?];
      m_ptr = self->_page.m_ptr;
      WebCore::FloatSize::FloatSize(v14, &v15);
      WebKit::WebPageProxy::setDefaultUnobscuredSize(m_ptr, v14);
    }

    [(WKWebView *)self _recalculateViewportSizesWithMinimumViewportInset:0 maximumViewportInset:self->_minimumViewportInset.top throwOnInvalidInput:self->_minimumViewportInset.left, self->_minimumViewportInset.bottom, self->_minimumViewportInset.right, self->_maximumViewportInset.top, self->_maximumViewportInset.left, self->_maximumViewportInset.bottom, self->_maximumViewportInset.right];
    [(WKWebView *)self _updateDrawingAreaSize];
    width = v15.width;
    height = v15.height;
  }

  [(WKWebViewContentProvider *)self->_customContentView.m_ptr web_setMinimumSize:width, height];
  [(WKWebView *)self _scheduleVisibleContentRectUpdate];
  [(WKWebView *)self _updatePageLoadObserverState];
}

- (void)_updateFindOverlayPosition
{
  p_findOverlaysOutsideContentView = &self->_findOverlaysOutsideContentView;
  if (self->_findOverlaysOutsideContentView.__engaged_)
  {
    m_ptr = self->_scrollView.m_ptr;
    [(WKContentView *)self->_contentView.m_ptr bounds];
    v6 = v5;
    v8 = v7;
    [(WKContentView *)self->_contentView.m_ptr frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(WKScrollView *)m_ptr contentOffset];
    v51 = v17;
    [(WKScrollView *)m_ptr contentOffset];
    v19 = v18;
    [(WKScrollView *)m_ptr bounds];
    v21 = v20;
    [(WKScrollView *)m_ptr contentOffset];
    v23 = v21 + v22;
    if (v23 >= v6)
    {
      v6 = v23;
    }

    [(WKScrollView *)m_ptr bounds];
    v25 = v24;
    [(WKScrollView *)m_ptr contentOffset];
    v27 = v25 + v26;
    if (v25 + v26 < v8)
    {
      v27 = v8;
    }

    if (p_findOverlaysOutsideContentView->__engaged_ && ((v49 = v27, v28 = fmin(v19, 0.0), v29 = p_findOverlaysOutsideContentView->var0.__val_.top.m_ptr, v54.origin.x = v10, v54.origin.y = v12, v54.size.width = v14, v54.size.height = v16, MinX = CGRectGetMinX(v54), v55.origin.x = v10, v55.origin.y = v12, v55.size.width = v14, v55.size.height = v16, v50 = v6, v31 = v6 - CGRectGetMinX(v55), v31 >= 0.0) ? (v32 = v31) : (v32 = 0.0), (v56.origin.x = v10, v56.origin.y = v12, v56.size.width = v14, v56.size.height = v16, v33 = CGRectGetMinY(v56) - v28, v33 >= 0.0) ? (v34 = v33) : (v34 = 0.0), ([(UIView *)v29 setFrame:MinX, v28, v32, v34], p_findOverlaysOutsideContentView->__engaged_) && ((v35 = p_findOverlaysOutsideContentView->var0.__val_.right.m_ptr, v57.origin.x = v10, v57.origin.y = v12, v57.size.width = v14, v57.size.height = v16, MaxX = CGRectGetMaxX(v57), v58.origin.x = v10, v58.origin.y = v12, v58.size.width = v14, v58.size.height = v16, MinY = CGRectGetMinY(v58), v59.origin.x = v10, v59.origin.y = v12, v59.size.width = v14, v59.size.height = v16, v37 = v50 - CGRectGetMaxX(v59), v37 >= 0.0) ? (v38 = v37) : (v38 = 0.0), (v60.origin.x = v10, v60.origin.y = v12, v60.size.width = v14, v60.size.height = v16, v39 = v49 - CGRectGetMinY(v60), v39 >= 0.0) ? (v40 = v39) : (v40 = 0.0), ([(UIView *)v35 setFrame:MaxX, MinY, v38, v40], p_findOverlaysOutsideContentView->__engaged_) && ((v41 = fmin(v51, 0.0), v42 = p_findOverlaysOutsideContentView->var0.__val_.bottom.m_ptr, v61.origin.x = v10, v61.origin.y = v12, v61.size.width = v14, v61.size.height = v16, MaxY = CGRectGetMaxY(v61), v62.origin.x = v10, v62.origin.y = v12, v62.size.width = v14, v62.size.height = v16, v43 = CGRectGetMaxX(v62) - v41, v43 >= 0.0) ? (v44 = v43) : (v44 = 0.0), (v63.origin.x = v10, v63.origin.y = v12, v63.size.width = v14, v63.size.height = v16, v45 = v49 - CGRectGetMaxY(v63), v45 >= 0.0) ? (v46 = v45) : (v46 = 0.0), [(UIView *)v42 setFrame:v41, MaxY, v44, v46], p_findOverlaysOutsideContentView->__engaged_))))
    {
      v47 = p_findOverlaysOutsideContentView->var0.__val_.left.m_ptr;
      v64.origin.x = v10;
      v64.origin.y = v12;
      v64.size.width = v14;
      v64.size.height = v16;
      CGRectGetMinX(v64);
      v65.origin.x = v10;
      v65.origin.y = v12;
      v65.size.width = v14;
      v65.size.height = v16;
      CGRectGetMaxY(v65);

      [(UIView *)v47 setFrame:v41];
    }

    else
    {
      __break(1u);
    }
  }
}

- (UIEdgeInsets)_scrollViewSystemContentInset
{
  [(WKScrollView *)self->_scrollView.m_ptr _contentScrollInset];
  [(WKWebView *)self safeAreaInsets];
  [(WKScrollView *)self->_scrollView.m_ptr _edgesApplyingSafeAreaInsetsToContentInset];

  UIEdgeInsetsAdd();
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)_updateFixedColorExtensionViews
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    p_isa = *(m_ptr + 46);
    CFRetain(p_isa[1]);
    {
LABEL_43:
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contentInsetBackgroundFillEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::contentInsetBackgroundFillEnabledKey(void)::key = WebKit::WebPreferencesKey::contentInsetBackgroundFillEnabledKey(void)::$_0::operator() const(void)::impl;
      v6[2736] = 1;
    }

    BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((p_isa + 5), &WebKit::WebPreferencesKey::contentInsetBackgroundFillEnabledKey(void)::key, v5);
    CFRelease(p_isa[1]);
    if (BoolValueForKey)
    {
      v8 = [(WKWebView *)self _containerForFixedColorExtension];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      v30 = v9;
      [(WKWebView *)self _obscuredInsetsForFixedColorExtension];
      v11 = 0;
      v31[0] = v12;
      v31[1] = v13;
      v31[2] = v14;
      v31[3] = v15;
      do
      {
        v16 = WebCore::allBoxSides[v11];
        if (v16 >= 4)
        {
          __break(1u);
          goto LABEL_43;
        }

        p_fixedColorExtensionViews = &self->_fixedColorExtensionViews;
        p_isa = &self->_fixedColorExtensionViews.m_sides.__elems_[v16].m_ptr->super.super.super.isa;
        if (p_isa)
        {
          v18 = p_isa;
        }

        if (*&v31[v16] > 0.0 && (WebCore::FixedContainerEdges::hasFixedEdge() & 1) != 0)
        {
          WebCore::FixedContainerEdges::predominantColor();
          WebCore::cocoaColorOrNil(&v33, &v32, v19);
          v21 = v33;
          if (v33)
          {
            v33 = 0;
          }

          else
          {
            v22 = [(WKWebView *)self underPageBackgroundColor];
            v21 = v22;
            if (v22)
            {
              v23 = v22;
            }

            v24 = v33;
            v33 = 0;
            if (v24)
            {
            }
          }

          if ((v32 & 0x8000000000000) != 0)
          {
            v29 = (v32 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v32 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v29);
              WTF::fastFree(v29, v20);
            }
          }

          if (v16 || !self->_shouldSuppressTopColorExtensionView)
          {
            if (!p_isa)
            {
              v25 = [WKColorExtensionView alloc];
              p_isa = [(WKColorExtensionView *)v25 initWithFrame:self delegate:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
              v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Fixed color extension fill (%s)", off_1E7631678[v16]];
              [-[CFTypeRef layer](p_isa "layer")];
              if (v26)
              {
              }

              v9 = v30;
              [v30 insertSubview:p_isa aboveSubview:self->_contentView.m_ptr];
              if (p_isa)
              {
                v27 = p_isa;
              }

              v28 = p_fixedColorExtensionViews->m_sides.__elems_[v16].m_ptr;
              p_fixedColorExtensionViews->m_sides.__elems_[v16].m_ptr = p_isa;
              if (v28)
              {
              }
            }

            [(CFTypeRef *)p_isa updateColor:v21];
          }

          else
          {
            [(CFTypeRef *)p_isa fadeOut];
          }

          if (v21)
          {
          }
        }

        else
        {
          [(CFTypeRef *)p_isa fadeOut];
        }

        if (p_isa)
        {
        }

        ++v11;
      }

      while (v11 != 4);
      [(WKWebView *)self _updateFixedColorExtensionViewFrames];
      if (v9)
      {
      }
    }
  }
}

- (RectEdges<float>)_obscuredInsetsForFixedColorExtension
{
  [(WKWebView *)self _obscuredInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = 0.0;
  if (![(UIScrollView *)self->_scrollView.m_ptr _wk_isScrolledBeyondTopExtent])
  {
    goto LABEL_16;
  }

  WebCore::FixedContainerEdges::predominantColor();
  if ((v29.m_colorAndFlags & 0x8000000000000) == 0)
  {
    if (!LOBYTE(v29.m_colorAndFlags))
    {
      goto LABEL_15;
    }

LABEL_6:
    v14 = *(*(self->_page.m_ptr + 4) + 1944);
    v28 = v14;
    if ((v14 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v15 = WebCore::PageColorSampler::colorsAreSimilar(&v28, &v29, v13);
    if ((v28 & 0x8000000000000) != 0)
    {
      v24 = (v28 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v28 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v24);
        v27 = v15;
        WTF::fastFree(v24, v12);
        v15 = v27;
      }
    }

    if (v15)
    {
      WebKit::WebPageProxy::underPageBackgroundColor(self->_page.m_ptr, &v28);
      v17 = WebCore::PageColorSampler::colorsAreSimilar(&v28, &v29, v16);
      if ((v28 & 0x8000000000000) != 0)
      {
        v25 = (v28 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v28 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v25);
          v26 = v17;
          WTF::fastFree(v25, v12);
          v17 = v26;
        }
      }

      if ((v17 & 1) == 0)
      {
        [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
        if (-v4 - v18 >= 0.0)
        {
          v11 = -v4 - v18;
        }

        else
        {
          v11 = 0.0;
        }
      }
    }

    goto LABEL_15;
  }

  if (*((v29.m_colorAndFlags & 0xFFFFFFFFFFFFLL) + 0x10) > 0.0)
  {
    goto LABEL_6;
  }

LABEL_15:
  if ((v29.m_colorAndFlags & 0x8000000000000) != 0)
  {
    v23 = (v29.m_colorAndFlags & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v29.m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v23);
      WTF::fastFree(v23, v12);
    }
  }

LABEL_16:
  v19 = v4 + v11;
  v20 = v10;
  v21 = v8;
  v22 = v6;
  result.m_sides.__elems_[3] = v22;
  result.m_sides.__elems_[2] = v21;
  result.m_sides.__elems_[1] = v20;
  result.m_sides.__elems_[0] = v19;
  return result;
}

- (UIEdgeInsets)_obscuredInsets
{
  top = self->_obscuredInsets.top;
  left = self->_obscuredInsets.left;
  bottom = self->_obscuredInsets.bottom;
  right = self->_obscuredInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateFixedColorExtensionViewFrames
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    p_perProcessState = *(m_ptr + 46);
    CFRetain(*&p_perProcessState->initialScaleFactor);
    {
      goto LABEL_29;
    }

    while (1)
    {
      BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey(&p_perProcessState->animatedResizeOldBounds, &WebKit::WebPreferencesKey::contentInsetBackgroundFillEnabledKey(void)::key, v5);
      CFRelease(*&p_perProcessState->initialScaleFactor);
      if (!BoolValueForKey)
      {
        break;
      }

      v8 = [(WKWebView *)self _containerForFixedColorExtension];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      [(WKWebView *)self _obscuredInsetsForFixedColorExtension];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [(WKWebView *)self bounds];
      v36.origin.x = v19;
      v36.origin.y = v20;
      v36.size.width = v21;
      v36.size.height = v22;
      WebCore::FloatRect::FloatRect(v37, &v36);
      [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
      v24 = v23;
      [(WKScrollView *)self->_scrollView.m_ptr contentSize];
      v26 = v25;
      p_perProcessState = &self->_perProcessState;
      if (!self->_perProcessState.liveResizeParameters.__engaged_)
      {
        goto LABEL_9;
      }

      [(WKWebView *)self bounds];
      engaged = self->_perProcessState.liveResizeParameters.__engaged_;
      if (engaged)
      {
        v26 = v26 * (v27 / self->_perProcessState.liveResizeParameters.var0.__val_.viewWidth);
LABEL_9:
        v28 = self->_fixedColorExtensionViews.m_sides.__elems_[0].m_ptr;
        if (v28)
        {
          v29 = v28;
          if (([(WKColorExtensionView *)v28 isHidden]& 1) == 0)
          {
            [v9 convertRect:self fromView:{-v24, 0.0, v26, v12}];
            [(WKColorExtensionView *)v28 setFrame:?];
          }
        }

        v30 = self->_fixedColorExtensionViews.m_sides.__elems_[3].m_ptr;
        if (v30)
        {
          v31 = v30;
          if (([(WKColorExtensionView *)v30 isHidden]& 1) == 0)
          {
            [v9 convertRect:self fromView:{0.0, 0.0, v18, v39}];
            [(WKColorExtensionView *)v30 setFrame:?];
          }
        }

        v32 = self->_fixedColorExtensionViews.m_sides.__elems_[1].m_ptr;
        if (v32)
        {
          v33 = v32;
          if (([(WKColorExtensionView *)v32 isHidden]& 1) == 0)
          {
            [v9 convertRect:self fromView:{(v38 - v14), 0.0, v14, v39}];
            [(WKColorExtensionView *)v32 setFrame:?];
          }
        }

        v34 = self->_fixedColorExtensionViews.m_sides.__elems_[2].m_ptr;
        if (v34)
        {
          v35 = v34;
          if (([(WKColorExtensionView *)v34 isHidden]& 1) == 0)
          {
            [v9 convertRect:self fromView:{-v24, (v39 - v16), v26, v16}];
            [(WKColorExtensionView *)v34 setFrame:?];
          }
        }

        if (v9)
        {
        }

        return;
      }

      __break(1u);
LABEL_29:
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contentInsetBackgroundFillEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::contentInsetBackgroundFillEnabledKey(void)::key = WebKit::WebPreferencesKey::contentInsetBackgroundFillEnabledKey(void)::$_0::operator() const(void)::impl;
      engaged[2736] = 1;
    }
  }
}

- (void)_updateDrawingAreaSize
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v3 = *(m_ptr + 41);
    if (v3)
    {
      [(WKWebView *)self bounds];
      v11[1] = v5;
      v11[2] = v6;
      v12.width = v7;
      v12.height = v8;
      WebCore::IntSize::IntSize(&v13, &v12);
      v11[0] = 0;
      if (WebKit::DrawingAreaProxy::setSize(v3, &v13, v11, v9, v10))
      {
        if ([(WKWebView *)self usesStandardContentView])
        {
          [(WKContentView *)self->_contentView.m_ptr setSizeChangedSinceLastVisibleContentRectUpdate:1];
        }
      }
    }
  }
}

- (void)_addUpdateVisibleContentRectPreCommitHandler
{
  if (self)
  {
    v3 = self;
  }

  v4 = MEMORY[0x1E6979518];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __76__WKWebView_WKViewInternalIOS___addUpdateVisibleContentRectPreCommitHandler__block_invoke;
  v8[3] = &__block_descriptor_40_e8_32c90_ZTSKZ76__WKWebView_WKViewInternalIOS___addUpdateVisibleContentRectPreCommitHandler_E4__18_e5_v8__0l;
  if (self)
  {
    v5 = self;
    v9 = self;
    v6 = self;
  }

  else
  {
    v9 = 0;
  }

  [v4 addCommitHandler:v8 forPhase:1];
  if (self)
  {
  }

  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  if (self)
  {
  }
}

- (void)_updatePageLoadObserverState
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 1848);
    if (v2)
    {
      if (*(a1 + 1840))
      {
        if ((*(*(*(a1 + 416) + 32) + 80) & 4) != 0)
        {
          [a1 bounds];
          v6 = v5;
          v8 = v7;
          [objc_msgSend(objc_msgSend(a1 "window")];
          v11 = v6 * v8 / (v10 * v9);
          if (v10 == 0.0 || v9 == 0.0 || v11 < 0.7)
          {
            v18 = qword_1ED640F18;
            if (os_log_type_enabled(qword_1ED640F18, OS_LOG_TYPE_DEBUG))
            {
              v19 = *(a1 + 1848);
              *buf = 134218499;
              *&buf[4] = a1;
              *&buf[12] = 2117;
              *&buf[14] = v19;
              *&buf[22] = 2048;
              *&buf[24] = v11;
              v4 = "_updatePageLoadObserverState(%p): skipping event for host %{sensitive}@, screen area ratio %.2f";
              v20 = v18;
              v21 = 32;
LABEL_27:
              _os_log_debug_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEBUG, v4, buf, v21);
            }
          }

          else
          {
            if (qword_1ED6424D8 != -1)
            {
              dispatch_once(&qword_1ED6424D8, &__block_literal_global_1288);
            }

            v12 = qword_1ED6424E0;
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3321888768;
            v24[2] = __60__WKWebView_WKViewInternalIOS___updatePageLoadObserverState__block_invoke;
            v24[3] = &__block_descriptor_80_e8_32c74_ZTSKZ60__WKWebView_WKViewInternalIOS___updatePageLoadObserverState_E4__27_e5_v8__0l;
            v13 = *(a1 + 1848);
            if (v13)
            {
              v14 = v13;
            }

            v15 = *(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(*(a1 + 416) + 64) + 16)) + 48);
            v16 = *(v15 + 116);
            *buf = *(v15 + 100);
            *&buf[16] = v16;
            v30 = *(v15 + 132);
            v25 = v13;
            if (v13)
            {
              v17 = v13;
              v26 = *buf;
              v27 = *&buf[16];
              v28 = v30;
              dispatch_async(v12, v24);
            }

            else
            {
              v26 = *(v15 + 100);
              v27 = *(v15 + 116);
              v28 = *(v15 + 132);
              dispatch_async(v12, v24);
            }

            v22 = *(a1 + 1848);
            *(a1 + 1848) = 0;
            if (v22)
            {
            }

            v23 = v25;
            v25 = 0;
            if (v23)
            {
            }
          }
        }

        else
        {
          v3 = qword_1ED640F18;
          if (os_log_type_enabled(qword_1ED640F18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218243;
            *&buf[4] = a1;
            *&buf[12] = 2117;
            *&buf[14] = v2;
            v4 = "_updatePageLoadObserverState(%p): skipping event for host %{sensitive}@, not visible";
LABEL_26:
            v20 = v3;
            v21 = 22;
            goto LABEL_27;
          }
        }
      }

      else
      {
        v3 = qword_1ED640F18;
        if (os_log_type_enabled(qword_1ED640F18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218243;
          *&buf[4] = a1;
          *&buf[12] = 2117;
          *&buf[14] = v2;
          v4 = "_updatePageLoadObserverState(%p): skipping event for host %{sensitive}@, never accessed bflist";
          goto LABEL_26;
        }
      }
    }
  }
}

- (void)_registerForNotifications
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
  [v3 addObserver:self selector:sel__keyboardDidChangeFrame_ name:*MEMORY[0x1E69DDF68] object:0];
  [v3 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [v3 addObserver:self selector:sel__keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
  [v3 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  [v3 addObserver:self selector:sel__windowDidRotate_ name:*MEMORY[0x1E69DE7D0] object:0];
  [v3 addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  [v3 addObserver:self selector:sel__accessibilitySettingsDidChange_ name:*MEMORY[0x1E69DD8D0] object:0];
  [v3 addObserver:self selector:sel__accessibilitySettingsDidChange_ name:*MEMORY[0x1E69DD8D8] object:0];
  [v3 addObserver:self selector:sel__accessibilitySettingsDidChange_ name:*MEMORY[0x1E69DD918] object:0];
  [v3 addObserver:self selector:sel__enhancedWindowingToggled_ name:*MEMORY[0x1E69DEB38] object:0];
  v4[0] = objc_opt_class();
  -[WKWebView registerForTraitChanges:withAction:](self, "registerForTraitChanges:withAction:", [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1], sel__UITraitHDRHeadroomUsageDidChange);
  [(WKWebView *)self _UITraitHDRHeadroomUsageDidChange];
}

- (void)_UITraitHDRHeadroomUsageDidChange
{
  v3 = [-[WKWebView traitCollection](self "traitCollection")] != 1;
  m_ptr = self->_page.m_ptr;

  WebKit::WebPageProxy::setShouldSuppressHDR(m_ptr, v3);
}

- (id)_contentSizeCategory
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];

  return [v2 preferredContentSizeCategory];
}

- (id)_remoteObjectRegistry
{
  result = self->_remoteObjectRegistry.m_ptr;
  if (!result)
  {
    v4 = [[_WKRemoteObjectRegistry alloc] _initWithWebPageProxy:self->_page.m_ptr];
    m_ptr = self->_remoteObjectRegistry.m_ptr;
    self->_remoteObjectRegistry.m_ptr = v4;
    if (m_ptr)
    {
    }

    v6 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(self->_page.m_ptr + 8) + 16));
    v7 = *(self->_page.m_ptr + 5);
    v8 = [(_WKRemoteObjectRegistry *)self->_remoteObjectRegistry.m_ptr remoteObjectRegistry];
    v10[0] = 105;
    v10[1] = v7;
    WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v6 + 64), v10, v8, v9);
    return self->_remoteObjectRegistry.m_ptr;
  }

  return result;
}

- (NSURL)URL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *(self->_page.m_ptr + 4);
  WebKit::PageLoadState::ref((v3 + 1120));
  WebKit::PageLoadState::activeURL((v3 + 1144), &v8);
  v5 = [v2 _web_URLWithWTFString:&v8];
  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  WebKit::PageLoadState::deref((v3 + 1120));
  return v5;
}

- (int)_webProcessIdentifier
{
  result = [(WKWebView *)self _isValid];
  if (result)
  {
    m_ptr = self->_page.m_ptr;
    if (*(m_ptr + 865))
    {
      return 0;
    }

    v5 = *(*(m_ptr + 44) + 80);
    if (!v5)
    {
      return 0;
    }

    else
    {
      return *(v5 + 108);
    }
  }

  return result;
}

- (BOOL)_isValid
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 865))
    {
      LOBYTE(m_ptr) = 0;
    }

    else
    {
      LOBYTE(m_ptr) = *(m_ptr + 864);
    }
  }

  return m_ptr & 1;
}

- (BOOL)hasOnlySecureContent
{
  v2 = *(self->_page.m_ptr + 4);
  WebKit::PageLoadState::ref((v2 + 1120));
  hasOnlySecureContent = WebKit::PageLoadState::hasOnlySecureContent((v2 + 1144), v3);
  WebKit::PageLoadState::deref((v2 + 1120));
  return hasOnlySecureContent;
}

- (BOOL)_isEditable
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    LOBYTE(m_ptr) = *(m_ptr + 736);
  }

  return m_ptr & 1;
}

- (void)didMoveToWindow
{
  if (!self->_overridesInterfaceOrientation)
  {
    [(WKWebView *)self _dispatchSetDeviceOrientation:[(WKWebView *)self _deviceOrientationIgnoringOverrides]];
  }

  [(WKWebView *)self _dispatchSetOrientationForMediaCapture:[(WKWebView *)self _deviceOrientationIgnoringOverrides]];
  WebKit::WebPageProxy::activityStateDidChange(self->_page.m_ptr, 1023, 0, 0);
  WebKit::WebPageProxy::webViewDidMoveToWindow(self->_page.m_ptr);
  [(WKWebView *)self _presentLockdownModeAlertIfNeeded];
  m_ptr = self->_page.m_ptr;
  if ((*(m_ptr + 865) & 1) == 0 && *(m_ptr + 864) == 1 && [(WKWebView *)self window])
  {
    v4 = self->_page.m_ptr;
    v5 = [(WKWebView *)self _isWindowResizingEnabled];
    WebKit::WebPageProxy::send<Messages::WebPage::SetIsWindowResizingEnabled>(v4, &v5);
  }

  [(WKWebView *)self _invalidateResizeAssertions];
  [(WKWebView *)self _endLiveResize];

  [(WKWebView *)self _updateLastKnownWindowSizeAndOrientation];
}

- (BOOL)_isBackground
{
  if ([(WKWebView *)self usesStandardContentView]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    m_ptr = self->_contentView.m_ptr;

    return [(WKApplicationStateTrackingView *)m_ptr isBackground];
  }

  else
  {
    v3 = self->_customContentView.m_ptr;

    return [(WKWebViewContentProvider *)v3 web_isBackground];
  }
}

- (BOOL)_contentViewIsFirstResponder
{
  v2 = [(WKWebView *)self _currentContentView];

  return [v2 isFirstResponder];
}

- (id)_currentContentView
{
  if (self->_customContentView.m_ptr)
  {
    return [(WKWebViewContentProvider *)self->_customContentView.m_ptr web_contentView];
  }

  else
  {
    return self->_contentView.m_ptr;
  }
}

- (void)_updateScreenTimeBasedOnWindowVisibility
{
  v3 = [(WKWebView *)self window];
  v4 = [(WKWebViewConfiguration *)self->_configuration.m_ptr showsSystemScreenTimeBlockingView];
  if (v3)
  {
    m_ptr = self->_screenTimeWebpageController.m_ptr;
    [(WKWebView *)self _installScreenTimeWebpageControllerIfNeeded];
    if (!m_ptr)
    {
      v6 = self->_screenTimeWebpageController.m_ptr;
      if (v6)
      {
        [(STWebpageController *)v6 setURL:[(WKWebView *)self _mainFrameURL]];
      }
    }

    if (v4)
    {
      [-[STWebpageController view](self->_screenTimeWebpageController.m_ptr "view")];
      v7 = qword_1ED6411C0;
      if (!os_log_type_enabled(qword_1ED6411C0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v17 = 0;
      v8 = "Screen Time has updated to use the system shield for any blocked URL.";
      v9 = &v17;
    }

    else
    {
      v11 = self->_screenTimeBlurredSnapshot.m_ptr;
      if (!v11)
      {
        goto LABEL_18;
      }

      [(UIVisualEffectView *)v11 setHidden:0];
      v7 = qword_1ED6411C0;
      if (!os_log_type_enabled(qword_1ED6411C0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v18 = 0;
      v8 = "Screen Time has updated to use the blurred view for any blocked URL.";
      v9 = &v18;
    }
  }

  else
  {
    v10 = self->_screenTimeBlurredSnapshot.m_ptr;
    if (v10)
    {
      [(UIVisualEffectView *)v10 setHidden:1];
      v7 = qword_1ED6411C0;
      if (!os_log_type_enabled(qword_1ED6411C0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v16 = 0;
      v8 = "Screen Time has updated to hide the blurred view for all URLs.";
      v9 = &v16;
    }

    else
    {
      if (!v4)
      {
        goto LABEL_18;
      }

      [-[STWebpageController view](self->_screenTimeWebpageController.m_ptr "view")];
      v7 = qword_1ED6411C0;
      if (!os_log_type_enabled(qword_1ED6411C0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v15) = 0;
      v8 = "Screen Time has updated to hide the system shield for all URLs.";
      v9 = &v15;
    }
  }

  _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
LABEL_18:
  v12 = self->_screenTimeWebpageController.m_ptr;
  v13 = ![(WKWebsiteDataStore *)[(WKWebViewConfiguration *)self->_configuration.m_ptr websiteDataStore] isPersistent];
  if (v3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  [(STWebpageController *)v12 setSuppressUsageRecording:v14];
}

- (void)_installScreenTimeWebpageControllerIfNeeded
{
  if (!self->_screenTimeWebpageController.m_ptr && PAL::ScreenTimeLibrary(1))
  {
    v4 = *(self->_page.m_ptr + 46);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenTimeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::screenTimeEnabledKey(void)::key = WebKit::WebPreferencesKey::screenTimeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey((v4 + 40), &WebKit::WebPreferencesKey::screenTimeEnabledKey(void)::key, v3))
    {
      v5 = *(self->_page.m_ptr + 53);
      if (v5)
      {
        if ((*(v5 + 72) & 2) != 0)
        {
          m_ptr = self->_screenTimeConfigurationObserver.m_ptr;
          if (!m_ptr)
          {
            v7 = objc_alloc((*MEMORY[0x1E69E2420])());
            v8 = [v7 initWithUpdateQueue:{dispatch_get_global_queue(0, 0)}];
            v9 = self->_screenTimeConfigurationObserver.m_ptr;
            self->_screenTimeConfigurationObserver.m_ptr = v8;
            if (v9)
            {

              v8 = self->_screenTimeConfigurationObserver.m_ptr;
            }

            [(STScreenTimeConfigurationObserver *)v8 addObserver:self forKeyPath:@"configuration.enforcesChildRestrictions" options:0 context:&_MergedGlobals_1159];
            [(STScreenTimeConfigurationObserver *)self->_screenTimeConfigurationObserver.m_ptr startObserving];
            m_ptr = self->_screenTimeConfigurationObserver.m_ptr;
          }

          if ([[(STScreenTimeConfigurationObserver *)m_ptr configuration] enforcesChildRestrictions])
          {
            v10 = [objc_alloc((*MEMORY[0x1E69E2340])()) init];
            v11 = self->_screenTimeWebpageController.m_ptr;
            self->_screenTimeWebpageController.m_ptr = v10;
            if (v11)
            {

              v10 = self->_screenTimeWebpageController.m_ptr;
            }

            [(STWebpageController *)v10 addObserver:self forKeyPath:@"URLIsBlocked" options:3 context:&off_1EB018A18];
            self->_isBlockedByScreenTime = 0;
            [(STWebpageController *)self->_screenTimeWebpageController.m_ptr setProfileIdentifier:[(NSUUID *)[(WKWebsiteDataStore *)[(WKWebViewConfiguration *)self->_configuration.m_ptr websiteDataStore] identifier] UUIDString]];
            [(STWebpageController *)self->_screenTimeWebpageController.m_ptr setSuppressUsageRecording:[(WKWebsiteDataStore *)[(WKWebViewConfiguration *)self->_configuration.m_ptr websiteDataStore] isPersistent]^ 1];
            v12 = [(STWebpageController *)self->_screenTimeWebpageController.m_ptr view];
            v13 = v12;
            if (v12)
            {
              v14 = v12;
            }

            if ([(WKWebViewConfiguration *)self->_configuration.m_ptr showsSystemScreenTimeBlockingView])
            {
              [(WKWebView *)self bounds];
              [v13 setFrame:?];
              [(WKWebView *)self addSubview:v13];
            }

            v15 = qword_1ED6411C0;
            if (os_log_type_enabled(qword_1ED6411C0, OS_LOG_TYPE_DEFAULT))
            {
              *v16 = 0;
              _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "Screen Time controller was installed.", v16, 2u);
            }

            if (v13)
            {
            }
          }
        }
      }
    }
  }
}

- (void)_presentLockdownModeAlertIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__WKWebView_WKViewInternalIOS___presentLockdownModeAlertIfNeeded__block_invoke;
  block[3] = &unk_1E7631230;
  block[4] = self;
  if ([WKWebView(WKViewInternalIOS) _presentLockdownModeAlertIfNeeded]::onceToken != -1)
  {
    dispatch_once(&[WKWebView(WKViewInternalIOS) _presentLockdownModeAlertIfNeeded]::onceToken, block);
  }

  if (lockdownModeWarningNeeded == 1 && self->_needsToPresentLockdownModeMessage)
  {
    [(WKWebView *)self _presentLockdownMode];
    self->_needsToPresentLockdownModeMessage = 0;
  }
}

uint64_t __65__WKWebView_WKViewInternalIOS___presentLockdownModeAlertIfNeeded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _presentLockdownMode];
  *(*(a1 + 32) + 1353) = 0;
  return result;
}

- (void)_presentLockdownMode
{
  if ((WTF::IOSApplication::isMobileSafari(self) & 1) != 0 || !+[WKProcessPool _lockdownModeEnabledGloballyForTesting])
  {
    lockdownModeWarningNeeded = 0;
  }

  else
  {
    v3 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    lockdownModeWarningNeeded = v3 ^ 1;
    if ((v3 & 1) == 0)
    {
      WebCore::copyLocalizedString(&arg, @"Certain experiences and features may not function as expected. You can turn off Lockdown Mode for this app in Settings.", v4);
      v5 = arg;
      arg = 0;
      if (v5)
      {
        CFAutorelease(v5);
        v6 = arg;
        arg = 0;
        if (v6)
        {
          CFRelease(v6);
        }
      }

      if (self)
      {
        v7 = self;
      }

      v8 = malloc_type_malloc(0x30uLL, 0x10E0040B46A7B6EuLL);
      *v8 = MEMORY[0x1E69E9818];
      v8[1] = 50331650;
      v8[2] = WTF::BlockPtr<void ()(WKDialogResult)>::fromCallable<[WKWebView(WKViewInternalIOS) _presentLockdownMode]::$_5>([WKWebView(WKViewInternalIOS) _presentLockdownMode]::$_5)::{lambda(void *,WKDialogResult)#1}::__invoke;
      v8[3] = &WTF::BlockPtr<void ()(WKDialogResult)>::fromCallable<[WKWebView(WKViewInternalIOS) _presentLockdownMode]::$_5>([WKWebView(WKViewInternalIOS) _presentLockdownMode]::$_5)::descriptor;
      v8[4] = v5;
      v8[5] = self;
      [(WKWebView *)self UIDelegate];
      if (objc_opt_respondsToSelector())
      {
        [-[WKWebView UIDelegate](self "UIDelegate")];
      }

      else
      {
        (v8[2])(v8, 1);
      }

      _Block_release(v8);
    }
  }
}

- (void)_invalidateResizeAssertions
{
  *&v2 = 0;
  m_buffer = self->_resizeAssertions.m_buffer;
  v10 = m_buffer;
  m_size = self->_resizeAssertions.m_size;
  LODWORD(v11) = self->_resizeAssertions.m_capacity;
  HIDWORD(v11) = m_size;
  v9 = v2;
  self->_resizeAssertions.m_buffer = 0;
  *&self->_resizeAssertions.m_capacity = 0;
  if (m_size)
  {
    v5 = 8 * m_size;
    do
    {
      v6 = *m_buffer;
      if (*m_buffer)
      {
        v7 = v6;
      }

      [v6 _invalidate];
      if (v6)
      {
      }

      ++m_buffer;
      v5 -= 8;
    }

    while (v5);
  }

  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, a2);
  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v8);
}

- (void)_endLiveResize
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(self->_page.m_ptr + 5);
    *buf = 134218240;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _endLiveResize]", buf, 0x16u);
  }

  if (self->_perProcessState.liveResizeParameters.__engaged_)
  {
    [(NSTimer *)self->_endLiveResizeTimer.m_ptr invalidate];
    m_ptr = self->_endLiveResizeTimer.m_ptr;
    self->_endLiveResizeTimer.m_ptr = 0;
    if (m_ptr)
    {
    }

    v6 = [(WKWebView *)self snapshotViewAfterScreenUpdates:0];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    [(WKWebView *)self bounds];
    [v7 setFrame:?];
    [(WKWebView *)self addSubview:v7];
    if (self->_perProcessState.liveResizeParameters.__engaged_)
    {
      self->_perProcessState.liveResizeParameters.__engaged_ = 0;
    }

    [(WKWebView *)self _destroyResizeAnimationView];
    [(WKWebView *)self _didStopDeferringGeometryUpdates];
    if (v7)
    {
      v9 = v7;
    }

    v18 = 0;
    objc_initWeak(&v18, self);
    *buf = v7;
    *&buf[8] = 0;
    objc_moveWeak(&buf[8], &v18);
    v10 = malloc_type_malloc(0x30uLL, 0x10E0040B46A7B6EuLL);
    *v10 = MEMORY[0x1E69E9818];
    *(v10 + 1) = 50331650;
    *(v10 + 2) = WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView(WKViewInternalIOS) _endLiveResize]::$_4>([WKWebView(WKViewInternalIOS) _endLiveResize]::$_4)::{lambda(void *)#1}::__invoke;
    *(v10 + 3) = &WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView(WKViewInternalIOS) _endLiveResize]::$_4>([WKWebView(WKViewInternalIOS) _endLiveResize]::$_4)::descriptor;
    v11 = *buf;
    *buf = 0;
    *(v10 + 4) = v11;
    *(v10 + 5) = 0;
    objc_moveWeak(v10 + 5, &buf[8]);
    objc_destroyWeak(&buf[8]);
    v12 = *buf;
    *buf = 0;
    if (v12)
    {
    }

    [(WKWebView *)self _doAfterNextVisibleContentRectUpdate:v10];
    _Block_release(v10);
    objc_destroyWeak(&v18);
    WTF::RunLoop::mainSingleton(v13);
    if (v7)
    {
      v14 = v7;
    }

    v15 = WTF::fastMalloc(0x10);
    *v15 = &unk_1F10FD4E0;
    v15[1] = v7;
    *buf = v15;
    WTF::RunLoop::dispatchAfter();
    if (v17)
    {
      WTF::ThreadSafeRefCounted<WTF::RunLoop::DispatchTimer,(WTF::DestructionThread)0>::deref((v17 + 40));
    }

    v16 = *buf;
    *buf = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
      if (!v7)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }
  }
}

- (void)_updateLastKnownWindowSizeAndOrientation
{
  v3 = [-[WKWebView window](self "window")];
  v13 = v3;
  if (v3)
  {
    v4 = v3;
    v3 = v13;
  }

  v5 = [v3 effectiveGeometry];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  [objc_msgSend(v6 "coordinateSpace")];
  v9 = v8;
  v11 = v10;
  v12 = [v6 interfaceOrientation];
  self->_lastKnownWindowSizeAndOrientation.first.width = v9;
  self->_lastKnownWindowSizeAndOrientation.first.height = v11;
  self->_lastKnownWindowSizeAndOrientation.second = v12;
  if (v6)
  {
  }

  if (v13)
  {
  }
}

- (UIColor)underPageBackgroundColor
{
  WebKit::WebPageProxy::underPageBackgroundColor(self->_page.m_ptr, &v9);
  WebCore::cocoaColor(&v10, &v9, v2);
  v4 = v10;
  v10 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v10;
    v10 = 0;
    if (v6)
    {
    }
  }

  if ((v9 & 0x8000000000000) != 0)
  {
    v8 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, v3);
    }
  }

  return v4;
}

- (BOOL)_isInFullscreen
{
  v2 = *(self->_page.m_ptr + 63);
  if (!v2)
  {
    return 0;
  }

  ++*(v2 + 5);
  isFullScreen = WebKit::WebFullScreenManagerProxy::isFullScreen(v2);
  if (*(v2 + 5) == 1)
  {
    (*(*v2 + 24))(v2);
  }

  else
  {
    --*(v2 + 5);
  }

  return isFullScreen;
}

- (UIEdgeInsets)_computedObscuredInsetForWarningView
{
  if (self->_haveSetObscuredInsets)
  {
    top = self->_obscuredInsets.top;
    left = self->_obscuredInsets.left;
    bottom = self->_obscuredInsets.bottom;
    right = self->_obscuredInsets.right;
  }

  else
  {
    [(WKWebView *)self _scrollViewSystemContentInset];
    [(WKWebView *)self _effectiveObscuredInsetEdgesAffectedBySafeArea];
    UIEdgeInsetsAdd();
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updatePDFPageNumberIndicatorIfNeeded
{
  if (self->_pdfPageNumberIndicator.first.m_value.m_identifier)
  {
    m_ptr = self->_pdfPageNumberIndicator.second.m_ptr;
    [(WKWebView *)self bounds];

    [(WKPDFPageNumberIndicator *)m_ptr updatePosition:?];
  }
}

- (void)_didInvokeUIScrollViewDelegateCallback
{
  self->_perProcessState.invokingUIScrollViewDelegateCallback = 0;
  if (self->_perProcessState.didDeferUpdateVisibleContentRectsForUIScrollViewDelegateCallback)
  {
    self->_perProcessState.didDeferUpdateVisibleContentRectsForUIScrollViewDelegateCallback = 0;
    [(WKWebView *)self _scheduleVisibleContentRectUpdate];
  }
}

- (void)safeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = WKWebView;
  [(WKWebView *)&v4 safeAreaInsetsDidChange];
  [(WKWebView *)self _scheduleVisibleContentRectUpdate];
  m_ptr = self->_warningView.m_ptr;
  [(WKWebView *)self _computedObscuredInsetForWarningView];
  [(_WKWarningView *)m_ptr setContentInset:?];
}

- (void)layoutSubviews
{
  [(WKWebView *)self _updateScreenTimeViewGeometry];
  m_ptr = self->_warningView.m_ptr;
  [(WKWebView *)self bounds];
  [(_WKWarningView *)m_ptr setFrame:?];
  v4.receiver = self;
  v4.super_class = WKWebView;
  [(WKWebView *)&v4 layoutSubviews];
  [(WKWebView *)self _frameOrBoundsMayHaveChanged];
}

- (void)_updateScreenTimeViewGeometry
{
  [(WKWebView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIVisualEffectView *)self->_screenTimeBlurredSnapshot.m_ptr setFrame:?];
  v11 = [(STWebpageController *)self->_screenTimeWebpageController.m_ptr view];

  [v11 setFrame:{v4, v6, v8, v10}];
}

- (NSString)title
{
  v2 = *(self->_page.m_ptr + 4);
  WebKit::PageLoadState::ref((v2 + 1120));
  v3 = 1232;
  if (!*(v2 + 1232))
  {
    v3 = 1224;
  }

  v4 = *(v2 + v3);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v11, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v11 = &stru_1F1147748;
    v6 = &stru_1F1147748;
  }

  v7 = v11;
  v11 = 0;
  if (v7)
  {
    v8 = v7;
    v9 = v11;
    v11 = 0;
    if (v9)
    {
    }
  }

  WebKit::PageLoadState::deref((v2 + 1120));
  return v7;
}

- (BOOL)isLoading
{
  v2 = *(self->_page.m_ptr + 4);
  WebKit::PageLoadState::ref((v2 + 1120));
  if (*(v2 + 1160))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(v2 + 1144);
    v5 = v4 > 2;
    v6 = 3u >> (v4 & 7);
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }
  }

  WebKit::PageLoadState::deref((v2 + 1120));
  return v3 & 1;
}

- (BOOL)canGoBack
{
  if (self)
  {
    didAccessBackForwardList = self->_didAccessBackForwardList;
    self->_didAccessBackForwardList = 1;
    if (!didAccessBackForwardList)
    {
      [(WKWebView *)self _updatePageLoadObserverState];
    }
  }

  v4 = *(self->_page.m_ptr + 4);
  WebKit::PageLoadState::ref((v4 + 1120));
  v5 = *(v4 + 1280);
  WebKit::PageLoadState::deref((v4 + 1120));
  return v5;
}

- (BOOL)canGoForward
{
  if (self)
  {
    didAccessBackForwardList = self->_didAccessBackForwardList;
    self->_didAccessBackForwardList = 1;
    if (!didAccessBackForwardList)
    {
      [(WKWebView *)self _updatePageLoadObserverState];
    }
  }

  v4 = *(self->_page.m_ptr + 4);
  WebKit::PageLoadState::ref((v4 + 1120));
  v5 = *(v4 + 1281);
  WebKit::PageLoadState::deref((v4 + 1120));
  return v5;
}

- (void)removeFromSuperview
{
  v3.receiver = self;
  v3.super_class = WKWebView;
  [(WKWebView *)&v3 removeFromSuperview];
  if ([(WKFullScreenWindowController *)self->_fullScreenWindowController.m_ptr isFullScreen])
  {
    [(WKFullScreenWindowController *)self->_fullScreenWindowController.m_ptr webViewDidRemoveFromSuperviewWhileInFullscreen];
  }
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    [(WKWebView *)self _uninstallScreenTimeWebpageController];
    [(WKWebView *)self _setResourceLoadDelegate:0];
    [(WKContentView *)self->_contentView.m_ptr _webViewDestroyed];
    m_ptr = self->_page.m_ptr;
    if (m_ptr)
    {
      if (!self->_remoteObjectRegistry.m_ptr || (v5 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(m_ptr + 8) + 16)), IPC::MessageReceiverMap::removeMessageReceiver(v5 + 56, 0x69u, *(self->_page.m_ptr + 5)), (m_ptr = self->_page.m_ptr) != 0))
      {
        WebKit::WebPageProxy::close(m_ptr);
      }
    }

    [(_WKRemoteObjectRegistry *)self->_remoteObjectRegistry.m_ptr _invalidate];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [(WKScrollView *)self->_scrollView.m_ptr setInternalDelegate:0];
    [(WKWebView *)self _invalidateResizeAssertions];
    v6.receiver = self;
    v6.super_class = WKWebView;
    [(WKWebView *)&v6 dealloc];
  }
}

- (void)_uninstallScreenTimeWebpageController
{
  if (PAL::ScreenTimeLibrary(1))
  {
    [(STScreenTimeConfigurationObserver *)self->_screenTimeConfigurationObserver.m_ptr stopObserving];
    [(STScreenTimeConfigurationObserver *)self->_screenTimeConfigurationObserver.m_ptr removeObserver:self forKeyPath:@"configuration.enforcesChildRestrictions" context:&_MergedGlobals_1159];
    m_ptr = self->_screenTimeConfigurationObserver.m_ptr;
    self->_screenTimeConfigurationObserver.m_ptr = 0;
    if (m_ptr)
    {
    }

    if (self->_screenTimeWebpageController.m_ptr)
    {
      v4 = self->_screenTimeBlurredSnapshot.m_ptr;
      self->_screenTimeBlurredSnapshot.m_ptr = 0;
      [(UIVisualEffectView *)v4 removeFromSuperview];
      if (v4)
      {
      }

      [-[STWebpageController view](self->_screenTimeWebpageController.m_ptr "view")];
      [(STWebpageController *)self->_screenTimeWebpageController.m_ptr removeObserver:self forKeyPath:@"URLIsBlocked" context:&off_1EB018A18];
      v5 = self->_screenTimeWebpageController.m_ptr;
      self->_screenTimeWebpageController.m_ptr = 0;
      if (v5)
      {
      }

      v6 = qword_1ED6411C0;
      if (os_log_type_enabled(qword_1ED6411C0, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "Screen Time controller was uninstalled.", v7, 2u);
      }
    }
  }
}

void __76__WKWebView_WKViewInternalIOS___addUpdateVisibleContentRectPreCommitHandler__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ([v1 _isValid])
  {
    [v1 _updateVisibleContentRects];
    v1[886] = 0;
  }

  else
  {
    v2 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = v1;
      _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "In CATransaction preCommitHandler, WKWebView %p is invalid", &v3, 0xCu);
    }
  }
}

- (void)_updateVisibleContentRects
{
  v150 = *MEMORY[0x1E69E9840];
  m_storage = self->_viewStabilityWhenVisibleContentRectUpdateScheduled.m_storage;
  v4 = [(WKWebView *)self usesStandardContentView];
  if ((v4 & 1) == 0)
  {
    m_ptr = self->_passwordView.m_ptr;
    [(WKWebView *)self bounds];
    [(WKPasswordView *)m_ptr setFrame:?];
    [(WKWebViewContentProvider *)self->_customContentView.m_ptr web_computedContentInsetDidChange];
    self->_perProcessState.didDeferUpdateVisibleContentRectsForAnyReason = 1;
    v13 = qword_1ED641490;
    if (!os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = *(self->_page.m_ptr + 5);
    *buf = 134218240;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v14;
    v15 = "%p (pageProxyID=%llu) [WKWebView _updateVisibleContentRects:] - usesStandardContentView is NO, bailing";
LABEL_14:
    v17 = v13;
    v18 = 22;
LABEL_27:
    _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, v15, buf, v18);
    return;
  }

  WTF::MonotonicTime::now(v4);
  v6 = v5;
  p_timeOfFirstVisibleContentRectUpdateWithPendingCommit = &self->_timeOfFirstVisibleContentRectUpdateWithPendingCommit;
  if (self->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.__engaged_)
  {
    v8 = v5 - p_timeOfFirstVisibleContentRectUpdateWithPendingCommit->var0.__val_.m_value;
    if (v8 > 5.0)
    {
      v9 = qword_1ED641490;
      if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(self->_page.m_ptr + 5);
        if (self->_perProcessState.lastTransactionID.__engaged_)
        {
          m_identifier = self->_perProcessState.lastTransactionID.var0.__val_.m_object.m_identifier;
        }

        else
        {
          m_identifier = 0;
        }

        *buf = 134218752;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        *&buf[24] = v8;
        *&buf[32] = 2048;
        *v143 = m_identifier;
        _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _updateVisibleContentRects:] - have not received a commit %.2fs after visible content rect update; lastTransactionID %llu", buf, 0x2Au);
      }
    }
  }

  if (self->_perProcessState.invokingUIScrollViewDelegateCallback)
  {
    *&self->_perProcessState.didDeferUpdateVisibleContentRectsForUIScrollViewDelegateCallback = 257;
    v13 = qword_1ED641490;
    if (!os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = *(self->_page.m_ptr + 5);
    *buf = 134218240;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v16;
    v15 = "%p (pageProxyID=%llu) [WKWebView _updateVisibleContentRects:] - _invokingUIScrollViewDelegateCallback is YES, bailing";
    goto LABEL_14;
  }

  if (!CGRectIsEmpty(self->_perProcessState.animatedResizeOldBounds))
  {
    [(WKWebView *)self _cancelAnimatedResize];
  }

  if ([(WKWebView *)self _shouldDeferGeometryUpdates]|| self->_perProcessState.resetViewStateAfterTransactionID.__engaged_ && ![(WKContentView *)self->_contentView.m_ptr sizeChangedSinceLastVisibleContentRectUpdate]|| ([(WKScrollView *)self->_scrollView.m_ptr isZoomBouncing]& 1) != 0 || self->_perProcessState.currentlyAdjustingScrollViewInsetsForKeyboard)
  {
    *&self->_perProcessState.didDeferUpdateVisibleContentRectsForAnyReason = 257;
    v19 = qword_1ED641490;
    if (!os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v20 = *(self->_page.m_ptr + 5);
    v21 = [(WKWebView *)self _shouldDeferGeometryUpdates];
    if (self->_perProcessState.resetViewStateAfterTransactionID.__engaged_)
    {
      v22 = self->_perProcessState.resetViewStateAfterTransactionID.var0.__val_.m_object.m_identifier;
    }

    else
    {
      v22 = 0;
    }

    dynamicViewportUpdateMode = self->_perProcessState.dynamicViewportUpdateMode;
    v24 = [(WKContentView *)self->_contentView.m_ptr sizeChangedSinceLastVisibleContentRectUpdate];
    v25 = [(WKScrollView *)self->_scrollView.m_ptr isZoomBouncing];
    currentlyAdjustingScrollViewInsetsForKeyboard = self->_perProcessState.currentlyAdjustingScrollViewInsetsForKeyboard;
    *buf = 134219776;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    *&buf[22] = 1024;
    *&buf[24] = v21;
    *&buf[28] = 1024;
    *&buf[30] = dynamicViewportUpdateMode;
    *v143 = 2048;
    *&v143[2] = v22;
    v144 = 1024;
    v145 = v24;
    v146 = 1024;
    v147 = v25;
    v148 = 1024;
    v149 = currentlyAdjustingScrollViewInsetsForKeyboard;
    v15 = "%p (pageProxyID=%llu) [WKWebView _updateVisibleContentRects:] - scroll view state is non-stable, bailing (shouldDeferGeometryUpdates %d, dynamicViewportUpdateMode %d, resetViewStateAfterTransactionID %llu, sizeChangedSinceLastVisibleContentRectUpdate %d, [_scrollView isZoomBouncing] %d, currentlyAdjustingScrollViewInsetsForKeyboard %d)";
    v17 = v19;
    v18 = 62;
    goto LABEL_27;
  }

  if (self->_perProcessState.didDeferUpdateVisibleContentRectsForAnyReason)
  {
    v27 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(self->_page.m_ptr + 5);
      *buf = 134218240;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _updateVisibleContentRects:] - performing first visible content rect update after deferring updates", buf, 0x16u);
    }
  }

  *&self->_perProcessState.didDeferUpdateVisibleContentRectsForUIScrollViewDelegateCallback = 0;
  self->_perProcessState.didDeferUpdateVisibleContentRectsForUnstableScrollView = 0;
  [(WKWebView *)self _updateScrollViewContentInsetsIfNecessary];
  [(WKWebView *)self _visibleContentRect];
  v136 = v30;
  v137 = v29;
  v134 = v32;
  v135 = v31;
  [(WKWebView *)self _computedObscuredInset];
  v35 = v34;
  v37 = v36;
  v38 = v33;
  v40 = v39;
  if (!self->_haveSetObscuredInsets)
  {
    v38 = v33 - self->_totalScrollViewBottomInsetAdjustmentForKeyboard;
  }

  v41 = [-[WKWebView _currentContentView](self "_currentContentView")];
  if (v41)
  {
    [v41 affineTransform];
    v42 = *buf;
  }

  else
  {
    v42 = 0.0;
  }

  v139 = v42;
  [(WKWebView *)self bounds];
  v132 = v44 - (v37 + v40);
  v133 = v37 + v43;
  v138 = v35 + v45;
  v131 = v46 - (v35 + v38);
  if (self->_perProcessState.frozenUnobscuredContentRect.__engaged_)
  {
    size = self->_perProcessState.frozenUnobscuredContentRect.var0.__val_.size;
    *buf = *&self->_perProcessState.frozenUnobscuredContentRect.var0.__null_state_;
    *&buf[16] = size;
  }

  else
  {
    [(WKWebView *)self convertRect:self->_contentView.m_ptr toView:?];
    *buf = v48;
    *&buf[8] = v49;
    *&buf[16] = v50;
    *&buf[24] = v51;
  }

  WebCore::FloatRect::FloatRect(v141, buf);
  if (![(WKContentView *)self->_contentView.m_ptr sizeChangedSinceLastVisibleContentRectUpdate])
  {
    [(WKWebView *)self _contentBoundsExtendedForRubberbandingWithScale:v139];
    *buf = v52;
    *&buf[8] = v53;
    *&buf[16] = v54;
    *&buf[24] = v55;
    WebCore::FloatRect::FloatRect(v140, buf);
    WebCore::FloatRect::intersect(v141, v140);
  }

  [(WKWebView *)self currentlyVisibleContentInsetsWithScale:v139 obscuredInsets:v35, v37, v38, v40];
  v129 = v57;
  v130 = v56;
  v127 = v59;
  v128 = v58;
  if (!m_storage)
  {
    v88 = self->_page.m_ptr;
    v89 = *(v88 + 43);
    if (v89)
    {
      if (WebKit::RemoteScrollingCoordinatorProxyIOS::hasActiveSnapPoint(*(v88 + 43)))
      {
        [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
        v91 = v90;
        v93 = v92;
        *buf = v90;
        *&buf[8] = v92;
        WebKit::RemoteScrollingCoordinatorProxyIOS::nearestActiveContentInsetAdjustedSnapOffset(v89, v138, buf);
        v97 = v96;
        v98 = v95;
        if (v96 != v91 || v95 != v93)
        {
          v99 = self->_scrollView.m_ptr;
          if (v99)
          {
            v94 = v99;
          }

          WTF::RunLoop::mainSingleton(v94);
          if (v99)
          {
            v100 = v99;
          }

          v101 = WTF::fastMalloc(0x20);
          *v101 = &unk_1F10FD4B8;
          *(v101 + 1) = v99;
          v101[2] = v97;
          v101[3] = v98;
          v140[0] = v101;
          WTF::RunLoop::dispatch();
          v102 = v140[0];
          v140[0] = 0;
          if (!v102)
          {
            if (!v99)
            {
              goto LABEL_43;
            }

            goto LABEL_57;
          }

          (*(*v102 + 8))(v102);
          if (v99)
          {
LABEL_57:
          }
        }
      }
    }
  }

LABEL_43:
  v60 = self->_contentView.m_ptr;
  WebCore::FloatRect::operator CGRect();
  v125 = v62;
  v126 = v61;
  v123 = v64;
  v124 = v63;
  left = self->_obscuredInsets.left;
  top = self->_obscuredInsets.top;
  right = self->_obscuredInsets.right;
  bottom = self->_obscuredInsets.bottom;
  [(WKWebView *)self _computedUnobscuredSafeAreaInset];
  v117 = v66;
  v118 = v65;
  v115 = v68;
  v116 = v67;
  y = self->_inputViewBoundsInWindow.origin.y;
  x = self->_inputViewBoundsInWindow.origin.x;
  height = self->_inputViewBoundsInWindow.size.height;
  width = self->_inputViewBoundsInWindow.size.width;
  [(WKScrollView *)self->_scrollView.m_ptr minimumZoomScale];
  v70 = v69;
  v71 = [(WKWebView *)self _scroller];
  v72 = v71;
  if (v71)
  {
    [v71 contentInset];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    [v72 contentSize];
    v82 = v81;
    v84 = v83;
    [v72 bounds];
    v87 = v78 + v74 + v84 > v86 || v80 + v76 + v82 > v85;
  }

  else
  {
    v87 = 0;
  }

  [(WKContentView *)v60 didUpdateVisibleRect:m_storage unobscuredRect:v87 contentInsets:self->_alwaysSendNextVisibleContentRectUpdate unobscuredRectInScrollViewCoordinates:v137 obscuredInsets:v136 unobscuredSafeAreaInsets:v135 inputViewBounds:v134 scale:v126 minimumScale:v125 viewStability:v124 enclosedInScrollableAncestorView:v123 sendEvenIfUnchanged:v130, v129, v128, v127, *&v133, *&v138, *&v132, *&v131, *&top, *&left, *&bottom, *&right, v118, v117, v116, v115, *&x, *&y, *&width, *&height, *&v139, v70];
  p_visibleContentRectUpdateCallbacks = &self->_visibleContentRectUpdateCallbacks;
  while (1)
  {
    m_size = self->_visibleContentRectUpdateCallbacks.m_size;
    if (!m_size)
    {
      break;
    }

    v105 = p_visibleContentRectUpdateCallbacks->m_buffer + 8 * m_size;
    v106 = *(v105 - 8);
    *(v105 - 8) = 0;
    v107 = self->_visibleContentRectUpdateCallbacks.m_size;
    if (!v107)
    {
      __break(0xC471u);
      return;
    }

    v108 = v107 - 1;
    _Block_release(*(p_visibleContentRectUpdateCallbacks->m_buffer + v107 - 1));
    self->_visibleContentRectUpdateCallbacks.m_size = v108;
    v106[2](v106);
    _Block_release(v106);
  }

  [(WKWebView *)self _updatePDFPageNumberIndicatorIfNeeded];
  v109 = v6 - self->_timeOfRequestForVisibleContentRectUpdate.m_value;
  if (v109 > 1.0)
  {
    v110 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v109;
      _os_log_impl(&dword_19D52D000, v110, OS_LOG_TYPE_DEFAULT, "%p [WKWebView _updateVisibleContentRects:] finally ran %.2fs after being scheduled", buf, 0x16u);
    }
  }

  self->_alwaysSendNextVisibleContentRectUpdate = 0;
  self->_timeOfLastVisibleContentRectUpdate.m_value = v6;
  if (!self->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.__engaged_)
  {
    self->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.__engaged_ = 1;
    p_timeOfFirstVisibleContentRectUpdateWithPendingCommit->var0.__val_.m_value = v6;
  }
}

- (CGRect)_visibleContentRect
{
  if (self->_perProcessState.frozenVisibleContentRect.__engaged_)
  {
    x = self->_perProcessState.frozenVisibleContentRect.var0.__val_.origin.x;
    y = self->_perProcessState.frozenVisibleContentRect.var0.__val_.origin.y;
    width = self->_perProcessState.frozenVisibleContentRect.var0.__val_.size.width;
    height = self->_perProcessState.frozenVisibleContentRect.var0.__val_.size.height;
  }

  else
  {
    [(WKWebView *)self bounds];
    [(WKWebView *)self convertRect:self->_contentView.m_ptr toView:?];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
    v11 = [(WKWebView *)self _enclosingViewForExposedRectComputation];
    if (v11)
    {
      [(WKWebView *)self _visibleRectInEnclosingView:v11];
      [(WKWebView *)self convertRect:self->_contentView.m_ptr toView:?];
      v23.origin.x = v12;
      v23.origin.y = v13;
      v23.size.width = v14;
      v23.size.height = v15;
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v21 = CGRectIntersection(v20, v23);
      x = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
    }
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (UIEdgeInsets)_computedObscuredInset
{
  if ((WTF::linkedOnOrAfterSDKWithBehavior() & 1) == 0)
  {
    [(WKWebView *)self _computedContentInset];
LABEL_5:
    top = v7;
    left = v8;
    bottom = v9;
    right = v10;
    goto LABEL_6;
  }

  if (!self->_haveSetObscuredInsets)
  {
    v15 = [(WKWebView *)self _safeAreaShouldAffectObscuredInsets];
    top = *MEMORY[0x1E69DDCE0];
    left = *(MEMORY[0x1E69DDCE0] + 8);
    bottom = *(MEMORY[0x1E69DDCE0] + 16);
    right = *(MEMORY[0x1E69DDCE0] + 24);
    if (!v15)
    {
      goto LABEL_6;
    }

    [(WKWebView *)self _scrollViewSystemContentInset];
    [(WKWebView *)self _effectiveObscuredInsetEdgesAffectedBySafeArea];
    UIEdgeInsetsAdd();
    goto LABEL_5;
  }

  top = self->_obscuredInsets.top;
  left = self->_obscuredInsets.left;
  bottom = self->_obscuredInsets.bottom;
  right = self->_obscuredInsets.right;
LABEL_6:
  v11 = top;
  v12 = left;
  v13 = bottom;
  v14 = right;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)_computedUnobscuredSafeAreaInset
{
  if (self->_haveSetUnobscuredSafeAreaInsets)
  {
    p_unobscuredSafeAreaInsets = &self->_unobscuredSafeAreaInsets;
  }

  else
  {
    if (![(WKWebView *)self _safeAreaShouldAffectObscuredInsets])
    {
      [(WKWebView *)self safeAreaInsets];
      goto LABEL_7;
    }

    p_unobscuredSafeAreaInsets = MEMORY[0x1E69DDCE0];
  }

  top = p_unobscuredSafeAreaInsets->top;
  left = p_unobscuredSafeAreaInsets->left;
  bottom = p_unobscuredSafeAreaInsets->bottom;
  right = p_unobscuredSafeAreaInsets->right;
LABEL_7:
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (Class)_intelligenceBaseClass
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_19D639860();

  return swift_getObjCClassFromMetadata();
}

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  v17 = sub_19E6CD0B8();
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19E6CD0D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = a4;
  v16 = self;
  sub_19E6CD028();
  __swift_project_boxed_opaque_existential_0(v18, v18[3]);
  sub_19E6CD0E8();
  __swift_destroy_boxed_opaque_existential_0(v18);
  (*(v10 + 16))(v8, v12, v9);
  v14 = v17;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBBE0], v17);
  sub_19E6CD018();
  (*(v6 + 8))(v8, v14);
  (*(v10 + 8))(v12, v9);
}

- (void)_intelligenceCollectRemoteContentIn:(CGRect)a3 remoteContextWrapper:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  v13 = MEMORY[0x1E69E85E0];
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_19E6CD5D8();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = a4;
  v16 = self;
  v17 = v15;
  v18 = v16;
  v19 = sub_19E6CD5A8();
  v20 = swift_allocObject();
  *(v20 + 2) = v19;
  *(v20 + 3) = v13;
  *(v20 + 4) = v17;
  *(v20 + 5) = v18;
  v20[6] = x;
  v20[7] = y;
  v20[8] = width;
  v20[9] = height;
  sub_19D62343C(0, 0, v12, &unk_19E702A60, v20);
}

- (void)_showDigitalCredentialsPicker:(const void *)a3 completionHandler:(void *)a4
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v6[0] = 6;
  v6[16] = 1;
  WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData> &&)>::operator()(a4);
  std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(v6, v5);
}

- (WKWebView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(WKWebViewConfiguration);
  v9 = [(WKWebView *)self initWithFrame:v8 configuration:x, y, width, height];
  if (v8)
  {
  }

  return v9;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &_MergedGlobals_1159)
  {
    location = 0;
    objc_initWeak(&location, self);
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F10F8ED0;
    *(v8 + 8) = 0;
    objc_moveWeak((v8 + 8), &location);
    *buf = v8;
    WTF::ensureOnMainRunLoop();
    v9 = *buf;
    *buf = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    objc_destroyWeak(&location);
    return;
  }

  if (a6 != &off_1EB018A18)
  {
    v24.receiver = self;
    v24.super_class = WKWebView;
    [(WKWebView *)&v24 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
    return;
  }

  v10 = [WTF::dynamic_objc_cast<NSNumber>(objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500], a4)), "BOOLValue"}];
  v11 = [WTF::dynamic_objc_cast<NSNumber>(objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0])), "BOOLValue"}];
  isBlockedByScreenTime = self->_isBlockedByScreenTime;
  if (v10 != v11)
  {
    v13 = v11;
    [(WKWebView *)self setAllMediaPlaybackSuspended:v11 completionHandler:0];
    [(WKWebView *)self willChangeValueForKey:@"isBlockedByScreenTime"];
    self->_isBlockedByScreenTime = v13;
    [(WKWebView *)self didChangeValueForKey:@"isBlockedByScreenTime"];
    v14 = qword_1ED6411C0;
    v15 = os_log_type_enabled(qword_1ED6411C0, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 0;
        v16 = "Screen Time is blocking the URL.";
LABEL_13:
        _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
      }
    }

    else if (v15)
    {
      *buf = 0;
      v16 = "Screen Time is not blocking the URL.";
      goto LABEL_13;
    }
  }

  if (isBlockedByScreenTime == self->_isBlockedByScreenTime)
  {
    return;
  }

  m_ptr = self->_screenTimeBlurredSnapshot.m_ptr;
  if (m_ptr)
  {
LABEL_16:
    [(UIVisualEffectView *)m_ptr removeFromSuperview];
    v18 = self->_screenTimeBlurredSnapshot.m_ptr;
    self->_screenTimeBlurredSnapshot.m_ptr = 0;
    if (v18)
    {
    }

    return;
  }

  if ([(WKWebViewConfiguration *)self->_configuration.m_ptr showsSystemScreenTimeBlockingView])
  {
    m_ptr = self->_screenTimeBlurredSnapshot.m_ptr;
    if (!m_ptr)
    {
      return;
    }

    goto LABEL_16;
  }

  v19 = [MEMORY[0x1E69DC730] effectWithStyle:6];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  v22 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v20];
  v23 = self->_screenTimeBlurredSnapshot.m_ptr;
  self->_screenTimeBlurredSnapshot.m_ptr = v22;
  if (v23)
  {

    v22 = self->_screenTimeBlurredSnapshot.m_ptr;
  }

  [(WKWebView *)self bounds];
  [(UIVisualEffectView *)v22 setFrame:?];
  [(WKWebView *)self addSubview:self->_screenTimeBlurredSnapshot.m_ptr];
  if (v20)
  {
  }
}

- (void)_initializeWithConfiguration:(id)a3
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Configuration cannot be nil"];
  }

  v5 = [a3 copy];
  m_ptr = self->_configuration.m_ptr;
  self->_configuration.m_ptr = v5;
  if (m_ptr)
  {
  }

  if (addBrowsingContextControllerMethodStubsIfNeeded(void)::onceToken != -1)
  {
    dispatch_once(&addBrowsingContextControllerMethodStubsIfNeeded(void)::onceToken, &__block_literal_global_2575);
  }

  v7 = [(WKWebViewConfiguration *)self->_configuration.m_ptr _relatedWebView];
  if (v7)
  {
    v8 = v7;
    v9 = [(WKWebViewConfiguration *)self->_configuration.m_ptr processPool];
    v10 = [(WKWebViewConfiguration *)v8->_configuration.m_ptr processPool];
    v11 = v10;
    if (v9)
    {
      v12 = v9 == v10;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Related web view %@ has process pool %@ but configuration specifies a different process pool %@", v8, v10, objc_msgSend(a3, "processPool")}];
    }

    v13 = [(WKWebViewConfiguration *)v8->_configuration.m_ptr websiteDataStore];
    if (v13 != [(WKWebViewConfiguration *)self->_configuration.m_ptr websiteDataStore]&& WTF::linkedOnOrAfterSDKWithBehavior())
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Related web view %@ has data store %@ but configuration specifies a different data store %@", v8, -[WKWebViewConfiguration websiteDataStore](v8->_configuration.m_ptr, "websiteDataStore"), -[WKWebViewConfiguration websiteDataStore](self->_configuration.m_ptr, "websiteDataStore")}];
    }

    [(WKWebViewConfiguration *)self->_configuration.m_ptr setProcessPool:v11];
  }

  v14 = [(WKWebViewConfiguration *)self->_configuration.m_ptr processPool];
  CFRetain(*&v14->_processPool.m_storage.data[8]);
  v15 = self->_configuration.m_ptr;
  CFRetain(*&v15->_pageConfiguration.m_storage.data[8]);
  API::PageConfiguration::create(&v98);
  API::PageConfiguration::Data::operator=(v98 + 2, &v15->_pageConfiguration.m_storage.data[16]);
  CFRelease(*&v15->_pageConfiguration.m_storage.data[8]);
  [(WKWebView *)self _setupPageConfiguration:&v98 withPool:&v14->_processPool];
  self->_usePlatformFindUI = 1;
  self->_obscuredInsetEdgesAffectedBySafeArea = 11;
  self->_allowsViewportShrinkToFit = 0;
  self->_allowsLinkPreview = WTF::linkedOnOrAfterSDKWithBehavior();
  self->_findInteractionEnabled = 0;
  self->_needsToPresentLockdownModeMessage = 1;
  self->_allowsMagnification = 1;
  v16 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v16)
  {
    LOBYTE(v16) = [v16 BOOLValue];
  }

  self->_fastClickingIsDisabled = v16;
  self->_dragInteractionPolicy = 0;
  v17 = [WKContentView alloc];
  [(WKWebView *)self bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v98;
  CFRetain(*(v98 + 1));
  v99 = v26;
  v27 = [(WKContentView *)v17 initWithFrame:&v14->_processPool processPool:&v99 configuration:self webView:v19, v21, v23, v25];
  v28 = self->_contentView.m_ptr;
  self->_contentView.m_ptr = v27;
  if (v28)
  {
  }

  v29 = v99;
  v99 = 0;
  if (v29)
  {
    CFRelease(*(v29 + 1));
  }

  v30 = [(WKContentView *)self->_contentView.m_ptr page];
  CFRetain(v30[1]);
  if (self->_page.m_ptr)
  {
    __break(0xC471u);
    goto LABEL_112;
  }

  self->_page.m_ptr = v30;
  [(WKWebView *)self _setupScrollAndContentViews];
  if ([(WKWebView *)self isOpaque]&& (*(v98 + 310) & 1) != 0)
  {
    [(WKWebView *)self _updateScrollViewBackground];
  }

  else
  {
    [(WKWebView *)self _setOpaqueInternal:0];
  }

  [(WKWebView *)self _frameOrBoundsMayHaveChanged];
  [(WKWebView *)self _registerForNotifications];
  v31 = self->_page.m_ptr;
  MEMORY[0x19EB02040](&v97, [(WKWebView *)self _contentSizeCategory]);
  v32 = *(v31 + 44);
  v99 = &v97;
  WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ContentSizeCategoryDidChange>(v32, &v99, *(v31 + 6), 0);
  v34 = v97;
  v97 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v33);
  }

  WebKit::WebPageProxy::setForceAlwaysUserScalable(self->_page.m_ptr, [(WKWebViewConfiguration *)self->_configuration.m_ptr ignoresViewportScaleLimits]);
  if ([a3 applicationNameForUserAgent])
  {
    v35 = self->_page.m_ptr;
    MEMORY[0x19EB02040](&v99);
    WebKit::WebPageProxy::setApplicationNameForUserAgent(v35, &v99, v36);
    v38 = v99;
    v99 = 0;
    if (v38)
    {
      if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v37);
      }
    }
  }

  v39 = self->_page.m_ptr;
  MEMORY[0x19EB02040](&v99, [a3 _applicationNameForDesktopUserAgent]);
  v41 = v99;
  if (v99)
  {
    atomic_fetch_add_explicit(v99, 2u, memory_order_relaxed);
  }

  v42 = *(v39 + 57);
  *(v39 + 57) = v41;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v40);
  }

  v43 = v99;
  v99 = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v40);
  }

  if (WebKit::NavigationState::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NavigationState::s_heapRef, v40);
  }

  else
  {
    NonCompact = WebKit::NavigationState::operatorNewSlow(0x78);
  }

  v45 = NonCompact;
  WebKit::NavigationState::NavigationState(NonCompact, self);
  if (self->_navigationState.__ptr_)
  {
    __break(0xC471u);
    JUMPOUT(0x19DAFD664);
  }

  std::unique_ptr<WebKit::NavigationState>::reset[abi:sn200100](&self->_navigationState, v45);
  v46 = self->_page.m_ptr;
  WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::NavigationState::NavigationClient,WebKit::NavigationState&>(self->_navigationState.__ptr_, v47, &v99);
  v49 = v99;
  v99 = 0;
  v50 = *(v46 + 11);
  *(v46 + 11) = v49;
  if (v50)
  {
    (*(*v50 + 8))(v50);
    v51 = v99;
    v99 = 0;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }
  }

  if (WebKit::UIDelegate::s_heapRef)
  {
    v52 = bmalloc::api::tzoneAllocateNonCompact(WebKit::UIDelegate::s_heapRef, v48);
  }

  else
  {
    v52 = WebKit::UIDelegate::operatorNewSlow(0x20);
  }

  v53 = v52;
  WebKit::UIDelegate::UIDelegate(v52, self);
  if (self->_uiDelegate.__ptr_)
  {
    __break(0xC471u);
LABEL_112:
    JUMPOUT(0x19DAFD644);
  }

  std::unique_ptr<WebKit::UIDelegate>::reset[abi:sn200100](&self->_uiDelegate, v53);
  v55 = self->_page.m_ptr;
  if (WebKit::FindClient::s_heapRef)
  {
    v56 = bmalloc::api::tzoneAllocateNonCompact(WebKit::FindClient::s_heapRef, v54);
  }

  else
  {
    v56 = WebKit::FindClient::operatorNewSlow(0x20);
  }

  v57 = v56;
  *v56 = &unk_1F10FED30;
  *(v56 + 8) = 0;
  objc_initWeak((v56 + 8), self);
  *(v57 + 2) = 0;
  v99 = v57;
  WebKit::WebPageProxy::setFindClient(v55, &v99);
  if (v99)
  {
    (*(*v99 + 8))(v99);
  }

  v59 = self->_page.m_ptr;
  if (WebKit::DiagnosticLoggingClient::s_heapRef)
  {
    v60 = bmalloc::api::tzoneAllocateNonCompact(WebKit::DiagnosticLoggingClient::s_heapRef, v58);
  }

  else
  {
    v60 = WebKit::DiagnosticLoggingClient::operatorNewSlow(0x20);
  }

  v61 = v60;
  *v60 = &unk_1F10FECD8;
  *(v60 + 8) = 0;
  objc_initWeak((v60 + 8), self);
  *(v61 + 16) = 0;
  v63 = *(v59 + 18);
  *(v59 + 18) = v61;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  if (WebKit::IconLoadingDelegate::s_heapRef)
  {
    v64 = bmalloc::api::tzoneAllocateNonCompact(WebKit::IconLoadingDelegate::s_heapRef, v62);
  }

  else
  {
    v64 = WebKit::IconLoadingDelegate::operatorNewSlow(0x20);
  }

  v65 = v64;
  *v64 = 0;
  *(v64 + 8) = 0;
  objc_initWeak((v64 + 8), self);
  *(v65 + 16) = 0;
  ptr = self->_iconLoadingDelegate.__ptr_;
  self->_iconLoadingDelegate.__ptr_ = v65;
  if (ptr)
  {
    WebKit::IconLoadingDelegate::operator delete(ptr);
  }

  if (WebKit::ResourceLoadDelegate::s_heapRef)
  {
    v68 = bmalloc::api::tzoneAllocateNonCompact(WebKit::ResourceLoadDelegate::s_heapRef, v66);
  }

  else
  {
    v68 = WebKit::ResourceLoadDelegate::operatorNewSlow(0x20);
  }

  v69 = v68;
  *v68 = 0;
  *(v68 + 8) = 0;
  objc_initWeak((v68 + 8), self);
  *(v69 + 16) = 0;
  v70 = self->_resourceLoadDelegate.__ptr_;
  self->_resourceLoadDelegate.__ptr_ = v69;
  if (v70)
  {
    WebKit::IconLoadingDelegate::operator delete(v70);
  }

  v71 = v98;
  v72 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v98 + 51);
  v73 = v72;
  v75 = v74;
  v76 = *(v71 + 51);
  if (v76)
  {
    v77 = (v76 + 16 * *(v76 - 4));
  }

  else
  {
    v77 = 0;
  }

  if (v77 != v72)
  {
    do
    {
      v78 = self->_page.m_ptr;
      v79 = *(v73 + 1);
      ++*(v79 + 2);
      v99 = v79;
      WebKit::WebPageProxy::setURLSchemeHandlerForScheme(v78, &v99, v73);
      v80 = v99;
      v99 = 0;
      if (v80)
      {
        if (*(v80 + 2) == 1)
        {
          (*(*v80 + 8))(v80);
        }

        else
        {
          --*(v80 + 2);
        }
      }

      do
      {
        v73 = (v73 + 16);
      }

      while (v73 != v75 && (*v73 + 1) <= 1);
    }

    while (v73 != v77);
  }

  v81 = self->_page.m_ptr;
  v82 = *(v81 + 197);
  ++*(v82 + 2);
  v97 = v82;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v96 = v99;
  WebKit::WebPageProxy::setURLSchemeHandlerForScheme(v81, &v97, &v96);
  v84 = v96;
  v96 = 0;
  if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v84, v83);
  }

  v85 = v97;
  v97 = 0;
  if (v85)
  {
    if (*(v85 + 2) == 1)
    {
      (*(*v85 + 8))(v85);
    }

    else
    {
      --*(v85 + 2);
    }
  }

  objc_storeWeak((*(self->_page.m_ptr + 4) + 2248), self);
  WTF::MonotonicTime::now([MEMORY[0x1E69E21D8] installForWebViewIfNeeded:self kind:-[WKWebView _nameForVisualIdentificationOverlay](self deprecated:{"_nameForVisualIdentificationOverlay"), 0}]);
  self->_timeOfRequestForVisibleContentRectUpdate.m_value = v86;
  self->_timeOfLastVisibleContentRectUpdate.m_value = v86;
  if (!self->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.__engaged_)
  {
    self->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.__engaged_ = 1;
  }

  self->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.var0.__val_.m_value = v86;
  v87 = self->_activeWritingToolsSession.m_ptr;
  self->_activeWritingToolsSession.m_ptr = 0;
  if (v87)
  {
  }

  v88 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v90 = v88;
  if (v88)
  {
    v91 = v88;
  }

  v92 = self->_writingToolsTextSuggestions.m_ptr;
  self->_writingToolsTextSuggestions.m_ptr = v90;
  if (v92)
  {
  }

  if (WebKit::PointerTouchCompatibilitySimulator::s_heapRef)
  {
    v93 = bmalloc::api::tzoneAllocateNonCompact(WebKit::PointerTouchCompatibilitySimulator::s_heapRef, v89);
  }

  else
  {
    v93 = WebKit::PointerTouchCompatibilitySimulator::operatorNewSlow(0x28);
  }

  v94 = v93;
  *v93 = 0;
  objc_initWeak(v93, self);
  v94[1] = 0;
  v94[2] = 0;
  *(v94 + 32) = 0;
  v94[3] = 0;
  std::unique_ptr<WebKit::PointerTouchCompatibilitySimulator>::reset[abi:sn200100](&self->_pointerTouchCompatibilitySimulator, v94);
  v95 = v98;
  v98 = 0;
  if (v95)
  {
    CFRelease(*(v95 + 1));
  }

  if (v14)
  {
    CFRelease(*&v14->_processPool.m_storage.data[8]);
  }
}

- (void)_setupPageConfiguration:(void *)a3 withPool:(void *)a4
{
  v7 = *a3;
  v8 = [(WKWebViewConfiguration *)self->_configuration.m_ptr preferences];
  p_preferences = &v8->_preferences;
  if (v8)
  {
    CFRetain(*&v8->_preferences.m_storage.data[8]);
  }

  v10 = *(v7 + 4);
  *(v7 + 4) = p_preferences;
  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  v11 = [(WKWebViewConfiguration *)self->_configuration.m_ptr _relatedWebView];
  if (v11)
  {
    v13 = *a3;
    m_ptr = v11->_page.m_ptr;
    if (m_ptr)
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(m_ptr + 6, m_ptr + 16);
      v15 = *(m_ptr + 3);
      if (v15)
      {
        atomic_fetch_add(v15, 1u);
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v13 + 16);
    *(v13 + 16) = v15;
    if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v12);
    }
  }

  v17 = [(WKWebViewConfiguration *)self->_configuration.m_ptr _webViewToCloneSessionStorageFrom];
  if (v17)
  {
    v19 = *a3;
    v20 = v17->_page.m_ptr;
    if (v20)
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v20 + 6, v20 + 16);
      v21 = *(v20 + 3);
      if (v21)
      {
        atomic_fetch_add(v21, 1u);
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v19 + 33);
    *(v19 + 33) = v21;
    if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v22);
      WTF::fastFree(v22, v18);
    }
  }

  v23 = *a3;
  v24 = [(WKWebViewConfiguration *)self->_configuration.m_ptr userContentController];
  p_userContentControllerProxy = &v24->_userContentControllerProxy;
  if (v24)
  {
    CFRetain(*&v24->_userContentControllerProxy.m_storage.data[8]);
  }

  v26 = *(v23 + 3);
  *(v23 + 3) = p_userContentControllerProxy;
  if (v26)
  {
    CFRelease(*(v26 + 8));
  }

  v27 = *a3;
  v28 = [(WKWebViewConfiguration *)self->_configuration.m_ptr _visitedLinkStore];
  p_visitedLinkStore = &v28->_visitedLinkStore;
  if (v28)
  {
    CFRetain(*&v28->_visitedLinkStore.m_storage.data[8]);
  }

  v30 = *(v27 + 5);
  *(v27 + 5) = p_visitedLinkStore;
  if (v30)
  {
    CFRelease(*(v30 + 8));
  }

  v31 = *a3;
  v32 = [(WKWebViewConfiguration *)self->_configuration.m_ptr websiteDataStore];
  p_websiteDataStore = &v32->_websiteDataStore;
  CFRetain(*&v32->_websiteDataStore.m_storage.data[8]);
  v34 = *(v31 + 7);
  *(v31 + 7) = p_websiteDataStore;
  if (v34)
  {
    CFRelease(*(v34 + 8));
  }

  v35 = *a3;
  v36 = [(WKWebViewConfiguration *)self->_configuration.m_ptr defaultWebpagePreferences];
  p_websitePolicies = &v36->_websitePolicies;
  CFRetain(*&v36->_websitePolicies.m_storage.data[8]);
  v38 = *(v35 + 6);
  *(v35 + 6) = p_websitePolicies;
  if (v38)
  {
    CFRelease(*(v38 + 8));
  }

  v39 = [(WKWebViewConfiguration *)self->_configuration.m_ptr _strongWebExtensionController];
  if (v39)
  {
    v40 = *a3;
    v41 = [(WKWebExtensionController *)v39 _webExtensionController];
    CFRetain(*(v41 + 8));
    v42 = *(v40 + 13);
    *(v40 + 13) = v41;
    if (v42)
    {
      CFRelease(*(v42 + 8));
    }
  }

  v43 = [(WKWebViewConfiguration *)self->_configuration.m_ptr _weakWebExtensionController];
  if (v43)
  {
    v44 = *a3;
    v45 = [(WKWebExtensionController *)v43 _webExtensionController];
    CFRetain(v45[1]);
    API::PageConfiguration::setWeakWebExtensionController(v44, v45);
    CFRelease(v45[1]);
  }

  v46 = [(WKWebViewConfiguration *)self->_configuration.m_ptr _groupIdentifier];
  if ([(NSString *)v46 length])
  {
    v47 = *a3;
    MEMORY[0x19EB02040](v73, v46);
    v48 = API::Object::newObject(0x30uLL, 87);
    v49 = WebKit::WebPageGroup::WebPageGroup(v48, v73);
    CFRetain(v49[1]);
    v50 = *(v47 + 15);
    *(v47 + 15) = v48;
    if (v50)
    {
      CFRelease(*(v50 + 8));
    }

    CFRelease(*(v48 + 8));
    v52 = v73[0];
    v73[0] = 0;
    if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v52, v51);
    }
  }

  v53 = *a3;
  v76 = [(WKWebViewConfiguration *)self->_configuration.m_ptr _additionalSupportedImageTypes];
  v54 = [(NSArray *)v76 count];
  v75 = &v76;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v72, v54, &v75, 0);
  std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v73, v72);
  std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>((v53 + 360), v73);
  if (v74 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v73, v55);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v72, v55);
  v56 = *a3;
  *(v56 + 309) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _waitsForPaintAfterViewDidMoveToWindow];
  v57 = *a3;
  *(v57 + 310) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _drawsBackground];
  v58 = *a3;
  *(v58 + 311) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _isControlledByAutomation];
  v59 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get((*a3 + 32));
  CFRetain(*(v59 + 1));
  v60 = *(v59 + 26);
  if (!v60)
  {
    *(v59 + 108) = 0;
  }

  *(v59 + 26) = v60 + 1;
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr suppressesIncrementalRendering];
  WebKit::WebPreferences::setSuppressesIncrementalRendering(v59, v73);
  if ((WTF::linkedOnOrAfterSDKWithBehavior() & 1) == 0)
  {
    LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _printsBackgrounds];
    WebKit::WebPreferences::setShouldPrintBackgrounds(v59, v73);
  }

  [(WKWebViewConfiguration *)self->_configuration.m_ptr _incrementalRenderingSuppressionTimeout];
  v73[0] = v61;
  WebKit::WebPreferences::setIncrementalRenderingSuppressionTimeout(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _allowsJavaScriptMarkup];
  WebKit::WebPreferences::setJavaScriptMarkupEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _convertsPositionStyleOnCopy];
  WebKit::WebPreferences::setShouldConvertPositionStyleOnCopy(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _allowsMetaRefresh];
  WebKit::WebPreferences::setHTTPEquivEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _allowUniversalAccessFromFileURLs];
  WebKit::WebPreferences::setAllowUniversalAccessFromFileURLs(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _allowTopNavigationToDataURLs];
  WebKit::WebPreferences::setAllowTopNavigationToDataURLs(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _incompleteImageBorderEnabled];
  WebKit::WebPreferences::setIncompleteImageBorderEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _shouldDeferAsynchronousScriptsUntilAfterDocumentLoad];
  WebKit::WebPreferences::setShouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaint(v59, v73);
  if (byte_1EB01D2FD == 1)
  {
    v62 = byte_1EB01D2FC;
  }

  else
  {
    v62 = WTF::linkedOnOrAfterSDKWithBehavior();
    byte_1EB01D2FC = v62;
    byte_1EB01D2FD = 1;
  }

  LOBYTE(v73[0]) = v62;
  WebKit::WebPreferences::setShouldRestrictBaseURLSchemes(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr allowsInlineMediaPlayback];
  WebKit::WebPreferences::setAllowsInlineMediaPlayback(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _allowsInlineMediaPlaybackAfterFullscreen];
  WebKit::WebPreferences::setAllowsInlineMediaPlaybackAfterFullscreen(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _inlineMediaPlaybackRequiresPlaysInlineAttribute];
  WebKit::WebPreferences::setInlineMediaPlaybackRequiresPlaysInlineAttribute(v59, v73);
  v63 = [(WKWebViewConfiguration *)self->_configuration.m_ptr allowsPictureInPictureMediaPlayback];
  if (v63)
  {
    if (byte_1EB01D2FF == 1)
    {
      LOBYTE(v63) = byte_1EB01D2FE;
    }

    else
    {
      LOBYTE(v63) = WTF::linkedOnOrAfterSDKWithBehavior();
      byte_1EB01D2FE = v63;
      byte_1EB01D2FF = 1;
    }
  }

  LOBYTE(v73[0]) = v63 & 1;
  WebKit::WebPreferences::setAllowsPictureInPictureMediaPlayback(v59, v73);
  LODWORD(v73[0]) = 0;
  WebKit::WebPreferences::setUserInterfaceDirectionPolicy(v59, v73);
  LODWORD(v73[0]) = 0;
  WebKit::WebPreferences::setSystemLayoutDirection(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _shouldDecidePolicyBeforeLoadingQuickLookPreview];
  WebKit::WebPreferences::setShouldDecidePolicyBeforeLoadingQuickLookPreview(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _systemPreviewEnabled];
  WebKit::WebPreferences::setSystemPreviewEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _scrollToTextFragmentIndicatorEnabled];
  WebKit::WebPreferences::setScrollToTextFragmentIndicatorEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _scrollToTextFragmentMarkingEnabled];
  WebKit::WebPreferences::setScrollToTextFragmentMarkingEnabled(v59, v73);
  v64 = [(WKWebViewConfiguration *)self->_configuration.m_ptr mediaTypesRequiringUserActionForPlayback];
  LOBYTE(v73[0]) = (v64 & 2) != 0;
  WebKit::WebPreferences::setRequiresUserGestureForVideoPlayback(v59, v73);
  LOBYTE(v73[0]) = v64 & 1;
  WebKit::WebPreferences::setRequiresUserGestureForAudioPlayback(v59, v73);
  if (byte_1EB01D301 == 1)
  {
    v65 = byte_1EB01D300;
  }

  else
  {
    v65 = WTF::linkedOnOrAfterSDKWithBehavior();
    byte_1EB01D300 = v65;
    byte_1EB01D301 = 1;
  }

  LOBYTE(v73[0]) = v65;
  WebKit::WebPreferences::setRequiresUserGestureToLoadVideo(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _mainContentUserGestureOverrideEnabled];
  WebKit::WebPreferences::setMainContentUserGestureOverrideEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _invisibleAutoplayNotPermitted];
  WebKit::WebPreferences::setInvisibleAutoplayNotPermitted(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _mediaDataLoadsAutomatically];
  WebKit::WebPreferences::setMediaDataLoadsAutomatically(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _attachmentElementEnabled];
  WebKit::WebPreferences::setAttachmentElementEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _attachmentWideLayoutEnabled];
  WebKit::WebPreferences::setAttachmentWideLayoutEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr dataDetectorTypes]& 0x7F;
  LODWORD(v73[0]) = LOBYTE(v73[0]);
  WebKit::WebPreferences::setDataDetectorTypes(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr allowsAirPlayForMediaPlayback];
  WebKit::WebPreferences::setAllowsAirPlayForMediaPlayback(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _applePayEnabled];
  WebKit::WebPreferences::setApplePayEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _needsStorageAccessFromFileURLsQuirk];
  WebKit::WebPreferences::setNeedsStorageAccessFromFileURLsQuirk(v59, v73);
  MEMORY[0x19EB02040](v73, [(WKWebViewConfiguration *)self->_configuration.m_ptr _mediaContentTypesRequiringHardwareSupport]);
  WebKit::WebPreferences::setMediaContentTypesRequiringHardwareSupport(v59, v73);
  v67 = v73[0];
  v73[0] = 0;
  if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v67, v66);
  }

  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _allowMediaContentTypesRequiringHardwareSupportAsFallback];
  WebKit::WebPreferences::setAllowMediaContentTypesRequiringHardwareSupportAsFallback(v59, v73);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if ((WebKit::WebPreferencesStore::getBoolValueForKey((v59 + 40), &WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key, v68) & 1) == 0)
  {
    LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _mediaCaptureEnabled];
    WebKit::WebPreferences::setMediaDevicesEnabled(v59, v73);
  }

  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _colorFilterEnabled];
  WebKit::WebPreferences::setColorFilterEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _undoManagerAPIEnabled];
  WebKit::WebPreferences::setUndoManagerAPIEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _appHighlightsEnabled];
  WebKit::WebPreferences::setAppHighlightsEnabled(v59, v73);
  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _legacyEncryptedMediaAPIEnabled];
  WebKit::WebPreferences::setLegacyEncryptedMediaAPIEnabled(v59, v73);
  if (((WTF::processHasEntitlement() & 1) == 0 && !WTF::processHasEntitlement() || [(WKPreferences *)[(WKWebViewConfiguration *)self->_configuration.m_ptr preferences] _serviceWorkerEntitlementDisabledForTesting]) && ![(WKWebViewConfiguration *)self->_configuration.m_ptr limitsNavigationsToAppBoundDomains])
  {
    LOBYTE(v73[0]) = 0;
    WebKit::WebPreferences::setServiceWorkersEnabled(v59, v73);
  }

  LOBYTE(v73[0]) = [(WKPreferences *)[(WKWebViewConfiguration *)self->_configuration.m_ptr preferences] _serviceWorkerEntitlementDisabledForTesting];
  WebKit::WebPreferences::setServiceWorkerEntitlementDisabledForTesting(v59, v73);
  [(WKWebViewConfiguration *)self->_configuration.m_ptr _sampledPageTopColorMaxDifference];
  v73[0] = v69;
  WebKit::WebPreferences::setSampledPageTopColorMaxDifference(v59, v73);
  [(WKWebViewConfiguration *)self->_configuration.m_ptr _sampledPageTopColorMinHeight];
  v73[0] = v70;
  WebKit::WebPreferences::setSampledPageTopColorMinHeight(v59, v73);
  if ((WTF::linkedOnOrAfterSDKWithBehavior() & 1) == 0)
  {
    LOBYTE(v73[0]) = 0;
    WebKit::WebPreferences::setNeedsSiteSpecificQuirks(v59, v73);
  }

  LOBYTE(v73[0]) = [(WKWebViewConfiguration *)self->_configuration.m_ptr _allowTestOnlyIPC];
  WebKit::WebPreferences::setAllowTestOnlyIPC(v59, v73);
  LOBYTE(v73[0]) = *(*(a4 + 6) + 96);
  WebKit::WebPreferences::setUsesSingleWebProcess(v59, v73);
  v71 = *(v59 + 26) - 1;
  *(v59 + 26) = v71;
  if (!v71 && *(v59 + 108) == 1)
  {
    WebKit::WebPreferences::update(v59);
  }

  CFRelease(*(v59 + 1));
}

- (WKWebView)initWithFrame:(CGRect)frame configuration:(WKWebViewConfiguration *)configuration
{
  v8.receiver = self;
  v8.super_class = WKWebView;
  v5 = [(WKWebView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(WKWebView *)v5 _initializeWithConfiguration:configuration];
  }

  return v6;
}

- (WKWebView)initWithCoder:(NSCoder *)coder
{
  v6.receiver = self;
  v6.super_class = WKWebView;
  v4 = [(WKWebView *)&v6 initWithCoder:?];
  if (v4)
  {
    [(WKWebView *)v4 _initializeWithConfiguration:[(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"configuration"]];
    [(WKWebView *)v4 setAllowsBackForwardNavigationGestures:[(NSCoder *)coder decodeBoolForKey:@"allowsBackForwardNavigationGestures"]];
    [(WKWebView *)v4 setCustomUserAgent:[(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"customUserAgent"]];
    [(WKWebView *)v4 setAllowsLinkPreview:[(NSCoder *)coder decodeBoolForKey:@"allowsLinkPreview"]];
    [(WKWebView *)v4 setFindInteractionEnabled:[(NSCoder *)coder decodeBoolForKey:@"findInteractionEnabled"]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WKWebView;
  [(WKWebView *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_configuration.m_ptr forKey:@"configuration"];
  [a3 encodeBool:-[WKWebView allowsBackForwardNavigationGestures](self forKey:{"allowsBackForwardNavigationGestures"), @"allowsBackForwardNavigationGestures"}];
  [a3 encodeObject:-[WKWebView customUserAgent](self forKey:{"customUserAgent"), @"customUserAgent"}];
  [a3 encodeBool:-[WKWebView allowsLinkPreview](self forKey:{"allowsLinkPreview"), @"allowsLinkPreview"}];
  [a3 encodeBool:-[WKWebView isFindInteractionEnabled](self forKey:{"isFindInteractionEnabled"), @"findInteractionEnabled"}];
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"serverTrust"])
  {

    return [(WKWebView *)self serverTrust];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WKWebView;
    return [(WKWebView *)&v6 valueForUndefinedKey:a3];
  }
}

- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  if ([a4 isEqualToString:@"_webProcessState"])
  {
    *(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(self->_page.m_ptr + 8) + 16)) + 1056) = 1;
  }

  v11.receiver = self;
  v11.super_class = WKWebView;
  [(WKWebView *)&v11 addObserver:a3 forKeyPath:a4 options:a5 context:a6];
}

- (WKBackForwardList)backForwardList
{
  if (self)
  {
    didAccessBackForwardList = self->_didAccessBackForwardList;
    self->_didAccessBackForwardList = 1;
    if (!didAccessBackForwardList)
    {
      [(WKWebView *)self _updatePageLoadObserverState];
    }
  }

  v4 = *(*(self->_page.m_ptr + 89) + 8);
  if (!v4)
  {
    return v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v4;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (id)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(self->_navigationState.__ptr_ + 3);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  return v3;
}

- (void)setNavigationDelegate:(id)navigationDelegate
{
  m_ptr = self->_page.m_ptr;
  WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::NavigationState::NavigationClient,WebKit::NavigationState&>(self->_navigationState.__ptr_, a2, &v9);
  v6 = v9;
  v9 = 0;
  v7 = *(m_ptr + 11);
  *(m_ptr + 11) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v8 = v9;
    v9 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  WebKit::NavigationState::setNavigationDelegate(self->_navigationState.__ptr_, navigationDelegate);
}

- (id)UIDelegate
{
  WeakRetained = objc_loadWeakRetained(self->_uiDelegate.__ptr_ + 2);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  return v3;
}

- (void)setUIDelegate:(id)UIDelegate
{
  WebKit::UIDelegate::setDelegate(self->_uiDelegate.__ptr_, UIDelegate);
  m_ptr = self->_page.m_ptr;
  WebKit::UIDelegate::createUIClient(self->_uiDelegate.__ptr_, v5, &v7);
  WebKit::WebPageProxy::setUIClient(m_ptr, &v7);
  if (v7)
  {
    v6 = *(*v7 + 8);

    v6();
  }
}

- (_WKIconLoadingDelegate)_iconLoadingDelegate
{
  WeakRetained = objc_loadWeakRetained(self->_iconLoadingDelegate.__ptr_ + 2);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  return v3;
}

- (void)_setIconLoadingDelegate:(id)a3
{
  m_ptr = self->_page.m_ptr;
  ptr = self->_iconLoadingDelegate.__ptr_;
  v7 = WebKit::IconLoadingDelegate::IconLoadingClient::operator new(0x10, a2);
  *v7 = &unk_1F10FF058;
  v7[1] = ptr;
  ++*ptr;
  v9 = v7;
  WebKit::WebPageProxy::setIconLoadingClient(m_ptr, &v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v8 = self->_iconLoadingDelegate.__ptr_;

  WebKit::IconLoadingDelegate::setDelegate(v8, a3);
}

- (_WKResourceLoadDelegate)_resourceLoadDelegate
{
  WeakRetained = objc_loadWeakRetained(self->_resourceLoadDelegate.__ptr_ + 2);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  return v3;
}

- (void)_setResourceLoadDelegate:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    ptr = self->_resourceLoadDelegate.__ptr_;
    if (ptr)
    {
      if (a3)
      {
        v7 = WebKit::ResourceLoadDelegate::ResourceLoadClient::operator new(0x10, a2);
        *v7 = &unk_1F1100868;
        v7[1] = ptr;
        ++*ptr;
        v10 = v7;
        WebKit::WebPageProxy::setResourceLoadClient(m_ptr, &v10);
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        v8 = self->_resourceLoadDelegate.__ptr_;
        v9 = a3;
      }

      else
      {
        v10 = 0;
        WebKit::WebPageProxy::setResourceLoadClient(m_ptr, &v10);
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        v8 = self->_resourceLoadDelegate.__ptr_;
        v9 = 0;
      }

      WebKit::ResourceLoadDelegate::setDelegate(v8, v9);
    }
  }
}

- (WKNavigation)loadRequest:(NSURLRequest *)request
{
  if ((WTF::isUIThread(self) & 1) == 0)
  {
    v5 = qword_1ED640D10;
    if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_19D52D000, v5, OS_LOG_TYPE_FAULT, "WKWebView APIs must be called from the main thread", v13, 2u);
    }
  }

  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  if (*(m_ptr + 1254) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView was used to load a service worker"];
    m_ptr = self->_page.m_ptr;
  }

  MEMORY[0x19EB06210](v13, request);
  v16 = 0;
  WebKit::WebPageProxy::loadRequest(m_ptr, v13, 1, 0, &v16, 0, 1, &v15);
  v7 = v15;
  if (v15)
  {
    v8 = *(v15 + 8);
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v9 = v8;
      CFRelease(*(v7 + 8));
      v10 = v8;
    }

    else
    {
      CFRelease(0);
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v13);
  return v8;
}

- (WKNavigation)loadFileURL:(NSURL *)URL allowingReadAccessToURL:(NSURL *)readAccessURL
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  if (*(m_ptr + 1254) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView was used to load a service worker"];
  }

  v8 = [(NSURL *)URL isFileURL];
  v9 = MEMORY[0x1E695D940];
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", URL}];
  }

  if (![(NSURL *)readAccessURL isFileURL])
  {
    [MEMORY[0x1E695DF30] raise:*v9 format:{@"%@ is not a file URL", readAccessURL}];
  }

  v10 = self->_page.m_ptr;
  MEMORY[0x19EB02040](&v21, [[(NSURL *)URL filePathURL] absoluteString]);
  MEMORY[0x19EB02040](&v20, [(NSURL *)readAccessURL absoluteString]);
  WebKit::WebPageProxy::loadFile(v10, &v21, &v20, 0, 1, &v22);
  v12 = v22;
  if (v22)
  {
    v22 = 0;
    v13 = *(v12 + 8);
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v14 = v13;
      CFRelease(*(v12 + 8));
      v15 = v13;
    }

    else
    {
      CFRelease(0);
    }

    v16 = v22;
    v22 = 0;
    if (v16)
    {
      CFRelease(*(v16 + 8));
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = v20;
  v20 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v11);
  }

  v18 = v21;
  v21 = 0;
  if (v18)
  {
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v11);
    }
  }

  return v13;
}

- (WKNavigation)loadHTMLString:(NSString *)string baseURL:(NSURL *)baseURL
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v8 = [(NSString *)string dataUsingEncoding:4];

  return [(WKWebView *)self loadData:v8 MIMEType:@"text/html" characterEncodingName:@"UTF-8" baseURL:baseURL];
}

- (WKNavigation)loadData:(NSData *)data MIMEType:(NSString *)MIMEType characterEncodingName:(NSString *)characterEncodingName baseURL:(NSURL *)baseURL
{
  v26 = data;
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  if (*(m_ptr + 1254) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView was used to load a service worker"];
    m_ptr = self->_page.m_ptr;
  }

  WebCore::SharedBuffer::create<NSData *&>(&v26, a2, &v24);
  MEMORY[0x19EB02040](&v23, MIMEType);
  MEMORY[0x19EB02040](&v22, characterEncodingName);
  MEMORY[0x19EB02040](&v21, [(NSURL *)baseURL absoluteString]);
  WebKit::WebPageProxy::loadData(m_ptr, &v24, &v23, &v22, &v21, 0, 0, &v25);
  v12 = v25;
  if (v25)
  {
    v13 = v25[1];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v14 = v13;
      CFRelease(*(v12 + 1));
      v15 = v13;
    }

    else
    {
      CFRelease(0);
    }

    v25 = 0;
  }

  else
  {
    v13 = 0;
  }

  v16 = v21;
  v21 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v11);
  }

  v17 = v22;
  v22 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v11);
  }

  v18 = v23;
  v23 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v11);
  }

  v19 = v24;
  v24 = 0;
  if (v19)
  {
    if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19 + 2);
      (*(*v19 + 8))(v19);
    }
  }

  return v13;
}

- (void)startDownloadUsingRequest:(NSURLRequest *)request completionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  MEMORY[0x19EB06210](v13, request);
  v7 = _Block_copy(completionHandler);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F8EF8;
  v8[1] = v7;
  v12 = v8;
  WebKit::WebPageProxy::downloadRequest(m_ptr, v13, &v12);
  v9 = v12;
  v12 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v13);
}

- (void)resumeDownloadFromResumeData:(NSData *)resumeData completionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v25 = resumeData;
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:resumeData error:0];
  [v7 setDecodingFailurePolicy:0];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v7 decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, v10, v11, v12, v13, v14, objc_opt_class(), 0), @"NSKeyedArchiveRootObjectKey"}];
  [v7 finishDecoding];
  v16 = [v15 objectForKey:@"NSURLSessionResumeInfoLocalPath"];
  if (!v16)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid resume data"];
  }

  v17 = self->_page.m_ptr;
  API::Data::createWithoutCopying(v25, &v28);
  v18 = v28;
  MEMORY[0x19EB02040](&v27, v16);
  v19 = _Block_copy(completionHandler);
  v20 = WTF::fastMalloc(0x10);
  *v20 = &unk_1F10F8F20;
  v20[1] = v19;
  v26 = v20;
  WebKit::WebPageProxy::resumeDownload(v17, v18, &v27, &v26);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  _Block_release(0);
  v22 = v27;
  v27 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

  v23 = v28;
  v28 = 0;
  if (v23)
  {
    CFRelease(*(v23 + 1));
  }

  if (v7)
  {
  }
}

- (WKNavigation)goToBackForwardListItem:(WKBackForwardListItem *)item
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
      m_ptr = self->_page.m_ptr;
    }
  }

  v5 = [(WKBackForwardListItem *)item _item];
  CFRetain(*(v5 + 1));
  v6 = *(v5 + 6);
  v7 = (v6 + 8);
  ++*(v6 + 8);
  WebKit::WebPageProxy::goToBackForwardItem(m_ptr, v6, 3u, &v15);
  WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref(v7, v8);
  v9 = v15;
  if (!v15)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = *(v15 + 8);
  if (!v10)
  {
    CFRelease(0);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    CFRelease(*(v9 + 8));
    v12 = v10;
LABEL_10:
    CFRelease(*(v5 + 1));
    return v10;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (NSURL)_resourceDirectoryURL
{
  WebKit::WebPageProxy::currentResourceDirectoryURL(self->_page.m_ptr, v8);
  WTF::URL::createCFURL(&v9, v8);
  v3 = v9;
  v9 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v9;
    v9 = 0;
    if (v5)
    {
    }
  }

  v6 = v8[0];
  v8[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  return v3;
}

- (double)estimatedProgress
{
  v2 = *(self->_page.m_ptr + 4);
  WebKit::PageLoadState::ref((v2 + 1120));
  if (*(v2 + 1160))
  {
    v3 = 0.1;
  }

  else
  {
    v3 = *(v2 + 1288);
  }

  WebKit::PageLoadState::deref((v2 + 1120));
  return v3;
}

- (WKNavigation)goBack
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  didAccessBackForwardList = self->_didAccessBackForwardList;
  self->_didAccessBackForwardList = 1;
  if (!didAccessBackForwardList)
  {
    [(WKWebView *)self _updatePageLoadObserverState];
  }

  if (![(WKWebView *)self _safeBrowsingWarning])
  {
    WebKit::WebPageProxy::goBack(self->_page.m_ptr, &v11);
    v6 = v11;
    if (!v11)
    {
      return 0;
    }

    v11 = 0;
    v7 = *(v6 + 8);
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v8 = v7;
      CFRelease(*(v6 + 8));
      v9 = v7;
    }

    else
    {
      CFRelease(0);
    }

    v10 = v11;
    v11 = 0;
    if (v10)
    {
      CFRelease(*(v10 + 8));
    }

    return v7;
  }

  return [(WKWebView *)self reload];
}

- (WKNavigation)goForward
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  didAccessBackForwardList = self->_didAccessBackForwardList;
  self->_didAccessBackForwardList = 1;
  if (!didAccessBackForwardList)
  {
    [(WKWebView *)self _updatePageLoadObserverState];
  }

  WebKit::WebPageProxy::goForward(self->_page.m_ptr, &v11);
  v5 = v11;
  if (!v11)
  {
    return 0;
  }

  v11 = 0;
  v6 = *(v5 + 8);
  if (!v6)
  {
    CFRelease(0);
LABEL_12:
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      CFRelease(*(v9 + 8));
    }

    return v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    CFRelease(*(v5 + 8));
    v8 = v6;
    goto LABEL_12;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (WKNavigation)reload
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v4 = WTF::linkedOnOrAfterSDKWithBehavior();
  WebKit::WebPageProxy::reload(self->_page.m_ptr, v4, &v11);
  v5 = v11;
  if (!v11)
  {
    return 0;
  }

  v11 = 0;
  v6 = *(v5 + 8);
  if (!v6)
  {
    CFRelease(0);
LABEL_10:
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      CFRelease(*(v9 + 8));
    }

    return v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    CFRelease(*(v5 + 8));
    v8 = v6;
    goto LABEL_10;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (WKNavigation)reloadFromOrigin
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::reload(m_ptr, 2, &v10);
  v4 = v10;
  if (!v10)
  {
    return 0;
  }

  v10 = 0;
  v5 = *(v4 + 8);
  if (!v5)
  {
    CFRelease(0);
LABEL_10:
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }

    return v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    CFRelease(*(v4 + 8));
    v7 = v5;
    goto LABEL_10;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)stopLoading
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::stopLoading(m_ptr);
}

- (void)evaluateJavaScript:(NSString *)javaScriptString completionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _evaluateJavaScript:javaScriptString asAsyncFunction:0 withSourceURL:0 withArguments:0 forceUserGesture:1 inFrame:0 inWorld:+[WKContentWorld completionHandler:"pageWorld"], completionHandler];
}

- (void)evaluateJavaScript:(NSString *)javaScriptString inFrame:(WKFrameInfo *)frame inContentWorld:(WKContentWorld *)contentWorld completionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _evaluateJavaScript:javaScriptString asAsyncFunction:0 withSourceURL:0 withArguments:0 forceUserGesture:1 inFrame:frame inWorld:contentWorld completionHandler:completionHandler];
}

- (void)callAsyncJavaScript:(NSString *)functionBody arguments:(NSDictionary *)arguments inFrame:(WKFrameInfo *)frame inContentWorld:(WKContentWorld *)contentWorld completionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _evaluateJavaScript:functionBody asAsyncFunction:1 withSourceURL:0 withArguments:arguments forceUserGesture:1 inFrame:frame inWorld:contentWorld completionHandler:completionHandler];
}

- (void)closeAllMediaPresentationsWithCompletionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  if (!completionHandler)
  {
    completionHandler = &__block_literal_global_98;
  }

  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10FAA58;
  v6[1] = completionHandler;
  v7 = WTF::fastMalloc(0x10);
  v8 = v7;
  *v7 = 1;
  *(v7 + 8) = v6;
  v9 = *(self->_page.m_ptr + 66);
  if (v9)
  {
    ++v9[4];
    atomic_fetch_add(v7, 1u);
    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F10F8F48;
    v10[1] = v8;
    v15 = v10;
    WebKit::VideoPresentationManagerProxy::forEachSession(v9, &v15);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    if (v9[4] == 1)
    {
      (*(*v9 + 24))(v9);
    }

    else
    {
      --v9[4];
    }
  }

  v12 = *(self->_page.m_ptr + 63);
  if (v12)
  {
    ++*(v12 + 5);
    if (WebKit::WebFullScreenManagerProxy::isFullScreen(v12))
    {
      atomic_fetch_add(v8, 1u);
      v13 = WTF::fastMalloc(0x10);
      *v13 = &unk_1F10F8F98;
      v13[1] = v8;
      v15 = v13;
      WebKit::WebFullScreenManagerProxy::closeWithCallback(v12, &v15);
      v14 = v15;
      v15 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    if (*(v12 + 5) == 1)
    {
      (*(*v12 + 24))(v12);
    }

    else
    {
      --*(v12 + 5);
    }
  }

  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8);
}

- (void)pauseAllMediaPlaybackWithCompletionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
    if (completionHandler)
    {
      goto LABEL_4;
    }
  }

  else if (completionHandler)
  {
LABEL_4:
    v5 = _Block_copy(completionHandler);
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F10F8FE8;
    v6[1] = v5;
    v11 = v6;
    WebKit::WebPageProxy::pauseAllMediaPlayback(m_ptr, &v11);
    v7 = v11;
    v11 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    _Block_release(0);
    return;
  }

  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F10F8FC0;
  v11 = v9;
  WebKit::WebPageProxy::pauseAllMediaPlayback(m_ptr, &v11);
  v10 = v11;
  v11 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

- (void)setAllMediaPlaybackSuspended:(BOOL)suspended completionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = suspended;
  m_ptr = self->_page.m_ptr;
  if (!m_ptr || *(m_ptr + 1426) != 1)
  {
    if (completionHandler)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  if (!v4)
  {
LABEL_4:
    v4 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3321888768;
    v13[2] = __60__WKWebView_setAllMediaPlaybackSuspended_completionHandler___block_invoke;
    v13[3] = &__block_descriptor_33_e8_32c74_ZTSKZ60__WKWebView_setAllMediaPlaybackSuspended_completionHandler__E4__12_e5_v8__0l;
  }

LABEL_5:
  v8 = self->_page.m_ptr;
  v9 = _Block_copy(v4);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10F8FE8;
  v10[1] = v9;
  v12 = v10;
  if (v5)
  {
    WebKit::WebPageProxy::suspendAllMediaPlayback(v8, &v12);
  }

  else
  {
    WebKit::WebPageProxy::resumeAllMediaPlayback(v8, &v12);
  }

  v11 = v12;
  v12 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Block_release(0);
}

- (void)requestMediaPlaybackStateWithCompletionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    if (!completionHandler)
    {
      return;
    }
  }

  else if (!completionHandler)
  {
    return;
  }

  v6 = self->_page.m_ptr;
  v7 = _Block_copy(completionHandler);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F9010;
  v8[1] = v7;
  v10 = v8;
  WebKit::WebPageProxy::requestMediaPlaybackState(v6, &v10);
  v9 = v10;
  v10 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
}

- (WKMediaCaptureState)cameraCaptureState
{
  v2 = *(*(self->_page.m_ptr + 4) + 1880);
  if ((v2 & 0x1000) != 0)
  {
    return 1;
  }

  else
  {
    return ((v2 >> 13) & 2);
  }
}

- (WKMediaCaptureState)microphoneCaptureState
{
  v2 = *(*(self->_page.m_ptr + 4) + 1880);
  if ((v2 & 0x800) != 0)
  {
    return 1;
  }

  else
  {
    return ((v2 >> 12) & 2);
  }
}

- (void)setMicrophoneCaptureState:(WKMediaCaptureState)state completionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  m_ptr = self->_page.m_ptr;
  if (!m_ptr || *(m_ptr + 1426) != 1)
  {
    if (completionHandler)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  if (!v4)
  {
LABEL_4:
    v4 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3321888768;
    v18[2] = __57__WKWebView_setMicrophoneCaptureState_completionHandler___block_invoke;
    v18[3] = &__block_descriptor_33_e8_32c71_ZTSKZ57__WKWebView_setMicrophoneCaptureState_completionHandler__E4__14_e5_v8__0l;
  }

LABEL_5:
  v8 = self->_page.m_ptr;
  if (state == WKMediaCaptureStateNone)
  {
    v15 = _Block_copy(v4);
    v16 = WTF::fastMalloc(0x10);
    *v16 = &unk_1F10F9038;
    v16[1] = v15;
    v17 = v16;
    WebKit::WebPageProxy::stopMediaCapture(v8, 1, &v17);
    v14 = v17;
    if (!v17)
    {
      goto LABEL_12;
    }

LABEL_14:
    (*(*v14 + 8))(v14);
    goto LABEL_12;
  }

  v9 = *(*(v8 + 4) + 1048);
  v10 = v9 | 2;
  if (state == WKMediaCaptureStateActive)
  {
    v9 &= ~2u;
  }

  if (state == WKMediaCaptureStateMuted)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = _Block_copy(v4);
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10F9060;
  v13[1] = v12;
  v17 = v13;
  WebKit::WebPageProxy::setMuted(v8, v11, 1, &v17);
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_12:
  _Block_release(0);
}

- (void)setCameraCaptureState:(WKMediaCaptureState)state completionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  m_ptr = self->_page.m_ptr;
  if (!m_ptr || *(m_ptr + 1426) != 1)
  {
    if (completionHandler)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  if (!v4)
  {
LABEL_4:
    v4 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3321888768;
    v18[2] = __53__WKWebView_setCameraCaptureState_completionHandler___block_invoke;
    v18[3] = &__block_descriptor_33_e8_32c67_ZTSKZ53__WKWebView_setCameraCaptureState_completionHandler__E4__17_e5_v8__0l;
  }

LABEL_5:
  v8 = self->_page.m_ptr;
  if (state == WKMediaCaptureStateNone)
  {
    v15 = _Block_copy(v4);
    v16 = WTF::fastMalloc(0x10);
    *v16 = &unk_1F10F9088;
    v16[1] = v15;
    v17 = v16;
    WebKit::WebPageProxy::stopMediaCapture(v8, 2, &v17);
    v14 = v17;
    if (!v17)
    {
      goto LABEL_12;
    }

LABEL_14:
    (*(*v14 + 8))(v14);
    goto LABEL_12;
  }

  v9 = *(*(v8 + 4) + 1048);
  v10 = v9 | 4;
  if (state == WKMediaCaptureStateActive)
  {
    v9 &= ~4u;
  }

  if (state == WKMediaCaptureStateMuted)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = _Block_copy(v4);
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10F90B0;
  v13[1] = v12;
  v17 = v13;
  WebKit::WebPageProxy::setMuted(v8, v11, 1, &v17);
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_12:
  _Block_release(0);
}

- (void)_evaluateJavaScript:(id)a3 asAsyncFunction:(BOOL)a4 withSourceURL:(id)a5 withArguments:(id)a6 forceUserGesture:(BOOL)a7 inFrame:(id)a8 inWorld:(id)a9 completionHandler:(id)a10
{
  v13 = a4;
  v70 = *MEMORY[0x1E69E9840];
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v16 = [a10 copy];
  LOBYTE(v65) = 0;
  v68 = 0;
  if (v13)
  {
    v55 = 0;
    v56 = 0;
    std::__optional_storage_base<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct[abi:sn200100]<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v65, &v55);
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v17);
  }

  v50 = a7;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v18 = [a6 countByEnumeratingWithState:&v61 objects:v69 count:16];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_35;
  }

  v20 = *v62;
  v48 = @"Key value must be NSString";
  v49 = v16;
  while (2)
  {
    v21 = 0;
    do
    {
      if (*v62 != v20)
      {
        objc_enumerationMutation(a6);
      }

      v18 = WTF::dynamic_objc_cast<NSString>(*(*(&v61 + 1) + 8 * v21));
      v22 = v18;
      if (!v18)
      {
        goto LABEL_26;
      }

      v23 = v18;
      v24 = [a6 objectForKey:v22];
      WebKit::JavaScriptEvaluationResult::extract(v24, v25, &v55);
      if ((v60 & 1) == 0)
      {

        v48 = @"Function argument values must be one of the following types, or contain only the following types: NSNumber, NSNull, NSDate, NSString, NSArray, and NSDictionary";
LABEL_26:
        if (!v16)
        {
          goto LABEL_35;
        }

        v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
        localizedDescriptionForErrorCode(WKErrorJavaScriptExceptionOccurred, v32, &v55);
        [v31 setObject:v55 forKey:*MEMORY[0x1E696A578]];
        v33 = v55;
        v55 = 0;
        if (v33)
        {
        }

        [v31 setObject:v48 forKey:@"WKJavaScriptExceptionMessage"];
        v34 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:4 userInfo:v31];
        WTF::RunLoop::mainSingleton(v34);
        v35 = v16;
        if (v34)
        {
          v36 = v34;
        }

        v37 = WTF::fastMalloc(0x18);
        *v37 = &unk_1F10F90D8;
        *(v37 + 1) = v16;
        *(v37 + 2) = v34;
        v55 = v37;
        WTF::RunLoop::dispatch();
        v39 = v55;
        v55 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
          if (!v34)
          {
LABEL_33:
            if (!v31)
            {
              goto LABEL_56;
            }

            goto LABEL_34;
          }
        }

        else if (!v34)
        {
          goto LABEL_33;
        }

        if (!v31)
        {
          goto LABEL_56;
        }

LABEL_34:

        goto LABEL_56;
      }

      if ((v68 & 1) == 0)
      {
        __break(1u);
      }

      MEMORY[0x19EB02040](&v53, v22);
      WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(v54, &v55);
      if (v67 == v66)
      {
        WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>(&v65, &v53);
      }

      else
      {
        v27 = (v65 + 136 * v67);
        v28 = v53;
        v53 = 0;
        *v27 = v28;
        WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult((v27 + 1), v54);
        ++v67;
      }

      WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v54, v26);
      v30 = v53;
      v53 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v29);
      }

      v16 = v49;
      if (v60)
      {
        WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(&v55, v29);
      }

      v21 = (v21 + 1);
    }

    while (v19 != v21);
    v18 = [a6 countByEnumeratingWithState:&v61 objects:v69 count:16];
    v19 = v18;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_35:
  if (a8)
  {
    v18 = [a8 _handle];
    if (v18 && (v18 = [a8 _handle], v18[3]))
    {
      v18 = [a8 _handle];
      a8 = v18[3];
      v40 = a8 != 0;
    }

    else
    {
      v40 = 0;
      a8 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  if (self->_dontResetTransientActivationAfterRunJavaScript)
  {
    shouldEvaluateJavaScriptWithoutTransientActivation = 0;
  }

  else
  {
    shouldEvaluateJavaScriptWithoutTransientActivation = WebKit::shouldEvaluateJavaScriptWithoutTransientActivation(v18);
  }

  v42 = self->_page.m_ptr;
  MEMORY[0x19EB02040](&v55, a3);
  LOBYTE(v56) = 0;
  MEMORY[0x19EB01DE0](&v57, a5);
  v58 = v13;
  std::__optional_move_base<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v59, &v65);
  v59[24] = v50;
  v59[25] = shouldEvaluateJavaScriptWithoutTransientActivation;
  CFRetain(*(a9 + 2));
  if (v16)
  {
    v43 = v16;
  }

  v44 = WTF::fastMalloc(0x10);
  *v44 = &unk_1F10F9100;
  *(v44 + 1) = v16;
  v53 = v44;
  WebKit::WebPageProxy::runJavaScriptInFrameInScriptWorld(v42, &v55, a8, v40, a9 + 8, v16 != 0, &v53);
  v45 = v53;
  v53 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  CFRelease(*(a9 + 2));
  if (v59[16] == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59, v38);
  }

  v46 = v57;
  v57 = 0;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, v38);
  }

  v47 = v55;
  v55 = 0;
  if (v47)
  {
    if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v38);
    }
  }

LABEL_56:
  if (v68 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v38);
    if (v16)
    {
LABEL_58:
    }
  }

  else if (v16)
  {
    goto LABEL_58;
  }
}

- (void)takeSnapshotWithConfiguration:(WKSnapshotConfiguration *)snapshotConfiguration completionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  kdebug_trace();
  if (snapshotConfiguration)
  {
    [(WKSnapshotConfiguration *)snapshotConfiguration rect];
    if (CGRectIsNull(v47))
    {
      [(WKWebView *)self bounds];
    }

    else
    {
      [(WKSnapshotConfiguration *)snapshotConfiguration rect];
    }

    v13 = v8;
    v15 = v9;
    v17 = v10;
    v19 = v11;
    [(NSNumber *)[(WKSnapshotConfiguration *)snapshotConfiguration snapshotWidth] doubleValue];
    if (v22 == 0.0)
    {
      v21 = v17;
    }

    else
    {
      v21 = v22;
    }
  }

  else
  {
    [(WKWebView *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(WKWebView *)self bounds];
    v21 = v20;
  }

  v23 = _Block_copy(completionHandler);
  v48.origin.x = v13;
  v48.origin.y = v15;
  v48.size.width = v17;
  v48.size.height = v19;
  IsEmpty = CGRectIsEmpty(v48);
  v25 = v21 == 0.0 || IsEmpty;
  if (v25 != 1)
  {
    v28 = [objc_opt_class() web_requiresCustomSnapshotting];
    if (v28)
    {
      [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
      v30 = v29;
    }

    else
    {
      v31 = self->_page.m_ptr;
      v32 = 824;
      if (*(v31 + 832))
      {
        v32 = 828;
      }

      v30 = *(v31 + v32);
    }

    if (!v28)
    {
      v21 = v21 * v30;
    }

    v33 = self;
    if (snapshotConfiguration)
    {
      v34 = [(WKSnapshotConfiguration *)snapshotConfiguration afterScreenUpdates];
    }

    else
    {
      v34 = 0;
    }

    v35 = self;
    v36 = _Block_copy(v23);
    if (!snapshotConfiguration || [(WKSnapshotConfiguration *)snapshotConfiguration afterScreenUpdates]) && (WTF::linkedOnOrAfterSDKWithBehavior())
    {
      v37 = self->_page.m_ptr;
      if ((*(v37 + 865) & 1) == 0 && *(v37 + 864) == 1 && *(v37 + 41))
      {
        v38 = _Block_copy(v23);
        v39 = self->_page.m_ptr;
        CFRetain(*(v39 + 1));
        v40 = WTF::fastMalloc(0x60);
        *v40 = &unk_1F10F9150;
        *(v40 + 8) = self;
        *(v40 + 16) = v34;
        *(v40 + 24) = v13;
        *(v40 + 32) = v15;
        *(v40 + 40) = v17;
        *(v40 + 48) = v19;
        *(v40 + 56) = v21;
        *(v40 + 64) = v30;
        *(v40 + 72) = v36;
        *(v40 + 80) = v38;
        *(v40 + 88) = v39;
        v44[0] = v40;
        WebKit::WebPageProxy::callAfterNextPresentationUpdate(v37, v44);
        v41 = v44[0];
        v44[0] = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }

        _Block_release(0);
        _Block_release(0);
        _Block_release(0);
        goto LABEL_42;
      }

      kdebug_trace();
      createNSError(WKErrorUnknown, 0, v44);
      (*(v23 + 2))(v23, 0, v44[0]);
      v43 = v44[0];
      v44[0] = 0;
      if (v43)
      {
      }
    }

    else
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3321888768;
      v44[2] = ___ZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__ENK4__23clEv_block_invoke;
      v44[3] = &__block_descriptor_48_e8_32c96_ZTSKZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__ENK4__23clEvEUlP7CGImageE__e18_v16__0__CGImage__8l;
      v42 = _Block_copy(v36);
      aBlock = _Block_copy(v42);
      v46 = v30;
      [(WKWebView *)self _snapshotRectAfterScreenUpdates:v34 rectInViewCoordinates:v44 intoImageOfWidth:v13 completionHandler:v15, v17, v19, v21];
      _Block_release(v42);
      _Block_release(aBlock);
    }

    _Block_release(v36);

LABEL_42:
    goto LABEL_43;
  }

  WTF::RunLoop::mainSingleton(IsEmpty);
  v26 = WTF::fastMalloc(0x10);
  *v26 = &unk_1F10F9128;
  v26[1] = v23;
  v44[0] = v26;
  WTF::RunLoop::dispatch();
  v27 = v44[0];
  v44[0] = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  _Block_release(0);
  v23 = 0;
LABEL_43:
  _Block_release(v23);
}

- (void)setAllowsBackForwardNavigationGestures:(BOOL)allowsBackForwardNavigationGestures
{
  v3 = allowsBackForwardNavigationGestures;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  if (self->_allowsBackForwardNavigationGestures != v3)
  {
    self->_allowsBackForwardNavigationGestures = v3;
    if (v3 && !self->_gestureController.m_ptr)
    {
      v6 = self->_page.m_ptr;
      v7 = WebKit::ViewGestureController::operator new(0x138, a2);
      v8 = WebKit::ViewGestureController::ViewGestureController(v7, v6);
      v9 = self->_gestureController.m_ptr;
      self->_gestureController.m_ptr = v8;
      if (v9)
      {
        WTF::RefCounted<WebKit::ViewGestureController>::deref(v9 + 4);
        v7 = self->_gestureController.m_ptr;
      }

      WebKit::ViewGestureController::installSwipeHandler(v7, &self->super, [(WKWebView *)self scrollView]);
      v10 = [(WKWebViewConfiguration *)self->_configuration.m_ptr _alternateWebViewForNavigationGestures];
      if (v10)
      {
        WebKit::ViewGestureController::setAlternateBackForwardListSourcePage(self->_gestureController.m_ptr, v10->_page.m_ptr);
      }
    }

    v11 = self->_gestureController.m_ptr;
    if (v11)
    {
      *(v11 + 60) = v3;
    }

    *(self->_page.m_ptr + 991) = v3;
  }
}

- (NSString)customUserAgent
{
  v2 = *(self->_page.m_ptr + 58);
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)setCustomUserAgent:(NSString *)customUserAgent
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  MEMORY[0x19EB02040](&v9, customUserAgent);
  WebKit::WebPageProxy::setCustomUserAgent(m_ptr, &v9, v5);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }
}

- (void)setAllowsLinkPreview:(BOOL)allowsLinkPreview
{
  v3 = allowsLinkPreview;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  if (self->_allowsLinkPreview != v3)
  {
    self->_allowsLinkPreview = v3;
    v6 = self->_contentView.m_ptr;
    if (v3)
    {
      [(WKContentView *)v6 _registerPreview];
    }

    else
    {
      [(WKContentView *)v6 _unregisterPreview];
    }

    v7 = self->_contentView.m_ptr;

    [(WKContentView *)v7 _didChangeLinkPreviewAvailability];
  }
}

- (void)setPageZoom:(CGFloat)pageZoom
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::setPageZoomFactor(m_ptr, pageZoom);
}

- (CGFloat)pageZoom
{
  m_ptr = self->_page.m_ptr;
  v3 = 752;
  if (*(m_ptr + 993))
  {
    v3 = 768;
  }

  return *(m_ptr + v3);
}

- (void)findString:(NSString *)string withConfiguration:(WKFindConfiguration *)configuration completionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  if ([(NSString *)string length])
  {
    v10 = self->_page.m_ptr;
    MEMORY[0x19EB02040](&v23, string);
    v11 = [(WKFindConfiguration *)configuration caseSensitive];
    v12 = [(WKFindConfiguration *)configuration backwards];
    v13 = [(WKFindConfiguration *)configuration wraps];
    v14 = v11 ^ 1;
    if (v12)
    {
      v14 = v11 ^ 1 | 8;
    }

    if (v13)
    {
      v15 = v14 | 0x10;
    }

    else
    {
      v15 = v14;
    }

    v16 = _Block_copy(completionHandler);
    v17 = WTF::fastMalloc(0x10);
    *v17 = &unk_1F10F91D8;
    v17[1] = v16;
    v22 = v17;
    WebKit::WebPageProxy::findString(v10, &v23, v15, 1, &v22);
    v18 = v22;
    v22 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    _Block_release(0);
    v20 = v23;
    v23 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v19);
      }
    }
  }

  else
  {
    v21 = [[WKFindResult alloc] _initWithMatchFound:0];
    (*(completionHandler + 2))(completionHandler);
    if (v21)
    {
    }
  }
}

+ (BOOL)handlesURLScheme:(NSString *)urlScheme
{
  MEMORY[0x19EB02040](&v8, urlScheme);
  isBuiltinScheme = WebCore::LegacySchemeRegistry::isBuiltinScheme(&v8, v3);
  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return isBuiltinScheme;
}

- (void)setMediaType:(NSString *)mediaType
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  MEMORY[0x19EB02040](&v11, mediaType);
  v6 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v7 = *(m_ptr + 167);
  *(m_ptr + 167) = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v12 = &v11;
  WebKit::WebPageProxy::send<Messages::WebPage::SetOverriddenMediaType>(m_ptr, &v12);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }
}

- (NSString)mediaType
{
  v2 = *(self->_page.m_ptr + 167);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v7, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v2 = v7;
    v7 = 0;
    if (v2)
    {
      v4 = v2;
      v5 = v7;
      v7 = 0;
      if (v5)
      {
      }
    }
  }

  return v2;
}

- (id)interactionState
{
  m_ptr = self->_page.m_ptr;
  v10 = 0;
  WebKit::WebPageProxy::sessionState(m_ptr, &v10, v11);
  WebKit::encodeSessionState(v11, &v13);
  v4 = v13;
  v13 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v13;
    v13 = 0;
    if (v6)
    {
    }
  }

  v7 = v12;
  v12 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v3);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return v4;
}

- (void)setInteractionState:(id)interactionState
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    BYTE4(v18) = 0;
    v16.super.isa = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    WTF::URL::URL(&v19);
    v22 = 1;
    if (WebKit::decodeSessionState(interactionState, &v16, v6))
    {
      v8 = self->_page.m_ptr;
      WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v14, &v16);
      *&v14.backForwardListState.currentIndex.var0.__null_state_ = v18;
      v9 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v14.provisionalURL.m_string.m_impl.m_ptr = v9;
      *(&v14.provisionalURL + 8) = v20;
      *&v14.provisionalURL.m_hostEnd = v21;
      v14.isAppInitiated = v22;
      WebKit::WebPageProxy::restoreFromSessionState(v8, &v14, 1, &v15);
      v11 = v15;
      v15 = 0;
      if (v11)
      {
        CFRelease(*(v11 + 8));
      }

      v12 = v14.provisionalURL.m_string.m_impl.m_ptr;
      v14.provisionalURL.m_string.m_impl.m_ptr = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v10);
    }

    v13 = v19;
    v19 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }
    }

    WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v7);
  }
}

- (void)setInspectable:(BOOL)inspectable
{
  v3 = inspectable;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::setInspectable(m_ptr, v3);
}

- (void)setFindInteractionEnabled:(BOOL)findInteractionEnabled
{
  if (self->_findInteractionEnabled != findInteractionEnabled)
  {
    v3 = findInteractionEnabled;
    self->_findInteractionEnabled = findInteractionEnabled;
    m_ptr = self->_findInteraction.m_ptr;
    if (v3)
    {
      if (!m_ptr)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCA08]) initWithSessionDelegate:self];
        v7 = self->_findInteraction.m_ptr;
        self->_findInteraction.m_ptr = v6;
        if (v7)
        {

          m_ptr = self->_findInteraction.m_ptr;
        }

        else
        {
          m_ptr = v6;
        }
      }

      [(WKWebView *)self addInteraction:m_ptr];
    }

    else
    {
      [(WKWebView *)self removeInteraction:m_ptr];
      v8 = self->_findInteraction.m_ptr;
      self->_findInteraction.m_ptr = 0;
      if (v8)
      {
      }
    }
  }
}

- (void)_showWarningView:(const void *)a3 completionHandler:(void *)a4
{
  v7 = [_WKWarningView alloc];
  [(WKWebView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  location = 0;
  objc_initWeak(&location, self);
  v16 = *a4;
  *a4 = 0;
  v24 = v16;
  v17 = WTF::fastMalloc(0x18);
  *v17 = &unk_1F10F9200;
  *(v17 + 8) = 0;
  objc_moveWeak((v17 + 8), &location);
  v18 = v24;
  v24 = 0;
  v25 = v17;
  *(v17 + 16) = v18;
  v19 = [(_WKWarningView *)v7 initWithFrame:a3 browsingWarning:&v25 completionHandler:v9, v11, v13, v15];
  m_ptr = self->_warningView.m_ptr;
  self->_warningView.m_ptr = v19;
  if (m_ptr)
  {
  }

  v21 = v25;
  v25 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v24;
  v24 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  objc_destroyWeak(&location);
  [(WKWebView *)self addSubview:self->_warningView.m_ptr];
}

- (void)_clearWarningView
{
  m_ptr = self->_warningView.m_ptr;
  self->_warningView.m_ptr = 0;
  v3 = m_ptr;
  [(_WKWarningView *)m_ptr removeFromSuperview];
  if (v3)
  {
  }
}

- (void)_clearWarningViewIfForMainFrameNavigation
{
  if ([(_WKWarningView *)self->_warningView.m_ptr forMainFrameNavigation])
  {

    [(WKWebView *)self _clearWarningView];
  }
}

- (void)_internalDoAfterNextPresentationUpdate:(id)a3 withoutWaitingForPainting:(BOOL)a4 withoutWaitingForAnimatedResize:(BOOL)a5
{
  v6 = a4;
  v9 = [(WKWebView *)self usesStandardContentView];
  if (v9)
  {
    if (v6)
    {
      *(self->_page.m_ptr + 722) = 1;
      v10 = _Block_copy(a3);
      v11 = self == 0;
    }

    else
    {
      v10 = _Block_copy(a3);
      if (!self)
      {
        v11 = 1;
        goto LABEL_10;
      }

      v11 = 0;
    }

    v16 = self;
LABEL_10:
    m_ptr = self->_page.m_ptr;
    v18 = _Block_copy(v10);
    if (!v11)
    {
      v19 = self;
    }

    v20 = WTF::fastMalloc(0x20);
    *v20 = &unk_1F10F9250;
    *(v20 + 8) = v18;
    *(v20 + 16) = a5;
    *(v20 + 24) = self;
    v22 = v20;
    WebKit::WebPageProxy::callAfterNextPresentationUpdate(m_ptr, &v22);
    v21 = v22;
    v22 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    _Block_release(0);
    if (!v11)
    {
    }

    v15 = v10;
    goto LABEL_17;
  }

  WTF::RunLoop::mainSingleton(v9);
  v12 = _Block_copy(a3);
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10F9228;
  v13[1] = v12;
  v22 = v13;
  WTF::RunLoop::dispatch();
  v14 = v22;
  v22 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = 0;
LABEL_17:
  _Block_release(v15);
}

- (void)_doAfterNextVisibleContentRectAndPresentationUpdate:(id)a3
{
  if (self)
  {
    v5 = self;
  }

  v6 = _Block_copy(a3);
  v7 = malloc_type_malloc(0x30uLL, 0x10E0040B46A7B6EuLL);
  *v7 = MEMORY[0x1E69E9818];
  v7[1] = 50331650;
  v7[2] = WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView _doAfterNextVisibleContentRectAndPresentationUpdate:]::$_0>([WKWebView _doAfterNextVisibleContentRectAndPresentationUpdate:]::$_0)::{lambda(void *)#1}::__invoke;
  v7[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView _doAfterNextVisibleContentRectAndPresentationUpdate:]::$_0>([WKWebView _doAfterNextVisibleContentRectAndPresentationUpdate:]::$_0)::descriptor;
  v7[4] = self;
  v7[5] = v6;
  _Block_release(0);
  [(WKWebView *)self _doAfterNextVisibleContentRectUpdate:v7];
  _Block_release(v7);

  _Block_release(0);
}

- (void)_recalculateViewportSizesWithMinimumViewportInset:(UIEdgeInsets)a3 maximumViewportInset:(UIEdgeInsets)a4 throwOnInvalidInput:(BOOL)a5
{
  v5 = a5;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = a3.right;
  v11 = a3.bottom;
  v12 = a3.left;
  v13 = a3.top;
  [(WKWebView *)self frame];
  v31[1] = v15;
  v32.width = v16;
  v32.height = v17;
  WebCore::FloatSize::FloatSize(&v33, &v32);
  [(WKWebView *)self _updateFixedColorExtensionViews];
  v18 = right + left + 0.0;
  v19 = bottom + top + 0.0;
  v21 = *(&v33 + 1);
  v20 = *&v33;
  *v31 = *&v33 - v18;
  *(v31 + 1) = *(&v33 + 1) - v19;
  if ((*&v33 - v18) <= 0.0 || (*(&v33 + 1) - v19) <= 0.0)
  {
    if (v18 > 0.0 && v19 > 0.0)
    {
      if (v5)
      {
        v22 = MEMORY[0x1E695DF30];
        v23 = *MEMORY[0x1E695D940];
        v24 = @"maximumViewportInset cannot be larger than frame";
LABEL_16:
        [v22 raise:v23 format:v24];
        return;
      }

      v25 = qword_1ED6414B8;
      if (os_log_type_enabled(qword_1ED6414B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_19D52D000, v25, OS_LOG_TYPE_ERROR, "maximumViewportInset cannot be larger than frame", buf, 2u);
      }
    }

    v31[0] = v33;
    v21 = *(&v33 + 1);
    v20 = *&v33;
  }

  v26 = v10 + v12 + 0.0;
  v27 = v11 + v13 + 0.0;
  *buf = v20 - v26;
  *&buf[4] = v21 - v27;
  if ((v20 - v26) <= 0.0 || (v21 - v27) <= 0.0)
  {
    if (v26 > 0.0 && v27 > 0.0)
    {
      if (v5)
      {
        v22 = MEMORY[0x1E695DF30];
        v23 = *MEMORY[0x1E695D940];
        v24 = @"minimumViewportInset cannot be larger than frame";
        goto LABEL_16;
      }

      v28 = qword_1ED6414B8;
      if (os_log_type_enabled(qword_1ED6414B8, OS_LOG_TYPE_ERROR))
      {
        *v29 = 0;
        _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "minimumViewportInset cannot be larger than frame", v29, 2u);
      }
    }

    *buf = v33;
  }

  if (!self->_overriddenLayoutParameters.__engaged_)
  {
    WebKit::WebPageProxy::setMinimumUnobscuredSize(self->_page.m_ptr, v31);
    WebKit::WebPageProxy::setMaximumUnobscuredSize(self->_page.m_ptr, buf);
  }
}

- (void)_didInsertAttachment:(void *)a3 withSource:(id)a4
{
  v7 = [(WKWebView *)self UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = *(a3 + 1);
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {

      [v7 _webView:self didInsertAttachment:v8 withSource:a4];
    }
  }
}

- (void)_didRemoveAttachment:(void *)a3
{
  v5 = [(WKWebView *)self UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = *(a3 + 1);
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {

      [v5 _webView:self didRemoveAttachment:v6];
    }
  }
}

- (void)_didInvalidateDataForAttachment:(void *)a3
{
  v5 = [(WKWebView *)self UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = *(a3 + 1);
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {

      [v5 _webView:self didInvalidateDataForAttachment:v6];
    }
  }
}

- (void)_storeAppHighlight:(const void *)a3
{
  v5 = [(WKWebView *)self _appHighlightDelegate];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return;
  }

  if (*(a3 + 16) == 1)
  {
    v7 = *(a3 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_1F1147748;
      v10 = &stru_1F1147748;
    }

    v9 = v17;
  }

  else
  {
    v9 = 0;
  }

  v11 = [_WKAppHighlight alloc];
  v12 = *a3;
  atomic_fetch_add((*a3 + 8), 1u);
  WebCore::FragmentedSharedBuffer::makeContiguous(&v16, v12);
  WebCore::SharedBuffer::createNSData(&v17, v16);
  v13 = [(_WKAppHighlight *)v11 initWithHighlight:v17 text:v9 image:0];
  v14 = v17;
  v17 = 0;
  if (v14)
  {
  }

  v15 = v16;
  v16 = 0;
  if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15 + 2);
    (*(*v15 + 8))(v15);
    if (v12)
    {
LABEL_15:
      if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12 + 2);
        (*(*v12 + 8))(v12);
      }
    }
  }

  else if (v12)
  {
    goto LABEL_15;
  }

  if (objc_opt_respondsToSelector())
  {
    [(_WKAppHighlightDelegate *)v6 _webView:self storeAppHighlight:v13 inNewGroup:*(a3 + 24) requestOriginatedInApp:*(a3 + 25), v16, v17];
  }

  if (v13)
  {
  }

  if (v9)
  {
  }
}

- (OpaqueWKPage)_pageForTesting
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    return *(m_ptr + 1);
  }

  else
  {
    return 0;
  }
}

- (RefPtr<WebKit::WebPageProxy,)_protectedPage
{
  v3 = v2;
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    self = CFRetain(*(m_ptr + 1));
  }

  *v3 = m_ptr;
  return self;
}

- (void)createPDFWithConfiguration:(WKPDFConfiguration *)pdfConfiguration completionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v8 = *(m_ptr + 53);
  if (v8)
  {
    v9 = *(v8 + 288);
    v24[0] = 0;
    v25 = 0;
    if (pdfConfiguration)
    {
      [(WKPDFConfiguration *)pdfConfiguration rect];
      if (!CGRectIsNull(v26))
      {
        [(WKPDFConfiguration *)pdfConfiguration rect];
        v23.origin.x = v10;
        v23.origin.y = v11;
        v23.size.width = v12;
        v23.size.height = v13;
        WebCore::FloatRect::FloatRect(v24, &v23);
        v25 = 1;
      }

      pdfConfiguration = [(WKPDFConfiguration *)pdfConfiguration allowTransparentBackground];
      m_ptr = self->_page.m_ptr;
    }

    v14 = *(m_ptr + 46);
    CFRetain(*(v14 + 8));
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::remoteSnapshottingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::remoteSnapshottingEnabledKey(void)::key = WebKit::WebPreferencesKey::remoteSnapshottingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey((v14 + 40), &WebKit::WebPreferencesKey::remoteSnapshottingEnabledKey(void)::key, v15))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      if (WebKit::WebPreferencesStore::getBoolValueForKey((v14 + 40), &WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key, v16))
      {
        v17 = WebKit::WebPageProxy::drawRemoteToPDF;
      }

      else
      {
        v17 = WebKit::WebPageProxy::drawToPDF;
      }
    }

    else
    {
      v17 = WebKit::WebPageProxy::drawToPDF;
    }

    v19 = self->_page.m_ptr;
    v20 = _Block_copy(completionHandler);
    v21 = WTF::fastMalloc(0x10);
    *v21 = &unk_1F10F92A0;
    v21[1] = v20;
    *&v23.origin.x = v21;
    v17(v19, v9, v24, pdfConfiguration, &v23);
    x = v23.origin.x;
    v23.origin.x = 0.0;
    if (x != 0.0)
    {
      (*(**&x + 8))(COERCE_CGFLOAT(*&x));
    }

    _Block_release(0);
    CFRelease(*(v14 + 8));
  }

  else
  {
    createNSError(WKErrorUnknown, 0, &v23);
    (*(completionHandler + 2))(completionHandler, 0, *&v23.origin.x);
    v18 = v23.origin.x;
    v23.origin.x = 0.0;
    if (v18 != 0.0)
    {
    }
  }
}

- (void)createWebArchiveDataWithCompletionHandler:(void *)completionHandler
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(completionHandler);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F92C8;
  v6[1] = v5;
  v9 = v6;
  WebKit::WebPageProxy::getWebArchive(m_ptr, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (void)_didChangeEditorState
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(self->_page.m_ptr + 4);
  v4 = *(v3 + 281);
  v5 = (*(v3 + 282) & 1) == 0;
  v6 = 1;
  if (!v5)
  {
    v6 = 2;
  }

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (self->_selectionAttributes != v7)
  {
    v8 = NSStringFromSelector(sel__selectionAttributes);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    [(WKWebView *)self willChangeValueForKey:v9];
    self->_selectionAttributes = v7;
    [(WKWebView *)self didChangeValueForKey:v9];
    if (v9)
    {
    }
  }

  v11 = [(WKWebView *)self UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = *(self->_page.m_ptr + 4);
    if (v12[528] == 1)
    {
      v29 = MEMORY[0x1E695E118];
      v13 = v12[304];
      v28[0] = @"post-layout-data";
      v28[1] = @"bold";
      v14 = vceqz_s32(vand_s8(vdup_n_s32(v13), 0x200000001));
      v15.i64[0] = v14.i32[0];
      v15.i64[1] = v14.i32[1];
      v16 = MEMORY[0x1E695E110];
      v30 = vbslq_s8(v15, vdupq_n_s64(MEMORY[0x1E695E110]), vdupq_n_s64(MEMORY[0x1E695E118]));
      v28[2] = @"italic";
      v28[3] = @"underline";
      if ((v13 & 4) != 0)
      {
        v16 = MEMORY[0x1E695E118];
      }

      v31 = v16;
      v28[4] = @"text-alignment";
      if ((v12[320] - 1) > 3u)
      {
        v17 = 4;
      }

      else
      {
        v17 = qword_19E703538[(v12[320] - 1)];
      }

      v32 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
      v28[5] = @"text-color";
      WebCore::serializationForCSS(&v26, (v12 + 328), v19);
      v20 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v27, v20);
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v21);
        }
      }

      else
      {
        v27 = &stru_1F1147748;
        v22 = &stru_1F1147748;
      }

      v33 = v27;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:v28 count:6];
      v24 = v27;
      v27 = 0;
      if (v24)
      {
      }

      v25 = v26;
      v26 = 0;
      if (v25)
      {
        if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v23);
        }
      }
    }

    else
    {
      v18 = &unk_1F1184DF0;
    }

    [v11 _webView:self editorStateDidChange:v18];
  }
}

- (WKNavigation)loadSimulatedRequest:(NSURLRequest *)request response:(NSURLResponse *)response responseData:(NSData *)data
{
  v26 = data;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  MEMORY[0x19EB06210](v23, request);
  WebCore::ResourceResponse::ResourceResponse(v21, response);
  WebCore::SharedBuffer::create<NSData *&>(&v26, v8, &v20);
  WebKit::WebPageProxy::loadSimulatedRequest(m_ptr, v23, v21, &v20, &v25);
  v10 = v25;
  if (v25)
  {
    v25 = 0;
    v11 = *(v10 + 8);
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v12 = v11;
      CFRelease(*(v10 + 8));
      v13 = v11;
    }

    else
    {
      CFRelease(0);
    }

    v14 = v25;
    v25 = 0;
    if (v14)
    {
      CFRelease(*(v14 + 8));
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = v20;
  v20 = 0;
  if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15 + 2);
    (*(*v15 + 8))(v15);
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v21, v9);
  v17 = v24;
  v24 = 0;
  if (v17)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v23);
  return v11;
}

- (WKNavigation)loadSimulatedRequest:(NSURLRequest *)request withResponse:(NSURLResponse *)response responseData:(NSData *)data
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  return [(WKWebView *)self loadSimulatedRequest:request response:response responseData:data];
}

- (WKNavigation)loadSimulatedRequest:(NSURLRequest *)request responseHTMLString:(NSString *)string
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v8 = [(NSString *)string dataUsingEncoding:4];
  v9 = [objc_alloc(MEMORY[0x1E695AC70]) initWithURL:-[NSURLRequest URL](request MIMEType:"URL") expectedContentLength:@"text/html" textEncodingName:{-[NSString length](string, "length"), @"UTF-8"}];
  v10 = [(WKWebView *)self loadSimulatedRequest:request response:v9 responseData:v8];
  if (v9)
  {
  }

  return v10;
}

- (WKNavigation)loadSimulatedRequest:(NSURLRequest *)request withResponseHTMLString:(NSString *)string
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  return [(WKWebView *)self loadSimulatedRequest:request responseHTMLString:string];
}

- (WKNavigation)loadFileRequest:(NSURLRequest *)request allowingReadAccessToURL:(NSURL *)readAccessURL
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v8 = [(NSURLRequest *)request URL];
  v9 = [(NSURL *)v8 isFileURL];
  v10 = MEMORY[0x1E695D940];
  if (!v9)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", v8}];
  }

  if (![(NSURL *)readAccessURL isFileURL])
  {
    [MEMORY[0x1E695DF30] raise:*v10 format:{@"%@ is not a file URL", readAccessURL}];
  }

  v11 = [(NSURLRequest *)request attribution];
  v12 = self->_page.m_ptr;
  MEMORY[0x19EB02040](&v23, [(NSURL *)v8 absoluteString]);
  MEMORY[0x19EB02040](&v22, [(NSURL *)readAccessURL absoluteString]);
  WebKit::WebPageProxy::loadFile(v12, &v23, &v22, 0, v11 == NSURLRequestAttributionDeveloper, &v24);
  v14 = v24;
  if (v24)
  {
    v24 = 0;
    v15 = *(v14 + 8);
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v16 = v15;
      CFRelease(*(v14 + 8));
      v17 = v15;
    }

    else
    {
      CFRelease(0);
    }

    v18 = v24;
    v24 = 0;
    if (v18)
    {
      CFRelease(*(v18 + 8));
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = v22;
  v22 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v13);
  }

  v20 = v23;
  v23 = 0;
  if (v20)
  {
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v13);
    }
  }

  return v15;
}

- (UIColor)themeColor
{
  v2 = *(*(self->_page.m_ptr + 4) + 1968);
  v9 = v2;
  if ((v2 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v2 & 0xFFFFFFFFFFFFLL), 1u);
  }

  WebCore::cocoaColorOrNil(&v10, &v9, a2);
  v4 = v10;
  v10 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v10;
    v10 = 0;
    if (v6)
    {
    }
  }

  if ((v9 & 0x8000000000000) != 0)
  {
    v8 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, v3);
    }
  }

  return v4;
}

- (void)setUnderPageBackgroundColor:(UIColor *)underPageBackgroundColor
{
  m_ptr = self->_page.m_ptr;
  v4 = [(UIColor *)underPageBackgroundColor CGColor];
  v6 = WebCore::roundAndClampToSRGBALossy(v4, v5);
  v9 = (bswap32(v6) | 0x1104000000000000) & (v6 << 31 >> 63);
  WebKit::WebPageProxy::setUnderPageBackgroundColorOverride(m_ptr, &v9);
  if ((v9 & 0x8000000000000) != 0)
  {
    v8 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, v7);
    }
  }
}

- (WKFullscreenState)fullscreenState
{
  v2 = *(self->_page.m_ptr + 63);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 20);
  *(v2 + 20) = v3 + 1;
  if (*(v2 + 40) - 1 < 3)
  {
    v4 = (*(v2 + 40) - 1) + 1;
  }

  else
  {
    v4 = WKFullscreenStateNotInFullscreen;
  }

  if (v3)
  {
    *(v2 + 20) = v3;
  }

  else
  {
    (*(*v2 + 24))(v2, a2);
  }

  return v4;
}

- (void)setMinimumViewportInset:(UIEdgeInsets)minimumViewportInset maximumViewportInset:(UIEdgeInsets)maximumViewportInset
{
  right = maximumViewportInset.right;
  bottom = maximumViewportInset.bottom;
  left = maximumViewportInset.left;
  top = maximumViewportInset.top;
  v8 = minimumViewportInset.right;
  v9 = minimumViewportInset.bottom;
  v10 = minimumViewportInset.left;
  v11 = minimumViewportInset.top;
  v13 = MEMORY[0x1E695D940];
  if (minimumViewportInset.top < 0.0 || minimumViewportInset.left < 0.0 || minimumViewportInset.bottom < 0.0 || minimumViewportInset.right < 0.0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"minimumViewportInset cannot be negative"];
  }

  if (top < 0.0 || left < 0.0 || bottom < 0.0 || right < 0.0)
  {
    [MEMORY[0x1E695DF30] raise:*v13 format:@"maximumViewportInset cannot be negative"];
  }

  v14 = v8 + v10;
  if (v11 + v9 > top + bottom || v14 > right + left)
  {
    [MEMORY[0x1E695DF30] raise:*v13 format:{@"minimumViewportInset cannot be larger than maximumViewportInset", v14}];
  }

  [(WKWebView *)self _recalculateViewportSizesWithMinimumViewportInset:1 maximumViewportInset:v11 throwOnInvalidInput:v10, v9, v8, top, left, bottom, right];
  self->_minimumViewportInset.top = v11;
  self->_minimumViewportInset.left = v10;
  self->_minimumViewportInset.bottom = v9;
  self->_minimumViewportInset.right = v8;
  self->_maximumViewportInset.top = top;
  self->_maximumViewportInset.left = left;
  self->_maximumViewportInset.bottom = bottom;
  self->_maximumViewportInset.right = right;
}

- (void)_setNeedsScrollGeometryUpdates:(BOOL)a3
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1428) != a3)
  {
    v7 = v3;
    v8 = v4;
    *(m_ptr + 1428) = a3;
    v6 = a3;
    WebKit::WebPageProxy::send<Messages::WebPage::SetNeedsScrollGeometryUpdates>(m_ptr, &v6);
  }
}

- (unint64_t)allowedWritingToolsResultOptions
{
  v2 = *(self->_page.m_ptr + 4);
  if (*(v2 + 285) == 1 && *(v2 + 286) != 1)
  {
    return 1;
  }

  else
  {
    return 15;
  }
}

- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  WebKit::convertToWebSession(a3, v14);
  if (a3)
  {
    v7 = a3;
    m_ptr = self->_activeWritingToolsSession.m_ptr;
    self->_activeWritingToolsSession.m_ptr = a3;
    if (m_ptr)
    {
    }

    WebKit::WebPageProxy::setWritingToolsActive(self->_page.m_ptr, 1);
  }

  v9 = self->_page.m_ptr;
  v10 = _Block_copy(a4);
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10F92F0;
  v11[1] = v10;
  v13 = v11;
  WebKit::WebPageProxy::willBeginWritingToolsSession(v9, v14, &v13);
  v12 = v13;
  v13 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
}

- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  WebKit::convertToWebSession(a3, v29);
  if (v29[32] == 1)
  {
    v23 = 0;
    v24 = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [a4 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v7)
    {
      v8 = *v20;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(a4);
        }

        WebKit::convertToWebContext(*(*(&v19 + 1) + 8 * v9), &v25);
        if ((v27 & 1) == 0)
        {
          goto LABEL_25;
        }

        if (HIDWORD(v24) == v24)
        {
          v11 = WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v23, HIDWORD(v24) + 1, &v25);
          v12 = (v23 + 80 * HIDWORD(v24));
          *v12 = *v11;
          MEMORY[0x19EB065B0](v12 + 1, v11 + 1);
          *(v12 + 56) = *(v11 + 56);
        }

        else
        {
          v13 = (v23 + 80 * HIDWORD(v24));
          *v13 = v25;
          MEMORY[0x19EB065B0](v13 + 1, v26);
          *(v13 + 56) = *&v26[40];
        }

        ++HIDWORD(v24);
        if (v27 == 1)
        {
          MEMORY[0x19EB065D0](v26);
        }

        if (v7 == ++v9)
        {
          v7 = [a4 countByEnumeratingWithState:&v19 objects:v28 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    WebKit::WebPageProxy::didBeginWritingToolsSession(self->_page.m_ptr, v29, &v23);
    if ([a3 type] == 1)
    {
      v14 = [objc_alloc(WebKit::getWKIntelligenceReplacementTextEffectCoordinatorClass(1)) initWithDelegate:self];
    }

    else
    {
      if ([a3 type] != 2 || objc_msgSend(a3, "compositionSessionType") != 11)
      {
        m_ptr = self->_intelligenceTextEffectCoordinator.m_ptr;
        self->_intelligenceTextEffectCoordinator.m_ptr = 0;
        if (!m_ptr)
        {
          v15 = 0;
          goto LABEL_24;
        }

LABEL_23:

        v15 = self->_intelligenceTextEffectCoordinator.m_ptr;
LABEL_24:
        v17 = [objc_msgSend(a4 "firstObject")];
        [(WKIntelligenceTextEffectCoordinating *)v15 startAnimationForRange:v17 completion:v18, &__block_literal_global_144];
LABEL_25:
        WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v10);
        return;
      }

      v14 = [objc_alloc(WebKit::getWKIntelligenceSmartReplyTextEffectCoordinatorClass(0xB)) initWithDelegate:self];
    }

    v15 = v14;
    m_ptr = self->_intelligenceTextEffectCoordinator.m_ptr;
    self->_intelligenceTextEffectCoordinator.m_ptr = v14;
    if (!m_ptr)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }
}

- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v7 = a7;
  length = a5.length;
  location = a5.location;
  v75[1] = *MEMORY[0x1E69E9840];
  WebKit::convertToWebSession(a3, v64);
  if (v65 == 1)
  {
    WebKit::convertToWebContext(a6, v61);
    if (v63 == 1)
    {
      v43 = length;
      v48 = 0;
      v49 = 0;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v13 = [a4 countByEnumeratingWithState:&v44 objects:v60 count:16];
      v14 = v13;
      if (v13)
      {
        v15 = *v45;
        do
        {
          v16 = 0;
          do
          {
            if (*v45 != v15)
            {
              objc_enumerationMutation(a4);
            }

            v17 = *(*(&v44 + 1) + 8 * v16);
            WebKit::convertToWebTextSuggestion(v17, &v66);
            if (v69)
            {
              v18 = HIDWORD(v49);
              if (HIDWORD(v49) == v49)
              {
                v19 = WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v48, HIDWORD(v49) + 1, &v66);
                v18 = HIDWORD(v49);
                v20 = v48 + 48 * HIDWORD(v49);
                v21 = *(v19 + 16);
                *v20 = *v19;
                *(v20 + 16) = v21;
                v22 = *(v19 + 32);
                if (v22)
                {
                  atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
                  v18 = HIDWORD(v49);
                }

                *(v20 + 32) = v22;
                v23 = (v19 + 40);
              }

              else
              {
                v20 = v48 + 48 * HIDWORD(v49);
                v24 = v67;
                *v20 = v66;
                *(v20 + 16) = v24;
                v25 = v68[0];
                if (v68[0])
                {
                  atomic_fetch_add_explicit(v68[0], 2u, memory_order_relaxed);
                  v18 = HIDWORD(v49);
                }

                *(v20 + 32) = v25;
                v23 = &v68[1];
              }

              *(v20 + 40) = *v23;
              HIDWORD(v49) = v18 + 1;
              -[NSMapTable setObject:forKey:](self->_writingToolsTextSuggestions.m_ptr, "setObject:forKey:", v17, [v17 uuid]);
              if (v69)
              {
                v27 = v68[0];
                v68[0] = 0;
                if (v27)
                {
                  if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v27, v26);
                  }
                }
              }
            }

            v16 = (v16 + 1);
          }

          while (v14 != v16);
          v13 = [a4 countByEnumeratingWithState:&v44 objects:v60 count:16];
          v14 = v13;
        }

        while (v13);
      }

      v28 = [WebKit::getWKIntelligenceReplacementTextEffectCoordinatorClass(v13) characterDeltaForReceivedSuggestions:a4];
      v50 = v64[0];
      v51 = v64[1];
      LOBYTE(v52) = v65;
      v53 = 0;
      LODWORD(v54) = 0;
      HIDWORD(v54) = HIDWORD(v49);
      if (HIDWORD(v49))
      {
        if (HIDWORD(v49) >= 0x5555556)
        {
          __break(0xC471u);
          return;
        }

        v29 = 48 * HIDWORD(v49);
        v30 = WTF::fastMalloc((48 * HIDWORD(v49)));
        LODWORD(v54) = v29 / 0x30;
        v53 = v30;
        if (HIDWORD(v49))
        {
          v31 = v48;
          v32 = v48 + 48 * HIDWORD(v49);
          do
          {
            v33 = *(v31 + 16);
            *v30 = *v31;
            *(v30 + 16) = v33;
            v34 = *(v31 + 32);
            if (v34)
            {
              atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
            }

            *(v30 + 32) = v34;
            *(v30 + 40) = *(v31 + 40);
            v30 += 48;
            v31 += 48;
          }

          while (v31 != v32);
        }
      }

      *&v55 = location;
      *(&v55 + 1) = v43;
      std::__optional_copy_base<WebCore::WritingTools::Context,false>::__optional_copy_base[abi:sn200100](v56, v61);
      v58 = v7;
      v59 = 0;
      objc_initWeak(&v59, self);
      v66 = v50;
      v67 = v51;
      *v68 = v52;
      v69 = v53;
      v35 = v54;
      v53 = 0;
      v54 = 0;
      v70 = v35;
      v71 = v55;
      std::__optional_move_base<WebCore::WritingTools::Context,false>::__optional_move_base[abi:sn200100](v72, v56);
      v74 = v58;
      v75[0] = 0;
      objc_moveWeak(v75, &v59);
      v36 = malloc_type_malloc(0xE0uLL, 0x10E2040481152BBuLL);
      *v36 = MEMORY[0x1E69E9818];
      *(v36 + 1) = 50331650;
      *(v36 + 2) = WTF::BlockPtr<void ()(void({block_pointer})(void))>::fromCallable<[WKWebView proofreadingSession:didReceiveSuggestions:processedRange:inContext:finished:]::$_1>([WKWebView proofreadingSession:didReceiveSuggestions:processedRange:inContext:finished:]::$_1)::{lambda(void *,void({block_pointer})(void))#1}::__invoke;
      *(v36 + 3) = &WTF::BlockPtr<void ()(void({block_pointer})(void))>::fromCallable<[WKWebView proofreadingSession:didReceiveSuggestions:processedRange:inContext:finished:]::$_1>([WKWebView proofreadingSession:didReceiveSuggestions:processedRange:inContext:finished:]::$_1)::descriptor;
      v37 = v67;
      *(v36 + 2) = v66;
      *(v36 + 3) = v37;
      *(v36 + 4) = *v68;
      *(v36 + 10) = v69;
      v69 = 0;
      v38 = v70;
      v70 = 0;
      *(v36 + 11) = v38;
      *(v36 + 6) = v71;
      std::__optional_move_base<WebCore::WritingTools::Context,false>::__optional_move_base[abi:sn200100](v36 + 112, v72);
      v39 = v74;
      *(v36 + 27) = 0;
      *(v36 + 208) = v39;
      objc_moveWeak(v36 + 27, v75);
      objc_destroyWeak(v75);
      if (v73[64] == 1)
      {
        MEMORY[0x19EB065D0](v73);
      }

      WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v40);
      objc_destroyWeak(&v59);
      if (v57[64] == 1)
      {
        MEMORY[0x19EB065D0](v57);
      }

      WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v41);
      [(WKIntelligenceTextEffectCoordinating *)self->_intelligenceTextEffectCoordinator.m_ptr requestReplacementWithProcessedRange:location finished:v43 characterDelta:v7 operation:v28 completion:v36, &__block_literal_global_146];
      _Block_release(v36);
      WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v42);
      if (v63)
      {
        MEMORY[0x19EB065D0](&v62);
      }
    }
  }
}

- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  WebKit::convertToWebSession(a3, v20);
  if (v20[32] == 1)
  {
    WebKit::convertToWebContext(a6, v17);
    if (v19 == 1)
    {
      v10 = a4 >= 5 ? 3 : 0x302030100uLL >> (8 * a4);
      v11 = [(NSMapTable *)self->_writingToolsTextSuggestions.m_ptr objectForKey:a5];
      if (v11)
      {
        WebKit::convertToWebTextSuggestion(v11, v14);
        if (v16)
        {
          if ((v19 & 1) == 0)
          {
            __break(1u);
          }

          WebKit::WebPageProxy::proofreadingSessionDidUpdateStateForSuggestion(self->_page.m_ptr, v20, v10, v14, v17);
          if (v16)
          {
            v13 = v15;
            v15 = 0;
            if (v13)
            {
              if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v13, v12);
              }
            }
          }
        }
      }
    }

    if (v19 == 1)
    {
      MEMORY[0x19EB065D0](&v18);
    }
  }
}

- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  WebKit::convertToWebSession(a3, v14);
  if (v15 == 1)
  {
    m_ptr = self->_activeWritingToolsSession.m_ptr;
    self->_activeWritingToolsSession.m_ptr = 0;
    if (m_ptr)
    {
    }

    [(NSMapTable *)self->_writingToolsTextSuggestions.m_ptr removeAllObjects];
    v7 = self->_intelligenceTextEffectCoordinator.m_ptr;
    if (v7)
    {
      v10 = v14[0];
      v11 = v14[1];
      LOBYTE(v12) = v15;
      v13 = 0;
      objc_initWeak(&v13, self);
      v16 = v10;
      v17 = v11;
      v18 = v12;
      v19 = a4;
      v20[0] = 0;
      objc_moveWeak(v20, &v13);
      v8 = malloc_type_malloc(0x60uLL, 0x10E0040AD1225A2uLL);
      *v8 = MEMORY[0x1E69E9818];
      *(v8 + 1) = 50331650;
      *(v8 + 2) = WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView didEndWritingToolsSession:accepted:]::$_2>([WKWebView didEndWritingToolsSession:accepted:]::$_2)::{lambda(void *)#1}::__invoke;
      *(v8 + 3) = &WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView didEndWritingToolsSession:accepted:]::$_2>([WKWebView didEndWritingToolsSession:accepted:]::$_2)::descriptor;
      v9 = v17;
      *(v8 + 2) = v16;
      *(v8 + 3) = v9;
      *(v8 + 4) = v18;
      *(v8 + 80) = v19;
      *(v8 + 11) = 0;
      objc_moveWeak(v8 + 11, v20);
      objc_destroyWeak(v20);
      [(WKIntelligenceTextEffectCoordinating *)v7 flushReplacementsWithCompletionHandler:v8];
      _Block_release(v8);
      objc_destroyWeak(&v13);
    }

    else
    {
      WebKit::WebPageProxy::setWritingToolsActive(self->_page.m_ptr, 0);
      WebKit::WebPageProxy::didEndWritingToolsSession(self->_page.m_ptr, v14, a4);
    }
  }
}

- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v7 = a7;
  length = a5.length;
  location = a5.location;
  v52[2] = *MEMORY[0x1E69E9840];
  WebKit::convertToWebSession(a3, v42);
  if (v43 == 1)
  {
    WebKit::convertToWebContext(a6, v39);
    if (v41 == 1)
    {
      if (self->_intelligenceTextEffectCoordinator.m_ptr)
      {
        *&v44 = a4;
        if (a4)
        {
          v13 = a4;
        }

        WebCore::AttributedString::fromNSAttributedString();
        v14 = v44;
        *&v44 = 0;
        if (v14)
        {
        }

        v30 = v42[0];
        v31 = v42[1];
        LOBYTE(v32) = v43;
        MEMORY[0x19EB065B0](v33, v28);
        *&v34 = location;
        *(&v34 + 1) = length;
        std::__optional_copy_base<WebCore::WritingTools::Context,false>::__optional_copy_base[abi:sn200100](v35, v39);
        v37 = v7;
        v38 = 0;
        objc_initWeak(&v38, self);
        v44 = v30;
        v45 = v31;
        v46 = v32;
        WebCore::AttributedString::AttributedString();
        v48 = v34;
        std::__optional_move_base<WebCore::WritingTools::Context,false>::__optional_move_base[abi:sn200100](v49, v35);
        v51 = v37;
        v52[0] = 0;
        objc_moveWeak(v52, &v38);
        v15 = malloc_type_malloc(0x100uLL, 0x10E2040F9F3AE0AuLL);
        *v15 = MEMORY[0x1E69E9818];
        *(v15 + 1) = 50331650;
        *(v15 + 2) = WTF::BlockPtr<void ()(void({block_pointer})(void))>::fromCallable<[WKWebView compositionSession:didReceiveText:replacementRange:inContext:finished:]::$_3>([WKWebView compositionSession:didReceiveText:replacementRange:inContext:finished:]::$_3)::{lambda(void *,void({block_pointer})(void))#1}::__invoke;
        *(v15 + 3) = &WTF::BlockPtr<void ()(void({block_pointer})(void))>::fromCallable<[WKWebView compositionSession:didReceiveText:replacementRange:inContext:finished:]::$_3>([WKWebView compositionSession:didReceiveText:replacementRange:inContext:finished:]::$_3)::descriptor;
        v16 = v45;
        *(v15 + 2) = v44;
        *(v15 + 3) = v16;
        *(v15 + 4) = v46;
        WebCore::AttributedString::AttributedString();
        *(v15 + 120) = v48;
        std::__optional_move_base<WebCore::WritingTools::Context,false>::__optional_move_base[abi:sn200100]((v15 + 144), v49);
        v17 = v51;
        *(v15 + 31) = 0;
        v15[240] = v17;
        objc_moveWeak(v15 + 31, v52);
        objc_destroyWeak(v52);
        if (v50[64] == 1)
        {
          MEMORY[0x19EB065D0](v50);
        }

        MEMORY[0x19EB065D0](&v47);
        objc_destroyWeak(&v38);
        if (v36[64] == 1)
        {
          MEMORY[0x19EB065D0](v36);
        }

        MEMORY[0x19EB065D0](v33);
        v18 = *(self->_page.m_ptr + 4);
        v19 = *(v18 + 528);
        v20 = *(v18 + 312);
        v21 = [a4 length];
        if (v19)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        [(WKIntelligenceTextEffectCoordinating *)self->_intelligenceTextEffectCoordinator.m_ptr requestReplacementWithProcessedRange:0 finished:v22 characterDelta:v7 operation:v21 - v22 completion:v15, &__block_literal_global_148];
        _Block_release(v15);
        MEMORY[0x19EB065D0](v28);
      }

      else
      {
        self->_writingToolsTextReplacementsFinished = v7;
        ++self->_partialIntelligenceTextAnimationCount;
        m_ptr = self->_page.m_ptr;
        v28[0] = a4;
        if (a4)
        {
          v24 = a4;
        }

        WebCore::AttributedString::fromNSAttributedString();
        *&v30 = location;
        *(&v30 + 1) = length;
        if ((v41 & 1) == 0)
        {
          __break(1u);
        }

        v25 = WTF::fastMalloc(0x10);
        *v25 = &unk_1F10F9318;
        v29 = v25;
        WebKit::WebPageProxy::compositionSessionDidReceiveTextWithReplacementRange(m_ptr, v42, &v44, &v30, v39, v7, &v29);
        v26 = v29;
        v29 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }

        MEMORY[0x19EB065D0](&v44);
        v27 = v28[0];
        v28[0] = 0;
        if (v27)
        {
        }
      }
    }

    if (v41 == 1)
    {
      MEMORY[0x19EB065D0](&v40);
    }
  }
}

- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4
{
  v8 = *MEMORY[0x1E69E9840];
  WebKit::convertToWebSession(a3, v7);
  if (v7[32] == 1)
  {
    if (a4 == 1)
    {
      v6 = 0;
    }

    else if (a4 == 2)
    {
      v6 = 1;
    }

    else
    {
      self->_writingToolsTextReplacementsFinished = 0;
      self->_partialIntelligenceTextAnimationCount = 0;
      v6 = 2;
    }

    WebKit::WebPageProxy::writingToolsSessionDidReceiveAction(self->_page.m_ptr, v7, v6);
  }
}

- (void)intelligenceTextEffectCoordinator:(id)a3 rectsForProofreadingSuggestionsInRange:(_NSRange)a4 completion:(id)a5
{
  m_ptr = self->_page.m_ptr;
  v10 = a4;
  v6 = _Block_copy(a5);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10F9340;
  v7[1] = v6;
  v9 = v7;
  WebKit::WebPageProxy::proofreadingSessionSuggestionTextRectsInRootViewCoordinates(m_ptr, &v10, &v9);
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
}

- (void)intelligenceTextEffectCoordinator:(id)a3 updateTextVisibilityForRange:(_NSRange)a4 visible:(BOOL)a5 identifier:(id)a6 completion:(id)a7
{
  length = a4.length;
  location = a4.location;
  v21 = *MEMORY[0x1E69E9840];
  WTF::UUID::fromNSUUID(v19, a6, a2);
  if (v20)
  {
    m_ptr = self->_page.m_ptr;
    v18[0] = location;
    v18[1] = length;
    aBlock = _Block_copy(a7);
    v16 = 0;
    objc_initWeak(&v16, self);
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F10F9368;
    *(v13 + 8) = aBlock;
    *(v13 + 16) = 0;
    objc_moveWeak((v13 + 16), &v16);
    v17 = v13;
    WebKit::WebPageProxy::updateTextVisibilityForActiveWritingToolsSession(m_ptr, v18, a5, v19, &v17);
    v14 = v17;
    v17 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    objc_destroyWeak(&v16);
    _Block_release(0);
  }

  else
  {
    (*(a7 + 2))(a7);
  }
}

- (void)intelligenceTextEffectCoordinator:(id)a3 textPreviewsForRange:(_NSRange)a4 completion:(id)a5
{
  m_ptr = self->_page.m_ptr;
  v12 = a4;
  aBlock = _Block_copy(a5);
  v10 = 0;
  objc_initWeak(&v10, self);
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F10F9390;
  *(v7 + 8) = aBlock;
  *(v7 + 16) = 0;
  objc_moveWeak((v7 + 16), &v10);
  v11 = v7;
  WebKit::WebPageProxy::textPreviewDataForActiveWritingToolsSession(m_ptr, &v12, &v11);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  objc_destroyWeak(&v10);
  _Block_release(0);
}

- (void)intelligenceTextEffectCoordinator:(id)a3 contentPreviewForRange:(_NSRange)a4 completion:(id)a5
{
  m_ptr = self->_page.m_ptr;
  v10 = a4;
  v6 = _Block_copy(a5);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10F93B8;
  v7[1] = v6;
  v9 = v7;
  WebKit::WebPageProxy::textPreviewDataForActiveWritingToolsSession(m_ptr, &v10, &v9);
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
}

- (void)intelligenceTextEffectCoordinator:(id)a3 decorateReplacementsForRange:(_NSRange)a4 completion:(id)a5
{
  m_ptr = self->_page.m_ptr;
  v10 = a4;
  v6 = _Block_copy(a5);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10F93E0;
  v7[1] = v6;
  v9 = v7;
  WebKit::WebPageProxy::decorateTextReplacementsForActiveWritingToolsSession(m_ptr, &v10, &v9);
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
}

- (void)intelligenceTextEffectCoordinator:(id)a3 setSelectionForRange:(_NSRange)a4 completion:(id)a5
{
  m_ptr = self->_page.m_ptr;
  v10 = a4;
  v6 = _Block_copy(a5);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10F9408;
  v7[1] = v6;
  v9 = v7;
  WebKit::WebPageProxy::setSelectionForActiveWritingToolsSession(m_ptr, &v10, &v9);
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
}

- (void)_proofreadingSessionShowDetailsForSuggestionWithUUID:(id)a3 relativeToRect:(CGRect)a4
{
  m_ptr = self->_activeWritingToolsSession.m_ptr;
  if (m_ptr)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v11 = [(WTSession *)m_ptr textViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = self->_contentView.m_ptr;
      if (v13)
      {
        v12 = v13;
      }

      [v11 proofreadingSessionWithUUID:-[WTSession uuid](self->_activeWritingToolsSession.m_ptr showDetailsForSuggestionWithUUID:"uuid") relativeToRect:a3 inView:{v13, x, y, width, height}];
      if (v13)
      {
      }
    }
  }
}

- (void)_proofreadingSessionUpdateState:(unsigned __int8)a3 forSuggestionWithUUID:(id)a4
{
  m_ptr = self->_activeWritingToolsSession.m_ptr;
  if (m_ptr)
  {
    v7 = a3;
    v8 = [(WTSession *)m_ptr textViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(WTSession *)self->_activeWritingToolsSession.m_ptr uuid];
      if ((v7 - 1) > 2)
      {
        v10 = 0;
      }

      else
      {
        v10 = qword_19E703578[(v7 - 1)];
      }

      [v8 proofreadingSessionWithUUID:v9 updateState:v10 forSuggestionWithUUID:a4];
    }
  }
}

- (void)_didEndPartialIntelligenceTextAnimation
{
  partialIntelligenceTextAnimationCount = self->_partialIntelligenceTextAnimationCount;
  if (partialIntelligenceTextAnimationCount)
  {
    v3 = partialIntelligenceTextAnimationCount - 1;
    self->_partialIntelligenceTextAnimationCount = v3;
    if (!v3 && self->_writingToolsTextReplacementsFinished)
    {
      WebKit::WebPageProxy::intelligenceTextAnimationsDidComplete(self->_page.m_ptr);
    }
  }
}

- (void)_setGamepadsRecentlyAccessed:(BOOL)a3
{
  if (self->_gamepadsRecentlyAccessed != a3)
  {
    self->_gamepadsRecentlyAccessed = a3;
  }
}

- (unint64_t)_fixedContainerEdges
{
  if (WebCore::FixedContainerEdges::hasFixedEdge())
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | WebCore::FixedContainerEdges::hasFixedEdge();
  if (WebCore::FixedContainerEdges::hasFixedEdge())
  {
    v3 |= 4uLL;
  }

  if (WebCore::FixedContainerEdges::hasFixedEdge())
  {
    return v3 | 2;
  }

  else
  {
    return v3;
  }
}

- (void)_updateScrollGeometryWithContentOffset:(CGPoint)a3 contentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [(WKWebView *)self frame];
  v8 = v7;
  v10 = v9;
  v11 = *(self->_page.m_ptr + 4);
  v12 = v11[494];
  v13 = v11[495];
  v14 = v11[496];
  v15 = v11[497];
  m_ptr = self->_currentScrollGeometry.m_ptr;
  if (m_ptr)
  {
    v16 = m_ptr;
  }

  v17 = [[WKScrollGeometry alloc] initWithContainerSize:v8 contentInsets:v10 contentOffset:v12 contentSize:v15, v14, v13, a3.x, a3.y, *&width, *&height];
  if (!m_ptr || ![(WKScrollGeometry *)m_ptr isEqual:v17])
  {
    v18 = [(WKWebView *)self UIDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (v17)
      {
        v19 = v17;
      }

      v20 = self->_currentScrollGeometry.m_ptr;
      self->_currentScrollGeometry.m_ptr = v17;
      if (v20)
      {
      }

      [v18 _webView:self geometryDidChange:v17];
    }
  }

  if (v17)
  {
  }

  if (m_ptr)
  {
  }
}

- (void)_updateFixedContainerEdges:(const void *)a3
{
  v3 = a3;
  v5 = 0;
  p_fixedContainerEdges = &self->_fixedContainerEdges;
  for (i = a3; ; i += 16)
  {
    v8 = (p_fixedContainerEdges + v5 * 16);
    index = p_fixedContainerEdges->colors.m_sides.__elems_[v5].impl_.index_;
    v10 = i[8];
    if (index == 255 || v10 != index)
    {
      if (v10 != index)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (!p_fixedContainerEdges->colors.m_sides.__elems_[v5].impl_.index_)
    {
      if (v8->colors.m_sides.__elems_[0].impl_.data_.head_.value != *i)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    m_colorAndFlags = v8->colors.m_sides.__elems_[0].impl_.data_.tail_.head_.value.m_colorAndFlags;
    v13 = *i;
    if ((m_colorAndFlags & 0x8000000000000) != 0)
    {
      break;
    }

    if (m_colorAndFlags != v13 || (v13 & 0x8000000000000) != 0)
    {
      goto LABEL_25;
    }

LABEL_16:
    if (++v5 == 4)
    {
      return;
    }
  }

  if ((v13 & 0x8000000000000) != 0)
  {
    v15 = 0;
    v16 = 0;
    v32 = *((m_colorAndFlags & 0xFFFFFFFFFFFFLL) + 4);
    v31 = *((v13 & 0xFFFFFFFFFFFFLL) + 4);
    do
    {
      if (*(&v32 + v16) != *(&v31 + v16))
      {
        break;
      }

      v15 = v16++ > 2;
    }

    while (v16 != 4);
    if (!((v13 ^ m_colorAndFlags) >> 56) && v15 && BYTE6(m_colorAndFlags) == BYTE6(v13))
    {
      goto LABEL_16;
    }
  }

LABEL_25:
  v17 = [(WKWebView *)self _sampledTopFixedPositionContentColor:v31];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  v20 = sampledFixedPositionContentColor();
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  if (v18 == v21 && [(UIColor *)v18 isEqual:v21])
  {
    WebCore::FixedContainerEdges::hasFixedEdge();
    WebCore::FixedContainerEdges::hasFixedEdge();
    v24 = 0;
  }

  else
  {
    [(WKWebView *)self willChangeValueForKey:NSStringFromSelector(sel__sampledTopFixedPositionContentColor)];
    v24 = 1;
  }

  v25 = 4;
  do
  {
    v26 = p_fixedContainerEdges->colors.m_sides.__elems_[0].impl_.index_;
    v27 = v3[8];
    if (v26 != 255 || v27 != 255)
    {
      if (v27 == 255)
      {
        if (v26 != 255 && v26 != 0)
        {
          v29 = p_fixedContainerEdges->colors.m_sides.__elems_[0].impl_.data_.tail_.head_.value.m_colorAndFlags;
          if ((p_fixedContainerEdges->colors.m_sides.__elems_[0].impl_.data_.tail_.head_.value.m_colorAndFlags & 0x8000000000000) != 0)
          {
            v30 = (v29 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v29 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v30);
              WTF::fastFree(v30, v23);
            }
          }
        }

        p_fixedContainerEdges->colors.m_sides.__elems_[0].impl_.index_ = -1;
      }

      else
      {
        *&v32 = p_fixedContainerEdges;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore20PredominantColorTypeENS6_5ColorEEEEE14generic_assignIRKNS0_15copy_assignmentIS9_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSA_SG_EEEDcmSI_DpOT0_(v27, &v32, p_fixedContainerEdges, v3);
      }
    }

    v3 += 16;
    p_fixedContainerEdges = (p_fixedContainerEdges + 16);
    --v25;
  }

  while (v25);
  [(WKWebView *)self _updateFixedColorExtensionViews];
  [(WKWebView *)self _updateHiddenScrollPocketEdges];
  [(WKWebView *)self _updateTopScrollPocketCaptureColor];
  if (v24)
  {
    [(WKWebView *)self didChangeValueForKey:NSStringFromSelector(sel__sampledTopFixedPositionContentColor)];
  }

  if (v21)
  {
  }

  if (v18)
  {
  }
}

- (void)_createPDFPageNumberIndicator:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)a3 :(CGRect)a4 ObjectIdentifierMainThreadAccessTraits<uint64_t> :(unint64_t)a5 PDFPluginIdentifierType withFrame:pageCount:
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(WKWebView *)self _removePDFPageNumberIndicator:?];
  v12 = [[WKPDFPageNumberIndicator alloc] initWithFrame:self view:a5 pageCount:x, y, width, height];
  [(WKWebView *)self addSubview:v12];
  m_ptr = self->_pdfPageNumberIndicator.second.m_ptr;
  self->_pdfPageNumberIndicator.first.m_value = a3;
  self->_pdfPageNumberIndicator.second.m_ptr = v12;
  if (m_ptr)
  {
  }
}

- (void)_removePDFPageNumberIndicator:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)a3 :ObjectIdentifierMainThreadAccessTraits<uint64_t> :PDFPluginIdentifierType
{
  p_pdfPageNumberIndicator = &self->_pdfPageNumberIndicator;
  m_identifier = self->_pdfPageNumberIndicator.first.m_value.m_identifier;
  if (m_identifier)
  {
    v5 = m_identifier == a3.m_identifier;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    m_ptr = self->_pdfPageNumberIndicator.second.m_ptr;
    p_pdfPageNumberIndicator->first.m_value.m_identifier = 0;
    p_pdfPageNumberIndicator->second.m_ptr = 0;
    v7 = m_ptr;
    [(WKPDFPageNumberIndicator *)m_ptr removeFromSuperview];
    if (v7)
    {
    }
  }
}

- (void)_updatePDFPageNumberIndicator:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)a3 :(CGRect)a4 ObjectIdentifierMainThreadAccessTraits<uint64_t> :PDFPluginIdentifierType withFrame:
{
  m_identifier = self->_pdfPageNumberIndicator.first.m_value.m_identifier;
  if (m_identifier)
  {
    v5 = m_identifier == a3.m_identifier;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(WKPDFPageNumberIndicator *)self->_pdfPageNumberIndicator.second.m_ptr updatePosition:a3.m_identifier, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  }
}

- (void)_updatePDFPageNumberIndicator:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)a3 :(unint64_t)a4 ObjectIdentifierMainThreadAccessTraits<uint64_t> :PDFPluginIdentifierType currentPage:
{
  m_identifier = self->_pdfPageNumberIndicator.first.m_value.m_identifier;
  if (m_identifier)
  {
    v5 = m_identifier == a3.m_identifier;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(WKPDFPageNumberIndicator *)self->_pdfPageNumberIndicator.second.m_ptr setCurrentPageNumber:a4];
  }
}

- (void)_removeAnyPDFPageNumberIndicator
{
  if (self->_pdfPageNumberIndicator.first.m_value.m_identifier)
  {
    [(WKWebView *)self _removePDFPageNumberIndicator:?];
  }
}

- (RetainPtr<WKWebView>)_horizontallyAttachedInspectorWebView
{
  v3 = v2;
  m_ptr = self->_page.m_ptr;
  if ((*(m_ptr + 865) & 1) != 0 || (v5 = *(m_ptr + 62)) == 0)
  {
    *v3 = 0;
  }

  else
  {
    CFRetain(*(v5 + 8));
    if ((*(v5 + 74) & 1) != 0 && *(v5 + 84) && (v6 = *(v5 + 48)) != 0 && (v7 = *(v6 + 8)) != 0)
    {
      CFRetain(*(v7 - 8));
      *v3 = objc_loadWeakRetained((*(v7 + 16) + 2248));
      CFRelease(*(v7 - 8));
    }

    else
    {
      *v3 = 0;
    }

    v8 = *(v5 + 8);

    CFRelease(v8);
  }

  return self;
}

- (void)_updateTopScrollPocketCaptureColor
{
  if (self->_needsTopScrollPocketDueToVisibleContentInset || [(WKScrollView *)self->_scrollView.m_ptr _usesHardTopScrollEdgeEffect])
  {
    v3 = [(WKWebView *)self _sampledTopFixedPositionContentColor];
    if (v3 || (v3 = [(WKWebView *)self underPageBackgroundColor]) != 0)
    {
      v5 = v3;
      v4 = v3;
      [(WKScrollView *)self->_scrollView.m_ptr _setInternalTopPocketColor:v5];
    }
  }
}

- (void)_updatePrefersSolidColorHardPocket
{
  if ([(WKScrollView *)self->_scrollView.m_ptr _usesHardTopScrollEdgeEffect])
  {
    v3 = [(WKWebView *)self _hasVisibleColorExtensionView:0];
  }

  else
  {
    v3 = 0;
  }

  m_ptr = self->_scrollView.m_ptr;

  [(WKScrollView *)m_ptr _setPrefersSolidColorHardPocket:v3 forEdge:1];
}

- (void)_updateHiddenScrollPocketEdges
{
  m_ptr = self->_scrollView.m_ptr;
  if (m_ptr)
  {
    v3 = m_ptr;
  }

  [-[WKScrollView _wk_topEdgeEffect](m_ptr "_wk_topEdgeEffect")];
  [-[WKScrollView _wk_rightEdgeEffect](m_ptr "_wk_rightEdgeEffect")];
  [-[WKScrollView _wk_leftEdgeEffect](m_ptr "_wk_leftEdgeEffect")];
  [-[WKScrollView _wk_bottomEdgeEffect](m_ptr "_wk_bottomEdgeEffect")];
  if (m_ptr)
  {
  }
}

- (BOOL)_hasVisibleColorExtensionView:(unsigned __int8)a3
{
  if (a3 >= 4u)
  {
    __break(1u);
  }

  else
  {
    m_ptr = self->_fixedColorExtensionViews.m_sides.__elems_[a3].m_ptr;
    if (m_ptr)
    {
      v4 = m_ptr;
      v5 = ![(WKColorExtensionView *)m_ptr isHiddenOrFadingOut];
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    LOBYTE(self) = v5;
  }

  return self;
}

- (void)_addReasonToHideTopScrollPocket:(unsigned __int8)a3
{
  v12 = *MEMORY[0x1E69E9840];
  m_storage = self->_reasonsToHideTopScrollPocket.m_storage;
  if ((m_storage & a3) == 0)
  {
    v4 = a3;
    v6 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      switch(v4)
      {
        case 1:
          v7 = "FullScreen";
          break;
        case 4:
          v7 = "SiteSpecificQuirk";
          break;
        case 2:
          v7 = "ScrolledToTop";
          break;
        default:
          v7 = "";
          break;
      }

      v8 = 134218242;
      v9 = self;
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p Hide top scroll pocket (%s)", &v8, 0x16u);
      LOBYTE(m_storage) = self->_reasonsToHideTopScrollPocket.m_storage;
    }

    self->_reasonsToHideTopScrollPocket.m_storage = m_storage | v4;
    [(WKWebView *)self _updateHiddenScrollPocketEdges];
  }
}

- (void)_removeReasonToHideTopScrollPocket:(unsigned __int8)a3
{
  v12 = *MEMORY[0x1E69E9840];
  m_storage = self->_reasonsToHideTopScrollPocket.m_storage;
  if ((m_storage & a3) != 0)
  {
    v4 = a3;
    v6 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      switch(v4)
      {
        case 1:
          v7 = "FullScreen";
          break;
        case 4:
          v7 = "SiteSpecificQuirk";
          break;
        case 2:
          v7 = "ScrolledToTop";
          break;
        default:
          v7 = "";
          break;
      }

      v8 = 134218242;
      v9 = self;
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p Unhide top scroll pocket (%s)", &v8, 0x16u);
      LOBYTE(m_storage) = self->_reasonsToHideTopScrollPocket.m_storage;
    }

    self->_reasonsToHideTopScrollPocket.m_storage = m_storage & ~v4;
    [(WKWebView *)self _updateHiddenScrollPocketEdges];
  }
}

- (void)colorExtensionViewWillDisappear:(id)a3
{
  if (self->_fixedColorExtensionViews.m_sides.__elems_[0].m_ptr == a3)
  {
    [(WKWebView *)self _updatePrefersSolidColorHardPocket];
  }

  [(WKWebView *)self _updateHiddenScrollPocketEdges];
}

- (void)colorExtensionViewDidAppear:(id)a3
{
  if (self->_fixedColorExtensionViews.m_sides.__elems_[0].m_ptr == a3)
  {
    [(WKWebView *)self _updatePrefersSolidColorHardPocket];
  }

  [(WKWebView *)self _updateHiddenScrollPocketEdges];
}

- (void)setObscuredContentInsets:(UIEdgeInsets)a3
{
  if (a3.top < 0.0 || a3.left < 0.0 || a3.right < 0.0 || a3.bottom < 0.0)
  {
    insets = a3.bottom;
    right = a3.right;
    top = a3.top;
    left = a3.left;
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"-obscuredContentInsets cannot be negative: %@", NSStringFromUIEdgeInsets(a3)}];
    a3.top = top;
    a3.left = left;
    a3.bottom = insets;
    a3.right = right;
  }

  v4.f64[0] = a3.top;
  v4.f64[1] = a3.left;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_obscuredInsets.top, v4), vceqq_f64(*&self->_obscuredInsets.bottom, v5)))) & 1) == 0)
  {
    v11 = v4;
    insetsa = v5;
    [(WKWebView *)self _setObscuredInsetsInternal:?];
    self->_automaticallyAdjustsViewLayoutSizesWithObscuredInset = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v11, *MEMORY[0x1E69DDCE0]), vceqq_f64(insetsa, *(MEMORY[0x1E69DDCE0] + 16)))))) & 1;

    [(WKWebView *)self _frameOrBoundsMayHaveChanged];
  }
}

- (void)fetchDataOfTypes:(unint64_t)a3 completionHandler:(id)a4
{
  v5 = a3;
  v24 = 0;
  v25 = 0;
  if (a3)
  {
    LODWORD(v23) = 0;
    v9 = WTF::Vector<WebKit::WebViewDataType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v24, 1uLL, &v23);
    v10 = HIDWORD(v25);
    v8 = v24;
    *(v24 + HIDWORD(v25)) = *v9;
    v7 = v10 + 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v11 = WTF::fastMalloc(0x18);
  *v11 = 1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = _Block_copy(a4);
  v13 = v25;
  v24 = 0;
  v25 = 0;
  atomic_fetch_add(v11, 1u);
  v14 = WTF::fastMalloc(0x28);
  *v14 = &unk_1F10F9430;
  *(v14 + 8) = v12;
  *(v14 + 16) = v8;
  *(v14 + 24) = v13;
  *(v14 + 28) = v7;
  *(v14 + 32) = v11;
  v15 = WTF::fastMalloc(0x10);
  *v15 = 1;
  *(v15 + 8) = v14;
  _Block_release(0);
  if (v5)
  {
    if (self)
    {
      [(WKWebView *)self _protectedPage];
      self = v23;
    }

    else
    {
      v23 = 0;
    }

    atomic_fetch_add(v15, 1u);
    v16 = v23;
    if (v23)
    {
      CFRetain(*(v23 + 8));
    }

    atomic_fetch_add(v11, 1u);
    v17 = WTF::fastMalloc(0x20);
    *v17 = &unk_1F10F9458;
    v17[1] = v15;
    v17[2] = v16;
    v17[3] = v11;
    v22 = v17;
    WebKit::WebPageProxy::fetchSessionStorage(self, &v22);
    v18 = v22;
    v22 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v23;
    v23 = 0;
    if (v19)
    {
      CFRelease(*(v19 + 8));
    }
  }

  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v15);
  WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v11, v20);
  if (v24)
  {
    WTF::fastFree(v24, v21);
  }
}

- (void)restoreData:(id)a3 completionHandler:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 bytes];
    [a3 length];
  }

  WTF::Persistence::Decoder::Decoder();
  WTF::Persistence::Decoder::operator>>();
  v9 = *MEMORY[0x1E696A578];
  v10[0] = @"Version number is missing.";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:v6];
  (*(a4 + 2))(a4, v7);
  if (v7)
  {
  }

  WTF::Persistence::Decoder::~Decoder(v8);
}

- (UIEdgeInsets)minimumViewportInset
{
  top = self->_minimumViewportInset.top;
  left = self->_minimumViewportInset.left;
  bottom = self->_minimumViewportInset.bottom;
  right = self->_minimumViewportInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)maximumViewportInset
{
  top = self->_maximumViewportInset.top;
  left = self->_maximumViewportInset.left;
  bottom = self->_maximumViewportInset.bottom;
  right = self->_maximumViewportInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_indent:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _indentForWebView:a3];
  }
}

- (void)_outdent:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _outdentForWebView:a3];
  }
}

- (void)_toggleStrikeThrough:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _toggleStrikeThroughForWebView:a3];
  }
}

- (void)_insertOrderedList:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _insertOrderedListForWebView:a3];
  }
}

- (void)_insertUnorderedList:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _insertUnorderedListForWebView:a3];
  }
}

- (void)_insertNestedOrderedList:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _insertNestedOrderedListForWebView:a3];
  }
}

- (void)_insertNestedUnorderedList:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _insertNestedUnorderedListForWebView:a3];
  }
}

- (void)_increaseListLevel:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _increaseListLevelForWebView:a3];
  }
}

- (void)_decreaseListLevel:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _decreaseListLevelForWebView:a3];
  }
}

- (void)_changeListType:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _changeListTypeForWebView:a3];
  }
}

- (void)_pasteAsQuotation:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _pasteAsQuotationForWebView:a3];
  }
}

- (void)_pasteAndMatchStyle:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _pasteAndMatchStyleForWebView:a3];
  }
}

- (CGSize)_viewportSizeForCSSViewportUnits
{
  WebCore::FloatSize::operator CGSize();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setViewportSizeForCSSViewportUnits:(CGSize)a3
{
  v8 = a3;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  WebCore::FloatSize::FloatSize(&v6, &v8);
  *&v5 = v6;
  if (v6 <= 0.0 || (*&v5 = v7, v7 <= 0.0))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Viewport size should not be empty", v5}];
  }

  WebKit::WebPageProxy::setViewportSizeForCSSViewportUnits(self->_page.m_ptr, &v6);
}

- (_WKInspector)_inspector
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 865))
  {
    return 0;
  }

  v4 = *(m_ptr + 62);
  if (!v4)
  {
    return 0;
  }

  CFRetain(*(v4 + 8));
  v3 = *(v4 + 8);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(v4 + 8);
LABEL_8:
    CFRelease(v5);
    return v3;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)_didEnableBrowserExtensions:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v6 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize([a3 count]);
  v7 = WTF::fastZeroedMalloc((16 * v6 + 16));
  v10 = (v7 + 16);
  *(v7 + 8) = v6 - 1;
  *(v7 + 12) = v6;
  *v7 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __52__WKWebView_WKPrivate___didEnableBrowserExtensions___block_invoke;
  v9[3] = &__block_descriptor_40_e8_32c66_ZTSKZ52__WKWebView_WKPrivate___didEnableBrowserExtensions__E4__50_e35_v32__0__NSString_8__NSString_16_B24l;
  v9[4] = &v10;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
  WebKit::WebPageInspectorController::browserExtensionsEnabled(*(self->_page.m_ptr + 151), &v10);
  if (v10)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, v8);
  }
}

WTF::StringImpl *__52__WKWebView_WKPrivate___didEnableBrowserExtensions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  MEMORY[0x19EB02040](&v30);
  if (v30 == -1 || !v30)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB09288);
  }

  v7 = *v4;
  if (*v4 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v4, 0), (v7 = *v4) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v30 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(v30);
  }

  else
  {
    v10 = v9 >> 8;
  }

  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v8;
    v14 = (v7 + 16 * (v10 & v8));
    v15 = *v14;
    if (*v14 == -1)
    {
      v11 = (v7 + 16 * v13);
      goto LABEL_14;
    }

    if (!v15)
    {
      if (v11)
      {
        *v11 = 0;
        v11[1] = 0;
        --*(*v4 - 16);
        v14 = v11;
      }

      v16 = v30;
      v30 = 0;
      v17 = *v14;
      *v14 = v16;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v5);
      }

      MEMORY[0x19EB02040](&v31, a3);
      v18 = v31;
      v31 = 0;
      v19 = v14[1];
      v14[1] = v18;
      if (v19)
      {
        if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v23);
        }

        v20 = v31;
        v31 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v23);
        }
      }

      v21 = *v4;
      if (*v4)
      {
        v22 = *(v21 - 12) + 1;
      }

      else
      {
        v22 = 1;
      }

      *(v21 - 12) = v22;
      v27 = (*(v21 - 16) + v22);
      v28 = *(v21 - 4);
      if (v28 > 0x400)
      {
        if (v28 > 2 * v27)
        {
          goto LABEL_38;
        }
      }

      else if (3 * v28 > 4 * v27)
      {
        goto LABEL_38;
      }

      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v4, v14);
      goto LABEL_38;
    }

    if (WTF::equal(v15, v30, v6))
    {
      break;
    }

LABEL_14:
    v10 = i + v13;
  }

  MEMORY[0x19EB02040](&v31, a3);
  v24 = v31;
  v31 = 0;
  v25 = v14[1];
  v14[1] = v24;
  if (v25)
  {
    if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v23);
    }

    v26 = v31;
    v31 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v23);
    }
  }

LABEL_38:
  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v23);
    }
  }

  return result;
}

- (void)_didDisableBrowserExtensions:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v6 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize([a3 count]);
  v7 = WTF::fastZeroedMalloc((8 * v6 + 16));
  v20 = (v7 + 16);
  *(v7 + 8) = v6 - 1;
  *(v7 + 12) = v6;
  *v7 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(a3);
        }

        MEMORY[0x19EB02040](&v15, *(*(&v16 + 1) + 8 * i));
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v20, &v15, v11, v21);
        v13 = v15;
        v15 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  WebKit::WebPageInspectorController::browserExtensionsDisabled(*(self->_page.m_ptr + 151), &v20);
  if (v20)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v20, v14);
  }
}

- (_WKFrameHandle)_mainFrame
{
  v2 = *(self->_page.m_ptr + 53);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 + 8));
  API::FrameHandle::create(*(v2 + 288), 1, &v8);
  WebKit::wrapper<API::FrameHandle>(&v8, &v9);
  v3 = v9;
  v9 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v9;
    v9 = 0;
    if (v5)
    {
    }
  }

  v6 = v8;
  v8 = 0;
  if (v6)
  {
    CFRelease(*(v6 + 1));
  }

  CFRelease(*(v2 + 8));
  return v3;
}

- (BOOL)_negotiatedLegacyTLS
{
  v2 = *(self->_page.m_ptr + 4);
  WebKit::PageLoadState::ref((v2 + 1120));
  v3 = *(v2 + 1146);
  WebKit::PageLoadState::deref((v2 + 1120));
  return v3;
}

- (NSString)_proxyName
{
  v2 = *(*(self->_page.m_ptr + 4) + 1312);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v4 = v9;
    v9 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
  }

  v6 = v4;
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  if (v2)
  {
LABEL_10:
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  return &v4->isa;
}

- (void)_frames:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v5 = _Block_copy(a3);
  v6 = self->_page.m_ptr;
  CFRetain(*(v6 + 1));
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F10F94D0;
  v7[1] = v5;
  v7[2] = v6;
  v9 = v7;
  WebKit::WebPageProxy::getAllFrames(m_ptr, &v9);
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
}

- (void)_frameTrees:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v5 = _Block_copy(a3);
  v6 = self->_page.m_ptr;
  CFRetain(*(v6 + 1));
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F10F94F8;
  v7[1] = v5;
  v7[2] = v6;
  v8 = v7;
  WebKit::WebPageProxy::getAllFrameTrees(m_ptr, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
}

- (void)_frameInfoFromHandle:(id)a3 completionHandler:(id)a4
{
  v6 = *(a3 + 3);
  if (v6 && (v7 = WebKit::WebFrameProxy::webFrame(v6, 1)) != 0)
  {
    v8 = v7;
    CFRetain(*(v7 + 8));
    v9 = _Block_copy(a4);
    m_ptr = self->_page.m_ptr;
    if (m_ptr)
    {
      CFRetain(*(m_ptr + 1));
    }

    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F10F9520;
    v11[1] = v9;
    v11[2] = m_ptr;
    v14 = v11;
    WebKit::WebFrameProxy::sendWithAsyncReply<Messages::WebFrame::GetFrameInfo,WTF::CompletionHandler<void ()(std::optional<WebKit::FrameInfoData> &&)>>(v8, &v15, &v14);
    v12 = v14;
    v14 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    _Block_release(0);
    CFRelease(*(v8 + 8));
  }

  else
  {
    v13 = *(a4 + 2);

    v13(a4, 0);
  }
}

- (void)_setEditable:(BOOL)a3
{
  v3 = a3;
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v6 = *(m_ptr + 736);
  WebKit::WebPageProxy::setEditable(m_ptr, v3);
  if (v6 != v3)
  {
    v7 = self->_contentView.m_ptr;

    [(WKContentView *)v7 _didChangeWebViewEditability];
  }
}

- (void)_executeEditCommand:(id)a3 argument:(id)a4 completion:(id)a5
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  MEMORY[0x19EB02040](&v18, a3);
  MEMORY[0x19EB02040](&v17, a4);
  v9 = _Block_copy(a5);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10F9548;
  v10[1] = v9;
  v16 = v10;
  WebKit::WebPageProxy::executeEditCommand(m_ptr, &v18, &v17, &v16);
  v11 = v16;
  v16 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Block_release(0);
  v13 = v17;
  v17 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = v18;
  v18 = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }
  }
}

- (void)_startTextManipulationsWithConfiguration:(id)a3 completion:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v8 = [a3 includeSubframes];
  WeakRetained = objc_loadWeakRetained(&self->_textManipulationDelegate.m_weakReference);
  if (WeakRetained && (WeakRetained, (v10 = self->_page.m_ptr) != 0) && (v11 = *(v10 + 53)) != 0)
  {
    v45 = v8;
    v46 = v11;
    CFRetain(*(v11 + 8));
    v55 = 0;
    v56 = 0;
    if (a3)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v12 = [a3 exclusionRules];
      v13 = [v12 countByEnumeratingWithState:&v51 objects:v58 count:16];
      if (v13)
      {
        v14 = *v52;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v52 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v51 + 1) + 8 * i);
            v17 = [v16 isExclusion] ^ 1;
            if (![v16 attributeName])
            {
              if ([v16 className])
              {
                LOBYTE(v48) = v17;
                v22 = [v16 className];
                WTF::AtomStringImpl::add(location, v22, v23);
                *&v49 = location[0];
                v50 = 2;
                v25 = HIDWORD(v56);
                if (HIDWORD(v56) == v56)
                {
                  goto LABEL_18;
                }

LABEL_31:
                v35 = v55 + 32 * v25;
                *v35 = v48;
                *(v35 + 8) = 0;
                *(v35 + 24) = -1;
                v36 = v50;
                if (v50 != 255)
                {
                  v37 = v49;
                  *&v49 = 0;
                  *(v35 + 8) = v37;
                  if (v36 == 1)
                  {
                    v38 = *(&v49 + 1);
                    *(&v49 + 1) = 0;
                    *(v35 + 16) = v38;
                  }

                  *(v35 + 24) = v36;
                }

                ++HIDWORD(v56);
              }

              else
              {
                LOBYTE(v48) = v17;
                v33 = [v16 elementName];
                WTF::AtomStringImpl::add(location, v33, v34);
                *&v49 = location[0];
                v50 = 0;
                v25 = HIDWORD(v56);
                if (HIDWORD(v56) != v56)
                {
                  goto LABEL_31;
                }

LABEL_18:
                WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationControllerExclusionRule>(&v55, &v48);
              }

              mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,(mpark::detail::Trait)1>::~move_constructor(&v49, v24);
              continue;
            }

            LOBYTE(v48) = v17;
            v18 = [v16 attributeName];
            WTF::AtomStringImpl::add(&v57, v18, v19);
            location[0] = v57;
            MEMORY[0x19EB02040](&location[1], [v16 attributeValue]);
            v21 = *location;
            location[0] = 0;
            location[1] = 0;
            v49 = v21;
            v50 = 1;
            if (HIDWORD(v56) == v56)
            {
              WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationControllerExclusionRule>(&v55, &v48);
            }

            else
            {
              v26 = v55 + 32 * HIDWORD(v56);
              *v26 = v48;
              *(v26 + 8) = 0;
              *(v26 + 24) = -1;
              v27 = v50;
              if (v50 != 255)
              {
                v28 = v49;
                *&v49 = 0;
                *(v26 + 8) = v28;
                if (v27 == 1)
                {
                  v29 = *(&v49 + 1);
                  *(&v49 + 1) = 0;
                  *(v26 + 16) = v29;
                }

                *(v26 + 24) = v27;
              }

              ++HIDWORD(v56);
            }

            mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,(mpark::detail::Trait)1>::~move_constructor(&v49, v20);
            v31 = location[1];
            location[1] = 0;
            if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v30);
            }

            v32 = location[0];
            location[0] = 0;
            if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v30);
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v51 objects:v58 count:16];
        }

        while (v13);
      }
    }

    v39 = self->_page.m_ptr;
    location[0] = 0;
    objc_initWeak(location, self);
    v40 = WTF::fastMalloc(0x10);
    *v40 = &unk_1F10F9570;
    *(v40 + 8) = 0;
    objc_moveWeak((v40 + 8), location);
    v48 = v40;
    v41 = _Block_copy(a4);
    v42 = WTF::fastMalloc(0x10);
    *v42 = &unk_1F10F9598;
    v42[1] = v41;
    v57 = v42;
    WebKit::WebPageProxy::startTextManipulations(v39, &v55, v45, &v48, &v57);
    if (v57)
    {
      (*(*v57 + 8))(v57);
    }

    _Block_release(0);
    if (v48)
    {
      (*(*v48 + 8))(v48);
    }

    objc_destroyWeak(location);
    WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v43);
    CFRelease(*(v46 + 8));
  }

  else
  {
    v44 = *(a4 + 2);

    v44(a4);
  }
}

- (void)_completeTextManipulation:(id)a3 completion:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  m_ptr = self->_page.m_ptr;
  if (m_ptr && (*(m_ptr + 1426) != 1 || ([MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"], self->_page.m_ptr)) && (objc_msgSend(a3, "identifier"), coreTextManipulationItemIdentifierFromString(v42), (v43 & 1) != 0))
  {
    v40 = 0;
    v41 = 0;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = [a3 tokens];
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v50 count:16];
    v32 = self;
    if (v9)
    {
      v10 = *v37;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          v13 = [objc_msgSend(v12 "identifier")];
          if (v13 - 1 >= 0xFFFFFFFFFFFFFFFELL)
          {
            __break(0xC471u);
            return;
          }

          v44[0] = v13;
          MEMORY[0x19EB02040](&v44[1], [v12 content]);
          LOBYTE(v45) = 0;
          v48 = 0;
          v49 = 0;
          if (HIDWORD(v41) == v41)
          {
            WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationToken>(&v40, v44);
          }

          else
          {
            v15 = v40 + 96 * HIDWORD(v41);
            *v15 = v44[0];
            v16 = v44[1];
            v44[1] = 0;
            *(v15 + 1) = v16;
            std::__optional_move_base<WebCore::TextManipulationTokenInfo,false>::__optional_move_base[abi:sn200100]((v15 + 16), &v45);
            v15[88] = v49;
            ++HIDWORD(v41);
          }

          if (v48 == 1)
          {
            v17 = v47;
            v47 = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v14);
            }

            v18 = v46;
            v46 = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v14);
            }

            v19 = v45;
            v45 = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v14);
            }
          }

          v20 = v44[1];
          v44[1] = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v14);
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v36 objects:v50 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v44[0] = v42[0];
    LOWORD(v44[1]) = 0;
    v45 = v42[1];
    v46 = v40;
    v21 = v41;
    v40 = 0;
    v41 = 0;
    v47 = v21;
    v22 = WTF::fastMalloc(0x28);
    v34 = 1;
    v33 = v22;
    v23 = *v44;
    *(v22 + 16) = v45;
    *v22 = v23;
    WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v22 + 24, &v46);
    v35 = 1;
    WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v24);
    v25 = v32->_page.m_ptr;
    v26 = _Block_copy(a4);
    v27 = WTF::fastMalloc(0x10);
    *v27 = &unk_1F10F95C0;
    *(v27 + 1) = v26;
    v44[0] = v27;
    WebKit::WebPageProxy::completeTextManipulation(v25, &v33, v44);
    v28 = v44[0];
    v44[0] = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    _Block_release(0);
    WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v29);
    WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v30);
  }

  else
  {
    v31 = *(a4 + 2);

    v31(a4, 0);
  }
}

- (void)_completeTextManipulationForItems:(id)a3 completion:(id)a4
{
  v4 = a3;
  v71 = *MEMORY[0x1E69E9840];
  m_ptr = self->_page.m_ptr;
  if (!m_ptr || *(m_ptr + 1426) == 1 && ([MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"], !self->_page.m_ptr))
  {
    v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    *v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v42 = [v4 countByEnumeratingWithState:v56 objects:&v65 count:16];
    if (v42)
    {
      v43 = *v57;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(a3);
          }

          v45 = *(v56[1] + i);
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v60 = @"item";
          v63 = v45;
          v47 = [v46 initWithDomain:@"WKTextManipulationItemErrorDomain" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v63, &v60, 1)}];
          [v41 addObject:v47];
          if (v47)
          {
          }
        }

        v42 = [a3 countByEnumeratingWithState:v56 objects:&v65 count:16];
      }

      while (v42);
    }

    (*(a4 + 2))(a4, v41);
    if (v41)
    {
    }

    return;
  }

  v63 = 0;
  v64 = 0;
  v7 = [v4 count];
  if (v7)
  {
    if (v7 >= 0x6666667)
    {
      __break(0xC471u);
      goto LABEL_61;
    }

    LODWORD(v64) = 40 * v7 / 0x28u;
    v63 = WTF::fastMalloc((40 * v7));
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = [v4 countByEnumeratingWithState:&v52 objects:v62 count:{16, 416, self}];
  if (!v8)
  {
    goto LABEL_37;
  }

  v9 = *v53;
  do
  {
    for (j = 0; j != v8; ++j)
    {
      if (*v53 != v9)
      {
        objc_enumerationMutation(a3);
      }

      v11 = *(*(&v52 + 1) + 8 * j);
      v12 = [objc_msgSend(v11 "tokens")];
      v13 = v12;
      v60 = 0;
      v61 = 0;
      if (v12)
      {
        if (v12 >= 0x2AAAAAB)
        {
          __break(0xC471u);
          JUMPOUT(0x19DB0B114);
        }

        v14 = 96 * v12;
        v15 = WTF::fastMalloc((96 * v12));
        v16 = 0;
        LODWORD(v61) = v14 / 0x60;
        v60 = v15;
        while (1)
        {
          v17 = [objc_msgSend(v11 "tokens")];
          v18 = [objc_msgSend(v17 "identifier")];
          if ((v18 - 1) >= 0xFFFFFFFFFFFFFFFELL)
          {
            break;
          }

          *&v65 = v18;
          MEMORY[0x19EB02040](&v65 + 8, [v17 content]);
          LOBYTE(v66) = 0;
          v69 = 0;
          v70 = 0;
          v19 = &v60[3 * HIDWORD(v61)];
          v19->isa = v65;
          v20 = *(&v65 + 1);
          *(&v65 + 1) = 0;
          v19->info = v20;
          std::__optional_move_base<WebCore::TextManipulationTokenInfo,false>::__optional_move_base[abi:sn200100](&v19->data, &v66);
          LOBYTE(v19[2].length) = v70;
          ++HIDWORD(v61);
          if (v69 == 1)
          {
            v22 = v68;
            v68 = 0;
            if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v22, v21);
            }

            v23 = v67;
            v67 = 0;
            if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v21);
            }

            v24 = v66;
            v66 = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v21);
            }
          }

          v25 = *(&v65 + 1);
          *(&v65 + 1) = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v21);
          }

          if (v13 == ++v16)
          {
            goto LABEL_29;
          }
        }

        __break(0xC471u);
LABEL_61:
        JUMPOUT(0x19DB0B108);
      }

LABEL_29:
      [v11 identifier];
      coreTextManipulationItemIdentifierFromString(v56);
      if (v57)
      {
        v28 = v56[0];
        v27 = v56[1];
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *&v65 = v28;
      WORD4(v65) = 0;
      v66 = v27;
      v67 = v60;
      v29 = v61;
      v60 = 0;
      v61 = 0;
      v68 = v29;
      if (HIDWORD(v64) == v64)
      {
        WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationItem>(&v63, &v65);
      }

      else
      {
        v30 = v63 + 40 * HIDWORD(v64);
        v31 = v66;
        *v30 = v65;
        *(v30 + 24) = 0;
        *(v30 + 32) = 0;
        *(v30 + 16) = v31;
        v32 = v67;
        v67 = 0;
        *(v30 + 24) = v32;
        LODWORD(v32) = v68;
        LODWORD(v68) = 0;
        *(v30 + 32) = v32;
        LODWORD(v32) = HIDWORD(v68);
        HIDWORD(v68) = 0;
        *(v30 + 36) = v32;
        ++HIDWORD(v64);
      }

      WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v26);
      WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v33);
    }

    v4 = a3;
    v8 = [a3 countByEnumeratingWithState:&v52 objects:v62 count:16];
  }

  while (v8);
LABEL_37:
  if (v4)
  {
    v34 = v4;
    v35 = *(v49 + v48);
    v36 = v4;
  }

  else
  {
    v35 = *(v49 + v48);
  }

  v37 = _Block_copy(a4);
  v38 = WTF::fastMalloc(0x18);
  *v38 = &unk_1F10F95E8;
  v38[1] = v4;
  v38[2] = v37;
  *&v65 = v38;
  WebKit::WebPageProxy::completeTextManipulation(v35, &v63, &v65);
  v39 = v65;
  *&v65 = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  _Block_release(0);
  if (v4)
  {
  }

  WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v40);
}

- (void)_startImageAnalysis:(id)a3 target:(id)a4
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) != 1 || ([MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"], (m_ptr = self->_page.m_ptr) != 0))
    {
      v8 = *(m_ptr + 46);
      CFRetain(*(v8 + 8));
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::visualTranslationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::visualTranslationEnabledKey(void)::key = WebKit::WebPreferencesKey::visualTranslationEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      if (WebKit::WebPreferencesStore::getBoolValueForKey((v8 + 40), &WebKit::WebPreferencesKey::visualTranslationEnabledKey(void)::key, v9))
      {
        v11 = WebKit::languageIdentifierSupportsLiveText(a3, v10);
        CFRelease(*(v8 + 8));
        if (v11)
        {
          v12 = self->_page.m_ptr;
          MEMORY[0x19EB02040](&v18, a3);
          MEMORY[0x19EB02040](&v17, a4);
          if ((*(v12 + 865) & 1) == 0 && *(v12 + 864) == 1)
          {
            v19[0] = &v18;
            v19[1] = &v17;
            WebKit::WebPageProxy::send<Messages::WebPage::StartVisualTranslation>(v12, v19);
          }

          v14 = v17;
          v17 = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v13);
          }

          v15 = v18;
          v18 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v13);
            }
          }
        }
      }

      else
      {
        v16 = *(v8 + 8);

        CFRelease(v16);
      }
    }
  }
}

- (void)_dataTaskWithRequest:(id)a3 runAtForegroundPriority:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v17 = *MEMORY[0x1E69E9840];
  m_ptr = self->_page.m_ptr;
  MEMORY[0x19EB06210](v13, a3);
  v15[0] = 0;
  v16 = 0;
  v8 = _Block_copy(a5);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F10F9610;
  v9[1] = v8;
  v12 = v9;
  WebKit::WebPageProxy::dataTaskWithRequest(m_ptr, v13, v15, v6, &v12);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Block_release(0);
  if (v16 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v15);
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v13);
}

- (void)_takeFindStringFromSelection:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v8 = 0;
  WebKit::WebPageProxy::executeEditCommand(m_ptr, &v9, &v8);
  v5 = v8;
  v8 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = v9;
  v9 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }
}

+ (NSString)_stringForFind
{
  {
    WebKit::globalStringForFind(void)::string = 0;
    goto LABEL_8;
  }

  v2 = WebKit::globalStringForFind(void)::string;
  if (!WebKit::globalStringForFind(void)::string)
  {
LABEL_8:
    v4 = &stru_1F1147748;
    v6 = &stru_1F1147748;
    v2 = 0;
    v10 = 0;
    v5 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(WebKit::globalStringForFind(void)::string, 2u, memory_order_relaxed);
  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v10, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v10;
  v10 = 0;
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = 0;
LABEL_9:
  v7 = v4;
  v8 = v10;
  v10 = 0;
  if (v8)
  {
  }

  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  return &v4->isa;
}

+ (void)_setStringForFind:(id)a3
{
  MEMORY[0x19EB02040](&v7, a3);
  {
    WebKit::globalStringForFind(void)::string = 0;
  }

  v4 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v5 = WebKit::globalStringForFind(void)::string;
  WebKit::globalStringForFind(void)::string = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = v7;
  v7 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }
}

- (WKBrowsingContextHandle)_handle
{
  v2 = [[WKBrowsingContextHandle alloc] _initWithPageProxy:self->_page.m_ptr];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (WKHistoryDelegatePrivate)_historyDelegate
{
  WeakRetained = objc_loadWeakRetained(self->_navigationState.__ptr_ + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  return v3;
}

- (void)_setHistoryDelegate:(id)a3
{
  m_ptr = self->_page.m_ptr;
  WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::NavigationState::HistoryClient,WebKit::NavigationState&>(self->_navigationState.__ptr_, a2, &v9);
  v6 = v9;
  v9 = 0;
  v7 = *(m_ptr + 12);
  *(m_ptr + 12) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v8 = v9;
    v9 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  WebKit::NavigationState::setHistoryDelegate(self->_navigationState.__ptr_, a3);
}

- (void)_updateMediaPlaybackControlsManager
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    }
  }
}

- (void)_togglePictureInPicture
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    }
  }
}

- (void)_nowPlayingMediaTitleAndArtist:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v5 = *(a3 + 2);

  v5(a3, 0, 0);
}

- (void)_convertPoint:(CGPoint)a3 fromFrame:(id)a4 toMainFrameCoordinates:(id)a5
{
  v15 = a3;
  if (!a4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"frame must be non-null"];
  }

  m_ptr = self->_page.m_ptr;
  WebCore::FloatPoint::FloatPoint(v14, &v15);
  v9 = *(a4 + 35);
  v10 = _Block_copy(a5);
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10F9638;
  *(v11 + 1) = v10;
  v13 = v11;
  WebKit::WebPageProxy::convertPointToMainFrameCoordinates(m_ptr, v9, 1, &v13, v14[0], v14[1]);
  v12 = v13;
  v13 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
}

- (void)_convertRect:(CGRect)a3 fromFrame:(id)a4 toMainFrameCoordinates:(id)a5
{
  v15 = a3;
  if (!a4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"frame must be non-null"];
  }

  m_ptr = self->_page.m_ptr;
  WebCore::FloatRect::FloatRect(v14, &v15);
  v9 = *(a4 + 35);
  v10 = _Block_copy(a5);
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10F9660;
  *(v11 + 1) = v10;
  v13 = v11;
  WebKit::WebPageProxy::convertRectToMainFrameCoordinates(m_ptr, v9, 1, &v13, v14[0], v14[1], v14[2], v14[3]);
  v12 = v13;
  v13 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
}

- (void)_toggleInWindow
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    }
  }
}

- (void)_enterInWindow
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    }
  }
}

- (void)_exitInWindow
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    }
  }
}

- (void)_enterFullscreen
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    CFRetain(*(m_ptr + 1));
    WebKit::WebPageProxy::enterFullscreen(m_ptr);
    v3 = *(m_ptr + 1);

    CFRelease(v3);
  }
}

- (void)_pauseAllAnimationsWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else if (a3)
  {
LABEL_4:
    v5 = _Block_copy(a3);
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F10F8FE8;
    v6[1] = v5;
    v11 = v6;
    WebKit::WebPageProxy::pauseAllAnimations(m_ptr, &v11);
    v7 = v11;
    v11 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    _Block_release(0);
    return;
  }

  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F10F9688;
  v11 = v9;
  WebKit::WebPageProxy::pauseAllAnimations(m_ptr, &v11);
  v10 = v11;
  v11 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

- (void)_playAllAnimationsWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else if (a3)
  {
LABEL_4:
    v5 = _Block_copy(a3);
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F10F8FE8;
    v6[1] = v5;
    v11 = v6;
    WebKit::WebPageProxy::playAllAnimations(m_ptr, &v11);
    v7 = v11;
    v11 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    _Block_release(0);
    return;
  }

  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F10F96B0;
  v11 = v9;
  WebKit::WebPageProxy::playAllAnimations(m_ptr, &v11);
  v10 = v11;
  v11 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

- (BOOL)_allowsAnyAnimationToPlay
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  return *(m_ptr + 1120);
}

- (BOOL)_allowAnimationControls
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  if (byte_1EB01D302 == 1)
  {
    v3 = off_1EB01D338;
    if (off_1EB01D338)
    {
LABEL_6:
      LOBYTE(v3) = v3() == 0;
    }
  }

  else
  {
    if (byte_1EB01D303 == 1)
    {
      v4 = qword_1EB01D340;
    }

    else
    {
      v4 = dlopen("/usr/lib/libAccessibility.dylib", 2);
      qword_1EB01D340 = v4;
      byte_1EB01D303 = 1;
    }

    v3 = dlsym(v4, "_AXSReduceMotionAutoplayAnimatedImagesEnabled");
    off_1EB01D338 = v3;
    byte_1EB01D302 = 1;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  return v3;
}

- (void)_setStatisticsCrossSiteLoadWithLinkDecorationForTesting:(id)a3 withToHost:(id)a4 withWasFiltered:(BOOL)a5 withCompletionHandler:(id)a6
{
  v6 = *(self->_page.m_ptr + 198);
  if (v6)
  {
    ++v6[2];
    MEMORY[0x19EB02040](&v21, a3);
    MEMORY[0x19EB01DD0](v22, &v21, 0);
    MEMORY[0x19EB02040](&v19, a4);
    MEMORY[0x19EB01DD0](v20, &v19, 0);
    v10 = _Block_copy(a6);
    v11 = WTF::fastMalloc(0x10);
    *v11 = &unk_1F10F8FE8;
    v11[1] = v10;
    v18 = v11;
    WebKit::WebPageProxyTesting::setCrossSiteLoadWithLinkDecorationForTesting(v6, v22, v20, a5, &v18);
    v12 = v18;
    v18 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    _Block_release(0);
    v14 = v20[0];
    v20[0] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    v15 = v19;
    v19 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v22[0];
    v22[0] = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }

    v17 = v21;
    v21 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v13);
    }

    if (v6[2] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[2];
    }
  }
}

- (unint64_t)_mediaMutedState
{
  v2 = *(*(self->_page.m_ptr + 4) + 1048);
  v3 = v2 & 1;
  if ((v2 & 6) != 0)
  {
    v3 = v2 & 1 | 2;
  }

  return v3 | (v2 >> 1) & 4;
}

- (void)_closeAllMediaPresentations
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self closeAllMediaPresentationsWithCompletionHandler:&__block_literal_global_832];
}

- (void)_stopMediaCapture
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::stopMediaCapture(m_ptr, 16);
}

- (void)_stopAllMediaPlayback
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self pauseAllMediaPlaybackWithCompletionHandler:0];
}

- (void)_suspendAllMediaPlayback
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self setAllMediaPlaybackSuspended:1 completionHandler:0];
}

- (void)_resumeAllMediaPlayback
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self setAllMediaPlaybackSuspended:0 completionHandler:0];
}

- (void)_restoreAppHighlights:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v14[0] = 0;
  v14[1] = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        convertAndAddHighlight(v14, *(*(&v10 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  WebKit::WebPageProxy::restoreAppHighlightsAndScrollToIndex(self->_page.m_ptr, v14, 0);
  WTF::Vector<WTF::Ref<WebCore::SharedMemory,WTF::RawPtrTraits<WebCore::SharedMemory>,WTF::DefaultRefDerefTraits<WebCore::SharedMemory>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v9);
}

- (void)_restoreAndScrollToAppHighlight:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v7[0] = 0;
  v7[1] = 0;
  convertAndAddHighlight(v7, a3);
  WebKit::WebPageProxy::restoreAppHighlightsAndScrollToIndex(self->_page.m_ptr, v7, 0x100000000);
  WTF::Vector<WTF::Ref<WebCore::SharedMemory,WTF::RawPtrTraits<WebCore::SharedMemory>,WTF::DefaultRefDerefTraits<WebCore::SharedMemory>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v6);
}

- (void)_addAppHighlight
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _addAppHighlightInNewGroup:0 originatedInApp:1];
}

- (void)_addAppHighlightInNewGroup:(BOOL)a3 originatedInApp:(BOOL)a4
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::createAppHighlightInSelectedRange(m_ptr, a3, a4);
}

- (void)_textFragmentDirectiveFromSelectionWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F96D8;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebPageProxy::createTextFragmentDirectiveFromSelection(m_ptr, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_requestAllTextWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  location = 0;
  objc_initWeak(&location, self);
  aBlock = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F10F9700;
  *(v5 + 8) = 0;
  objc_moveWeak((v5 + 8), &location);
  v6 = aBlock;
  aBlock = 0;
  v10 = v5;
  *(v5 + 16) = v6;
  WebKit::WebPageProxy::requestAllTextAndRects(m_ptr, &v10);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(aBlock);
  objc_destroyWeak(&location);
}

- (void)_requestTargetedElementInfo:(id)a3 completionHandler:(id)a4
{
  m_ptr = self->_page.m_ptr;
  CFRetain(*(a3 + 2));
  v7 = _Block_copy(a4);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F9728;
  v8[1] = v7;
  v10 = v8;
  WebKit::WebPageProxy::requestTargetedElement(m_ptr, (a3 + 8), &v10);
  v9 = v10;
  v10 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
  CFRelease(*(a3 + 2));
}

- (void)_requestAllTargetableElementsInfo:(double)a3 completionHandler:(id)a4
{
  m_ptr = self->_page.m_ptr;
  v6 = _Block_copy(a4);
  v7 = WTF::fastMalloc(0x10);
  v8 = a3;
  *v7 = &unk_1F10F9750;
  v7[1] = v6;
  v10 = v7;
  WebKit::WebPageProxy::requestAllTargetableElements(m_ptr, &v10, v8);
  v9 = v10;
  v10 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
}

- (NSURL)_mainFrameURL
{
  v2 = *(self->_page.m_ptr + 53);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 + 8));
  WTF::URL::createCFURL(&v7, (v2 + 64));
  v3 = v7;
  v7 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v7;
    v7 = 0;
    if (v5)
    {
    }
  }

  CFRelease(*(v2 + 8));
  return v3;
}

- (void)_loadAlternateHTMLString:(id)a3 baseURL:(id)a4 forUnreachableURL:(id)a5
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v10 = [a3 dataUsingEncoding:4];
  if (v10)
  {
    v22 = v10;
LABEL_7:
    CFRetain(v10);
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E695DEF0] data];
  v22 = v10;
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_8:
  v11 = self->_page.m_ptr;
  WebCore::DataSegment::create();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v19[0];
  MEMORY[0x19EB01DE0](v19, a4);
  MEMORY[0x19EB01DE0](v18, a5);
  WebKit::WebPageProxy::loadAlternateHTML(v11, &v21, &v20, v19, v18, 0);
  v13 = v18[0];
  v18[0] = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = v19[0];
  v19[0] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = v20;
  v20 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  v16 = v21;
  v21 = 0;
  if (v16)
  {
    WTF::ThreadSafeRefCounted<WebCore::DataSegment,(WTF::DestructionThread)0>::deref(v16, v12);
  }

  v17 = v22;
  v22 = 0;
  if (v17)
  {
    CFRelease(v17);
  }
}

- (id)_loadData:(id)a3 MIMEType:(id)a4 characterEncodingName:(id)a5 baseURL:(id)a6 userData:(id)a7
{
  v32 = a3;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebCore::SharedBuffer::create<NSData *&>(&v32, a2, &v30);
  MEMORY[0x19EB02040](&v29, a4);
  MEMORY[0x19EB02040](&v28, a5);
  MEMORY[0x19EB02040](&v27, [a6 absoluteString]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    API::Data::createWithoutCopying(a7, &v26);
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  WebKit::WebPageProxy::loadData(m_ptr, &v30, &v29, &v28, &v27, v13, 0, &v31);
  v15 = v31;
  if (v31)
  {
    v16 = *(v31 + 1);
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v17 = v16;
      CFRelease(*(v15 + 1));
      v18 = v16;
    }

    else
    {
      CFRelease(0);
    }

    v31 = 0;
    if (isKindOfClass)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
    if (isKindOfClass)
    {
LABEL_15:
      v19 = v26;
      v26 = 0;
      if (v19)
      {
        CFRelease(*(v19 + 1));
      }
    }
  }

  v20 = v27;
  v27 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v14);
  }

  v21 = v28;
  v28 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v14);
  }

  v22 = v29;
  v29 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v14);
  }

  v23 = v30;
  v30 = 0;
  if (v23)
  {
    if (atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v23 + 2);
      (*(*v23 + 8))(v23);
    }
  }

  return v16;
}

- (id)_loadRequest:(id)a3 shouldOpenExternalURLs:(BOOL)a4
{
  v4 = a4;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  return [(WKWebView *)self _loadRequest:a3 shouldOpenExternalURLsPolicy:v4];
}

- (id)_loadRequest:(id)a3 shouldOpenExternalURLsPolicy:(int64_t)a4
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  if (a4 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (a4 == 1);
  }

  MEMORY[0x19EB06210](v15, a3);
  v18 = 0;
  WebKit::WebPageProxy::loadRequest(m_ptr, v15, v7, 0, &v18, 0, 1, &v17);
  v8 = v17;
  if (v17)
  {
    v9 = *(v17 + 8);
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v10 = v9;
      CFRelease(*(v8 + 8));
      v11 = v9;
    }

    else
    {
      CFRelease(0);
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = v16;
  v16 = 0;
  if (v12)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v15);
  return v9;
}

- (void)_loadAndDecodeImage:(id)a3 constrainedToSize:(CGSize)a4 maximumBytesFromNetwork:(unint64_t)a5 completionHandler:(id)a6
{
  v34 = a4;
  if (a4.height == 0.0 && a4.width == 0.0)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    WebCore::FloatSize::FloatSize(v32, &v34);
    v10 = 1;
    v11 = v32[0];
  }

  MEMORY[0x19EB06210](v32, a3);
  v12 = WebCore::ResourceRequestBase::url(v32);
  v13 = *v12;
  if (*v12)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v14 = *(v12 + 24);
  v30 = *(v12 + 8);
  v31 = v14;
  m_ptr = self->_page.m_ptr;
  MEMORY[0x19EB06210](v28, a3);
  v16 = _Block_copy(a6);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v24 = v13;
  v25 = v30;
  v26 = v31;
  v17 = WTF::fastMalloc(0x38);
  *v17 = &unk_1F10F9778;
  *(v17 + 1) = v16;
  WTF::URL::URL(v17 + 16, &v24);
  v27 = v17;
  WebKit::WebPageProxy::loadAndDecodeImage(m_ptr, v28, v11, v10, a5, &v27);
  v19 = v27;
  v27 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = v24;
  v24 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v18);
  }

  _Block_release(0);
  v21 = v29;
  v29 = 0;
  if (v21)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v28);
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v22);
  }

  v23 = v33;
  v33 = 0;
  if (v23)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v32);
}

- (void)_getInformationFromImageData:(id)a3 completionHandler:(id)a4
{
  m_ptr = self->_page.m_ptr;
  if (a3)
  {
    v7 = [a3 bytes];
    v8 = [a3 length];
    v9 = v8;
    v18 = 0;
    LODWORD(v19) = 0;
    HIDWORD(v19) = v8;
    if (v8)
    {
      if (HIDWORD(v8))
      {
        __break(0xC471u);
        return;
      }

      v10 = WTF::fastMalloc(v8);
      v11 = 0;
      LODWORD(v19) = v9;
      v18 = v10;
      do
      {
        *(v10 + v11) = *(v7 + v11);
        ++v11;
      }

      while (v9 != v11);
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v12 = _Block_copy(a4);
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10F97A0;
  v13[1] = v12;
  v17 = v13;
  WebKit::WebPageProxy::getInformationFromImageData(m_ptr, &v18, &v17);
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Block_release(0);
  v16 = v18;
  if (v18)
  {
    v18 = 0;
    LODWORD(v19) = 0;
    WTF::fastFree(v16, v15);
  }
}

- (void)_createIconDataFromImageData:(id)a3 withLengths:(id)a4 completionHandler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = a3;
  v28 = 0;
  v8 = [a4 count];
  if (v8)
  {
    if (v8 >> 30)
    {
      __break(0xC471u);
      return;
    }

    LODWORD(v29) = v8;
    v28 = WTF::fastMalloc((4 * v8));
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [a4 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(a4);
        }

        v13 = [*(*(&v24 + 1) + 8 * i) unsignedIntValue];
        LODWORD(v23) = v13;
        if (v13)
        {
          if (HIDWORD(v29) == v29)
          {
            v14 = WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v28, HIDWORD(v29) + 1, &v23);
            *(v28 + HIDWORD(v29)) = *v14;
          }

          else
          {
            *(v28 + HIDWORD(v29)) = v13;
          }

          ++HIDWORD(v29);
        }
      }

      v10 = [a4 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v10);
  }

  WebCore::SharedBuffer::create<NSData *&>(&v30, v9, &v23);
  m_ptr = self->_page.m_ptr;
  v16 = _Block_copy(a5);
  v17 = WTF::fastMalloc(0x10);
  *v17 = &unk_1F10F97C8;
  v17[1] = v16;
  v22 = v17;
  WebKit::WebPageProxy::createIconDataFromImageData(m_ptr, &v23, &v28, &v22);
  v18 = v22;
  v22 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  _Block_release(0);
  v20 = v23;
  v23 = 0;
  if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20 + 2);
    (*(*v20 + 8))(v20);
  }

  v21 = v28;
  if (v28)
  {
    v28 = 0;
    LODWORD(v29) = 0;
    WTF::fastFree(v21, v19);
  }
}

- (void)_decodeImageData:(id)a3 preferredSize:(id)a4 completionHandler:(id)a5
{
  v18 = a3;
  if (a4)
  {
    [a4 CGSizeValue];
    v16.width = v7;
    v16.height = v8;
    WebCore::FloatSize::FloatSize(&v17, &v16);
    v9 = v17;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  WebCore::SharedBuffer::create<NSData *&>(&v18, a2, &v16);
  m_ptr = self->_page.m_ptr;
  v12 = _Block_copy(a5);
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10F97F0;
  v13[1] = v12;
  v17 = v13;
  WebKit::WebPageProxy::decodeImageData(m_ptr, &v16, v9, v10, &v17);
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Block_release(0);
  v15 = *&v16.width;
  v16.width = 0.0;
  if (v15)
  {
    if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15 + 2);
      (*(*v15 + 8))(v15);
    }
  }
}

- (void)_loadServiceWorker:(id)a3 usingModules:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  if (*(m_ptr + 1254) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView was already used to load a service worker"];
    m_ptr = self->_page.m_ptr;
  }

  MEMORY[0x19EB01DE0](v16, a3);
  v10 = _Block_copy(a5);
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10F9818;
  v11[1] = v10;
  v15 = v11;
  WebKit::WebPageProxy::loadServiceWorker(m_ptr, v16, v6, &v15);
  v12 = v15;
  v15 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
  v14 = v16[0];
  v16[0] = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }
  }
}

- (void)_grantAccessToAssetServices
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) != 1 || ([MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"], (m_ptr = self->_page.m_ptr) != 0))
    {

      WebKit::WebPageProxy::grantAccessToAssetServices(m_ptr);
    }
  }
}

- (void)_revokeAccessToAssetServices
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) != 1 || ([MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"], (m_ptr = self->_page.m_ptr) != 0))
    {

      WebKit::WebPageProxy::revokeAccessToAssetServices(m_ptr);
    }
  }
}

- (void)_disableURLSchemeCheckInDataDetectors
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) != 1 || ([MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"], (m_ptr = self->_page.m_ptr) != 0))
    {

      WebKit::WebPageProxy::disableURLSchemeCheckInDataDetectors(m_ptr);
    }
  }
}

- (void)_switchFromStaticFontRegistryToUserFontRegistry
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (*(m_ptr + 1426) != 1 || ([MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"], (m_ptr = self->_page.m_ptr) != 0))
    {

      WebKit::WebPageProxy::switchFromStaticFontRegistryToUserFontRegistry(m_ptr);
    }
  }
}

- (void)_didLoadAppInitiatedRequest:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F9840;
  v6[1] = v5;
  v9 = v6;
  WebKit::WebPageProxy::appPrivacyReportTestingData(m_ptr, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (void)_didLoadNonAppInitiatedRequest:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F9868;
  v6[1] = v5;
  v9 = v6;
  WebKit::WebPageProxy::appPrivacyReportTestingData(m_ptr, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (void)_suspendPage:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v4 = _Block_copy(a3);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F10F9890;
    v5[1] = v4;
    v8 = v5;
    WebKit::WebPageProxy::suspend(m_ptr, &v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    _Block_release(0);
  }

  else
  {
    v7 = *(a3 + 2);

    v7(a3, 0);
  }
}

- (void)_resumePage:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v4 = _Block_copy(a3);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F10F98B8;
    v5[1] = v4;
    v8 = v5;
    WebKit::WebPageProxy::resume(m_ptr, &v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    _Block_release(0);
  }

  else
  {
    v7 = *(a3 + 2);

    v7(a3, 0);
  }
}

- (NSArray)_certificateChain
{
  v2 = *(self->_page.m_ptr + 53);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 + 8));
  WebCore::CertificateInfo::certificateChainFromSecTrust(&arg, *(v2 + 272), v3);
  v4 = arg;
  arg = 0;
  if (v4)
  {
    CFAutorelease(v4);
    v5 = arg;
    arg = 0;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  CFRelease(*(v2 + 8));
  return v4;
}

- (NSString)_MIMEType
{
  v2 = *(self->_page.m_ptr + 53);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 240);
  if (!v3)
  {
    v5 = &stru_1F1147748;
    v6 = &stru_1F1147748;
    v10 = 0;
LABEL_9:
    v7 = v5;
    v8 = v10;
    v10 = 0;
    if (v8)
    {
    }

    return &v5->isa;
  }

  atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v10, v3, a2);
  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v4);
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  return &v5->isa;
}

- (NSString)_userAgent
{
  v2 = *(self->_page.m_ptr + 55);
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (NSString)_applicationNameForUserAgent
{
  v2 = *(self->_page.m_ptr + 56);
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)_setApplicationNameForUserAgent:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  MEMORY[0x19EB02040](&v14, a3);
  WebKit::WebPageProxy::setApplicationNameForUserAgent(m_ptr, &v14, v6);
  v8 = v14;
  v14 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = self->_page.m_ptr;
  MEMORY[0x19EB02040](&v14, a3);
  v11 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  v12 = *(v9 + 57);
  *(v9 + 57) = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v14;
  v14 = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }
  }
}

- (int)_provisionalWebProcessIdentifier
{
  if (![(WKWebView *)self _isValid])
  {
    return 0;
  }

  v3 = *(self->_page.m_ptr + 157);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v3 + 24);
  v4 = v3 + 24;
  *v4 = v5 + 1;
  v6 = *(*(*(v4 + 24) + 16) + 80);
  if (v6)
  {
    v7 = *(v6 + 108);
  }

  else
  {
    v7 = 0;
  }

  WTF::RefCounted<WebKit::ProvisionalPageProxy>::deref(v4);
  return v7;
}

- (int)_gpuProcessIdentifier
{
  result = [(WKWebView *)self _isValid];
  if (result)
  {
    m_ptr = self->_page.m_ptr;

    return WebKit::WebPageProxy::gpuProcessID(m_ptr);
  }

  return result;
}

- (BOOL)_webProcessIsResponsive
{
  v2 = *(self->_page.m_ptr + 44);
  atomic_fetch_add((v2 + 16), 1u);
  if (*(*(v2 + 56) + 72) == 1)
  {
    v3 = *(v2 + 536);
  }

  else
  {
    v3 = 0;
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  return v3 & 1;
}

- (void)_killWebContentProcess
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  if ([(WKWebView *)self _isValid])
  {
    v4 = *(self->_page.m_ptr + 44);
    atomic_fetch_add(v4 + 4, 1u);
    WebKit::AuxiliaryProcessProxy::terminate(v4);
    if (v4)
    {

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4 + 4);
    }
  }
}

- (id)_reloadWithoutContentBlockers
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::reload(m_ptr, 4, &v10);
  v4 = v10;
  if (!v10)
  {
    return 0;
  }

  v10 = 0;
  v5 = *(v4 + 8);
  if (!v5)
  {
    CFRelease(0);
LABEL_10:
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }

    return v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    CFRelease(*(v4 + 8));
    v7 = v5;
    goto LABEL_10;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (id)_reloadExpiredOnly
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::reload(m_ptr, 1, &v10);
  v4 = v10;
  if (!v10)
  {
    return 0;
  }

  v10 = 0;
  v5 = *(v4 + 8);
  if (!v5)
  {
    CFRelease(0);
LABEL_10:
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }

    return v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    CFRelease(*(v4 + 8));
    v7 = v5;
    goto LABEL_10;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)_killWebContentProcessAndResetState
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v4 = *(m_ptr + 44);
  atomic_fetch_add(v4 + 4, 1u);
  WebKit::WebProcessProxy::requestTermination(v4, 2);
  v5 = *(self->_page.m_ptr + 157);
  if (v5)
  {
    v7 = *(v5 + 24);
    v6 = v5 + 24;
    *v6 = v7 + 1;
    v8 = *(*(v6 + 24) + 16);
    v9 = v8 + 4;
    atomic_fetch_add(v8 + 4, 1u);
    WebKit::WebProcessProxy::requestTermination(v8, 2);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v9);
    WTF::RefCounted<WebKit::ProvisionalPageProxy>::deref(v6);
  }

  if (v4)
  {

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4 + 4);
  }
}

- (void)_takePDFSnapshotWithConfiguration:(id)a3 completionHandler:(id)a4
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else if (a3)
  {
LABEL_4:
    v8 = objc_alloc_init(WKPDFConfiguration);
    [a3 rect];
    [(WKPDFConfiguration *)v8 setRect:?];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  [(WKWebView *)self createPDFWithConfiguration:v8 completionHandler:a4];
  if (v8)
  {
  }
}

- (void)_getPDFFirstPageSizeInFrame:(id)a3 completionHandler:(id)a4
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v10 = *(a3 + 3);
  if (v10)
  {
    v11 = self->_page.m_ptr;
    v12 = _Block_copy(a4);
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F10F98E0;
    v13[1] = v12;
    v18 = v10;
    v16 = v13;
    v17 = &v18;
    WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::GetPDFFirstPageSize,WTF::CompletionHandler<void ()(WebCore::FloatSize)>>(v11, &v17, &v16);
    v14 = v16;
    v16 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    _Block_release(0);
  }

  else
  {
    v15 = *(a4 + 2);
    v4.n128_u64[0] = 0;
    v5.n128_u64[0] = 0;

    v15(a4, v4, v5);
  }
}

- (NSData)_sessionStateData
{
  m_ptr = self->_page.m_ptr;
  v12 = 0;
  WebKit::WebPageProxy::sessionState(m_ptr, &v12, v13);
  WebKit::encodeLegacySessionState(v13, &v15);
  v4 = v15;
  if (v15)
  {
    v15 = 0;
    info = v4->info;
    if (info)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v6 = info;
      CFRelease(v4->info);
      v7 = info;
    }

    else
    {
      CFRelease(0);
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      CFRelease(v8->info);
    }
  }

  else
  {
    info = 0;
  }

  v9 = v14;
  v14 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v3);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v3);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return info;
}

- (_WKSessionState)_sessionState
{
  v3 = [_WKSessionState alloc];
  m_ptr = self->_page.m_ptr;
  v12 = 0;
  WebKit::WebPageProxy::sessionState(m_ptr, &v12, v13);
  v5 = [(_WKSessionState *)v3 _initWithSessionState:v13];
  v7 = v5;
  if (v5)
  {
    v8 = v5;
  }

  v9 = v14;
  v14 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v6);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return v7;
}

- (id)_sessionStateWithFilter:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F9908;
  v5[1] = a3;
  v23 = v5;
  WebKit::WebPageProxy::sessionState(m_ptr, &v23, v24);
  v6 = v23;
  v23 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = [_WKSessionState alloc];
  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v17, v24);
  v18 = v25;
  v8 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
  }

  v19 = v8;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  v9 = [(_WKSessionState *)v7 _initWithSessionState:v17];
  v11 = v9;
  if (v9)
  {
    v12 = v9;
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v10);
  v15 = v26;
  v26 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, v14);
  return v11;
}

- (void)_restoreFromSessionStateData:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  BYTE4(v20) = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(v20) = 0;
  WTF::URL::URL(&v21);
  v24 = 1;
  if (a3)
  {
    v6 = [a3 bytes];
    v7 = [a3 length];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (WebKit::decodeLegacySessionState(v6, v7, &v18))
  {
    v9 = self->_page.m_ptr;
    v16.backForwardListState.items.m_buffer = v18;
    v10 = v19;
    v18 = 0;
    v19 = 0;
    *&v16.backForwardListState.items.m_capacity = v10;
    *&v16.backForwardListState.currentIndex.var0.__null_state_ = v20;
    v11 = v21;
    v21 = 0;
    v16.provisionalURL.m_string.m_impl.m_ptr = v11;
    *(&v16.provisionalURL + 8) = v22;
    *&v16.provisionalURL.m_hostEnd = v23;
    LODWORD(v22) = v22 & 0xFFFFFFFE;
    v16.isAppInitiated = v24;
    WebKit::WebPageProxy::restoreFromSessionState(v9, &v16, 1, &v17);
    v13 = v17;
    v17 = 0;
    if (v13)
    {
      CFRelease(*(v13 + 8));
    }

    v14 = v16.provisionalURL.m_string.m_impl.m_ptr;
    v16.provisionalURL.m_string.m_impl.m_ptr = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v12);
  }

  v15 = v21;
  v21 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v8);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v8);
}

- (id)_restoreSessionState:(id)a3 andNavigate:(BOOL)a4
{
  v4 = a4;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_8:
    v19.backForwardListState.currentIndex.__engaged_ = 0;
    v19.renderTreeSize = 0;
    memset(&v19, 0, 17);
    WTF::URL::URL(&v19.provisionalURL);
    v9 = 1;
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_4:
  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v19, a3 + 8);
  *&v19.backForwardListState.currentIndex.var0.__null_state_ = *(a3 + 24);
  v7 = *(a3 + 5);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v19.provisionalURL.m_string.m_impl.m_ptr = v7;
  v8 = *(a3 + 4);
  *(&v19.provisionalURL + 8) = *(a3 + 3);
  *&v19.provisionalURL.m_hostEnd = v8;
  v9 = *(a3 + 80);
LABEL_9:
  v19.isAppInitiated = v9;
  WebKit::WebPageProxy::restoreFromSessionState(m_ptr, &v19, v4, &v20);
  v12 = v20;
  if (v20)
  {
    v20 = 0;
    v13 = *(v12 + 8);
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v14 = v13;
      CFRelease(*(v12 + 8));
      v15 = v13;
    }

    else
    {
      CFRelease(0);
    }

    v16 = v20;
    v20 = 0;
    if (v16)
    {
      CFRelease(*(v16 + 8));
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = v19.provisionalURL.m_string.m_impl.m_ptr;
  v19.provisionalURL.m_string.m_impl.m_ptr = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v11);
    }
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v11);
  return v13;
}

- (BOOL)_tryClose
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  return WebKit::WebPageProxy::tryClose(m_ptr);
}

- (id)_insertAttachmentWithFilename:(id)a3 contentType:(id)a4 data:(id)a5 options:(id)a6 completion:(id)a7
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"The WKWebView is suspended", a5, a6}];
  }

  v13 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:a5];
  v14 = v13;
  if (a3)
  {
    [v13 setPreferredFilename:a3];
  }

  v15 = [(WKWebView *)self _insertAttachmentWithFileWrapper:v14 contentType:a4 completion:a7];
  if (v14)
  {
  }

  return v15;
}

- (id)_insertAttachmentWithFileWrapper:(id)a3 contentType:(id)a4 options:(id)a5 completion:(id)a6
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"The WKWebView is suspended", a5}];
  }

  return [(WKWebView *)self _insertAttachmentWithFileWrapper:a3 contentType:a4 completion:a6];
}

- (id)_insertAttachmentWithFileWrapper:(id)a3 contentType:(id)a4 completion:(id)a5
{
  v8 = self;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    self = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  WTF::createVersion4UUIDString(&v25, self);
  v10 = v8->_page.m_ptr;
  v11 = API::Object::newObject(0x48uLL, 40);
  v12 = API::Attachment::Attachment(v11, &v25, v10);
  API::Attachment::setFileWrapperAndUpdateContentType(v12, a3, a4);
  v13 = v8->_page.m_ptr;
  CFRetain(v11[1]);
  v24 = v11;
  v14 = _Block_copy(a5);
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F10F9930;
  v15[1] = v14;
  v23 = v15;
  WebKit::WebPageProxy::insertAttachment(v13, &v24, &v23);
  v16 = v23;
  v23 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Block_release(0);
  v17 = v24;
  v24 = 0;
  if (v17)
  {
    CFRelease(*(v17 + 1));
  }

  v18 = v11[1];
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v19 = v11[1];
  }

  else
  {
    v19 = 0;
  }

  CFRelease(v19);
  v21 = v25;
  v25 = 0;
  if (v21)
  {
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }
  }

  return v18;
}

- (id)_attachmentForIdentifier:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  MEMORY[0x19EB02040](&v13, a3);
  WebKit::WebPageProxy::attachmentForIdentifier(m_ptr, &v13, v5, &v14);
  v7 = v13;
  v13 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }

  v8 = v14;
  if (!v14)
  {
    return 0;
  }

  v9 = *(v14 + 8);
  if (!v9)
  {
    v10 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *(v8 + 8);
LABEL_13:
    CFRelease(v10);
    return v9;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)_simulateDeviceOrientationChangeWithAlpha:(double)a3 beta:(double)a4 gamma:(double)a5
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::simulateDeviceOrientationChange(m_ptr, a3, a4, a5);
}

- (void)_launchInitialProcessIfNecessary
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::launchInitialProcessIfNecessary(m_ptr);
}

- (void)_clearBackForwardCache
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v4 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(m_ptr + 8) + 16));
  CFRetain(*(v4 + 8));
  WebKit::WebBackForwardCache::removeEntriesForPage(*(v4 + 808), self->_page.m_ptr);
  v5 = *(v4 + 8);

  CFRelease(v5);
}

+ (BOOL)_willUpgradeToHTTPS:(id)a3
{
  MEMORY[0x19EB01DE0](v8, a3);
  shouldBeMadeSecure = WebCore::ContentExtensions::ContentExtensionsBackend::shouldBeMadeSecure(v8, v3);
  v6 = v8[0];
  v8[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return shouldBeMadeSecure;
}

- (void)_showWarningViewWithTitle:(id)a3 warning:(id)a4 details:(id)a5 completionHandler:(id)a6
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__WKWebView_WKPrivate___showWarningViewWithTitle_warning_details_completionHandler___block_invoke;
  v12[3] = &unk_1E76314B0;
  v12[4] = a6;
  [(WKWebView *)self _showWarningViewWithURL:0 title:a3 warning:a4 detailsWithLinks:a5 completionHandler:v12];
}

- (void)_showWarningViewWithURL:(id)a3 title:(id)a4 warning:(id)a5 details:(id)a6 completionHandler:(id)a7
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__WKWebView_WKPrivate___showWarningViewWithURL_title_warning_details_completionHandler___block_invoke;
  v13[3] = &unk_1E76314B0;
  v13[4] = a7;
  [(WKWebView *)self _showWarningViewWithURL:0 title:a4 warning:a5 detailsWithLinks:a6 completionHandler:v13];
}

- (void)_showWarningViewWithURL:(id)a3 title:(id)a4 warning:(id)a5 detailsWithLinks:(id)a6 completionHandler:(id)a7
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  MEMORY[0x19EB01DE0](v29, a3);
  MEMORY[0x19EB02040](&v28, a4);
  MEMORY[0x19EB02040](&v27, a5);
  v26 = a6;
  if (a6)
  {
    v14 = a6;
  }

  v24 = 0;
  v25 = 0;
  v15 = WTF::fastMalloc(0x60);
  WebKit::BrowsingWarning::BrowsingWarning(v15, v29, &v28, &v27, &v26, &v24);
  if (!v25 && v24)
  {
  }

  if (v26)
  {
  }

  v17 = v27;
  v27 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = v28;
  v28 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v16);
  }

  v19 = v29[0];
  v29[0] = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v16);
  }

  v20 = _Block_copy(a7);
  v21 = WTF::fastMalloc(0x10);
  *v21 = &unk_1F10F9958;
  *(v21 + 1) = v20;
  v29[0] = v21;
  [(WKWebView *)self _showWarningView:v15 completionHandler:v29];
  v22 = v29[0];
  v29[0] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  _Block_release(0);
  WTF::RefCounted<WebKit::BrowsingWarning>::deref(v15, v23);
}

- (void)_isJITEnabled:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F9980;
  v6[1] = v5;
  v9 = v6;
  WebKit::WebPageProxy::isJITEnabled(m_ptr, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (void)_evaluateJavaScriptWithoutUserGesture:(id)a3 completionHandler:(id)a4
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _evaluateJavaScript:a3 asAsyncFunction:0 withSourceURL:0 withArguments:0 forceUserGesture:0 inFrame:0 inWorld:+[WKContentWorld completionHandler:"pageWorld"], a4];
}

- (void)_callAsyncJavaScript:(id)a3 arguments:(id)a4 inFrame:(id)a5 inContentWorld:(id)a6 completionHandler:(id)a7
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _evaluateJavaScript:a3 asAsyncFunction:1 withSourceURL:0 withArguments:a4 forceUserGesture:1 inFrame:a5 inWorld:a6 completionHandler:a7];
}

- (BOOL)_allMediaPresentationsClosed
{
  v3 = *(self->_page.m_ptr + 66);
  if (!v3)
  {
    goto LABEL_10;
  }

  ++*(v3 + 4);
  if (WebKit::VideoPresentationManagerProxy::hasMode(v3, 2))
  {
    if (*(v3 + 4) != 1)
    {
      --*(v3 + 4);
LABEL_7:
      isFullScreen = 1;
      return isFullScreen ^ 1;
    }

    v5 = 1;
    goto LABEL_9;
  }

  hasMode = WebKit::VideoPresentationManagerProxy::hasMode(v3, 1);
  v5 = hasMode;
  if (*(v3 + 4) == 1)
  {
LABEL_9:
    (*(*v3 + 24))(v3);
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  --*(v3 + 4);
  if (hasMode)
  {
    goto LABEL_7;
  }

LABEL_10:
  v7 = *(self->_page.m_ptr + 63);
  if (v7)
  {
    ++*(v7 + 5);
    isFullScreen = WebKit::WebFullScreenManagerProxy::isFullScreen(v7);
    if (*(v7 + 5) == 1)
    {
      (*(*v7 + 24))(v7);
    }

    else
    {
      --*(v7 + 5);
    }
  }

  else
  {
    isFullScreen = 0;
  }

  return isFullScreen ^ 1;
}

- (void)_evaluateJavaScript:(id)a3 inFrame:(id)a4 inContentWorld:(id)a5 completionHandler:(id)a6
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _evaluateJavaScript:a3 asAsyncFunction:0 withSourceURL:0 withArguments:0 forceUserGesture:1 inFrame:a4 inWorld:a5 completionHandler:a6];
}

- (void)_evaluateJavaScript:(id)a3 withSourceURL:(id)a4 inFrame:(id)a5 inContentWorld:(id)a6 completionHandler:(id)a7
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _evaluateJavaScript:a3 asAsyncFunction:0 withSourceURL:a4 withArguments:0 forceUserGesture:1 inFrame:a5 inWorld:a6 completionHandler:a7];
}

- (void)_evaluateJavaScript:(id)a3 withSourceURL:(id)a4 inFrame:(id)a5 inContentWorld:(id)a6 withUserGesture:(BOOL)a7 completionHandler:(id)a8
{
  v9 = a7;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _evaluateJavaScript:a3 asAsyncFunction:0 withSourceURL:a4 withArguments:0 forceUserGesture:v9 inFrame:a5 inWorld:a6 completionHandler:a8];
}

- (void)_updateWebpagePreferences:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v6 = [a3 _websiteDataStore];
  v7 = MEMORY[0x1E695D940];
  if (v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Updating WKWebsiteDataStore is only supported during decidePolicyForNavigationAction."];
  }

  if ([a3 _userContentController])
  {
    [MEMORY[0x1E695DF30] raise:*v7 format:@"Updating WKUserContentController is only supported during decidePolicyForNavigationAction."];
  }

  CFRetain(*(a3 + 2));
  API::WebsitePolicies::data((a3 + 8), v9);
  CFRelease(*(a3 + 2));
  WebKit::WebPageProxy::updateWebsitePolicies(self->_page.m_ptr, v9);
  WebKit::WebsitePoliciesData::~WebsitePoliciesData(v9, v8);
}

- (NSString)_remoteInspectionNameOverride
{
  v2 = *(self->_page.m_ptr + 152);
  if (v2)
  {
    v3 = (v2 + 48);
  }

  else
  {
    v3 = MEMORY[0x1E696EBA0];
  }

  v4 = *v3;
  if (*v3)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v11, v4, a2);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }

    v6 = v11;
    v11 = 0;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = &stru_1F1147748;
    v7 = &stru_1F1147748;
    v11 = 0;
  }

  v8 = v6;
  v9 = v11;
  v11 = 0;
  if (v9)
  {
  }

  if (v4)
  {
LABEL_13:
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  return &v6->isa;
}

- (void)_setRemoteInspectionNameOverride:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  MEMORY[0x19EB02040](&v8, a3);
  WebKit::WebPageProxy::setRemoteInspectionNameOverride(m_ptr, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (void)_setAddsVisitedLinks:(BOOL)a3
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  *(m_ptr + 961) = a3;
}

- (NSArray)_corsDisablingPatterns
{
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(self->_page.m_ptr + 1344, &v6);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (void)_setCORSDisablingPatterns:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v7 = a3;
  v6 = &v7;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v5, [a3 count], &v6, 0);
  WebKit::WebPageProxy::setCORSDisablingPatterns(m_ptr, v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v4);
}

- (void)_saveResources:(id)a3 suggestedFileName:(id)a4 completionHandler:(id)a5
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v9 = *(m_ptr + 53);
  if (v9)
  {
    CFRetain(*(v9 + 8));
  }

  v20[0] = 0;
  v20[1] = 0;
  MEMORY[0x19EB02040](&v19, [a3 path]);
  MEMORY[0x19EB02040](&v18, a4);
  v10 = _Block_copy(a5);
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10F99A8;
  v11[1] = v10;
  v17 = v11;
  WebKit::WebPageProxy::saveResources(m_ptr, v9, v20, &v19, &v18, &v17);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
  v14 = v18;
  v18 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = v19;
  v19 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v13);
  if (v9)
  {
    CFRelease(*(v9 + 8));
  }
}

- (void)_archiveWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  m_ptr = self->_page.m_ptr;
  if (!m_ptr || *(m_ptr + 1426) != 1)
  {
    if (a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  if (!a3)
  {
LABEL_4:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Configuration cannot be nil"];
  }

LABEL_5:
  v57 = 0;
  v58 = 0;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v47 = a3;
  v6 = [a3 exclusionRules];
  v7 = [v6 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v7)
  {
    v8 = *v54;
    do
    {
      v9 = 0;
      do
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v53 + 1) + 8 * v9);
        if ([v10 elementLocalName] || objc_msgSend(v10, "attributeLocalNames") && objc_msgSend(objc_msgSend(v10, "attributeLocalNames"), "count"))
        {
          v11 = 0;
          v51 = 0;
          v52 = 0;
          while ([objc_msgSend(v10 "attributeLocalNames")] > v11)
          {
            v12 = [objc_msgSend(v10 "attributeLocalNames")];
            v13 = [objc_msgSend(v10 "attributeValues")];
            if (v12)
            {
              v14 = v13;
              if (![(WTF::AtomStringImpl *)v12 length])
              {
                WTF::AtomStringImpl::add(&v59, v12, v15);
                v48 = v59;
                WTF::AtomStringImpl::add(&v59, v14, v16);
                v49 = v59;
                v18 = HIDWORD(v52);
                if (HIDWORD(v52) == v52)
                {
                  v19 = WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v51, HIDWORD(v52) + 1, &v48);
                  v18 = HIDWORD(v52);
                  v20 = (v51 + 16 * HIDWORD(v52));
                  v21 = *v19;
                  *v19 = 0;
                  v22 = v19 + 1;
                  *v20 = v21;
                }

                else
                {
                  v23 = v48;
                  v20 = (v51 + 16 * HIDWORD(v52));
                  v48 = 0;
                  *v20 = v23;
                  v22 = &v49;
                }

                v24 = *v22;
                *v22 = 0;
                v20[1] = v24;
                HIDWORD(v52) = v18 + 1;
                v25 = v49;
                v49 = 0;
                if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v25, v17);
                }

                v26 = v48;
                v48 = 0;
                if (v26)
                {
                  if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v26, v17);
                  }
                }
              }
            }

            ++v11;
          }

          v27 = [v10 elementLocalName];
          WTF::AtomStringImpl::add(&v59, v27, v28);
          v30 = v59;
          v48 = v59;
          v49 = v51;
          v31 = v52;
          v51 = 0;
          v52 = 0;
          v50 = v31;
          if (HIDWORD(v58) == v58)
          {
            WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MarkupExclusionRule>(&v57, &v48);
          }

          else
          {
            v32 = v57 + 24 * HIDWORD(v58);
            v48 = 0;
            *(v32 + 8) = 0;
            *(v32 + 16) = 0;
            *v32 = v30;
            v33 = v49;
            v49 = 0;
            *(v32 + 8) = v33;
            LODWORD(v33) = v50;
            LODWORD(v50) = 0;
            *(v32 + 16) = v33;
            LODWORD(v33) = HIDWORD(v50);
            HIDWORD(v50) = 0;
            *(v32 + 20) = v33;
            ++HIDWORD(v58);
          }

          WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v29);
          v35 = v48;
          v48 = 0;
          if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, v34);
          }

          WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v34);
        }

        ++v9;
      }

      while (v9 != v7);
      v36 = [v6 countByEnumeratingWithState:&v53 objects:v60 count:16];
      v7 = v36;
    }

    while (v36);
  }

  v37 = self->_page.m_ptr;
  v38 = *(v37 + 53);
  if (v38)
  {
    CFRetain(*(v38 + 8));
  }

  MEMORY[0x19EB02040](&v48, [objc_msgSend(v47 "directory")]);
  MEMORY[0x19EB02040](&v51, [v47 suggestedFileName]);
  v39 = _Block_copy(a4);
  v40 = WTF::fastMalloc(0x10);
  *v40 = &unk_1F10F99D0;
  *(v40 + 1) = v39;
  v59 = v40;
  WebKit::WebPageProxy::saveResources(v37, v38, &v57, &v48, &v51, &v59);
  v41 = v59;
  v59 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  _Block_release(0);
  v43 = v51;
  v51 = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v42);
  }

  v44 = v48;
  v48 = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v42);
    if (!v38)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (v38)
  {
LABEL_48:
    CFRelease(*(v38 + 8));
  }

LABEL_49:
  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v42);
}

- (void)_getMainResourceDataWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = *(m_ptr + 53);
  if (v5)
  {
    CFRetain(*(v5 + 8));
  }

  v6 = _Block_copy(a3);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10F99F8;
  v7[1] = v6;
  v10 = v7;
  WebKit::WebPageProxy::getMainResourceDataOfFrame(m_ptr, v5, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }
}

- (void)_getWebArchiveDataWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self createWebArchiveDataWithCompletionHandler:a3];
}

- (void)_getContentsAsStringWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F9A20;
  v6[1] = v5;
  v9 = v6;
  v10 = 0;
  WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::GetContentsAsString,WTF::CompletionHandler<void ()(WTF::String const&)>>(m_ptr, &v10, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (void)_getContentsAsStringWithCompletionHandlerKeepIPCConnectionAliveForTesting:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  aBlock[0] = _Block_copy(a3);
  WebKit::AuxiliaryProcessProxy::protectedConnection(*(self->_page.m_ptr + 44), &aBlock[1]);
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10F9A48;
  v7 = *aBlock;
  aBlock[1] = 0;
  *(v6 + 8) = v7;
  v11 = v6;
  v12 = 0;
  WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::GetContentsAsString,WTF::CompletionHandler<void ()(WTF::String const&)>>(m_ptr, &v12, &v11);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = aBlock[1];
  aBlock[1] = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
  }

  _Block_release(0);
}

- (void)_getContentsOfAllFramesAsStringWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F9A70;
  v6[1] = v5;
  v9 = v6;
  v10 = 1;
  WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::GetContentsAsString,WTF::CompletionHandler<void ()(WTF::String const&)>>(m_ptr, &v10, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (void)_getContentsAsAttributedStringWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F9A98;
  v6[1] = v5;
  v9 = v6;
  WebKit::WebPageProxy::getContentsAsAttributedString(m_ptr, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (void)_getApplicationManifestWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F9AC0;
  v6[1] = v5;
  v9 = v6;
  WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::GetApplicationManifest,WTF::CompletionHandler<void ()(std::optional<WebCore::ApplicationManifest> const&)>>(m_ptr, &v10, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (void)_getTextFragmentMatchWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F9AE8;
  v6[1] = v5;
  v9 = v6;
  WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::GetTextFragmentMatch,WTF::CompletionHandler<void ()(WTF::String const&)>>(m_ptr, &v10, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (int64_t)_paginationMode
{
  if (((*(self->_page.m_ptr + 841) - 1) & 0xFC) != 0)
  {
    return 0;
  }

  else
  {
    return (*(self->_page.m_ptr + 841) - 1) + 1;
  }
}

- (void)_setPaginationMode:(int64_t)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  if (a3 <= 4)
  {
    v6 = self->_page.m_ptr;

    WebKit::WebPageProxy::setPaginationMode(v6, a3);
  }
}

- (void)_setPaginationBehavesLikeColumns:(BOOL)a3
{
  v3 = a3;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::setPaginationBehavesLikeColumns(m_ptr, v3);
}

- (void)_setPageLength:(double)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::setPageLength(m_ptr, a3);
}

- (void)_setGapBetweenPages:(double)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::setGapBetweenPages(m_ptr, a3);
}

- (void)_setTextZoomFactor:(double)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::setTextZoomFactor(m_ptr, a3);
}

- (void)_setPageZoomFactor:(double)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self setPageZoom:a3];
}

- (_WKDiagnosticLoggingDelegate)_diagnosticLoggingDelegate
{
  v2 = *(self->_page.m_ptr + 18);
  if (!v2)
  {
    return v2;
  }

  if ((*(*v2 + 8))(*(self->_page.m_ptr + 18), a2))
  {
    WeakRetained = objc_loadWeakRetained(v2 + 2);
    v2 = WeakRetained;
    if (WeakRetained)
    {
      v4 = WeakRetained;
    }

    return v2;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (void)_setDiagnosticLoggingDelegate:(id)a3
{
  v3 = *(self->_page.m_ptr + 18);
  if (v3)
  {
    if ((*(*v3 + 64))(*(self->_page.m_ptr + 18), a2))
    {

      WebKit::DiagnosticLoggingClient::setDelegate(v3, a3);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

- (_WKFindDelegate)_findDelegate
{
  v2 = *(self->_page.m_ptr + 16);
  if ((*(*v2 + 7))(v2, a2))
  {
    WeakRetained = objc_loadWeakRetained(v2 + 2);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = WeakRetained;
    }

    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)_setFindDelegate:(id)a3
{
  v4 = *(self->_page.m_ptr + 16);
  if ((*(*v4 + 56))(v4, a2))
  {

    WebKit::FindClient::setDelegate(v4, a3);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)_countStringMatches:(id)a3 options:(unint64_t)a4 maxCount:(unint64_t)a5
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v10 = self->_customContentView.m_ptr;
  if (v10)
  {

    [(WKWebViewContentProvider *)v10 web_countStringMatches:a3 options:a4 maxCount:a5];
  }

  else
  {
    v11 = self->_page.m_ptr;
    MEMORY[0x19EB02040](&v14, a3);
    WebKit::WebPageProxy::countStringMatches(v11, &v14, a4 | (((a4 >> 8) & 1) << 9) | (a4 >> 1) & 0x100, a5);
    v13 = v14;
    v14 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }
  }
}

- (void)_findString:(id)a3 options:(unint64_t)a4 maxCount:(unint64_t)a5
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  MEMORY[0x19EB02040](&v18, a3);
  {
    WebKit::globalStringForFind(void)::string = 0;
  }

  v11 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v12 = WebKit::globalStringForFind(void)::string;
  WebKit::globalStringForFind(void)::string = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v18;
  v18 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = self->_customContentView.m_ptr;
  if (v14)
  {
    [(WKWebViewContentProvider *)v14 web_findString:a3 options:a4 maxCount:a5];
  }

  else
  {
    v15 = self->_page.m_ptr;
    MEMORY[0x19EB02040](&v18, a3);
    WebKit::WebPageProxy::findString(v15, &v18, a4 | (((a4 >> 8) & 1) << 9) | (a4 >> 1) & 0x100, a5);
    v17 = v18;
    v18 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v16);
      }
    }
  }
}

- (void)_hideFindUI
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v4 = self->_customContentView.m_ptr;
  if (v4)
  {

    [(WKWebViewContentProvider *)v4 web_hideFindUI];
  }

  else
  {
    WebKit::WebPageProxy::send<Messages::WebPage::HideFindUI>(self->_page.m_ptr, &v5);
  }
}

- (void)_saveBackForwardSnapshotForItem:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  v6 = self->_page.m_ptr;
  v7 = [a3 _item];
  CFRetain(*(v7 + 8));
  if (*(v6 + 991) == 1)
  {
    {
      byte_1ED6436B0 = 0;
      WebKit::ViewSnapshotStore::singleton(void)::store = 0u;
      *&qword_1ED6436A0 = 0u;
    }

    WebKit::ViewSnapshotStore::recordSnapshot(&WebKit::ViewSnapshotStore::singleton(void)::store, v6, v7);
  }

  v8 = *(v7 + 8);

  CFRelease(v8);
}

- (void)_serviceWorkersEnabled:(id)a3
{
  v4 = [(WKWebViewConfiguration *)self->_configuration.m_ptr preferences];
  CFRetain(*&v4->_preferences.m_storage.data[8]);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey(&v4->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::key, v5);
  CFRelease(*&v4->_preferences.m_storage.data[8]);
  v7 = *(a3 + 2);

  v7(a3, BoolValueForKey);
}

- (void)_clearServiceWorkerEntitlementOverride:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F9B10;
  v6[1] = v5;
  v9 = v6;
  WebKit::WebPageProxy::clearServiceWorkerEntitlementOverride(m_ptr, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (void)_preconnectToServer:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  MEMORY[0x19EB01DE0](v10, a3);
  WebCore::ResourceRequestBase::ResourceRequestBase(v11, v10, 0);
  v12 = 0;
  v7 = v10[0];
  v10[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = *(self->_page.m_ptr + 55);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    v10[0] = v8;
    if (v8[1])
    {
      WebCore::ResourceRequestBase::setHTTPUserAgent(v11, v10);
      v8 = v10[0];
      v10[0] = 0;
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10[0] = 0;
    }

    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }
  }

LABEL_14:
  WebKit::WebPageProxy::preconnectTo(self->_page.m_ptr, v11);
  v9 = v12;
  v12 = 0;
  if (v9)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v11);
}

- (void)_setCanUseCredentialStorage:(BOOL)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  *(m_ptr + 1400) = a3;
  v6 = a3;
  WebKit::WebPageProxy::send<Messages::WebPage::SetCanUseCredentialStorage>(m_ptr, &v6);
}

- (UIColor)_sampledPageTopColor
{
  v2 = *(*(self->_page.m_ptr + 4) + 1944);
  v9 = v2;
  if ((v2 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v2 & 0xFFFFFFFFFFFFLL), 1u);
  }

  WebCore::cocoaColorOrNil(&v10, &v9, a2);
  v4 = v10;
  v10 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v10;
    v10 = 0;
    if (v6)
    {
    }
  }

  if ((v9 & 0x8000000000000) != 0)
  {
    v8 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, v3);
    }
  }

  return v4;
}

- (void)_setInputDelegate:(id)a3
{
  objc_storeWeak(&self->_inputDelegate.m_weakReference, a3);
  m_ptr = self->_page.m_ptr;
  if (a3)
  {
    if ([WKWebView(WKPrivate) _setInputDelegate:]::FormClient::operator new(unsigned long)::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact([WKWebView(WKPrivate) _setInputDelegate:]::FormClient::operator new(unsigned long)::s_heapRef, v5);
    }

    else
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
    }

    v8 = NonCompact;
    *NonCompact = &unk_1F10F8DE0;
    *(NonCompact + 8) = 0;
    objc_initWeak((NonCompact + 8), self);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  WebKit::WebPageProxy::setFormClient(m_ptr, &v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

- (BOOL)_isDisplayingPDF
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(m_ptr + 6, m_ptr + 16);
    m_ptr = *(m_ptr + 3);
    if (m_ptr)
    {
      atomic_fetch_add(m_ptr, 1u);
    }
  }

  v4 = *(self->_page.m_ptr + 46);
  CFRetain(*(v4 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::key = WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v4 + 40), &WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::key, v5);
  CFRelease(*(v4 + 8));
  location = 0;
  objc_initWeak(&location, self);
  if (+[WKPDFView platformSupportsPDFView]&& (v7 = objc_loadWeakRetained(&location), (v8 = v7) != 0))
  {
    WebCore::MIMETypeRegistry::pdfMIMETypes(&v27, v7);
    v10 = v27;
    if (v27)
    {
      v11 = v27 + 8;
    }

    else
    {
      v11 = 0;
    }

    if (v27)
    {
      v12 = v27 + 16 * *v27 + 8;
    }

    else
    {
      v12 = 0;
    }

    if (v11 == v12)
    {
      isKindOfClass = 0;
    }

    else
    {
      v18 = v11 + 16;
      do
      {
        v19 = *(v8 + 86);
        MEMORY[0x19EB02040](&v26, [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v18 - 2)]);
        [v19 providerForMIMEType:&v26];
        v21 = v26;
        v26 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v20);
        }

        isKindOfClass = objc_opt_isKindOfClass();
        v23 = isKindOfClass | (v18 == v12);
        v18 += 16;
      }

      while ((v23 & 1) == 0);
      v10 = v27;
    }

    v27 = 0;
    if (v10)
    {
      WTF::fastFree(v10, v9);
    }

    objc_destroyWeak(&location);
    if ((BoolValueForKey ^ 1) & isKindOfClass)
    {
      isPDFMIMEType = 1;
      if (!m_ptr)
      {
        return isPDFMIMEType;
      }

      goto LABEL_20;
    }
  }

  else
  {
    objc_destroyWeak(&location);
  }

  if (!m_ptr)
  {
    return 0;
  }

  v14 = *(m_ptr + 1);
  if (v14 && (v15 = *(v14 + 408)) != 0)
  {
    CFRetain(*(v15 + 8));
    isPDFMIMEType = WebCore::MIMETypeRegistry::isPDFMIMEType((v15 + 240), v16);
    CFRelease(*(v15 + 8));
  }

  else
  {
    isPDFMIMEType = 0;
  }

LABEL_20:
  if (atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, m_ptr);
    WTF::fastFree(m_ptr, v13);
  }

  return isPDFMIMEType;
}

- (BOOL)_isDisplayingStandaloneImageDocument
{
  v2 = *(self->_page.m_ptr + 53);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 + 8));
  isSupportedImageMIMEType = WebCore::MIMETypeRegistry::isSupportedImageMIMEType((v2 + 240), v3);
  CFRelease(*(v2 + 8));
  return isSupportedImageMIMEType;
}

- (BOOL)_isDisplayingStandaloneMediaDocument
{
  v2 = *(self->_page.m_ptr + 53);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 + 8));
  isSupportedMediaMIMEType = WebCore::MIMETypeRegistry::isSupportedMediaMIMEType((v2 + 240), v3);
  CFRelease(*(v2 + 8));
  return isSupportedMediaMIMEType;
}

- (void)_setLayoutMode:(unint64_t)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::setUseFixedLayout(m_ptr, a3 - 1 < 2);
}

- (CGSize)_fixedLayoutSize
{
  WebCore::IntSize::operator CGSize();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setFixedLayoutSize:(CGSize)a3
{
  v12 = a3;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebCore::FloatSize::FloatSize(v10, &v12);
  v4 = ceilf(v10[0]);
  v5 = 0x7FFFFFFFLL;
  v6 = 0x80000000;
  if (v4 > -2147500000.0)
  {
    v6 = v4;
  }

  if (v4 < 2147500000.0)
  {
    v5 = v6;
  }

  v7 = ceilf(v10[1]);
  if (v7 >= 2147500000.0)
  {
    v8 = 0x7FFFFFFF00000000;
  }

  else if (v7 <= -2147500000.0)
  {
    v8 = 0x8000000000000000;
  }

  else
  {
    v8 = v7 << 32;
  }

  v11 = v8 | v5;
  WebKit::WebPageProxy::setFixedLayoutSize(m_ptr, &v11);
}

- (void)_setBackgroundExtendsBeyondPage:(BOOL)a3
{
  v3 = a3;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::setBackgroundExtendsBeyondPage(m_ptr, v3);
}

- (void)_setViewScale:(double)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  v6 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v7 = ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a3 >= 0.0)
  {
    v7 = 0;
    v6 = 0;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v6 = 1;
  }

  v8 = (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v6;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v8 = 1;
  }

  if ((v8 | v7) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"View scale should be a positive number"];
  }

  v9 = self->_page.m_ptr;
  if (*(v9 + 143) != a3)
  {
    v10 = *(*(v9 + 4) + 2452);
    WebKit::WebPageProxy::setViewportConfigurationViewLayoutSize(v9, &v10, a3, *(v9 + 144));
  }
}

- (void)_getProcessDisplayNameWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F9B38;
  v6[1] = v5;
  v9 = v6;
  WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::GetProcessDisplayName,WTF::CompletionHandler<void ()(WTF::String &&)>>(m_ptr, &v10, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
}

- (void)_setMinimumEffectiveDeviceWidth:(double)a3
{
  m_ptr = self->_page.m_ptr;
  if (*(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  if (*(m_ptr + 144) != a3)
  {
    v6 = [(WKWebView *)self _shouldDeferGeometryUpdates];
    v7 = self->_page.m_ptr;
    if (v6)
    {
      *(v7 + 144) = a3;
    }

    else
    {
      v8 = *(*(v7 + 4) + 2452);
      WebKit::WebPageProxy::setViewportConfigurationViewLayoutSize(v7, &v8, *(v7 + 143), a3);
    }
  }
}

- (void)_setScrollPerformanceDataCollectionEnabled:(BOOL)a3
{
  v3 = a3;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::setScrollPerformanceDataCollectionEnabled(m_ptr, v3);
}

- (NSArray)_scrollPerformanceData
{
  result = *(self->_page.m_ptr + 130);
  if (result)
  {
    return WebKit::RemoteLayerTreeScrollingPerformanceData::data(result);
  }

  return result;
}

- (void)_setAllowsMediaDocumentInlinePlayback:(BOOL)a3
{
  v3 = a3;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  if (*(m_ptr + 673) != v3)
  {
    *(m_ptr + 673) = v3;
    v6 = v3;
    WebKit::WebPageProxy::send<Messages::WebPage::SetAllowsMediaDocumentInlinePlayback>(m_ptr, &v6);
  }
}

- (void)_setFullscreenDelegate:(id)a3
{
  v4 = *(self->_page.m_ptr + 64);
  if ((**v4)(v4, 1))
  {

    WebKit::FullscreenClient::setDelegate(v4, a3);
  }
}

- (_WKFullscreenDelegate)_fullscreenDelegate
{
  v2 = *(self->_page.m_ptr + 64);
  if (!(**v2)(v2, 1))
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 16));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  return v4;
}

- (void)_setMediaCaptureEnabled:(BOOL)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  WebKit::WebPageProxy::setMediaCaptureEnabled(m_ptr, a3);
}

- (void)_setPageMuted:(unint64_t)a3
{
  v3 = a3;
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v5 = v3 & 1;
  if ((v3 & 2) != 0)
  {
    v5 = v3 & 1 | 6;
  }

  if ((v3 & 4) != 0)
  {
    v6 = v5 | 0x38;
  }

  else
  {
    v6 = v5;
  }

  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10FAA80;
  v10 = v7;
  WebKit::WebPageProxy::setMuted(m_ptr, v6, 1, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

- (void)_removeDataDetectedLinks:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
    m_ptr = self->_page.m_ptr;
  }

  v6 = _Block_copy(a3);
  v7 = self->_page.m_ptr;
  if (v7)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v7 + 6, v7 + 16);
    v7 = *(v7 + 3);
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
    }
  }

  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F10F9B60;
  v8[1] = v6;
  v8[2] = v7;
  v10 = v8;
  WebKit::WebPageProxy::removeDataDetectedLinks(m_ptr, &v10);
  v9 = v10;
  v10 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
}

- (void)_doAfterNextPresentationUpdate:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _internalDoAfterNextPresentationUpdate:a3 withoutWaitingForPainting:0 withoutWaitingForAnimatedResize:0];
}

- (void)_doAfterNextPresentationUpdateWithoutWaitingForPainting:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && *(m_ptr + 1426) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  }

  [(WKWebView *)self _internalDoAfterNextPresentationUpdate:a3 withoutWaitingForPainting:1 withoutWaitingForAnimatedResize:0];
}

- (void)_doAfterNextVisibleContentRectUpdate:(id)a3
{
  p_visibleContentRectUpdateCallbacks = &self->_visibleContentRectUpdateCallbacks;
  v5 = _Block_copy(a3);
  v13 = v5;
  m_size = p_visibleContentRectUpdateCallbacks->m_size;
  if (m_size == p_visibleContentRectUpdateCallbacks->m_capacity)
  {
    v7 = WTF::Vector<WTF::BlockPtr<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(p_visibleContentRectUpdateCallbacks, m_size + 1, &v13);
    v8 = p_visibleContentRectUpdateCallbacks->m_size;
    m_size = p_visibleContentRectUpdateCallbacks->m_buffer;
    v9 = *v7;
    *v7 = 0;
    *(m_size + 8 * v8) = v9;
    LODWORD(m_size) = p_visibleContentRectUpdateCallbacks->m_size;
    v10 = v13;
  }

  else
  {
    v11 = v5;
    v10 = 0;
    m_buffer = p_visibleContentRectUpdateCallbacks->m_buffer;
    v13 = 0;
    m_buffer[m_size] = v11;
  }

  p_visibleContentRectUpdateCallbacks->m_size = m_size + 1;
  _Block_release(v10);
  [(WKWebView *)self _scheduleVisibleContentRectUpdate];
}

- (unint64_t)_displayCaptureSurfaces
{
  v2 = *(*(self->_page.m_ptr + 4) + 1880);
  v3 = 2;
  if ((v2 & 0x1C0000) != 0)
  {
    v3 = 3;
  }

  if ((v2 & 0xE00000) != 0)
  {
    return v3;
  }

  else
  {
    return (v2 & 0x1C0000) != 0;
  }
}

- (int64_t)_displayCaptureState
{
  v2 = *(*(self->_page.m_ptr + 4) + 1880);
  if ((v2 & 0x240000) != 0)
  {
    return 1;
  }

  else
  {
    return 2 * ((v2 & 0x480000) != 0);
  }
}

- (int64_t)_systemAudioCaptureState
{
  v2 = *(*(self->_page.m_ptr + 4) + 1880);
  if ((v2 & 0x1000000) != 0)
  {
    return 1;
  }

  else
  {
    return HIBYTE(v2) & 2;
  }
}

- (void)_setDisplayCaptureState:(int64_t)a3 completionHandler:(id)a4
{
  v4 = a4;
  m_ptr = self->_page.m_ptr;
  if (!m_ptr || *(m_ptr + 1426) != 1)
  {
    if (a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  if (!v4)
  {
LABEL_4:
    v4 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3321888768;
    v18[2] = __66__WKWebView_WKPrivate___setDisplayCaptureState_completionHandler___block_invoke;
    v18[3] = &__block_descriptor_33_e8_32c80_ZTSKZ66__WKWebView_WKPrivate___setDisplayCaptureState_completionHandler__E4__95_e5_v8__0l;
  }

LABEL_5:
  v8 = self->_page.m_ptr;
  if (!a3)
  {
    v15 = _Block_copy(v4);
    v16 = WTF::fastMalloc(0x10);
    *v16 = &unk_1F10F9B88;
    v16[1] = v15;
    v17 = v16;
    WebKit::WebPageProxy::stopMediaCapture(v8, 4, &v17);
    v14 = v17;
    if (!v17)
    {
      goto LABEL_12;
    }

LABEL_14:
    (*(*v14 + 8))(v14);
    goto LABEL_12;
  }

  v9 = *(*(v8 + 4) + 1048);
  v10 = v9 | 0x18;
  if (a3 == 1)
  {
    v9 &= 0xE7u;
  }

  if (a3 == 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = _Block_copy(v4);
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10F9BB0;
  v13[1] = v12;
  v17 = v13;
  WebKit::WebPageProxy::setMuted(v8, v11, 1, &v17);
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_12:
  _Block_release(0);
}

- (void)_setSystemAudioCaptureState:(int64_t)a3 completionHandler:(id)a4
{
  v4 = a4;
  m_ptr = self->_page.m_ptr;
  if (!m_ptr || *(m_ptr + 1426) != 1)
  {
    if (a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The WKWebView is suspended"];
  if (!v4)
  {
LABEL_4:
    v4 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3321888768;
    v18[2] = __70__WKWebView_WKPrivate___setSystemAudioCaptureState_completionHandler___block_invoke;
    v18[3] = &__block_descriptor_33_e8_32c84_ZTSKZ70__WKWebView_WKPrivate___setSystemAudioCaptureState_completionHandler__E4__98_e5_v8__0l;
  }

LABEL_5:
  v8 = self->_page.m_ptr;
  if (!a3)
  {
    v15 = _Block_copy(v4);
    v16 = WTF::fastMalloc(0x10);
    *v16 = &unk_1F10F9BD8;
    v16[1] = v15;
    v17 = v16;
    WebKit::WebPageProxy::stopMediaCapture(v8, 8, &v17);
    v14 = v17;
    if (!v17)
    {
      goto LABEL_12;
    }

LABEL_14:
    (*(*v14 + 8))(v14);
    goto LABEL_12;
  }

  v9 = *(*(v8 + 4) + 1048);
  v10 = v9 | 0x10;
  if (a3 == 1)
  {
    v9 &= ~0x10u;
  }

  if (a3 == 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = _Block_copy(v4);
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10F9C00;
  v13[1] = v12;
  v17 = v13;
  WebKit::WebPageProxy::setMuted(v8, v11, 1, &v17);
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_12:
  _Block_release(0);
}

- (void)_setOverrideDeviceScaleFactor:(double)a3
{
  m_ptr = self->_page.m_ptr;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F9C28;
  v8 = v5;
  v6 = a3;
  WebKit::WebPageProxy::setCustomDeviceScaleFactor(m_ptr, &v8, v6);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

- (double)_overrideDeviceScaleFactor
{
  result = COERCE_FLOAT(*(self->_page.m_ptr + 828));
  if ((*(self->_page.m_ptr + 828) & 0x100000000) == 0)
  {
    return 0.0;
  }

  return result;
}

+ (void)_permissionChanged:(id)a3 forOrigin:(id)a4
{
  MEMORY[0x19EB02040](&v9, a3);
  v7 = WebCore::Permissions::toPermissionName(&v9, v5);
  v8 = v9;
  v9 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
    if ((v7 & 0x100) == 0)
    {
      return;
    }
  }

  else if ((v7 & 0x100) == 0)
  {
    return;
  }

  WebKit::WebProcessProxy::permissionChanged(v7, a4 + 24);
}

- (void)_resetVisibilityAdjustmentsForTargetedElements:(id)a3 completionHandler:(id)a4
{
  m_ptr = self->_page.m_ptr;
  elementsFromWKElements(v11, a3);
  v6 = _Block_copy(a4);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10F9C50;
  v7[1] = v6;
  v10 = v7;
  WebKit::WebPageProxy::resetVisibilityAdjustmentsForTargetedElements(m_ptr, v11, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v9);
}

- (void)_adjustVisibilityForTargetedElements:(id)a3 completionHandler:(id)a4
{
  m_ptr = self->_page.m_ptr;
  elementsFromWKElements(v11, a3);
  v6 = _Block_copy(a4);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10F9C78;
  v7[1] = v6;
  v10 = v7;
  WebKit::WebPageProxy::adjustVisibilityForTargetedElements(m_ptr, v11, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v9);
}

- (void)_numberOfVisibilityAdjustmentRectsWithCompletionHandler:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F9CA0;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebPageProxy::numberOfVisibilityAdjustmentRects(m_ptr, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_playPredominantOrNowPlayingMediaSession:(id)a3
{
  if ([(WKWebView *)self _isValid])
  {
    m_ptr = self->_page.m_ptr;
    v6 = _Block_copy(a3);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F10F9CC8;
    v7[1] = v6;
    v10 = v7;
    WebKit::WebPageProxy::playPredominantOrNowPlayingMediaSession(m_ptr, &v10);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    _Block_release(0);
  }

  else
  {
    v9 = *(a3 + 2);

    v9(a3, 0);
  }
}

- (void)_pauseNowPlayingMediaSession:(id)a3
{
  if ([(WKWebView *)self _isValid])
  {
    m_ptr = self->_page.m_ptr;
    v6 = _Block_copy(a3);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F10F9CF0;
    v7[1] = v6;
    v11 = v7;
    active = WebKit::WebPageProxy::tryToSendCommandToActiveControlledVideo(m_ptr, 2);
    WTF::CompletionHandler<void ()(BOOL)>::operator()(&v11, active);
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    _Block_release(0);
  }

  else
  {
    v10 = *(a3 + 2);

    v10(a3, 0);
  }
}

- (void)_simulateClickOverFirstMatchingTextInViewportWithUserInteraction:(id)a3 completionHandler:(id)a4
{
  if (![a3 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The target text must be non-empty."];
  }

  if ([(WKWebView *)self _isValid])
  {
    m_ptr = self->_page.m_ptr;
    MEMORY[0x19EB02040](&v15, a3);
    v8 = _Block_copy(a4);
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F10F9D18;
    v9[1] = v8;
    v14 = v9;
    v16 = &v15;
    WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::SimulateClickOverFirstMatchingTextInViewportWithUserInteraction,WTF::CompletionHandler<void ()(BOOL)>>(m_ptr, &v16, &v14);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    _Block_release(0);
    v12 = v15;
    v15 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }
    }
  }

  else
  {
    v13 = *(a4 + 2);

    v13(a4, 0);
  }
}

- (void)_targetedPreviewForElementWithID:(id)a3 completionHandler:(id)a4
{
  m_ptr = self->_page.m_ptr;
  MEMORY[0x19EB02040](&v14, a3);
  aBlock = _Block_copy(a4);
  v12 = 0;
  objc_initWeak(&v12, self);
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F10F9D40;
  *(v7 + 8) = aBlock;
  *(v7 + 16) = 0;
  objc_moveWeak((v7 + 16), &v12);
  v13 = v7;
  WebKit::WebPageProxy::createTextIndicatorForElementWithID(m_ptr, &v14, &v13);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  objc_destroyWeak(&v12);
  _Block_release(0);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }
}

- (int64_t)_webProcessState
{
  m_ptr = self->_page.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  if (*(m_ptr + 865))
  {
    return 0;
  }

  if (*(m_ptr + 864) != 1)
  {
    return 0;
  }

  v3 = *(m_ptr + 44);
  atomic_fetch_add((v3 + 16), 1u);
  v4 = *(v3 + 1160);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  if (v4 > 2)
  {
    return 0;
  }

  return 3 - v4;
}

- (void)_fetchDataOfTypes:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
  *v7 = MEMORY[0x1E69E9818];
  v7[1] = 50331650;
  v7[2] = WTF::BlockPtr<void ()(NSData *,NSError *)>::fromCallable<[WKWebView(WKPrivate) _fetchDataOfTypes:completionHandler:]::$_48>([WKWebView(WKPrivate) _fetchDataOfTypes:completionHandler:]::$_48)::{lambda(void *,NSData *,NSError *)#1}::__invoke;
  v7[3] = &WTF::BlockPtr<void ()(NSData *,NSError *)>::fromCallable<[WKWebView(WKPrivate) _fetchDataOfTypes:completionHandler:]::$_48>([WKWebView(WKPrivate) _fetchDataOfTypes:completionHandler:]::$_48)::descriptor;
  v7[4] = v6;
  _Block_release(0);
  [(WKWebView *)self fetchDataOfTypes:a3 completionHandler:v7];
  _Block_release(v7);

  _Block_release(0);
}

- (void)_restoreData:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
  *v7 = MEMORY[0x1E69E9818];
  v7[1] = 50331650;
  v7[2] = WTF::BlockPtr<void ()(NSError *)>::fromCallable<[WKWebView(WKPrivate) _restoreData:completionHandler:]::$_49>([WKWebView(WKPrivate) _restoreData:completionHandler:]::$_49)::{lambda(void *,NSError *)#1}::__invoke;
  v7[3] = &WTF::BlockPtr<void ()(NSError *)>::fromCallable<[WKWebView(WKPrivate) _restoreData:completionHandler:]::$_49>([WKWebView(WKPrivate) _restoreData:completionHandler:]::$_49)::descriptor;
  v7[4] = v6;
  _Block_release(0);
  [(WKWebView *)self restoreData:a3 completionHandler:v7];
  _Block_release(v7);

  _Block_release(0);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)presentingApplicationAuditToken
{
  [(WKWebView *)self _protectedPage];
  v4 = v9;
  v5 = (v9 + 1540);
  memset(v8, 0, sizeof(v8));
  if (!*(v9 + 1572))
  {
    v5 = v8;
  }

  v6 = v5[1];
  *retstr->var0 = *v5;
  *&retstr->var0[4] = v6;
  v9 = 0;
  CFRelease(*(v4 + 8));
  return result;
}

- (void)setPresentingApplicationAuditToken:(id *)a3
{
  if (self)
  {
    [(WKWebView *)self _protectedPage];
    self = v5;
  }

  else
  {
    v5 = 0;
  }

  WebKit::WebPageProxy::setPresentingApplicationAuditToken(self, a3);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    CFRelease(*(v4 + 1));
  }
}

- (BOOL)_useSystemAppearance
{
  v2 = [(WKWebViewConfiguration *)self->_configuration.m_ptr preferences];

  return [(WKPreferences *)v2 _useSystemAppearance];
}

- (void)_setUseSystemAppearance:(BOOL)a3
{
  v3 = a3;
  v4 = [(WKWebViewConfiguration *)self->_configuration.m_ptr preferences];

  [(WKPreferences *)v4 _setUseSystemAppearance:v3];
}

- (void)_scrollToEdge:(unint64_t)a3 animated:(BOOL)a4
{
  v5 = a3;
  if (self)
  {
    [(WKWebView *)self _protectedPage];
    self = v7;
  }

  else
  {
    v7 = 0;
  }

  v10 = (v5 << 13) & 0x10000 | ((v5 & 1) << 24) | (((v5 >> 2) & 1) << 8) | (v5 >> 1) & 1;
  v8 = &v10;
  v9 = a4;
  WebKit::WebPageProxy::send<Messages::WebPage::ScrollToEdge>(self, &v8);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    CFRelease(*&v6->super.super._responderFlags);
  }
}

- (void)_setShouldSuppressTopColorExtensionView:(BOOL)a3
{
  if (self->_shouldSuppressTopColorExtensionView != a3)
  {
    self->_shouldSuppressTopColorExtensionView = a3;
    v4 = self;
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F10F9D68;
    v5[1] = self;
    v7 = v5;
    [(WKWebView *)self _doAfterAdjustingColorForTopContentInsetFromUIDelegate:&v7];
    v6 = v7;
    v7 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }
}

- (NSArray)certificateChain
{
  WebCore::CertificateInfo::certificateChainFromSecTrust(&arg, *(*(self->_page.m_ptr + 4) + 1304), a2);
  v2 = arg;
  arg = 0;
  if (!v2)
  {
    return MEMORY[0x1E695E0F0];
  }

  CFAutorelease(v2);
  v3 = arg;
  arg = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  return v2;
}

- (void)_requestTextExtraction:(CGRect)a3 completionHandler:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(WKWebView *)self _isValid])
  {
    goto LABEL_7;
  }

  v10 = *(self->_page.m_ptr + 46);
  CFRetain(*(v10 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v10 + 40), &WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key, v11);
  CFRelease(*(v10 + 8));
  if (BoolValueForKey)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    if (CGRectIsNull(v27))
    {
      v13 = 0;
      v24[0] = 0;
    }

    else
    {
      [(WKWebView *)self convertRect:self->_contentView.m_ptr toView:x, y, width, height];
      aBlock.origin.x = v15;
      aBlock.origin.y = v16;
      aBlock.size.width = v17;
      aBlock.size.height = v18;
      WebCore::FloatRect::FloatRect(v24, &aBlock);
      v13 = 1;
    }

    v24[16] = v13;
    m_ptr = self->_page.m_ptr;
    *&aBlock.origin.x = _Block_copy(a4);
    aBlock.origin.y = 0.0;
    objc_initWeak(&aBlock.origin.y, self);
    v20 = WTF::fastMalloc(0x18);
    *v20 = &unk_1F10F9D90;
    v21 = aBlock.origin.x;
    aBlock.origin.x = 0.0;
    *(v20 + 8) = v21;
    *(v20 + 16) = 0;
    objc_moveWeak((v20 + 16), &aBlock.origin.y);
    v23 = v20;
    WebKit::WebPageProxy::requestTextExtraction(m_ptr, v24, &v23);
    v22 = v23;
    v23 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    objc_destroyWeak(&aBlock.origin.y);
    _Block_release(*&aBlock.origin.x);
  }

  else
  {
LABEL_7:
    v14 = *(a4 + 2);

    v14(a4, 0);
  }
}

- (NSString)_caLayerTreeAsText
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 256;
  v21 = 0;
  WTF::TextStream::startGroup(&v15);
  WTF::TextStream::operator<<();
  dumpCALayer(&v15, [(WKContentView *)self->_contentView.m_ptr layer]);
  WTF::TextStream::endGroup(&v15);
  WTF::TextStream::release(&v13, &v15);
  v3 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v14, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v14 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  v6 = v14;
  v14 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v14;
    v14 = 0;
    if (v8)
    {
    }
  }

  v9 = v13;
  v13 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  v10 = v16;
  v16 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  v11 = v15;
  v15 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  return v6;
}

- (void)_addEventAttributionWithSourceID:(unsigned __int8)a3 destinationURL:(id)a4 sourceDescription:(id)a5 purchaser:(id)a6 reportEndpoint:(id)a7 optionalNonce:(id)a8 applicationBundleID:(id)a9 ephemeral:(BOOL)a10
{
  MEMORY[0x19EB01DE0](v31, a7, a3, a4, a5, a6);
  WebCore::RegistrableDomain::RegistrableDomain(&v32, v31);
  MEMORY[0x19EB01DE0](v29, a4);
  WebCore::RegistrableDomain::RegistrableDomain(&v30, v29);
  v14 = MEMORY[0x19EB02040](&v28, a9);
  WTF::WallTime::now(v14);
  v33[0] = a3;
  v17 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
  }

  v34 = v17;
  v18 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
  }

  v35 = v18;
  v36 = v16;
  v37 = a10;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v51 = 0;
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  v19 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    v20 = v28;
    v52 = v19;
    v28 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v15);
    }
  }

  else
  {
    v52 = 0;
  }

  v21 = v30;
  v30 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v15);
  }

  v22 = v29[0];
  v29[0] = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v15);
  }

  v23 = v32;
  v32 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v15);
  }

  v24 = v31[0];
  v31[0] = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v15);
    if (!a8)
    {
      goto LABEL_26;
    }
  }

  else if (!a8)
  {
    goto LABEL_26;
  }

  MEMORY[0x19EB02040](v31, a8);
  WebCore::PrivateClickMeasurement::setEphemeralSourceNonce();
  v26 = v31[0];
  v31[0] = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

LABEL_26:
  WebKit::WebPageProxy::setPrivateClickMeasurement(self->_page.m_ptr, v33);
  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v33, v27);
}

- (void)_setPageScale:(double)a3 withOrigin:(CGPoint)a4
{
  v16 = a4;
  m_ptr = self->_page.m_ptr;
  WebCore::FloatPoint::FloatPoint(v14, &v16);
  v6 = roundf(v14[0]);
  v7 = 0x7FFFFFFFLL;
  v8 = v6;
  if (v6 <= -2147500000.0)
  {
    v8 = 0x80000000;
  }

  if (v6 < 2147500000.0)
  {
    v7 = v8;
  }

  v9 = roundf(v14[1]);
  v10 = 0x7FFFFFFF00000000;
  v11 = 0x8000000000000000;
  if (v9 > -2147500000.0)
  {
    v11 = v9 << 32;
  }

  if (v9 < 2147500000.0)
  {
    v10 = v11;
  }

  v15 = v10 | v7;
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F10F9DE0;
  v13 = v12;
  WebKit::WebPageProxy::scalePage(m_ptr, &v15, &v13, a3);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }
}

- (double)_pageScale
{
  m_ptr = self->_page.m_ptr;
  v3 = 760;
  if (*(m_ptr + 993))
  {
    v3 = 808;
  }

  return *(m_ptr + v3);
}

- (id)_contentsOfUserInterfaceItem:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"validationBubble"])
  {
    v5 = *(self->_page.m_ptr + 119);
    if (v5)
    {
      ++*v5;
      v6 = (v5 + 16);
    }

    else
    {
      v6 = MEMORY[0x1E696EBA8];
    }

    v7 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    if (v5)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      v8 = 0.0;
    }

    v19 = a3;
    v17 = @"message";
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v16, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v11);
      }
    }

    else
    {
      v16 = &stru_1F1147748;
      v12 = &stru_1F1147748;
    }

    v18[1] = [MEMORY[0x1E696AD98] numberWithDouble:{v8, v16, v17, @"fontSize", v16}];
    v20[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:2];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = v16;
    v16 = 0;
    if (v15)
    {
    }

    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v13);
    }

    if (v5)
    {
      WTF::RefCounted<WebCore::ValidationBubble>::deref(v5);
    }

    return v14;
  }

  else
  {
    m_ptr = self->_contentView.m_ptr;

    return [(WKContentView *)m_ptr _contentsOfUserInterfaceItem:a3];
  }
}

- (void)_requestActiveNowPlayingSessionInfo:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v6 = _Block_copy(a3);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F10F9E08;
    v7[1] = v6;
    v10 = v7;
    WebKit::WebPageProxy::requestActiveNowPlayingSessionInfo(m_ptr, &v10);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    _Block_release(0);
  }

  else
  {
    v9 = *(a3 + 2);
    v3.n128_u64[0] = 0x7FF8000000000000;
    v4.n128_u64[0] = 0x7FF8000000000000;

    v9(a3, 0, 0, &stru_1F1147748, 0, v3, v4);
  }
}

- (void)_setNowPlayingMetadataObserver:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    CFRetain(*(m_ptr + 1));
    if (a3)
    {
      v5 = _Block_copy(a3);
      v6 = WTF::fastMalloc(0x10);
      v7 = WTF::fastMalloc(0x10);
      *v7 = &unk_1F10F8E68;
      v7[1] = v5;
      *v6 = 0;
      v6[1] = v7;
      v9 = v6;
      _Block_release(0);
    }

    else
    {
      v9 = 0;
    }

    WebKit::WebPageProxy::setNowPlayingMetadataObserverForTesting(m_ptr, &v9);
    std::unique_ptr<WTF::Observer<void ()(WebCore::NowPlayingMetadata const&)>>::~unique_ptr[abi:sn200100](&v9, v8);
    CFRelease(*(m_ptr + 1));
  }
}

- (NSString)_scrollingTreeAsText
{
  v2 = *(self->_page.m_ptr + 43);
  v3 = &stru_1F1147748;
  if (!v2)
  {
    return &v3->isa;
  }

  ++*(v2 + 16);
  WebCore::ScrollingTree::scrollingTreeAsText();
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v11);
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v4);
    }
  }

  else
  {
    v11 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  v3 = v11;
  v11 = 0;
  if (v3)
  {
    v6 = v3;
    v7 = v11;
    v11 = 0;
    if (v7)
    {
    }
  }

  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v4);
    }
  }

  v8 = *(v2 + 16);
  if (v8)
  {
    *(v2 + 16) = v8 - 1;
    return &v3->isa;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

- (int)_networkProcessIdentifier
{
  v2 = *(*(self->_page.m_ptr + 51) + 432);
  if (v2)
  {
    v3 = (v2 + 16);
    atomic_fetch_add((v2 + 16), 1u);
    v4 = *(v2 + 80);
    if (v4)
    {
      v5 = *(v4 + 108);
    }

    else
    {
      v5 = 0;
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3);
    return v5;
  }

  else
  {
    result = 289;
    __break(0xC471u);
  }

  return result;
}

- (unint64_t)_countOfUpdatesWithLayerChanges
{
  v2 = *(self->_page.m_ptr + 41);
  if (!v2 || *(v2 + 36))
  {
    return 0;
  }

  else
  {
    v3 = *(v2 + 72);
    *(v2 + 72) = v3 + 1;
    v4 = *(v2 + 280);
    if (v3)
    {
      *(v2 + 72) = v3;
    }

    else
    {
      (*(*v2 + 24))(v2, a2);
    }
  }

  return v4;
}

- (void)_disableBackForwardSnapshotVolatilityForTesting
{
  {
    WebKit::ViewSnapshotStore::singleton(void)::store = 0u;
    *&qword_1ED6436A0 = 0u;
  }

  byte_1ED6436B0 = 1;
}

- (BOOL)_beginBackSwipeForTesting
{
  m_ptr = self->_gestureController.m_ptr;
  if (m_ptr)
  {
    LOBYTE(m_ptr) = WebKit::ViewGestureController::beginSimulatedSwipeInDirectionForTesting(m_ptr, 0);
  }

  return m_ptr;
}

- (BOOL)_completeBackSwipeForTesting
{
  m_ptr = self->_gestureController.m_ptr;
  if (m_ptr)
  {
    [objc_msgSend(*(m_ptr + 23) transitionForDirection:{0), "_completeStoppedInteractiveTransition"}];
  }

  return m_ptr != 0;
}

- (void)_resetNavigationGestureStateForTesting
{
  m_ptr = self->_gestureController.m_ptr;
  if (m_ptr)
  {
    WebKit::ViewGestureController::removeSwipeSnapshot(self->_gestureController.m_ptr);

    WebKit::ViewGestureController::resetState(m_ptr);
  }
}

- (void)_processWillSuspendForTesting:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 44);
    atomic_fetch_add((v4 + 16), 1u);
    v5 = _Block_copy(a3);
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F10F9E30;
    v6[1] = v5;
    v9 = v6;
    WebKit::WebProcessProxy::sendPrepareToSuspend(v4, 0, &v9, 0.0);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    _Block_release(0);
    if (v4)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
    }
  }

  else
  {
    v8 = *(a3 + 2);

    v8(a3);
  }
}

- (void)_processWillSuspendImminentlyForTesting
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v3 = *(m_ptr + 44);
    atomic_fetch_add((v3 + 16), 1u);
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F10F9E58;
    v6 = v4;
    WebKit::WebProcessProxy::sendPrepareToSuspend(v3, 1, &v6, 0.0);
    v5 = v6;
    v6 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      if (!v3)
      {
        return;
      }
    }

    else if (!v3)
    {
      return;
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }
}

- (void)_processDidResumeForTesting
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v3 = *(m_ptr + 44);
    atomic_fetch_add((v3 + 16), 1u);
    WebKit::WebProcessProxy::sendProcessDidResume(v3);
    if (v3)
    {

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
    }
  }
}

- (void)_setThrottleStateForTesting:(int)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 44);
    atomic_fetch_add((v4 + 16), 1u);
    *(v4 + 720) = 1;
    WebKit::WebProcessProxy::didChangeThrottleState(v4, a3);
    *(v4 + 720) = 0;

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
  }
}

- (BOOL)_hasServiceWorkerBackgroundActivityForTesting
{
  m_ptr = self->_page.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v3 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(m_ptr + 8) + 16));

  return WebKit::WebProcessPool::hasServiceWorkerBackgroundActivityForTesting(v3);
}

- (BOOL)_hasServiceWorkerForegroundActivityForTesting
{
  m_ptr = self->_page.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v3 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(m_ptr + 8) + 16));

  return WebKit::WebProcessPool::hasServiceWorkerForegroundActivityForTesting(v3);
}

- (void)_denyNextUserMediaRequest
{
  {
    qword_1ED643598 = 0;
    unk_1ED6435A0 = 0;
    WebKit::UserMediaProcessManager::singleton(void)::manager = &unk_1F1115BD0;
    qword_1ED6435A8 = 0;
    LOBYTE(word_1ED6435B0) = 1;
  }

  HIBYTE(word_1ED6435B0) = 1;
}

- (void)_setIndexOfGetDisplayMediaDeviceSelectedForTesting:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (a3)
    {
      v5 = [a3 unsignedIntValue];
      v6 = v5 & 0xFFFFFF00;
      v7 = v5;
      m_ptr = self->_page.m_ptr;
      v8 = 0x100000000;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v6 = 0;
    }

    v9 = *(m_ptr + 198);
    if (v9)
    {
      v10 = v9[2];
      v9[2] = v10 + 1;
      v11 = v8 | v6 | v7;
      {
        dword_1EB01E114 = 0;
      }

      WebKit::DisplayCaptureSessionManager::singleton(void)::manager = v11;
      byte_1EB01E110 = BYTE4(v11);
      if (v10)
      {
        v9[2] = v10;
      }

      else
      {
        v12 = *(*v9 + 8);

        v12();
      }
    }
  }
}

- (void)_setSystemCanPromptForGetDisplayMediaForTesting:(BOOL)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 198);
    if (v4)
    {
      v5 = v4[2];
      v4[2] = v5 + 1;
      {
        LOBYTE(WebKit::DisplayCaptureSessionManager::singleton(void)::manager) = 0;
        byte_1EB01E110 = 0;
      }

      if (a3)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      dword_1EB01E114 = v6;
      if (v5)
      {
        v4[2] = v5;
      }

      else
      {
        (*(*v4 + 8))();
      }
    }
  }
}

- (BOOL)_wirelessVideoPlaybackDisabled
{
  v2 = *(self->_page.m_ptr + 65);
  if (!v2)
  {
    return 0;
  }

  ++*(v2 + 4);
  v3 = WebKit::PlaybackSessionManagerProxy::wirelessVideoPlaybackDisabled(v2);
  if (*(v2 + 4) == 1)
  {
    (*(*v2 + 24))(v2);
  }

  else
  {
    --*(v2 + 4);
  }

  return v3;
}

- (void)_doAfterProcessingAllPendingMouseEvents:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F9E80;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebPageProxy::doAfterProcessingAllPendingMouseEvents(m_ptr, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

+ (void)_setApplicationBundleIdentifier:(id)a3
{
  MEMORY[0x19EB02040](&v6, a3);
  WTF::setApplicationBundleIdentifierOverride(&v6, v3);
  v5 = v6;
  v6 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

- (id)_scrollbarStateForScrollingNodeID:(unint64_t)a3 processID:(unint64_t)a4 isVertical:(BOOL)a5
{
  v5 = &stru_1F1147748;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    m_ptr = self->_page.m_ptr;
    if (m_ptr)
    {
      WebKit::WebPageProxy::scrollbarStateForScrollingNodeID(m_ptr, a5, &v14);
      v7 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v15, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        v15 = &stru_1F1147748;
        v9 = &stru_1F1147748;
      }

      v5 = v15;
      v15 = 0;
      if (v5)
      {
        v10 = v5;
        v11 = v15;
        v15 = 0;
        if (v11)
        {
        }
      }

      v12 = v14;
      v14 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v8);
      }
    }
  }

  return v5;
}

- (void)_doAfterActivityStateUpdate:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F8FE8;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebPageProxy::addActivityStateUpdateCompletionHandler(m_ptr, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_setPrivateClickMeasurementOverrideTimerForTesting:(BOOL)a3 completionHandler:(id)a4
{
  v4 = *(self->_page.m_ptr + 198);
  if (v4)
  {
    ++v4[2];
    v6 = _Block_copy(a4);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F10F9EA8;
    v7[1] = v6;
    v10 = v7;
    WebKit::WebPageProxyTesting::setPrivateClickMeasurementOverrideTimer(v4, a3, &v10);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    _Block_release(0);
    if (v4[2] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[2];
    }
  }

  else
  {
    v9 = *(a4 + 2);

    v9(a4);
  }
}

- (void)_setPrivateClickMeasurementAttributionReportURLsForTesting:(id)a3 destinationURL:(id)a4 completionHandler:(id)a5
{
  v6 = *(self->_page.m_ptr + 198);
  if (v6)
  {
    ++v6[2];
    MEMORY[0x19EB01DE0](v17, a3);
    MEMORY[0x19EB01DE0](v16, a4);
    v8 = _Block_copy(a5);
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F10F9ED0;
    v9[1] = v8;
    v15 = v9;
    WebKit::WebPageProxyTesting::setPrivateClickMeasurementAttributionReportURLs(v6, v17, v16, &v15);
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    _Block_release(0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v17[0];
    v17[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    if (v6[2] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[2];
    }
  }

  else
  {
    v14 = *(a5 + 2);

    v14(a5);
  }
}

- (void)_setPrivateClickMeasurementAttributionTokenPublicKeyURLForTesting:(id)a3 completionHandler:(id)a4
{
  v5 = *(self->_page.m_ptr + 198);
  if (v5)
  {
    ++v5[2];
    MEMORY[0x19EB01DE0](v13, a3);
    v6 = _Block_copy(a4);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F10F9EF8;
    v7[1] = v6;
    v12 = v7;
    WebKit::WebPageProxyTesting::setPrivateClickMeasurementTokenPublicKeyURL(v5, v13, &v12);
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    _Block_release(0);
    v10 = v13[0];
    v13[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  else
  {
    v11 = *(a4 + 2);

    v11(a4);
  }
}

- (void)_setPrivateClickMeasurementAttributionTokenSignatureURLForTesting:(id)a3 completionHandler:(id)a4
{
  v5 = *(self->_page.m_ptr + 198);
  if (v5)
  {
    ++v5[2];
    MEMORY[0x19EB01DE0](v13, a3);
    v6 = _Block_copy(a4);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F10F9F20;
    v7[1] = v6;
    v12 = v7;
    WebKit::WebPageProxyTesting::setPrivateClickMeasurementTokenSignatureURL(v5, v13, &v12);
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    _Block_release(0);
    v10 = v13[0];
    v13[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  else
  {
    v11 = *(a4 + 2);

    v11(a4);
  }
}

- (void)_setPrivateClickMeasurementAppBundleIDForTesting:(id)a3 completionHandler:(id)a4
{
  v5 = *(self->_page.m_ptr + 198);
  if (v5)
  {
    ++v5[2];
    MEMORY[0x19EB02040](&v13, a3);
    v6 = _Block_copy(a4);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F10F9F48;
    v7[1] = v6;
    v12 = v7;
    WebKit::WebPageProxyTesting::setPrivateClickMeasurementAppBundleID(v5, &v13, &v12);
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    _Block_release(0);
    v10 = v13;
    v13 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  else
  {
    v11 = *(a4 + 2);

    v11(a4);
  }
}

- (void)_dumpPrivateClickMeasurement:(id)a3
{
  v3 = *(self->_page.m_ptr + 198);
  if (v3)
  {
    ++v3[2];
    v4 = _Block_copy(a3);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F10F9F70;
    v5[1] = v4;
    v8 = v5;
    WebKit::WebPageProxyTesting::dumpPrivateClickMeasurement(v3, &v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    _Block_release(0);
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  else
  {
    v7 = *(a3 + 2);

    v7(a3, 0);
  }
}

- (void)_resetInteraction
{
  [(WKContentView *)self->_contentView.m_ptr cleanUpInteraction];
  m_ptr = self->_contentView.m_ptr;

  [(WKContentView *)m_ptr setUpInteraction];
}

- (void)_lastNavigationWasAppInitiated:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F9F98;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebPageProxy::lastNavigationWasAppInitiated(m_ptr, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_appPrivacyReportTestingData:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F9FC0;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebPageProxy::appPrivacyReportTestingData(m_ptr, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_clearAppPrivacyReportTestingData:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F9FE8;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebPageProxy::clearAppPrivacyReportTestingData(m_ptr, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_isLayerTreeFrozenForTesting:(id)a3
{
  v3 = *(self->_page.m_ptr + 198);
  if (v3)
  {
    ++v3[2];
    v4 = _Block_copy(a3);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F10FA010;
    v5[1] = v4;
    v9 = v5;
    v6 = (*(*v3 + 56))(v3);
    IPC::MessageSender::sendWithAsyncReply<Messages::WebPageTesting::IsLayerTreeFrozen,WTF::CompletionHandler<void ()(BOOL)>>(v3, &v10, &v9, v6, 0);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    _Block_release(0);
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  else
  {
    v8 = *(a3 + 2);

    v8(a3, 0);
  }
}

- (void)_computePagesForPrinting:(id)a3 completionHandler:(id)a4
{
  memset(v10, 0, 29);
  v4 = *(a3 + 3);
  if (v4)
  {
    m_ptr = self->_page.m_ptr;
    v6 = _Block_copy(a4);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F10FA038;
    v7[1] = v6;
    v9 = v7;
    WebKit::WebPageProxy::computePagesForPrinting(m_ptr, v4, v10, &v9);
    v8 = v9;
    v9 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    _Block_release(0);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)_gpuToWebProcessConnectionCountForTesting:(id)a3
{
  v4 = *(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(self->_page.m_ptr + 8) + 16)) + 176);
  if (v4)
  {
    atomic_fetch_add((v4 + 16), 1u);
    v5 = _Block_copy(a3);
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F10FA060;
    v6[1] = v5;
    v9 = v6;
    WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::GPUProcess::WebProcessConnectionCountForTesting,WTF::CompletionHandler<void ()(unsigned long long)>>(v4, &v10, &v9, 0, 0, 1);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    _Block_release(0);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
  }

  else
  {
    v8 = *(a3 + 2);

    v8(a3, 0);
  }
}

- (void)_setSystemPreviewCompletionHandlerForLoadTesting:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA088;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebPageProxy::setSystemPreviewCompletionHandlerForLoadTesting(m_ptr, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_terminateIdleServiceWorkersForTesting
{
  v2 = *(self->_page.m_ptr + 44);
  v3 = (v2 + 16);
  atomic_fetch_add((v2 + 16), 1u);
  v4 = *(v2 + 800);
  if (v4)
  {
    CFRetain(*(v4 + 8));
    v5 = *(v4 + 432);
    if (v5)
    {
      atomic_fetch_add((v5 + 16), 1u);
      v6 = *(v2 + 120);
      v7 = WTF::fastMalloc(0x10);
      *v7 = &unk_1F10FA0B0;
      v11 = v6;
      v9 = v7;
      v10 = &v11;
      WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::TerminateIdleServiceWorkers,WTF::CompletionHandler<void ()(void)>>(v5, &v10, &v9, 0, 0, 1);
      v8 = v9;
      v9 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
    }

    CFRelease(*(v4 + 8));
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3);
}

- (void)_getNotifyStateForTesting:(id)a3 completionHandler:(id)a4
{
  v5 = *(self->_page.m_ptr + 44);
  atomic_fetch_add((v5 + 16), 1u);
  MEMORY[0x19EB02040](&v11, a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10FA0D8;
  v6[1] = a4;
  v10 = v6;
  v12 = &v11;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebProcess::GetNotifyStateForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>(v5, &v12, &v10, 0, 0, 1);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
}

- (id)_propertiesOfLayerWithID:(unint64_t)a3
{
  v3 = MEMORY[0x1EEE9AC00](self);
  v107[14] = *MEMORY[0x1E69E9840];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 416);
  v6 = *(v5 + 328);
  if (*(v6 + 36) || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB1DE40);
  }

  v7 = *(*(v5 + 352) + 120);
  v8 = *(v6 + 80);
  *&v94 = v4;
  *(&v94 + 1) = v7;
  v95 = 1;
  v9 = WebKit::RemoteLayerTreeHost::layerForID(v8, &v94);
  v10 = v9;
  if (!v9)
  {
    return 0;
  }

  v11 = v9;
  v106[0] = @"bounds";
  v104[0] = @"x";
  v12 = MEMORY[0x1E696AD98];
  [v10 bounds];
  v105[0] = [v12 numberWithDouble:?];
  v104[1] = @"y";
  v13 = MEMORY[0x1E696AD98];
  [v10 bounds];
  v105[1] = [v13 numberWithDouble:?];
  v104[2] = @"width";
  v14 = MEMORY[0x1E696AD98];
  [v10 bounds];
  v105[2] = [v14 numberWithDouble:v15];
  v104[3] = @"height";
  v16 = MEMORY[0x1E696AD98];
  [v10 bounds];
  v105[3] = [v16 numberWithDouble:v17];
  v107[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:4];
  v106[1] = @"position";
  v102[0] = @"x";
  v18 = MEMORY[0x1E696AD98];
  [v10 position];
  v103[0] = [v18 numberWithDouble:?];
  v102[1] = @"y";
  v19 = MEMORY[0x1E696AD98];
  [v10 position];
  v103[1] = [v19 numberWithDouble:v20];
  v107[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
  v106[2] = @"zPosition";
  v21 = MEMORY[0x1E696AD98];
  [v10 zPosition];
  v107[2] = [v21 numberWithDouble:?];
  v106[3] = @"anchorPoint";
  v100[0] = @"x";
  v22 = MEMORY[0x1E696AD98];
  [v10 anchorPoint];
  v101[0] = [v22 numberWithDouble:?];
  v100[1] = @"y";
  v23 = MEMORY[0x1E696AD98];
  [v10 anchorPoint];
  v101[1] = [v23 numberWithDouble:v24];
  v107[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:2];
  v106[4] = @"anchorPointZ";
  v25 = MEMORY[0x1E696AD98];
  [v10 anchorPointZ];
  v107[4] = [v25 numberWithDouble:?];
  v106[5] = @"transform";
  v98[0] = @"m11";
  v26 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[0] = [v26 numberWithDouble:*&v94];
  v98[1] = @"m12";
  v27 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[1] = [v27 numberWithDouble:v93];
  v98[2] = @"m13";
  v28 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[2] = [v28 numberWithDouble:v92];
  v98[3] = @"m14";
  v29 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[3] = [v29 numberWithDouble:v91];
  v98[4] = @"m21";
  v30 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[4] = [v30 numberWithDouble:v90];
  v98[5] = @"m22";
  v31 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[5] = [v31 numberWithDouble:v89];
  v98[6] = @"m23";
  v32 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[6] = [v32 numberWithDouble:v88];
  v98[7] = @"m24";
  v33 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[7] = [v33 numberWithDouble:v87];
  v98[8] = @"m31";
  v34 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[8] = [v34 numberWithDouble:v86];
  v98[9] = @"m32";
  v35 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[9] = [v35 numberWithDouble:v85];
  v98[10] = @"m33";
  v36 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[10] = [v36 numberWithDouble:v84];
  v98[11] = @"m34";
  v37 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[11] = [v37 numberWithDouble:v83];
  v98[12] = @"m41";
  v38 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[12] = [v38 numberWithDouble:v82];
  v98[13] = @"m42";
  v39 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[13] = [v39 numberWithDouble:v81];
  v98[14] = @"m43";
  v40 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[14] = [v40 numberWithDouble:v80];
  v98[15] = @"m44";
  v41 = MEMORY[0x1E696AD98];
  [v10 transform];
  v99[15] = [v41 numberWithDouble:v79];
  v107[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:16];
  v106[6] = @"sublayerTransform";
  v96[0] = @"m11";
  v42 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[0] = [v42 numberWithDouble:v78];
  v96[1] = @"m12";
  v43 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[1] = [v43 numberWithDouble:v77];
  v96[2] = @"m13";
  v44 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[2] = [v44 numberWithDouble:v76];
  v96[3] = @"m14";
  v45 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[3] = [v45 numberWithDouble:v75];
  v96[4] = @"m21";
  v46 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[4] = [v46 numberWithDouble:v74];
  v96[5] = @"m22";
  v47 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[5] = [v47 numberWithDouble:v73];
  v96[6] = @"m23";
  v48 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[6] = [v48 numberWithDouble:v72];
  v96[7] = @"m24";
  v49 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[7] = [v49 numberWithDouble:v71];
  v96[8] = @"m31";
  v50 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[8] = [v50 numberWithDouble:v70];
  v96[9] = @"m32";
  v51 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[9] = [v51 numberWithDouble:v69];
  v96[10] = @"m33";
  v52 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[10] = [v52 numberWithDouble:v68];
  v96[11] = @"m34";
  v53 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[11] = [v53 numberWithDouble:v67];
  v96[12] = @"m41";
  v54 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[12] = [v54 numberWithDouble:v66];
  v96[13] = @"m42";
  v55 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[13] = [v55 numberWithDouble:v65];
  v96[14] = @"m43";
  v56 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[14] = [v56 numberWithDouble:v64];
  v96[15] = @"m44";
  v57 = MEMORY[0x1E696AD98];
  [v10 sublayerTransform];
  v97[15] = [v57 numberWithDouble:v63];
  v107[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:16];
  v106[7] = @"hidden";
  v107[7] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isHidden")}];
  v106[8] = @"doubleSided";
  v107[8] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isDoubleSided")}];
  v106[9] = @"masksToBounds";
  v107[9] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "masksToBounds")}];
  v106[10] = @"contentsScale";
  v58 = MEMORY[0x1E696AD98];
  [v10 contentsScale];
  v107[10] = [v58 numberWithDouble:?];
  v106[11] = @"rasterizationScale";
  v59 = MEMORY[0x1E696AD98];
  [v10 rasterizationScale];
  v107[11] = [v59 numberWithDouble:?];
  v106[12] = @"opaque";
  v107[12] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isOpaque")}];
  v106[13] = @"opacity";
  v60 = MEMORY[0x1E696AD98];
  [v10 opacity];
  v107[13] = [v60 numberWithFloat:?];
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:14];

  return v61;
}

- (void)_textFragmentRangesWithCompletionHandlerForTesting:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA100;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebPageProxy::getTextFragmentRanges(m_ptr, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_cancelFixedColorExtensionFadeAnimationsForTesting
{
  v3 = 0;
  while (1)
  {
    v4 = WebCore::allBoxSides[v3];
    if (v4 >= 4)
    {
      break;
    }

    [(WKColorExtensionView *)self->_fixedColorExtensionViews.m_sides.__elems_[v4].m_ptr cancelFadeAnimation];
    if (++v3 == 4)
    {
      return;
    }
  }

  __break(1u);
}

- (void)_doAfterNextVisibleContentRectAndPresentationUpdate:
{
  _Block_release(*(a1 + 40));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
  }
}

- (uint64_t)proofreadingSession:didReceiveSuggestions:processedRange:inContext:finished:
{
  *a1 = &unk_1F10F8D08;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)proofreadingSession:didReceiveSuggestions:processedRange:inContext:finished:
{
  WeakRetained = objc_loadWeakRetained((a1 + 216));
  if (WeakRetained)
  {
    if (*(a1 + 64) & 1) != 0 && (v5 = WeakRetained, v6 = WeakRetained[52], v13 = *(a1 + 96), (*(a1 + 192)))
    {
      v7 = *(a1 + 208);
      v8 = _Block_copy(a2);
      v9 = WTF::fastMalloc(0x10);
      *v9 = &unk_1F10F8D08;
      v9[1] = v8;
      v12 = v9;
      WebKit::WebPageProxy::proofreadingSessionDidReceiveSuggestions(v6, a1 + 32, a1 + 80, &v13, a1 + 112, v7, &v12);
      v10 = v12;
      v12 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      _Block_release(0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = a2[2];

    v11(a2);
  }
}

- (void)didEndWritingToolsSession:accepted:
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (*(a1 + 64))
  {
    v3 = WeakRetained;
    WebKit::WebPageProxy::didEndWritingToolsSession(WeakRetained[52], a1 + 32, *(a1 + 80));
  }

  else
  {
    __break(1u);
  }
}

- (uint64_t)didEndWritingToolsSession:accepted:
{
  *a1 = &unk_1F10F8D50;
  objc_destroyWeak(a1 + 9);

  return WTF::fastFree(a1, v2);
}

- (void)compositionSession:didReceiveText:replacementRange:inContext:finished:
{
  WeakRetained = objc_loadWeakRetained((a1 + 248));
  if (WeakRetained)
  {
    if (*(a1 + 64) & 1) != 0 && (v5 = WeakRetained, v6 = WeakRetained[52], v13 = *(a1 + 120), (*(a1 + 224)))
    {
      v7 = *(a1 + 240);
      v8 = _Block_copy(a2);
      v9 = WTF::fastMalloc(0x10);
      *v9 = &unk_1F10F8DB8;
      v9[1] = v8;
      v12 = v9;
      WebKit::WebPageProxy::compositionSessionDidReceiveTextWithReplacementRange(v6, a1 + 32, a1 + 80, &v13, a1 + 144, v7, &v12);
      v10 = v12;
      v12 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      _Block_release(0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = a2[2];

    v11(a2);
  }
}

- (uint64_t)compositionSession:didReceiveText:replacementRange:inContext:finished:
{
  *a1 = &unk_1F10F8DB8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)observeValueForKeyPath:(uint64_t)a1 ofObject:change:context:
{
  Weak = objc_loadWeak((a1 + 8));

  return [Weak _updateScreenTimeBasedOnWindowVisibility];
}

- (uint64_t)observeValueForKeyPath:(id *)a1 ofObject:change:context:
{
  *a1 = &unk_1F10F8ED0;
  objc_destroyWeak(a1 + 1);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)startDownloadUsingRequest:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10F8EF8;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)startDownloadUsingRequest:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10F8EF8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)startDownloadUsingRequest:(uint64_t)result completionHandler:(uint64_t)a2
{
  if (a2)
  {
    v2 = result;
    if (*(a2 + 8) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      result = 117;
      __break(0xC471u);
    }

    else
    {
      v3 = *(*(v2 + 8) + 16);

      return v3();
    }
  }

  return result;
}

- (uint64_t)resumeDownloadFromResumeData:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10F8F20;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)resumeDownloadFromResumeData:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10F8F20;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)resumeDownloadFromResumeData:(uint64_t)result completionHandler:(uint64_t)a2
{
  if (a2)
  {
    v2 = result;
    if (*(a2 + 8) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      result = 117;
      __break(0xC471u);
    }

    else
    {
      v3 = *(*(v2 + 8) + 16);

      return v3();
    }
  }

  return result;
}

- (void)closeAllMediaPresentationsWithCompletionHandler:(void *)a1
{
  v2 = a1[1];
  *a1 = &unk_1F10F8F98;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

- (uint64_t)closeAllMediaPresentationsWithCompletionHandler:(WTF *)this
{
  v3 = *(this + 1);
  *this = &unk_1F10F8F98;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)closeAllMediaPresentationsWithCompletionHandler:(uint64_t)a1
{
  v3 = *(a1 + 8);
  atomic_fetch_add(v3, 1u);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F10F8F70;
  v4[1] = v3;
  v6 = v4;
  WebKit::VideoPresentationModelContext::requestCloseAllMediaPresentations(a2, 0, &v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

- (uint64_t)requestMediaPlaybackStateWithCompletionHandler:(uint64_t)a1
{
  *a1 = &unk_1F10F9010;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)requestMediaPlaybackStateWithCompletionHandler:(const void *)a1
{
  *a1 = &unk_1F10F9010;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)setMicrophoneCaptureState:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10F9060;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)setMicrophoneCaptureState:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10F9060;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)setCameraCaptureState:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10F90B0;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)setCameraCaptureState:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10F90B0;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)_evaluateJavaScript:(void *)a1 asAsyncFunction:withSourceURL:withArguments:forceUserGesture:inFrame:inWorld:completionHandler:
{
  v2 = a1[1];
  *a1 = &unk_1F10F9100;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (uint64_t)_evaluateJavaScript:(WTF *)this asAsyncFunction:(void *)a2 withSourceURL:withArguments:forceUserGesture:inFrame:inWorld:completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F10F9100;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)_evaluateJavaScript:(__n128)a3 asAsyncFunction:withSourceURL:withArguments:forceUserGesture:inFrame:inWorld:completionHandler:
{
  v3 = a1[1];
  if (v3)
  {
    if (!*(this + 128))
    {
      WebKit::JavaScriptEvaluationResult::toID(this, this, v23, a3);
      (*(v3 + 16))(v3, v23[0], 0);
      v9 = v23[0];
      v23[0] = 0;
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }

    if (*(this + 128) == 1)
    {
      if ((*(this + 32) & 1) == 0)
      {
        createNSError(WKErrorJavaScriptResultTypeIsUnsupported, 0, &v22);
        v10 = v22;
        goto LABEL_34;
      }

      a1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (*(this + 32))
      {
        v6 = a1;
        v7 = *(this + 16);
        if (v7 > 2)
        {
          v8 = 0;
        }

        else
        {
          v8 = qword_19E7035C0[v7];
        }

        localizedDescriptionForErrorCode(v8, v5, v23);
        a1 = [v6 setObject:v23[0] forKey:*MEMORY[0x1E696A578]];
        v11 = v23[0];
        v23[0] = 0;
        if (v11)
        {
        }

        if (*(this + 32))
        {
          v12 = *this;
          if (*this)
          {
            atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](v23, v12);
            if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v13);
            }
          }

          else
          {
            v23[0] = &stru_1F1147748;
            v14 = &stru_1F1147748;
          }

          a1 = [v6 setObject:v23[0] forKey:@"WKJavaScriptExceptionMessage"];
          v15 = v23[0];
          v23[0] = 0;
          if (v15)
          {
          }

          if (*(this + 32))
          {
            a1 = [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", *(this + 2)), @"WKJavaScriptExceptionLineNumber"}];
            if (*(this + 32))
            {
              a1 = [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", *(this + 3)), @"WKJavaScriptExceptionColumnNumber"}];
              if (*(this + 32))
              {
                v18 = *(this + 3);
                v17 = (this + 24);
                v16 = v18;
                if (v18 && *(v16 + 4))
                {
                  WTF::URL::URL(v23, v17);
                  WTF::URL::createCFURL(&v24, v23);
                  v20 = v23[0];
                  v23[0] = 0;
                  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v20, v19);
                  }

                  if (v24)
                  {
                    [v6 setObject:v24 forKey:@"WKJavaScriptExceptionSourceURL"];
                    v21 = v24;
                    v24 = 0;
                    if (v21)
                    {
                    }
                  }
                }

                v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:v8 userInfo:v6];
                v22 = v10;
                if (v6)
                {
                }

LABEL_34:
                (*(v3 + 16))(v3, 0, v10);
                v9 = v22;
                v22 = 0;
                if (!v9)
                {
                  return;
                }

LABEL_9:

                return;
              }
            }
          }
        }
      }

      __break(1u);
    }

    mpark::throw_bad_variant_access(a1);
  }
}

- (uint64_t)takeSnapshotWithConfiguration:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10F9150;
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  _Block_release(*(a1 + 80));
  _Block_release(*(a1 + 72));
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
  }

  return a1;
}

{
  *a1 = &unk_1F10F9150;
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  _Block_release(*(a1 + 80));
  _Block_release(*(a1 + 72));
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(a1, v3);
}

- (uint64_t)takeSnapshotWithConfiguration:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10F9128;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)takeSnapshotWithConfiguration:(uint64_t)a1 completionHandler:
{
  v2 = *(a1 + 88);
  if ((*(v2 + 865) & 1) != 0 || (*(v2 + 864) & 1) == 0)
  {
    kdebug_trace();
    createNSError(WKErrorUnknown, 0, v12);
    (*(*(a1 + 80) + 16))();
    v7 = v12[0];
    v12[0] = 0;
    if (v7)
    {
LABEL_8:
    }
  }

  else
  {
    [MEMORY[0x1E6979518] activate];
    v3 = MEMORY[0x1E6979518];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = ___ZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__EN4__24clEv_block_invoke;
    v12[3] = &__block_descriptor_104_e8_32c87_ZTSKZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__EN4__24clEvEUlvE__e5_v8__0l;
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    v8 = *(a1 + 16);
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v5 = *(a1 + 72);
    v11 = *(a1 + 64);
    *(a1 + 72) = 0;
    v13 = v4;
    if (v4)
    {
      v6 = v4;
    }

    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    aBlock = _Block_copy(v5);
    [v3 addCommitHandler:v12 forPhase:2];
    _Block_release(v5);
    if (v4)
    {
    }

    _Block_release(aBlock);
    v7 = v13;
    v13 = 0;
    if (v7)
    {
      goto LABEL_8;
    }
  }
}

- (uint64_t)findString:(uint64_t)a1 withConfiguration:completionHandler:
{
  *a1 = &unk_1F10F91D8;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)findString:(const void *)a1 withConfiguration:completionHandler:
{
  *a1 = &unk_1F10F91D8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)findString:(uint64_t)a1 withConfiguration:(uint64_t)a2 completionHandler:
{
  v3 = [[WKFindResult alloc] _initWithMatchFound:a2];
  (*(*(a1 + 8) + 16))();
  if (v3)
  {
  }
}

- (uint64_t)_showWarningView:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10F9200;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  objc_destroyWeak((a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10F9200;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  objc_destroyWeak((a1 + 8));

  return WTF::fastFree(a1, v3);
}

- (void)_showWarningView:(uint64_t)a1 completionHandler:(unsigned __int8 *)a2
{
  WTF::CompletionHandler<void ()(mpark::variant<WebKit::ContinueUnsafeLoad,WTF::URL> &&)>::operator()((a1 + 16));
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (a2[40] == 1)
    {
      v6 = 1;
    }

    else
    {
      if (a2[40])
      {
        mpark::throw_bad_variant_access(WeakRetained);
      }

      v6 = *a2;
    }

    v7 = [WeakRetained[60] forMainFrameNavigation];
    if ((v6 & v7 & 1) == 0)
    {
      v8 = v5[60];
      if ((v6 | v7) & 1 | (v8 == 0))
      {
        v5[60] = 0;
        [v8 removeFromSuperview];
        if (v8)
        {
        }
      }

      else
      {
        WebKit::WebPageProxy::goBack(v5[52], &v10);
        v9 = v10;
        v10 = 0;
        if (v9)
        {
          CFRelease(*(v9 + 8));
        }
      }
    }
  }
}

- (uint64_t)_internalDoAfterNextPresentationUpdate:(uint64_t)a1 withoutWaitingForPainting:withoutWaitingForAnimatedResize:
{
  *a1 = &unk_1F10F9250;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
  }

  _Block_release(*(a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10F9250;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
  }

  _Block_release(*(a1 + 8));

  return WTF::fastFree(a1, v3);
}

- (uint64_t)_internalDoAfterNextPresentationUpdate:(const void *)a1 withoutWaitingForPainting:withoutWaitingForAnimatedResize:
{
  *a1 = &unk_1F10F9228;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)_internalDoAfterNextPresentationUpdate:(uint64_t)a1 withoutWaitingForPainting:withoutWaitingForAnimatedResize:
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if ((*(a1 + 16) & 1) != 0 || (v3 = *(a1 + 24), !*(v3 + 796)))
    {
      v11 = v2[2];

      v11();
    }

    else
    {
      v4 = v3 + 1720;
      v5 = _Block_copy(v2);
      v6 = *(v4 + 12);
      if (v6 == *(v4 + 8))
      {
        v7 = v6 + (v6 >> 1);
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (v7 <= 0x10)
        {
          v8 = 16;
        }

        else
        {
          v8 = v7;
        }

        WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v4, v8);
        v6 = *(v4 + 12);
        v9 = *v4;
        v10 = WTF::fastMalloc(0x10);
      }

      else
      {
        v9 = *v4;
        v10 = WTF::fastMalloc(0x10);
      }

      *v10 = &unk_1F10F9278;
      v10[1] = v5;
      *(v9 + 8 * v6) = v10;
      ++*(v4 + 12);

      _Block_release(0);
    }
  }
}

- (uint64_t)_internalDoAfterNextPresentationUpdate:withoutWaitingForPainting:withoutWaitingForAnimatedResize:
{
  *a1 = &unk_1F10F9278;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)createPDFWithConfiguration:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10F92A0;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)createPDFWithConfiguration:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10F92A0;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)createPDFWithConfiguration:(uint64_t)a1 completionHandler:(WebCore::SharedBuffer *)a2
{
  v3 = *a2;
  if (*a2 && *(v3 + 7))
  {
    WebCore::SharedBuffer::createCFData(&cf, v3);
    (*(*(a1 + 8) + 16))();
    v4 = cf;
    cf = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    createNSError(WKErrorUnknown, 0, &cf);
    (*(*(a1 + 8) + 16))();
    v5 = cf;
    cf = 0;
    if (v5)
    {
    }
  }
}

- (uint64_t)createWebArchiveDataWithCompletionHandler:(uint64_t)a1
{
  *a1 = &unk_1F10F92C8;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)createWebArchiveDataWithCompletionHandler:(const void *)a1
{
  *a1 = &unk_1F10F92C8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)createWebArchiveDataWithCompletionHandler:(uint64_t)a1
{
  if (a2)
  {
    if (*(a2 + 8) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      v3 = *(*(a1 + 8) + 16);

      v3();
    }
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:0];
    (*(*(a1 + 8) + 16))();
    if (v4)
    {
    }
  }
}

- (uint64_t)willBeginWritingToolsSession:(uint64_t)a1 requestContexts:
{
  *a1 = &unk_1F10F92F0;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)willBeginWritingToolsSession:(const void *)a1 requestContexts:
{
  *a1 = &unk_1F10F92F0;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)willBeginWritingToolsSession:(uint64_t)a1 requestContexts:(uint64_t)a2
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a2 + 12)];
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 80 * v5;
    do
    {
      WebKit::convertToPlatformContext(v6, &v10);
      [v4 addObject:v10];
      v8 = v10;
      v10 = 0;
      if (v8)
      {
      }

      v6 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  return (*(*(a1 + 8) + 16))();
}

- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 rectsForProofreadingSuggestionsInRange:completion:
{
  *a1 = &unk_1F10F9340;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)intelligenceTextEffectCoordinator:(const void *)a1 rectsForProofreadingSuggestionsInRange:completion:
{
  *a1 = &unk_1F10F9340;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)intelligenceTextEffectCoordinator:(uint64_t)a1 rectsForProofreadingSuggestionsInRange:(uint64_t)a2 completion:
{
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 12)];
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      NSArrayElement = WebCore::makeNSArrayElement(v6, v4);
      if (NSArrayElement)
      {
        [v9 addObject:NSArrayElement];
      }

      v6 = (v6 + 16);
      v7 -= 16;
    }

    while (v7);
  }

  (*(*(a1 + 8) + 16))();
  if (v9)
  {
  }
}

- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 updateTextVisibilityForRange:visible:identifier:completion:
{
  *a1 = &unk_1F10F9368;
  objc_destroyWeak((a1 + 16));
  _Block_release(*(a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10F9368;
  objc_destroyWeak((a1 + 16));
  _Block_release(*(a1 + 8));

  return WTF::fastFree(a1, v2);
}

- (void)intelligenceTextEffectCoordinator:(uint64_t)a1 updateTextVisibilityForRange:visible:identifier:completion:
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v3 = *(a1 + 8);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained _doAfterNextPresentationUpdate:v3];
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 8);

    v4(v5);
  }
}

- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 textPreviewsForRange:completion:
{
  *a1 = &unk_1F10F9390;
  objc_destroyWeak((a1 + 16));
  _Block_release(*(a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10F9390;
  objc_destroyWeak((a1 + 16));
  _Block_release(*(a1 + 8));

  return WTF::fastFree(a1, v2);
}

- (void)intelligenceTextEffectCoordinator:(uint64_t)a1 textPreviewsForRange:(uint64_t *)a2 completion:
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = *a2;
    if (*a2)
    {
      v7 = *(WeakRetained + 82);
      v8 = *(v6 + 40);
      v9 = *(v6 + 24);
      v29[0] = *(v6 + 8);
      v29[1] = v9;
      v29[2] = v8;
      WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v30, v6 + 56);
      v32 = *(v6 + 72);
      v10 = *(v6 + 80);
      if (v10)
      {
        ++v10[4];
      }

      v33 = v10;
      v11 = *(v6 + 88);
      if (v11)
      {
        ++v11[4];
      }

      v34 = v11;
      v12 = *(v6 + 96);
      if (v12)
      {
        ++v12[4];
      }

      v13 = *(v6 + 104);
      v35 = v12;
      v36 = v13;
      if ((v13 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v13 & 0xFFFFFFFFFFFFLL), 1u);
      }

      v14 = *(v6 + 112);
      *&v37[9] = *(v6 + 121);
      *v37 = v14;
      v15 = [v7 _createTargetedPreviewFromTextIndicator:v29 previewContainer:v5];
      v21 = v15;
      if (v15)
      {
        v22 = v15;
      }

      if ((v36 & 0x8000000000000) != 0)
      {
        v28 = (v36 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v36 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v28);
          WTF::fastFree(v28, v16);
        }
      }

      v23 = v35;
      v35 = 0;
      if (v23)
      {
        if (v23[4] == 1)
        {
          (*(*v23 + 8))(v23);
        }

        else
        {
          --v23[4];
        }
      }

      v24 = v34;
      v34 = 0;
      if (v24)
      {
        if (v24[4] == 1)
        {
          (*(*v24 + 8))(v24);
        }

        else
        {
          --v24[4];
        }
      }

      v25 = v33;
      v33 = 0;
      if (v25)
      {
        if (v25[4] == 1)
        {
          (*(*v25 + 8))(v25);
        }

        else
        {
          --v25[4];
        }
      }

      v26 = v30;
      if (v30)
      {
        v30 = 0;
        v31 = 0;
        WTF::fastFree(v26, v16);
      }

      (*(*(a1 + 8) + 16))(*(a1 + 8), v21, v17, v18, v19, v20);
      if (v21)
      {
      }
    }

    else
    {
      (*(*(a1 + 8) + 16))();
    }
  }

  else
  {
    v27 = *(*(a1 + 8) + 16);

    v27();
  }
}

- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 contentPreviewForRange:completion:
{
  *a1 = &unk_1F10F93B8;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)intelligenceTextEffectCoordinator:(const void *)a1 contentPreviewForRange:completion:
{
  *a1 = &unk_1F10F93B8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (atomic_uchar)intelligenceTextEffectCoordinator:(WebCore:(uint64_t *)a2 :DestinationColorSpace *)a1 contentPreviewForRange:completion:
{
  if (*a2 && (v3 = *(*a2 + 96)) != 0)
  {
    ++v3[4];
    v5 = WebCore::DestinationColorSpace::SRGB(a1);
    (*(*v3 + 304))(&v21, v3, v5);
    if (v21 && (v6 = WebCore::NativeImage::platformImage(v21), (v7 = *v6) != 0))
    {
      CFRetain(*v6);
      v8 = *a2;
      v20 = *(*a2 + 24);
      WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v18, v8 + 56);
      v9 = [_WKTextPreview alloc];
      WebCore::FloatRect::operator CGRect();
      v10 = [(_WKTextPreview *)v9 initWithSnapshotImage:v7 presentationFrame:?];
      (*(*(a1 + 1) + 16))();
      if (v10)
      {
      }

      v12 = v18;
      if (v18)
      {
        v18 = 0;
        v19 = 0;
        WTF::fastFree(v12, v11);
      }

      CFRelease(v7);
    }

    else
    {
      (*(*(a1 + 1) + 16))();
    }

    result = v21;
    v21 = 0;
    if (result)
    {
      do
      {
        v16 = result[1];
        if ((v16 & 1) == 0)
        {
          result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(result[1], v13);
          goto LABEL_19;
        }

        v17 = result[1];
        atomic_compare_exchange_strong_explicit(result + 1, &v17, (v16 - 2), memory_order_relaxed, memory_order_relaxed);
      }

      while (v17 != v16);
      if (v16 == 3)
      {
        result = (*(*result + 1))(result);
      }
    }

LABEL_19:
    if (v3[4] == 1)
    {
      return (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  else
  {
    v14 = *(*(a1 + 1) + 16);

    return v14();
  }

  return result;
}

- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 decorateReplacementsForRange:completion:
{
  *a1 = &unk_1F10F93E0;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)intelligenceTextEffectCoordinator:(const void *)a1 decorateReplacementsForRange:completion:
{
  *a1 = &unk_1F10F93E0;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)intelligenceTextEffectCoordinator:(uint64_t)a1 setSelectionForRange:completion:
{
  *a1 = &unk_1F10F9408;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)intelligenceTextEffectCoordinator:(const void *)a1 setSelectionForRange:completion:
{
  *a1 = &unk_1F10F9408;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)fetchDataOfTypes:(uint64_t)a1 completionHandler:(WTF::StringImpl *)a2
{
  *a1 = &unk_1F10F9430;
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v4, a2);
  }

  _Block_release(*(a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10F9430;
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v4, a2);
  }

  _Block_release(*(a1 + 8));

  return WTF::fastFree(a1, v5);
}

- (void)fetchDataOfTypes:(uint64_t)a1 completionHandler:
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v12[1] = *MEMORY[0x1E69E9840];
  WTF::Persistence::Encoder::Encoder(&v9);
  WTF::Persistence::Encoder::operator<<();
  WTF::Persistence::Encoder::operator<<();
  if (!*(v1 + 28))
  {
    goto LABEL_10;
  }

  v2 = 0;
  do
  {
    WTF::Persistence::Encoder::operator<<();
    ++v2;
    v3 = *(v1 + 28);
  }

  while (v2 < v3);
  if (!v3)
  {
LABEL_10:
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:v10];
    (*(*(v1 + 8) + 16))();
    goto LABEL_11;
  }

  v4 = *(v1 + 16);
  v5 = 4 * v3;
  while (*v4)
  {
LABEL_9:
    ++v4;
    v5 -= 4;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v6 = *(v1 + 32);
  if (*(v6 + 16))
  {
    WTF::Persistence::Coder<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::encodeForPersistence<WTF::Persistence::Encoder>(&v9, (v6 + 8));
    goto LABEL_9;
  }

  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"Unknown error occurred while fetching data.";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:v8];
  (*(*(v1 + 8) + 16))();
LABEL_11:
  if (v7)
  {
  }

  WTF::Persistence::Encoder::~Encoder(&v9);
}

- (void)fetchDataOfTypes:()WTF::ShouldValidateKey completionHandler:
{
  *a1 = &unk_1F10F9458;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5);
  }

  return a1;
}

- (uint64_t)fetchDataOfTypes:()WTF::ShouldValidateKey completionHandler:
{
  *this = &unk_1F10F9458;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5);
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)restoreData:(uint64_t)a1 completionHandler:(void *)a2
{
  *a1 = &unk_1F10F9480;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WTF::RetainPtr<NSError>>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  _Block_release(*(a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10F9480;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WTF::RetainPtr<NSError>>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  _Block_release(*(a1 + 8));

  return WTF::fastFree(a1, v4);
}

- (void)restoreData:(void *)a1 completionHandler:(void *)a2
{
  *a1 = &unk_1F10F94A8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WTF::RetainPtr<NSError>>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4);
  }

  return a1;
}

- (uint64_t)restoreData:(WTF *)this completionHandler:(void *)a2
{
  *this = &unk_1F10F94A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WTF::RetainPtr<NSError>>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

- (void)restoreData:(uint64_t)a1 completionHandler:(char)a2
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v5 = *MEMORY[0x1E696A578];
    v6[0] = @"Unknown error occurred while restoring data.";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:v3];
    WTF::RetainPtr<NSError>::operator=((*(a1 + 16) + 8), v4);
    if (v4)
    {
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(WKWebView *)self frame];
  if (v9 == width && v8 == height)
  {
    v11.receiver = self;
    v11.super_class = WKWebView;
    [(WKWebView *)&v11 setFrame:x, y, width, height];
  }

  else
  {
    [(WKWebView *)self _frameOrBoundsWillChange];
    v11.receiver = self;
    v11.super_class = WKWebView;
    [(WKWebView *)&v11 setFrame:x, y, width, height];
    [(WKWebView *)self _frameOrBoundsMayHaveChanged];
    [(WKWebView *)self _acquireResizeAssertionForReason:@"[WKWebView setFrame:]"];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(WKWebView *)self bounds];
  v10 = v9 == height && v8 == width;
  if (!v10)
  {
    [(WKWebView *)self _frameOrBoundsWillChange];
  }

  v12.receiver = self;
  v12.super_class = WKWebView;
  [(WKWebView *)&v12 setBounds:x, y, width, height];
  m_ptr = self->_customContentFixedOverlayView.m_ptr;
  [(WKWebView *)self bounds];
  [(UIView *)m_ptr setFrame:?];
  if (!v10)
  {
    [(WKWebView *)self _frameOrBoundsMayHaveChanged];
    [(WKWebView *)self _acquireResizeAssertionForReason:@"[WKWebView setBounds:]"];
  }
}

- (void)_setObscuredInsetsInternal:(UIEdgeInsets)a3
{
  *&v3 = a3.top;
  self->_haveSetObscuredInsets = 1;
  p_obscuredInsets = &self->_obscuredInsets;
  v5.f64[0] = self->_obscuredInsets.top;
  v6.f64[0] = self->_obscuredInsets.left;
  v7.f64[0] = self->_obscuredInsets.bottom;
  v8.f64[0] = self->_obscuredInsets.right;
  if (v6.f64[0] != a3.left || v5.f64[0] != *&v3 || v8.f64[0] != a3.right || v7.f64[0] != a3.bottom)
  {
    m_ptr = self->_page.m_ptr;
    if (m_ptr)
    {
      v26 = v3;
      v27 = *&a3.left;
      v28 = *&a3.bottom;
      v29 = *&a3.right;
      CFRetain(*(m_ptr + 1));
      v14 = *(m_ptr + 41);
      if (v14)
      {
        (**v14)(*(m_ptr + 41));
        if (*(v14 + 36))
        {
          __break(0xC471u);
          return;
        }

        if (*(v14 + 144) == 1)
        {
          v15 = (v14 + 136);
          v16 = *(v14 + 128) + 1;
        }

        else
        {
          v15 = (v14 + 264);
          v16 = 1;
        }

        v17 = *v15;
        engaged = self->_perProcessState.firstTransactionIDAfterObscuredInsetChange.__engaged_;
        self->_perProcessState.firstTransactionIDAfterObscuredInsetChange.var0.__val_.m_object.m_identifier = v16;
        self->_perProcessState.firstTransactionIDAfterObscuredInsetChange.var0.__val_.m_processIdentifier.m_identifier = v17;
        if (!engaged)
        {
          self->_perProcessState.firstTransactionIDAfterObscuredInsetChange.__engaged_ = 1;
        }

        (*(*v14 + 8))(v14);
      }

      CFRelease(*(m_ptr + 1));
      v5.f64[0] = p_obscuredInsets->top;
      v6.f64[0] = p_obscuredInsets->left;
      v7.f64[0] = p_obscuredInsets->bottom;
      v8.f64[0] = p_obscuredInsets->right;
      *&a3.bottom = v28;
      *&a3.right = v29;
      *&v3 = v26;
      *&a3.left = v27;
    }

    *&v5.f64[1] = v3;
    v6.f64[1] = a3.left;
    v19 = vmovn_s64(vcgtzq_f64(v6));
    v7.f64[1] = a3.bottom;
    v8.f64[1] = a3.right;
    v20 = vmovn_s64(vcgtzq_f64(v5));
    v21 = vorr_s8(vand_s8(vsub_s32(0x800000008, v20), v19), vand_s8(vbic_s8(v20, v19), 0x100000001));
    v22 = vbsl_s8(vmovn_s64(vcgtzq_f64(v7)), (*&v21 | 0x400000004), v21);
    v23 = vbsl_s8(vmovn_s64(vcgtzq_f64(v8)), (*&v22 | 0x200000002), v22);
    *&p_obscuredInsets->top = v3;
    p_obscuredInsets->left = a3.left;
    v24 = vceq_s32(vand_s8(v23, 0xFF000000FFLL), vand_s8(vdup_lane_s32(v23, 1), 0xFF000000FFLL)).u8[0];
    p_obscuredInsets->bottom = a3.bottom;
    p_obscuredInsets->right = a3.right;
    [(WKWebView *)self _scheduleVisibleContentRectUpdate:v26];
    if (v24)
    {
      [(WKWebView *)self _updateFixedColorExtensionViewFrames];
    }

    else
    {
      [(WKWebView *)self _updateFixedColorExtensionViews];
    }

    v25 = self->_warningView.m_ptr;
    [(WKWebView *)self _computedObscuredInsetForWarningView];

    [(_WKWarningView *)v25 setContentInset:?];
  }
}

- (void)_decrementFocusPreservationCount
{
  focusPreservationCount = self->_focusPreservationCount;
  if (focusPreservationCount)
  {
    self->_focusPreservationCount = focusPreservationCount - 1;
  }
}

- (unint64_t)_resetFocusPreservationCount
{
  focusPreservationCount = self->_focusPreservationCount;
  self->_focusPreservationCount = 0;
  return focusPreservationCount;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    WebKit::WebPageProxy::effectiveAppearanceDidChange(m_ptr);

    [(WKWebView *)self _updateScrollViewBackground];
  }
}

- (void)_populateArchivedSubviews:(id)a3
{
  v5.receiver = self;
  v5.super_class = WKWebView;
  [(WKWebView *)&v5 _populateArchivedSubviews:?];
  if (self->_scrollView.m_ptr)
  {
    [a3 removeObject:?];
  }

  if (self->_customContentFixedOverlayView.m_ptr)
  {
    [a3 removeObject:?];
  }
}

- (BOOL)becomeFirstResponder
{
  v3 = [(WKWebView *)self _currentContentView];
  m_ptr = self->_contentView.m_ptr;
  if (m_ptr == v3 && [(WKContentView *)m_ptr superview])
  {
    if ([(WKContentView *)self->_contentView.m_ptr becomeFirstResponderForWebView])
    {
      return 1;
    }

    v8.receiver = self;
    v5 = &v8;
  }

  else
  {
    if ([(WKContentView *)v3 becomeFirstResponder])
    {
      return 1;
    }

    v7 = self;
    v5 = &v7;
  }

  v5->super_class = WKWebView;
  return [(objc_super *)v5 becomeFirstResponder];
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(WKWebView *)self _currentContentView];
  m_ptr = self->_contentView.m_ptr;
  if (m_ptr != v3)
  {
    return 1;
  }

  return [(WKContentView *)m_ptr canBecomeFirstResponderForWebView];
}

- (BOOL)resignFirstResponder
{
  if ([(WKContentView *)self->_contentView.m_ptr isFirstResponder])
  {
    m_ptr = self->_contentView.m_ptr;

    return [(WKContentView *)m_ptr resignFirstResponderForWebView];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WKWebView;
    return [(WKWebView *)&v5 resignFirstResponder];
  }
}

- (id)undoManager
{
  v3 = [(WKWebView *)self _currentContentView];
  m_ptr = self->_contentView.m_ptr;
  if (m_ptr == v3)
  {

    return [(WKContentView *)m_ptr undoManagerForWebView];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WKWebView;
    return [(WKWebView *)&v6 undoManager];
  }
}

- (void)captureTextFromCamera:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr captureTextFromCameraForWebView:a3];
  }
}

- (void)useSelectionForFind:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr useSelectionForFindForWebView:a3];
  }
}

- (void)findSelected:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr findSelectedForWebView:a3];
  }
}

- (void)_findSelected:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _findSelectedForWebView:a3];
  }
}

- (void)addShortcut:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr addShortcutForWebView:a3];
  }
}

- (void)_addShortcut:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _addShortcutForWebView:a3];
  }
}

- (void)define:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr defineForWebView:a3];
  }
}

- (void)_define:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _defineForWebView:a3];
  }
}

- (void)lookup:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr lookupForWebView:a3];
  }
}

- (void)_lookup:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _lookupForWebView:a3];
  }
}

- (void)translate:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr translateForWebView:a3];
  }
}

- (void)_translate:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _translateForWebView:a3];
  }
}

- (void)promptForReplace:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr promptForReplaceForWebView:a3];
  }
}

- (void)_promptForReplace:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _promptForReplaceForWebView:a3];
  }
}

- (void)share:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr shareForWebView:a3];
  }
}

- (void)_share:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _shareForWebView:a3];
  }
}

- (void)transliterateChinese:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr transliterateChineseForWebView:a3];
  }
}

- (void)_transliterateChinese:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _transliterateChineseForWebView:a3];
  }
}

- (void)_nextAccessoryTab:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _nextAccessoryTabForWebView:a3];
  }
}

- (void)_previousAccessoryTab:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _previousAccessoryTabForWebView:a3];
  }
}

- (void)copy:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr copyForWebView:a3];
  }
}

- (void)cut:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr cutForWebView:a3];
  }
}

- (void)paste:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr pasteForWebView:a3];
  }
}

- (void)replace:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr replaceForWebView:a3];
  }
}

- (void)select:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr selectForWebView:a3];
  }
}

- (void)selectAll:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr selectAllForWebView:a3];
  }
}

- (void)toggleBoldface:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr toggleBoldfaceForWebView:a3];
  }
}

- (void)toggleItalics:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr toggleItalicsForWebView:a3];
  }
}

- (void)toggleUnderline:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr toggleUnderlineForWebView:a3];
  }
}

- (void)increaseSize:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr increaseSizeForWebView:a3];
  }
}

- (void)decreaseSize:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr decreaseSizeForWebView:a3];
  }
}

- (void)pasteAndMatchStyle:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr pasteAndMatchStyleForWebView:a3];
  }
}

- (void)makeTextWritingDirectionNatural:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr makeTextWritingDirectionNaturalForWebView:a3];
  }
}

- (void)makeTextWritingDirectionLeftToRight:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr makeTextWritingDirectionLeftToRightForWebView:a3];
  }
}

- (void)makeTextWritingDirectionRightToLeft:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr makeTextWritingDirectionRightToLeftForWebView:a3];
  }
}

- (void)alignCenter:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr alignCenterForWebView:a3];
  }
}

- (void)alignJustified:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr alignJustifiedForWebView:a3];
  }
}

- (void)alignLeft:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr alignLeftForWebView:a3];
  }
}

- (void)alignRight:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr alignRightForWebView:a3];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = self;
  if (sel_captureTextFromCamera_ == a3 || sel_useSelectionForFind_ == a3 || sel_findSelected_ == a3 || sel__findSelected_ == a3 || sel_addShortcut_ == a3 || sel__addShortcut_ == a3 || sel_define_ == a3 || sel__define_ == a3 || sel_lookup_ == a3 || sel__lookup_ == a3 || sel_translate_ == a3 || sel__translate_ == a3 || sel_promptForReplace_ == a3 || sel__promptForReplace_ == a3 || sel_share_ == a3 || sel__share_ == a3 || sel_transliterateChinese_ == a3 || sel__transliterateChinese_ == a3 || sel__nextAccessoryTab_ == a3 || sel__previousAccessoryTab_ == a3 || sel_copy_ == a3 || sel_cut_ == a3 || sel_paste_ == a3 || sel_replace_ == a3 || sel_select_ == a3 || sel_selectAll_ == a3 || sel_toggleBoldface_ == a3 || sel_toggleItalics_ == a3 || sel_toggleUnderline_ == a3 || sel_increaseSize_ == a3 || sel_decreaseSize_ == a3 || sel_pasteAndMatchStyle_ == a3 || sel_makeTextWritingDirectionNatural_ == a3 || sel_makeTextWritingDirectionLeftToRight_ == a3 || sel_makeTextWritingDirectionRightToLeft_ == a3 || sel_alignCenter_ == a3 || sel_alignJustified_ == a3 || sel_alignLeft_ == a3 || sel_alignRight_ == a3 || sel__indent_ == a3 || sel__outdent_ == a3 || sel__toggleStrikeThrough_ == a3 || sel__insertOrderedList_ == a3 || sel__insertUnorderedList_ == a3 || sel__insertNestedOrderedList_ == a3 || sel__insertNestedUnorderedList_ == a3 || sel__increaseListLevel_ == a3 || sel__decreaseListLevel_ == a3 || sel__changeListType_ == a3 || sel__pasteAsQuotation_ == a3 || sel__pasteAndMatchStyle_ == a3 || sel__setTextColor_sender_ == a3 || sel__setFontSize_sender_ == a3 || sel__setFont_sender_ == a3)
  {
    LODWORD(self) = [(WKWebView *)self usesStandardContentView];
    if (!self)
    {
      return self & 1;
    }

    m_ptr = v6->_contentView.m_ptr;

    return [(WKContentView *)m_ptr canPerformActionForWebView:a3 withSender:a4];
  }

  else
  {
    if (sel_find_ == a3 || sel_findNext_ == a3 || sel_findPrevious_ == a3)
    {
      LOBYTE(self) = self->_findInteractionEnabled;
      return self & 1;
    }

    if (sel_findAndReplace_ != a3)
    {
      v9.receiver = self;
      v9.super_class = WKWebView;
      LOBYTE(self) = [(WKWebView *)&v9 canPerformAction:a3 withSender:a4];
      return self & 1;
    }

    if (!self->_findInteractionEnabled)
    {
      LOBYTE(self) = 0;
      return self & 1;
    }

    return [(WKWebView *)self supportsTextReplacement];
  }
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  if (sel_captureTextFromCamera_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_useSelectionForFind_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_findSelected_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__findSelected_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_addShortcut_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__addShortcut_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_define_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__define_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_lookup_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__lookup_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_translate_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__translate_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_promptForReplace_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__promptForReplace_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_share_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__share_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_transliterateChinese_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__transliterateChinese_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__nextAccessoryTab_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__previousAccessoryTab_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_copy_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_cut_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_paste_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_replace_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_select_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_selectAll_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_toggleBoldface_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_toggleItalics_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_toggleUnderline_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_increaseSize_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_decreaseSize_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_pasteAndMatchStyle_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_makeTextWritingDirectionNatural_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_makeTextWritingDirectionLeftToRight_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_makeTextWritingDirectionRightToLeft_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_alignCenter_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_alignJustified_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_alignLeft_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel_alignRight_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__indent_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__outdent_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__toggleStrikeThrough_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__insertOrderedList_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__insertUnorderedList_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__insertNestedOrderedList_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__insertNestedUnorderedList_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__increaseListLevel_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__decreaseListLevel_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__changeListType_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__pasteAsQuotation_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__pasteAndMatchStyle_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__setTextColor_sender_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__setFontSize_sender_ == a3 && [(WKWebView *)self usesStandardContentView]
    || sel__setFont_sender_ == a3 && [(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    return [(WKContentView *)m_ptr targetForActionForWebView:a3 withSender:a4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WKWebView;
    return [(WKWebView *)&v9 targetForAction:a3 withSender:a4];
  }
}

- (void)_setHasCustomContentView:(BOOL)a3 loadedMIMEType:(const void *)a4
{
  if (a3 && (v6 = [(WKWebViewContentProviderRegistry *)[(WKWebView *)self _contentProviderRegistry] providerForMIMEType:a4]) != 0)
  {
    v7 = v6;
    [(WKWebViewContentProvider *)self->_customContentView.m_ptr removeFromSuperview];
    [(UIView *)self->_customContentFixedOverlayView.m_ptr removeFromSuperview];
    v8 = [v7 alloc];
    [(WKWebView *)self bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = *a4;
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v43, v17);
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v18);
      }
    }

    else
    {
      v43 = &stru_1F1147748;
      v28 = &stru_1F1147748;
    }

    v29 = [v8 web_initWithFrame:self webView:v43 mimeType:{v10, v12, v14, v16}];
    m_ptr = self->_customContentView.m_ptr;
    self->_customContentView.m_ptr = v29;
    if (m_ptr)
    {
    }

    v31 = v43;
    v43 = 0;
    if (v31)
    {
    }

    v32 = objc_alloc(MEMORY[0x1E69DD250]);
    [(WKWebView *)self bounds];
    v33 = [v32 initWithFrame:?];
    v34 = self->_customContentFixedOverlayView.m_ptr;
    self->_customContentFixedOverlayView.m_ptr = v33;
    if (v34)
    {

      v33 = self->_customContentFixedOverlayView.m_ptr;
    }

    [(CALayer *)[(UIView *)v33 layer] setName:@"CustomContentFixedOverlay"];
    [(UIView *)self->_customContentFixedOverlayView.m_ptr setUserInteractionEnabled:0];
    [(UIView *)[(WKContentView *)self->_contentView.m_ptr unscaledView] removeFromSuperview];
    [(WKContentView *)self->_contentView.m_ptr removeFromSuperview];
    [(WKScrollView *)self->_scrollView.m_ptr addSubview:self->_customContentView.m_ptr];
    [(WKWebView *)self addSubview:self->_customContentFixedOverlayView.m_ptr];
    v35 = self->_customContentView.m_ptr;
    [(WKWebView *)self bounds];
    [(WKWebViewContentProvider *)v35 web_setMinimumSize:v36, v37];
    [(WKWebViewContentProvider *)self->_customContentView.m_ptr web_setFixedOverlayView:self->_customContentFixedOverlayView.m_ptr];
    m_colorAndFlags = self->_perProcessState.scrollViewBackgroundColor.m_colorAndFlags;
    if ((m_colorAndFlags & 0x8000000000000) != 0)
    {
      v42 = (m_colorAndFlags & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v42);
        WTF::fastFree(v42, v38);
      }
    }

    self->_perProcessState.scrollViewBackgroundColor.m_colorAndFlags = 0;
    [(WKWebView *)self _resetContentOffset];
    [-[WKScrollView panGestureRecognizer](self->_scrollView.m_ptr "panGestureRecognizer")];
    [(WKScrollView *)self->_scrollView.m_ptr _setScrollEnabledInternal:1];
    [(WKWebView *)self _setAvoidsUnsafeArea:0];
  }

  else
  {
    v19 = self->_customContentView.m_ptr;
    if (v19)
    {
      [(WKWebViewContentProvider *)v19 removeFromSuperview];
      v20 = self->_customContentView.m_ptr;
      self->_customContentView.m_ptr = 0;
      if (v20)
      {
      }

      [(UIView *)self->_customContentFixedOverlayView.m_ptr removeFromSuperview];
      v21 = self->_customContentFixedOverlayView.m_ptr;
      self->_customContentFixedOverlayView.m_ptr = 0;
      if (v21)
      {
      }

      [(WKScrollView *)self->_scrollView.m_ptr addSubview:self->_contentView.m_ptr];
      [(WKScrollView *)self->_scrollView.m_ptr addSubview:[(WKContentView *)self->_contentView.m_ptr unscaledView]];
      v22 = self->_scrollView.m_ptr;
      v23 = self->_page.m_ptr;
      [(WKContentView *)self->_contentView.m_ptr frame];
      v26 = 824;
      if (*(v23 + 832))
      {
        v26 = 828;
      }

      [(WKScrollView *)v22 setContentSize:floor(v24 * *(v23 + v26)) / *(v23 + v26), floor(v25 * *(v23 + v26)) / *(v23 + v26)];
      v27 = self->_customContentFixedOverlayView.m_ptr;
      [(WKWebView *)self bounds];
      [(UIView *)v27 setFrame:?];
      [(WKWebView *)self addSubview:self->_customContentFixedOverlayView.m_ptr];
    }
  }

  if ([(WKWebView *)self isFirstResponder])
  {
    v40 = [(WKWebView *)self _currentContentView];
    v41 = self->_contentView.m_ptr;
    if (v41 != v40)
    {
      if (![(WKContentView *)v40 canBecomeFirstResponder])
      {
        return;
      }

      goto LABEL_26;
    }

    if ([(WKContentView *)v41 canBecomeFirstResponderForWebView])
    {
LABEL_26:
      [(WKContentView *)v40 becomeFirstResponder];
    }
  }
}

- (void)_didFinishLoadingDataForCustomContentProviderWithSuggestedFilename:(const void *)a3 data:(id)a4
{
  m_ptr = self->_customContentView.m_ptr;
  v7 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v12, v7, a2);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    v12 = &stru_1F1147748;
    v9 = &stru_1F1147748;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__WKWebView_WKViewInternalIOS___didFinishLoadingDataForCustomContentProviderWithSuggestedFilename_data___block_invoke;
  v11[3] = &unk_1E7631230;
  v11[4] = self;
  [(WKWebViewContentProvider *)m_ptr web_setContentProviderData:a4 suggestedFilename:v12 completionHandler:v11];
  v10 = v12;
  v12 = 0;
  if (v10)
  {
  }
}

uint64_t __104__WKWebView_WKViewInternalIOS___didFinishLoadingDataForCustomContentProviderWithSuggestedFilename_data___block_invoke(WTF::WallTime *a1)
{
  v1 = *(*(a1 + 4) + 416);
  WTF::WallTime::now(a1);

  return WebKit::WebPageProxy::didReachLayoutMilestone(v1, 7u, v2);
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  if (![(WKWebView *)self _tryToHandleKeyEventInCustomContentView:a4])
  {
    v7.receiver = self;
    v7.super_class = WKWebView;
    [(WKWebView *)&v7 pressesBegan:a3 withEvent:a4];
  }
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  if (![(WKWebView *)self _tryToHandleKeyEventInCustomContentView:a4])
  {
    v7.receiver = self;
    v7.super_class = WKWebView;
    [(WKWebView *)&v7 pressesChanged:a3 withEvent:a4];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  if (![(WKWebView *)self _tryToHandleKeyEventInCustomContentView:a4])
  {
    v7.receiver = self;
    v7.super_class = WKWebView;
    [(WKWebView *)&v7 pressesEnded:a3 withEvent:a4];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  if (![(WKWebView *)self _tryToHandleKeyEventInCustomContentView:a4])
  {
    v7.receiver = self;
    v7.super_class = WKWebView;
    [(WKWebView *)&v7 pressesCancelled:a3 withEvent:a4];
  }
}

- (void)_videoControlsManagerDidChange
{
  m_ptr = self->_fullScreenWindowController.m_ptr;
  if (m_ptr)
  {
    [(WKFullScreenWindowController *)m_ptr videoControlsManagerDidChange];
  }
}

- (void)_videosInElementFullscreenChanged
{
  m_ptr = self->_fullScreenWindowController.m_ptr;
  if (m_ptr)
  {
    [(WKFullScreenWindowController *)m_ptr videosInElementFullscreenChanged];
  }
}

- (CGPoint)_initialContentOffsetForScrollView
{
  [(WKWebView *)self _computedContentInset];
  v3 = -v2;
  v5 = -v4;
  v6 = v3;
  result.y = v5;
  result.x = v6;
  return result;
}

- (CGPoint)_contentOffsetAdjustedForObscuredInset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(WKWebView *)self _computedObscuredInset];
  v6 = x - v5;
  v8 = y - v7;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

- (unint64_t)_effectiveObscuredInsetEdgesAffectedBySafeArea
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    return self->_obscuredInsetEdgesAffectedBySafeArea;
  }

  else
  {
    return 15;
  }
}

- (UIEdgeInsets)_contentInsetsFromSystemMinimumLayoutMargins
{
  v3 = [(UIView *)self _wk_viewControllerForFullScreenPresentation];
  if (v3)
  {
    v4 = v3;
    [(UIViewController *)v3 systemMinimumLayoutMargins];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    m_ptr = self->_page.m_ptr;
    if (m_ptr)
    {
      v14 = WebKit::WebPageProxy::userInterfaceLayoutDirection(m_ptr);
      if (v14)
      {
        v15 = v12;
      }

      else
      {
        v15 = v8;
      }

      if (v14)
      {
        v12 = v8;
      }

      v8 = v15;
    }

    v16 = [(UIViewController *)v4 viewIfLoaded];
    if (v16)
    {
      v17 = v16;
      [(UIView *)v16 bounds];
      v41 = v19;
      rect = v18;
      v21 = v20;
      v23 = v22;
      [(WKWebView *)self bounds];
      [(WKWebView *)self convertRect:v17 toView:?];
      v40 = v12;
      height = v44.size.height;
      y = v44.origin.y;
      x = v44.origin.x;
      v38 = v44.origin.x;
      v39 = v8;
      v25 = v44.origin.y;
      width = v44.size.width;
      MinY = CGRectGetMinY(v44);
      v45.origin.x = rect;
      v45.origin.y = v41;
      v45.size.width = v21;
      v45.size.height = v23;
      rect_8 = fmax(v6 - fmax(MinY - CGRectGetMinY(v45), 0.0), 0.0);
      v46.origin.x = x;
      v46.origin.y = v25;
      v46.size.width = width;
      v46.size.height = height;
      MinX = CGRectGetMinX(v46);
      v47.origin.x = rect;
      v47.origin.y = v41;
      v47.size.width = v21;
      v47.size.height = v23;
      v8 = fmax(v39 - fmax(MinX - CGRectGetMinX(v47), 0.0), 0.0);
      v48.origin.x = rect;
      v48.origin.y = v41;
      v48.size.width = v21;
      v48.size.height = v23;
      MaxY = CGRectGetMaxY(v48);
      v49.origin.x = v38;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v30 = CGRectGetMaxY(v49);
      v50.origin.y = v41;
      v10 = fmax(v10 - fmax(MaxY - v30, 0.0), 0.0);
      v50.origin.x = rect;
      v50.size.height = v23;
      v50.size.width = v21;
      MaxX = CGRectGetMaxX(v50);
      v51.origin.x = v38;
      v6 = rect_8;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v12 = fmax(v40 - fmax(MaxX - CGRectGetMaxX(v51), 0.0), 0.0);
    }
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v32 = v6;
  v33 = v8;
  v34 = v10;
  v35 = v12;
  result.right = v35;
  result.bottom = v34;
  result.left = v33;
  result.top = v32;
  return result;
}

- (UIEdgeInsets)_computedContentInset
{
  if (self->_haveSetObscuredInsets)
  {
    top = self->_obscuredInsets.top;
    left = self->_obscuredInsets.left;
    bottom = self->_obscuredInsets.bottom;
    right = self->_obscuredInsets.right;
  }

  else
  {
    [(WKScrollView *)self->_scrollView.m_ptr contentInset];
    top = v7;
    left = v8;
    bottom = v9;
    right = v10;
    if ([(WKWebView *)self _safeAreaShouldAffectObscuredInsets])
    {
      [(WKWebView *)self _scrollViewSystemContentInset];
      [(WKWebView *)self _effectiveObscuredInsetEdgesAffectedBySafeArea];
      UIEdgeInsetsAdd();
      top = v11;
      left = v12;
      bottom = v13;
      right = v14;
    }
  }

  v15 = top;
  v16 = left;
  v17 = bottom;
  v18 = right;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)_processWillSwapOrDidExit
{
  [(WKWebView *)self _hidePasswordView];
  [(WKWebView *)self _cancelAnimatedResize];
  [(WKWebView *)self _destroyResizeAnimationView];
  [(WKContentView *)self->_contentView.m_ptr setHidden:0];
  [(WKWebView *)self _invalidateResizeAssertions];
  m_ptr = self->_gestureController.m_ptr;
  if (m_ptr)
  {
    WebKit::ViewGestureController::disconnectFromProcess(m_ptr, v3);
  }

  v27 = *MEMORY[0x1E695F058];
  v28 = *(MEMORY[0x1E695F058] + 16);
  memset(&v31[7], 0, 33);
  p_perProcessState = &self->_perProcessState;
  *&p_perProcessState->viewportMetaTagWidth = xmmword_19E703520;
  p_perProcessState->hasCommittedLoadForMainFrame = 0;
  p_perProcessState->dynamicViewportUpdateMode = 0;
  *&p_perProcessState->waitingForEndAnimatedResize = 0;
  p_perProcessState->animatedResizeOriginalContentWidth = 0.0;
  p_perProcessState->animatedResizeOldBounds.origin = v27;
  p_perProcessState->animatedResizeOldBounds.size = v28;
  p_perProcessState->scrollOffsetToRestore.var0.__null_state_ = 0;
  p_perProcessState->scrollOffsetToRestore.__engaged_ = 0;
  p_perProcessState->unobscuredCenterToRestore.var0.__null_state_ = 0;
  p_perProcessState->unobscuredCenterToRestore.__engaged_ = 0;
  p_scrollViewBackgroundColor = &p_perProcessState->scrollViewBackgroundColor;
  m_colorAndFlags = p_perProcessState->scrollViewBackgroundColor.m_colorAndFlags;
  if ((m_colorAndFlags & 0x8000000000000) != 0)
  {
    v8 = (m_colorAndFlags & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, v3);
      p_scrollViewBackgroundColor = &p_perProcessState->scrollViewBackgroundColor;
    }
  }

  p_scrollViewBackgroundColor->m_colorAndFlags = 0;
  p_scrollViewBackgroundColor[1].m_colorAndFlags = 0;
  p_perProcessState->avoidsUnsafeArea = 1;
  *&p_perProcessState->viewportMetaTagWidthWasExplicit = 0;
  *(&p_perProcessState->lastSentViewLayoutSize.var0.__null_state_ + 1) = *v26;
  p_perProcessState->lastSentViewLayoutSize.var0.__val_.m_height = *&v26[3];
  p_perProcessState->lastSentViewLayoutSize.__engaged_ = 0;
  *(&p_perProcessState->lastSentViewLayoutSize.__engaged_ + 1) = v24;
  *(&p_perProcessState->lastSentViewLayoutSize.__engaged_ + 3) = v25;
  p_perProcessState->lastSentDeviceOrientation.var0.__null_state_ = 0;
  *(&p_perProcessState->lastSentDeviceOrientation.var0.__null_state_ + 1) = v22;
  HIBYTE(p_perProcessState->lastSentDeviceOrientation.var0.__val_) = v23;
  p_perProcessState->lastSentDeviceOrientation.__engaged_ = 0;
  *(&p_perProcessState->lastSentDeviceOrientation.__engaged_ + 1) = v20;
  *(&p_perProcessState->lastSentDeviceOrientation.__engaged_ + 3) = v21;
  p_perProcessState->lastSentOrientationForMediaCapture.var0.__null_state_ = 0;
  *(&p_perProcessState->lastSentOrientationForMediaCapture.var0.__null_state_ + 1) = v18;
  HIBYTE(p_perProcessState->lastSentOrientationForMediaCapture.var0.__val_) = v19;
  p_perProcessState->lastSentOrientationForMediaCapture.__engaged_ = 0;
  *(&p_perProcessState->lastSentOrientationForMediaCapture.__engaged_ + 1) = v16;
  *(&p_perProcessState->lastSentOrientationForMediaCapture.__engaged_ + 3) = v17;
  p_perProcessState->lastSentMinimumEffectiveDeviceWidth.var0.__null_state_ = 0;
  HIDWORD(p_perProcessState->lastSentMinimumEffectiveDeviceWidth.var0.__val_) = *&v15[3];
  *(&p_perProcessState->lastSentMinimumEffectiveDeviceWidth.var0.__null_state_ + 1) = *v15;
  p_perProcessState->lastSentMinimumEffectiveDeviceWidth.__engaged_ = 0;
  *(&p_perProcessState->lastSentMinimumEffectiveDeviceWidth.__engaged_ + 1) = *&v14[3];
  *(&p_perProcessState->lastSentMinimumEffectiveDeviceWidth.__engaged_ + 1) = *v14;
  p_perProcessState->frozenVisibleContentRect.var0.__null_state_ = 0;
  p_perProcessState->frozenVisibleContentRect.var0.__val_.size = *&v36[15];
  *(&p_perProcessState->frozenVisibleContentRect.var0.__null_state_ + 1) = *v36;
  p_perProcessState->frozenVisibleContentRect.__engaged_ = 0;
  *(&p_perProcessState->frozenVisibleContentRect.__engaged_ + 1) = *v13;
  *(&p_perProcessState->frozenVisibleContentRect.__engaged_ + 1) = *&v13[3];
  p_perProcessState->frozenUnobscuredContentRect.var0.__null_state_ = 0;
  p_perProcessState->frozenUnobscuredContentRect.var0.__val_.size = *&v35[15];
  *(&p_perProcessState->frozenUnobscuredContentRect.var0.__null_state_ + 1) = *v35;
  p_perProcessState->frozenUnobscuredContentRect.__engaged_ = 0;
  *(&p_perProcessState->frozenUnobscuredContentRect.__engaged_ + 1) = *&v12[3];
  *(&p_perProcessState->frozenUnobscuredContentRect.__engaged_ + 1) = *v12;
  p_perProcessState->resetViewStateAfterTransactionID.var0.__null_state_ = 0;
  p_perProcessState->resetViewStateAfterTransactionID.var0.__val_.m_processIdentifier.m_identifier = *&v34[7];
  *(&p_perProcessState->resetViewStateAfterTransactionID.var0.__null_state_ + 1) = *v34;
  p_perProcessState->resetViewStateAfterTransactionID.__engaged_ = 0;
  *(&p_perProcessState->resetViewStateAfterTransactionID.__engaged_ + 1) = *&v11[3];
  *(&p_perProcessState->resetViewStateAfterTransactionID.__engaged_ + 1) = *v11;
  p_perProcessState->lastTransactionID.var0.__null_state_ = 0;
  p_perProcessState->lastTransactionID.var0.__val_.m_processIdentifier.m_identifier = *&v33[7];
  *(&p_perProcessState->lastTransactionID.var0.__null_state_ + 1) = *v33;
  p_perProcessState->lastTransactionID.__engaged_ = 0;
  *(&p_perProcessState->lastTransactionID.__engaged_ + 1) = *&v10[3];
  *(&p_perProcessState->lastTransactionID.__engaged_ + 1) = *v10;
  p_perProcessState->firstTransactionIDAfterPageRestore.var0.__null_state_ = 0;
  p_perProcessState->firstTransactionIDAfterPageRestore.var0.__val_.m_processIdentifier.m_identifier = *&v32[7];
  *(&p_perProcessState->firstTransactionIDAfterPageRestore.var0.__null_state_ + 1) = *v32;
  p_perProcessState->firstTransactionIDAfterPageRestore.__engaged_ = 0;
  *(&p_perProcessState->committedFindLayerID.m_value.m_processIdentifier.m_identifier + 1) = *&v31[32];
  *(&p_perProcessState->firstTransactionIDAfterPageRestore.__engaged_ + 1) = *v31;
  *(&p_perProcessState->pendingFindLayerID.m_value.m_processIdentifier.m_identifier + 1) = *&v31[16];
  p_perProcessState->liveResizeParameters.var0.__val_.initialScrollPosition.y = *&v30[15];
  *(&p_perProcessState->liveResizeParameters.var0.__null_state_ + 1) = *v30;
  p_perProcessState->liveResizeParameters.__engaged_ = 0;
  *(&p_perProcessState->liveResizeParameters.__engaged_ + 1) = *&v9[3];
  *(&p_perProcessState->liveResizeParameters.__engaged_ + 1) = *v9;
  p_perProcessState->firstTransactionIDAfterObscuredInsetChange.var0.__null_state_ = 0;
  p_perProcessState->firstTransactionIDAfterObscuredInsetChange.var0.__val_.m_processIdentifier.m_identifier = *&v29[7];
  *(&p_perProcessState->firstTransactionIDAfterObscuredInsetChange.var0.__null_state_ + 1) = *v29;
  p_perProcessState->firstTransactionIDAfterObscuredInsetChange.__engaged_ = 0;
}

- (void)_processWillSwap
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = self;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p [WKWebView _processWillSwap]", &v4, 0xCu);
  }

  [(WKWebView *)self _processWillSwapOrDidExit];
}

- (void)_processDidExit
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p [WKWebView _processDidExit]", &v5, 0xCu);
  }

  [(WKWebView *)self _processWillSwapOrDidExit];
  m_ptr = self->_contentView.m_ptr;
  [(WKWebView *)self bounds];
  [(WKContentView *)m_ptr setFrame:?];
  [(WKScrollView *)self->_scrollView.m_ptr _setBackgroundColorInternal:[(WKContentView *)self->_contentView.m_ptr backgroundColor]];
  [(WKWebView *)self _resetContentOffset];
  [(WKScrollView *)self->_scrollView.m_ptr setZoomScale:1.0];
}

- (void)_didRelaunchProcess
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = self->_page.m_ptr;
    if (*(m_ptr + 865))
    {
      LODWORD(v5) = 0;
    }

    else
    {
      v5 = *(*(m_ptr + 44) + 80);
      if (v5)
      {
        LODWORD(v5) = *(v5 + 108);
      }
    }

    v7 = 134218240;
    v8 = self;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p [WKWebView _didRelaunchProcess] (pid=%d)", &v7, 0x12u);
  }

  self->_perProcessState.hasScheduledVisibleRectUpdate = 0;
  self->_viewStabilityWhenVisibleContentRectUpdateScheduled.m_storage = 0;
  v6 = self->_gestureController.m_ptr;
  if (v6)
  {
    WebKit::ViewGestureController::connectToProcess(v6);
  }
}

- (void)_didCommitLoadForMainFrame
{
  v2 = *(self->_page.m_ptr + 41);
  if (*(v2 + 36))
  {
    __break(0xC471u);
  }

  else
  {
    if (*(v2 + 144) == 1)
    {
      v4 = (v2 + 136);
      v5 = *(v2 + 128) + 1;
    }

    else
    {
      v4 = (v2 + 264);
      v5 = 1;
    }

    v6 = *v4;
    engaged = self->_perProcessState.resetViewStateAfterTransactionID.__engaged_;
    self->_perProcessState.resetViewStateAfterTransactionID.var0.__val_.m_object.m_identifier = v5;
    self->_perProcessState.resetViewStateAfterTransactionID.var0.__val_.m_processIdentifier.m_identifier = v6;
    if (!engaged)
    {
      self->_perProcessState.resetViewStateAfterTransactionID.__engaged_ = 1;
    }

    self->_perProcessState.hasCommittedLoadForMainFrame = 1;
    if (![(WKWebView *)self _scrollViewIsRubberBandingForRefreshControl])
    {
      [(UIScrollView *)self->_scrollView.m_ptr _wk_stopScrollingAndZooming];
    }

    if (self->_findInteractionEnabled)
    {
      [(UIFindInteraction *)self->_findInteraction.m_ptr dismissFindNavigator];
      v8 = [(UIFindInteraction *)self->_findInteraction.m_ptr activeFindSession];
      if (v8)
      {
        v9 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UIFindSession *)v9 setSearchableObject:[(WKWebView *)self _searchableObject]];
        }
      }
    }

    WebKit::WebPageProxy::currentURL(self->_page.m_ptr, &v21);
    MEMORY[0x19EB01DD0](&v22, &v21, 0);
    v11 = v21;
    v21 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    if ((~v23 & 3) == 0)
    {
      WTF::URL::hostAndPort(&v20, &v22);
      v12 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v21, v12);
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v13);
        }
      }

      else
      {
        v21 = &stru_1F1147748;
        v14 = &stru_1F1147748;
      }

      v15 = v21;
      v21 = 0;
      m_ptr = self->_pendingPageLoadObserverHost.m_ptr;
      self->_pendingPageLoadObserverHost.m_ptr = v15;
      if (m_ptr)
      {

        v17 = v21;
        v21 = 0;
        if (v17)
        {
        }
      }

      v18 = v20;
      v20 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v13);
      }

      [(WKWebView *)self _updatePageLoadObserverState];
    }

    v19 = v22;
    v22 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v10);
      }
    }
  }
}

- (FloatRect)visibleRectInViewCoordinates
{
  [(WKWebView *)self bounds];
  v18.origin.x = v3;
  v18.origin.y = v4;
  v18.size.width = v5;
  v18.size.height = v6;
  WebCore::FloatRect::FloatRect(&v19, &v18);
  [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
  v18.origin.x = v7;
  v18.origin.y = v8;
  WebCore::FloatPoint::FloatPoint(v17, &v18.origin);
  v19 = vadd_f32(v17[0], v19);
  [(WKContentView *)self->_contentView.m_ptr bounds];
  v18.origin.x = v9;
  v18.origin.y = v10;
  v18.size.width = v11;
  v18.size.height = v12;
  WebCore::FloatRect::FloatRect(v17, &v18);
  WebCore::FloatRect::intersect(&v19, v17);
  v14 = v19.f32[1];
  v13 = v19.f32[0];
  v15 = v20;
  v16 = v21;
  result.m_size.m_height = v16;
  result.m_size.m_width = v15;
  result.m_location.m_y = v14;
  result.m_location.m_x = v13;
  return result;
}

- (void)_didCommitLayerTreeDuringAnimatedResize:(const void *)a3
{
  if ((*(a3 + 234) & 1) != 0 && *(a3 + 116) == self->_currentDynamicViewportSizeUpdateID)
  {
    v4 = *(a3 + 35);
    v6 = *(a3 + 44);
    v5 = *(a3 + 45);
    v7 = [(UIView *)self->_resizeAnimationView.m_ptr layer];
    v8 = 0.0;
    m11 = 0.0;
    if (v7)
    {
      [(CALayer *)v7 transform];
      m11 = v23.m11;
    }

    v10 = [(WKContentView *)self->_contentView.m_ptr layer];
    if (v10)
    {
      [v10 transform];
      v8 = v23.m11;
    }

    CATransform3DMakeScale(&v23, v4 / (m11 * v8), v4 / (m11 * v8), 1.0);
    v11 = *&v23.m33;
    *&self->_resizeAnimationTransformAdjustments.m31 = *&v23.m31;
    *&self->_resizeAnimationTransformAdjustments.m33 = v11;
    v12 = *&v23.m43;
    *&self->_resizeAnimationTransformAdjustments.m41 = *&v23.m41;
    *&self->_resizeAnimationTransformAdjustments.m43 = v12;
    v13 = *&v23.m13;
    *&self->_resizeAnimationTransformAdjustments.m11 = *&v23.m11;
    *&self->_resizeAnimationTransformAdjustments.m13 = v13;
    v14 = *&v23.m23;
    *&self->_resizeAnimationTransformAdjustments.m21 = *&v23.m21;
    *&self->_resizeAnimationTransformAdjustments.m23 = v14;
    [(WKWebView *)self _contentOffsetAdjustedForObscuredInset:v4 * v6, v4 * v5];
    v16 = v15;
    v18 = v17;
    [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
    self->_resizeAnimationTransformAdjustments.m41 = (v19 - v16) / m11;
    self->_resizeAnimationTransformAdjustments.m42 = (v20 - v18) / m11;
    *&v22.m31 = *&self->_resizeAnimationTransformAdjustments.m31;
    *&v22.m33 = *&self->_resizeAnimationTransformAdjustments.m33;
    *&v22.m11 = *&self->_resizeAnimationTransformAdjustments.m11;
    *&v22.m13 = *&self->_resizeAnimationTransformAdjustments.m13;
    *&v22.m21 = *&self->_resizeAnimationTransformAdjustments.m21;
    *&v22.m23 = *&self->_resizeAnimationTransformAdjustments.m23;
    *&v22.m41 = *&self->_resizeAnimationTransformAdjustments.m41;
    *&v22.m43 = *&self->_resizeAnimationTransformAdjustments.m43;
    v21 = [(UIView *)self->_resizeAnimationView.m_ptr layer];
    v23 = v22;
    [(CALayer *)v21 setSublayerTransform:&v23];
    self->_perProcessState.waitingForCommitAfterAnimatedResize = 0;
    if (!self->_perProcessState.waitingForEndAnimatedResize)
    {
      [(WKWebView *)self _didCompleteAnimatedResize];
    }
  }
}

- (void)_trackTransactionCommit:(const void *)a3
{
  v4 = self;
  v33 = *MEMORY[0x1E69E9840];
  p_perProcessState = &self->_perProcessState;
  if (self->_perProcessState.didDeferUpdateVisibleContentRectsForUnstableScrollView)
  {
    v6 = qword_1ED641490;
    self = os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT);
    if (self)
    {
      v7 = *(v4->_page.m_ptr + 5);
      v8 = *(a3 + 41);
      dynamicViewportUpdateMode = p_perProcessState->dynamicViewportUpdateMode;
      if (p_perProcessState->resetViewStateAfterTransactionID.__engaged_)
      {
        m_identifier = p_perProcessState->resetViewStateAfterTransactionID.var0.__val_.m_object.m_identifier;
      }

      else
      {
        m_identifier = 0;
      }

      v11 = [(WKContentView *)v4->_contentView.m_ptr sizeChangedSinceLastVisibleContentRectUpdate];
      v12 = [(WKScrollView *)v4->_scrollView.m_ptr isZoomBouncing];
      currentlyAdjustingScrollViewInsetsForKeyboard = p_perProcessState->currentlyAdjustingScrollViewInsetsForKeyboard;
      v19 = 134219776;
      v20 = v4;
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v8;
      v25 = 1024;
      *v26 = dynamicViewportUpdateMode;
      *&v26[4] = 2048;
      *&v26[6] = m_identifier;
      v27 = 1024;
      v28 = v11;
      v29 = 1024;
      v30 = v12;
      v31 = 1024;
      v32 = currentlyAdjustingScrollViewInsetsForKeyboard;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _didCommitLayerTree:] - received a commit (%llu) while deferring visible content rect updates (dynamicViewportUpdateMode %d, resetViewStateAfterTransactionID %llu, sizeChangedSinceLastVisibleContentRectUpdate %d, [_scrollView isZoomBouncing] %d, currentlyAdjustingScrollViewInsetsForKeyboard %d)", &v19, 0x42u);
    }
  }

  if (v4->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.__engaged_)
  {
    WTF::MonotonicTime::now(self);
    if (!v4->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.__engaged_)
    {
      __break(1u);
    }

    v15 = v14 - v4->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.var0.__val_.m_value;
    if (v15 <= 5.0 || (v16 = qword_1ED641490, !os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT)) || (v17 = *(v4->_page.m_ptr + 5), v18 = *(a3 + 41), v19 = 134218752, v20 = v4, v21 = 2048, v22 = v17, v23 = 2048, v24 = v15, v25 = 2048, *v26 = v18, _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _didCommitLayerTree:] - finally received commit %.2fs after visible content rect update request; transactionID %llu", &v19, 0x2Au), v4->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.__engaged_))
    {
      v4->_timeOfFirstVisibleContentRectUpdateWithPendingCommit.__engaged_ = 0;
    }
  }
}

- (void)_updateScrollViewForTransaction:(const void *)a3
{
  [(WKScrollView *)self->_scrollView.m_ptr contentSize];
  v6 = v5;
  v8 = v7;
  m_ptr = self->_page.m_ptr;
  [(WKContentView *)self->_contentView.m_ptr frame];
  v12 = 824;
  if (*(m_ptr + 832))
  {
    v12 = 828;
  }

  v13 = *(m_ptr + v12);
  v14 = floor(v10 * v13) / v13;
  v15 = floor(v11 * v13) / v13;
  [(WKScrollView *)self->_scrollView.m_ptr _setContentSizePreservingContentOffsetDuringRubberband:v14, v15];
  if (self->_forcesInitialScaleFactor)
  {
    v16 = 0;
    v17 = *(a3 + 38);
    v18 = v17;
    v19 = v17;
  }

  else
  {
    v19 = *(a3 + 36);
    v18 = *(a3 + 37);
    v17 = *(a3 + 35);
    v16 = *(a3 + 355);
  }

  [(WKScrollView *)self->_scrollView.m_ptr setMinimumZoomScale:v19];
  [(WKScrollView *)self->_scrollView.m_ptr setMaximumZoomScale:v18];
  v20 = self->_scrollView.m_ptr;
  v21 = (v16 & 1) != 0 && [(WKWebView *)self _allowsMagnification];
  [(WKScrollView *)v20 _setZoomEnabledInternal:v21];
  if ([(WKScrollView *)self->_scrollView.m_ptr showsHorizontalScrollIndicator]&& [(WKScrollView *)self->_scrollView.m_ptr showsVerticalScrollIndicator])
  {
    [(WKScrollView *)self->_scrollView.m_ptr setShowsHorizontalScrollIndicator:WebCore::ScrollingTree::mainFrameScrollbarWidth(*(*(self->_page.m_ptr + 43) + 32)) != 2];
    [(WKScrollView *)self->_scrollView.m_ptr setShowsVerticalScrollIndicator:WebCore::ScrollingTree::mainFrameScrollbarWidth(*(*(self->_page.m_ptr + 43) + 32)) != 2];
  }

  v22 = WebCore::ScrollingTree::mainFrameHorizontalOverscrollBehavior(*(*(self->_page.m_ptr + 43) + 32));
  v23 = WebCore::ScrollingTree::mainFrameVerticalOverscrollBehavior(*(*(self->_page.m_ptr + 43) + 32));
  WebKit::ScrollingTreeScrollingNodeDelegateIOS::updateScrollViewForOverscrollBehavior(self->_scrollView.m_ptr, v22, v23, 0);
  IsEmpty = CGRectIsEmpty(self->_inputViewBoundsInWindow);
  v25 = IsEmpty;
  v26 = v17;
  v27 = *(a3 + 38);
  v28 = v27;
  v29 = WebKit::scalesAreEssentiallyEqual(IsEmpty, v26, v28);
  v30 = self->_page.m_ptr;
  if (!self->_overriddenLayoutParameters.__engaged_ || ((v31 = *(v30 + 4), v32 = *(v31 + 908), v33 = *(v31 + 912), *(v31 + 992) == v32) ? (v34 = *(v31 + 996) == v33) : (v34 = 0), v34))
  {
    v38 = 0;
  }

  else
  {
    v35 = 0.0;
    v36 = 0.0;
    if (*(v31 + 2784) == 1)
    {
      v35 = *(v31 + 2624);
      v36 = *(v31 + 2628);
    }

    v38 = v33 == v36 && v32 == v35;
  }

  v39 = *(*(*(v30 + 43) + 32) + 24);
  if (v39)
  {
    if (v39[250] != 1 || v39[251] != 1)
    {
      goto LABEL_31;
    }

    LOBYTE(v39) = v39[417];
  }

  if (!(v39 & 1 | !v25 | (v17 > v27) & ~v29 | v38))
  {
    v40 = MEMORY[0x1E695E0F0];
    goto LABEL_33;
  }

LABEL_31:
  v40 = self->_scrollViewDefaultAllowedTouchTypes.m_ptr;
LABEL_33:
  [-[WKScrollView panGestureRecognizer](self->_scrollView.m_ptr "panGestureRecognizer")];
  [(WKScrollView *)self->_scrollView.m_ptr _setScrollEnabledInternal:1];
  if ((*(a3 + 354) & 1) != 0 || ([(WKScrollView *)self->_scrollView.m_ptr isZooming]& 1) != 0 || ([(WKScrollView *)self->_scrollView.m_ptr isZoomBouncing]& 1) != 0 || [(UIScrollView *)self->_scrollView.m_ptr _wk_isZoomAnimating]|| (v41 = [(WKScrollView *)self->_scrollView.m_ptr zoomScale], *&v42 = v42, v43 = v17, WebKit::scalesAreEssentiallyEqual(v41, *&v42, v43)))
  {
    v44 = v8 == v15 && v6 == v14;
    if (v44 || v8 <= 0.0 || ![(WKWebView *)self _isDisplayingPDF])
    {
      goto LABEL_53;
    }

    v68 = v6;
    v45 = v8;
    v46 = 0;
    v47 = 1;
    [(WKScrollView *)self->_scrollView.m_ptr adjustedContentInset];
  }

  else
  {
    v70 = v6;
    v45 = v8;
    v47 = 0;
    v46 = 1;
    [(WKScrollView *)self->_scrollView.m_ptr adjustedContentInset];
  }

  v50 = v48;
  v51 = v49;
  [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
  v53 = v52;
  v55 = v54;
  [(WKScrollView *)self->_scrollView.m_ptr zoomScale];
  v57 = v17 / v56;
  if (v47)
  {
    v57 = v15 / v45;
  }

  if (v46)
  {
    v58 = -(v51 - (v51 + v53) * v57);
  }

  else
  {
    v58 = v53;
  }

  v59 = -(v50 - (v50 + v55) * v57);
  if (v46)
  {
    [(WKScrollView *)self->_scrollView.m_ptr setZoomScale:v17];
  }

  v60 = self->_scrollView.m_ptr;
  v71.x = v58;
  v71.y = v59;
  WebCore::FloatPoint::FloatPoint(&v72, &v71);
  changeContentOffsetBoundedInValidRange(&v60->super.super.super);
  v6 = v69;
LABEL_53:
  if (v6 != v14)
  {
    if ((v61 = vabdd_f64(v6, v14), v62 = fabs(v6), v62 < 1.0) && v62 * 1.79769313e308 < v61 || (v62 * 2.22507386e-308 > v61 ? (v63 = v62 <= 1.0) : (v63 = 1), v63 && v61 / v62 > 2.22044605e-16 || ((v64 = fabs(v14), v64 < 1.0) ? (v65 = v64 * 1.79769313e308 < v61) : (v65 = 0), v65 || (v64 * 2.22507386e-308 > v61 ? (v66 = v64 <= 1.0) : (v66 = 1), (v61 = v61 / v64, v66) ? (v67 = v61 > 2.22044605e-16) : (v67 = 0), v67))))
    {
      [(WKWebView *)self _updateFixedColorExtensionViewFrames];
    }
  }
}

- (BOOL)_restoreScrollAndZoomStateForTransaction:(const void *)a3
{
  p_perProcessState = &self->_perProcessState;
  if (!self->_perProcessState.firstTransactionIDAfterPageRestore.__engaged_ || *(a3 + 41) < self->_perProcessState.firstTransactionIDAfterPageRestore.var0.__val_.m_object.m_identifier)
  {
    return 0;
  }

  self->_perProcessState.firstTransactionIDAfterPageRestore.__engaged_ = 0;
  if (self->_perProcessState.scrollOffsetToRestore.__engaged_ && ![(WKWebView *)self _scrollViewIsRubberBandingForRefreshControl])
  {
    if (!p_perProcessState->scrollOffsetToRestore.__engaged_)
    {
      goto LABEL_25;
    }

    p_perProcessState->scrollOffsetToRestore.__engaged_ = 0;
    v9 = [-[WKWebView _currentContentView](self "_currentContentView")];
    if (v9)
    {
      v9 = [v9 affineTransform];
      v10 = v26;
    }

    else
    {
      v10 = 0.0;
    }

    scaleToRestore = self->_scaleToRestore;
    v4 = 1;
    if (WebKit::scalesAreEssentiallyEqual(v9, v10, scaleToRestore))
    {
      changeContentOffsetBoundedInValidRange(&self->_scrollView.m_ptr->super.super.super);
      p_perProcessState->commitDidRestoreScrollPosition = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  if (!p_perProcessState->unobscuredCenterToRestore.__engaged_ || [(WKWebView *)self _scrollViewIsRubberBandingForRefreshControl])
  {
LABEL_23:
    m_ptr = self->_gestureController.m_ptr;
    if (m_ptr)
    {
      WebKit::ViewGestureController::SnapshotRemovalTracker::stopWaitingForEvent((m_ptr + 216), 0x20, "outstanding event occurred: ", 29, 1);
    }

    return v4;
  }

  if (p_perProcessState->unobscuredCenterToRestore.__engaged_)
  {
    p_perProcessState->unobscuredCenterToRestore.__engaged_ = 0;
    v7 = [-[WKWebView _currentContentView](self "_currentContentView")];
    if (v7)
    {
      v7 = [v7 affineTransform];
      v8 = v26;
    }

    else
    {
      v8 = 0.0;
    }

    v12 = self->_scaleToRestore;
    if (WebKit::scalesAreEssentiallyEqual(v7, v8, v12))
    {
      [(WKWebView *)self bounds];
      top = self->_obscuredInsets.top;
      left = self->_obscuredInsets.left;
      v16 = v15 - (left + self->_obscuredInsets.right);
      v18 = v17 - (top + self->_obscuredInsets.bottom);
      v26 = v19 + left;
      v27 = v20 + top;
      v28.width = v16;
      v28.height = v18;
      WebCore::FloatSize::FloatSize(&v25, &v28);
      changeContentOffsetBoundedInValidRange(&self->_scrollView.m_ptr->super.super.super);
    }

    v4 = 1;
    goto LABEL_23;
  }

LABEL_25:
  v22 = std::__throw_bad_optional_access[abi:sn200100]();
  [(WKWebView *)v22 _didCommitLayerTree:v23, v24];
  return result;
}

- (void)_didCommitLayerTree:(const void *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a3 + 5))
  {
LABEL_2:
    if (self->_perProcessState.pendingFindLayerID.m_value.m_object.m_identifier)
    {
      v4 = *(self->_page.m_ptr + 41);
      if (*(v4 + 36))
      {
        __break(0xC471u);
      }

      else
      {
        v5 = *(v4 + 80);
        *&buf[0].super.isa = self->_perProcessState.pendingFindLayerID;
        LOBYTE(buf[0]._attr.layer) = 1;
        v6 = WebKit::RemoteLayerTreeHost::layerForID(v5, buf);
        if ([v6 superlayer])
        {
          [(WKWebView *)self _didAddLayerForFindOverlay:v6];
        }
      }
    }

    return;
  }

  [(WKWebView *)self _trackTransactionCommit:?];
  v8 = *(a3 + 42);
  engaged = self->_perProcessState.lastTransactionID.__engaged_;
  self->_perProcessState.lastTransactionID.var0.__val_.m_object.m_identifier = *(a3 + 41);
  self->_perProcessState.lastTransactionID.var0.__val_.m_processIdentifier.m_identifier = v8;
  if (!engaged)
  {
    self->_perProcessState.lastTransactionID.__engaged_ = 1;
  }

  lastTransactionWasInStableState = self->_perProcessState.lastTransactionWasInStableState;
  self->_perProcessState.lastTransactionWasInStableState = *(a3 + 359);
  if ([(WKWebView *)self usesStandardContentView])
  {
    updated = WebKit::WebPageProxy::updateLayoutViewportParameters(self->_page.m_ptr, a3);
    if (self->_perProcessState.firstTransactionIDAfterObscuredInsetChange.__engaged_ && *(a3 + 41) >= self->_perProcessState.firstTransactionIDAfterObscuredInsetChange.var0.__val_.m_object.m_identifier)
    {
      self->_perProcessState.firstTransactionIDAfterObscuredInsetChange.__engaged_ = 0;
      if (self->_overriddenLayoutParameters.__engaged_)
      {
        v11 = [(WKWebView *)self _shouldDeferGeometryUpdates];
        if (!v11 || WTF::IOSApplication::isSafariViewService(v11) && ([objc_msgSend(objc_msgSend(-[WKWebView window](self "window")] & 1) == 0)
        {
          if (!self->_overriddenLayoutParameters.__engaged_ || (WebCore::FloatSize::FloatSize(buf, &self->_overriddenLayoutParameters), LODWORD(v13) = HIDWORD(buf[0].super.isa), LODWORD(v12) = buf[0].super.isa, [(WKWebView *)self _dispatchSetViewLayoutSize:v12, v13], !self->_overriddenLayoutParameters.__engaged_) || (m_ptr = self->_page.m_ptr, WebCore::FloatSize::FloatSize(buf, &self->_overriddenLayoutParameters.var0.__val_.minimumUnobscuredSize), WebKit::WebPageProxy::setMinimumUnobscuredSize(m_ptr, buf), !self->_overriddenLayoutParameters.__engaged_) || (v15 = self->_page.m_ptr, WebCore::FloatSize::FloatSize(buf, &self->_overriddenLayoutParameters.var0.__val_.maximumUnobscuredSize), WebKit::WebPageProxy::setDefaultUnobscuredSize(v15, buf), !self->_overriddenLayoutParameters.__engaged_))
          {
            __break(1u);
          }

          v16 = self->_page.m_ptr;
          WebCore::FloatSize::FloatSize(buf, &self->_overriddenLayoutParameters.var0.__val_.maximumUnobscuredSize);
          WebKit::WebPageProxy::setMaximumUnobscuredSize(v16, buf);
          updated = 1;
        }
      }
    }

    if (self->_perProcessState.dynamicViewportUpdateMode)
    {
      [(WKWebView *)self _didCommitLayerTreeDuringAnimatedResize:a3];
      return;
    }

    if (!self->_perProcessState.liveResizeParameters.__engaged_)
    {
      if (self->_resizeAnimationView.m_ptr)
      {
        v17 = qword_1ED641490;
        if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].super.isa) = 134217984;
          *(&buf[0].super.isa + 4) = self;
          _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "%p [WKWebView _didCommitLayerTree:] - dynamicViewportUpdateMode is NotResizing, but still have a live resizeAnimationView (unpaired begin/endAnimatedResize?)", buf, 0xCu);
        }
      }

      [(WKWebView *)self _updateScrollViewForTransaction:a3];
      [(WKWebView *)self _updateNeedsTopScrollPocketDueToVisibleContentInset];
      *&self->_perProcessState.viewportMetaTagWidthWasExplicit = *(a3 + 357);
      *&self->_perProcessState.viewportMetaTagWidth = vextq_s8(*(a3 + 19), *(a3 + 19), 8uLL);
      v18 = *(self->_page.m_ptr + 4);
      if (*(v18 + 2784) == 1 && !*(v18 + 2776) && *(a3 + 359) == 1 && [(NSMutableArray *)self->_stableStatePresentationUpdateCallbacks.m_ptr count])
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v19 = self->_stableStatePresentationUpdateCallbacks.m_ptr;
        v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v32 objects:&buf[0]._wantsDynamicContentScaling count:16];
        if (v20)
        {
          v21 = *v33;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v33 != v21)
              {
                objc_enumerationMutation(v19);
              }

              (*(*(*(&v32 + 1) + 8 * i) + 16))();
            }

            v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v32 objects:&buf[0]._wantsDynamicContentScaling count:16];
          }

          while (v20);
        }

        [(NSMutableArray *)self->_stableStatePresentationUpdateCallbacks.m_ptr removeAllObjects];
        v23 = self->_stableStatePresentationUpdateCallbacks.m_ptr;
        self->_stableStatePresentationUpdateCallbacks.m_ptr = 0;
        if (v23)
        {
        }
      }

      if (![(WKContentView *)self->_contentView.m_ptr _mayDisableDoubleTapGesturesDuringSingleTap])
      {
        [(WKContentView *)self->_contentView.m_ptr _setDoubleTapGesturesEnabled:[(WKWebView *)self _allowsDoubleTapGestures]];
      }

      [(WKWebView *)self _updateScrollViewBackground];
      [(WKWebView *)self _setAvoidsUnsafeArea:*(a3 + 356)];
      v24 = self->_gestureController.m_ptr;
      if (v24)
      {
        WebKit::ViewGestureController::setRenderTreeSize(v24, *(a3 + 40));
      }

      if (self->_perProcessState.resetViewStateAfterTransactionID.__engaged_ && *(a3 + 41) >= self->_perProcessState.resetViewStateAfterTransactionID.var0.__val_.m_object.m_identifier)
      {
        self->_perProcessState.resetViewStateAfterTransactionID.__engaged_ = 0;
        if (![(WKWebView *)self _scrollViewIsRubberBandingForRefreshControl])
        {
          [(WKWebView *)self _resetContentOffset];
        }

        if ((self->_observedRenderingProgressEvents & 0x40) != 0)
        {
          WebKit::NavigationState::didFirstPaint(self->_navigationState.__ptr_);
        }

        [(WKWebView *)self _restoreScrollAndZoomStateForTransaction:a3];
      }

      else if ((updated | [(WKWebView *)self _restoreScrollAndZoomStateForTransaction:a3]) != 1)
      {
        goto LABEL_54;
      }

      [(WKWebView *)self _scheduleVisibleContentRectUpdate];
LABEL_54:
      if (!lastTransactionWasInStableState)
      {
        [(WKWebView *)self _reinsertTopFixedColorExtensionViewIfNeeded];
      }

      v25 = *(self->_page.m_ptr + 130);
      if (v25)
      {
        [(WKWebView *)self visibleRectInViewCoordinates];
        buf[0].super.isa = __PAIR64__(v27, v26);
        buf[0]._attr.refcount = v28;
        buf[0]._attr.magic = v29;
        v30 = WebKit::RemoteLayerTreeScrollingPerformanceData::blankPixelCount(v25, buf);
        WebKit::RemoteLayerTreeScrollingPerformanceData::appendBlankPixelCount(v25, 0, v30);
      }

      goto LABEL_2;
    }
  }
}

- (void)_couldNotRestorePageState
{
  m_ptr = self->_gestureController.m_ptr;
  if (m_ptr)
  {
    WebKit::ViewGestureController::SnapshotRemovalTracker::stopWaitingForEvent((m_ptr + 216), 0x20, "outstanding event occurred: ", 29, 1);
  }
}

- (void)_restorePageScrollPosition:(optional<WebCore:(FloatPoint)a4 :(RectEdges<float>)a5 FloatPoint>)a3 scrollOrigin:(double)a6 previousObscuredInset:scale:
{
  v7 = a5.m_sides.__elems_[3];
  v8 = a5.m_sides.__elems_[2];
  v9 = a5.m_sides.__elems_[1];
  v10 = a5.m_sides.__elems_[0];
  m_y = a4.m_y;
  m_x = a4.m_x;
  engaged = a3.__engaged_;
  v14 = a3.var0.__val_.m_x;
  v15 = a3.var0.__val_.m_y;
  if ([(WKWebView *)self _shouldDeferGeometryUpdates])
  {
    v16 = self;
    if (self)
    {
      v17 = self;
      v18 = self;
      v16 = self;
    }

    p_callbacksDeferredDuringResize = &v16->_callbacksDeferredDuringResize;
    m_size = v16->_callbacksDeferredDuringResize.m_size;
    if (m_size == v16->_callbacksDeferredDuringResize.m_capacity)
    {
      v24 = m_size + (m_size >> 1);
      if (v24 <= m_size + 1)
      {
        v24 = m_size + 1;
      }

      if (v24 <= 0x10)
      {
        v25 = 16;
      }

      else
      {
        v25 = v24;
      }

      WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v16->_callbacksDeferredDuringResize, v25);
      m_size = p_callbacksDeferredDuringResize->m_size;
      m_buffer = p_callbacksDeferredDuringResize->m_buffer;
      v27 = WTF::fastMalloc(0x40);
      v28 = self;
      *v27 = &unk_1F10FD3C8;
      *(v27 + 8) = self;
      *(v27 + 16) = v14;
      *(v27 + 20) = v15;
      *(v27 + 24) = engaged;
      *(v27 + 25) = v32;
      *(v27 + 27) = v33;
    }

    else
    {
      m_buffer = p_callbacksDeferredDuringResize->m_buffer;
      v27 = WTF::fastMalloc(0x40);
      v28 = self;
      *v27 = &unk_1F10FD3C8;
      *(v27 + 8) = self;
      *(v27 + 16) = v14;
      *(v27 + 20) = v15;
      *(v27 + 24) = engaged;
      *(v27 + 25) = v32;
      *(v27 + 27) = v33;
    }

    *(v27 + 28) = LODWORD(m_x) | (LODWORD(m_y) << 32);
    *(v27 + 36) = v10;
    *(v27 + 40) = v9;
    *(v27 + 44) = v8;
    *(v27 + 48) = v7;
    *(v27 + 56) = a6;
    m_buffer[m_size] = v27;
    ++p_callbacksDeferredDuringResize->m_size;
  }

  else if ([(WKWebView *)self usesStandardContentView])
  {
    v19 = *(self->_page.m_ptr + 41);
    if (*(v19 + 36))
    {
      __break(0xC471u);
    }

    else
    {
      if (*(v19 + 144) == 1)
      {
        v20 = (v19 + 136);
        v21 = *(v19 + 128) + 1;
      }

      else
      {
        v20 = (v19 + 264);
        v21 = 1;
      }

      v29 = *v20;
      v30 = self->_perProcessState.firstTransactionIDAfterPageRestore.__engaged_;
      self->_perProcessState.firstTransactionIDAfterPageRestore.var0.__val_.m_object.m_identifier = v21;
      self->_perProcessState.firstTransactionIDAfterPageRestore.var0.__val_.m_processIdentifier.m_identifier = v29;
      if (!v30)
      {
        self->_perProcessState.firstTransactionIDAfterPageRestore.__engaged_ = 1;
      }

      if (engaged)
      {
        if (!self->_perProcessState.scrollOffsetToRestore.__engaged_)
        {
          self->_perProcessState.scrollOffsetToRestore.__engaged_ = 1;
        }

        self->_perProcessState.scrollOffsetToRestore.var0.__val_.m_x = m_x + v14;
        self->_perProcessState.scrollOffsetToRestore.var0.__val_.m_y = m_y + v15;
      }

      else if (self->_perProcessState.scrollOffsetToRestore.__engaged_)
      {
        self->_perProcessState.scrollOffsetToRestore.__engaged_ = 0;
      }

      self->_obscuredInsetsWhenSaved.m_sides.__elems_[0] = v10;
      self->_obscuredInsetsWhenSaved.m_sides.__elems_[1] = v9;
      self->_obscuredInsetsWhenSaved.m_sides.__elems_[2] = v8;
      self->_obscuredInsetsWhenSaved.m_sides.__elems_[3] = v7;
      self->_scaleToRestore = a6;
    }
  }
}

- (void)_restorePageStateToUnobscuredCenter:(optional<WebCore:(double)a4 :FloatPoint>)a3 scale:
{
  engaged = a3.__engaged_;
  var0 = a3.var0;
  if ([(WKWebView *)self _shouldDeferGeometryUpdates])
  {
    v7 = self;
    if (self)
    {
      v8 = self;
      v9 = self;
      v7 = self;
    }

    p_callbacksDeferredDuringResize = &v7->_callbacksDeferredDuringResize;
    m_size = v7->_callbacksDeferredDuringResize.m_size;
    if (m_size == v7->_callbacksDeferredDuringResize.m_capacity)
    {
      v15 = m_size + (m_size >> 1);
      if (v15 <= m_size + 1)
      {
        v15 = m_size + 1;
      }

      if (v15 <= 0x10)
      {
        v16 = 16;
      }

      else
      {
        v16 = v15;
      }

      WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(p_callbacksDeferredDuringResize, v16);
      m_size = *(p_callbacksDeferredDuringResize + 12);
      v17 = *p_callbacksDeferredDuringResize;
      v18 = WTF::fastMalloc(0x28);
    }

    else
    {
      v17 = *p_callbacksDeferredDuringResize;
      v18 = WTF::fastMalloc(0x28);
    }

    *v18 = &unk_1F10FD3F0;
    *(v18 + 8) = self;
    *(v18 + 16) = var0;
    *(v18 + 24) = engaged;
    *(v18 + 25) = *v22;
    *(v18 + 28) = *&v22[3];
    *(v18 + 32) = a4;
    *(v17 + 8 * m_size) = v18;
    ++*(p_callbacksDeferredDuringResize + 12);
  }

  else if ([(WKWebView *)self usesStandardContentView])
  {
    v10 = *(self->_page.m_ptr + 41);
    if (*(v10 + 36))
    {
      __break(0xC471u);
    }

    else
    {
      if (*(v10 + 144) == 1)
      {
        v11 = (v10 + 136);
        v12 = *(v10 + 128) + 1;
      }

      else
      {
        v11 = (v10 + 264);
        v12 = 1;
      }

      v19 = *v11;
      v20 = self->_perProcessState.firstTransactionIDAfterPageRestore.__engaged_;
      self->_perProcessState.firstTransactionIDAfterPageRestore.var0.__val_.m_object.m_identifier = v12;
      self->_perProcessState.firstTransactionIDAfterPageRestore.var0.__val_.m_processIdentifier.m_identifier = v19;
      if (!v20)
      {
        self->_perProcessState.firstTransactionIDAfterPageRestore.__engaged_ = 1;
      }

      self->_perProcessState.unobscuredCenterToRestore.var0 = var0;
      self->_perProcessState.unobscuredCenterToRestore.__engaged_ = engaged;
      self->_scaleToRestore = a4;
    }
  }
}

- (RefPtr<WebKit::ViewSnapshot,)_takeViewSnapshot
{
  v4 = v2;
  WebCore::screenScaleFactor(0, a2);
  v23 = v5;
  [(WKWebView *)self bounds];
  v29.m11 = v6;
  v29.m12 = v7;
  v29.m13 = v8;
  v29.m14 = v9;
  v10 = WebCore::FloatSize::FloatSize(&v30, &v29.m13);
  v11 = vmul_n_f32(v30, v23);
  v30 = v11;
  if (v11.f32[0] > 0.0 && v11.f32[1] > 0.0 && (memset(&v29, 0, sizeof(v29)), CATransform3DMakeScale(&v29, v23, v23, 1.0), v12 = WebCore::PlatformCALayer::contentsFormatForLayer(), WebCore::DestinationColorSpace::SRGB(v12), v10 = WebCore::IOSurface::create(), v28))
  {
    [objc_msgSend(-[WKWebView layer](self "layer")];
    [(WKWebView *)self layer];
    CARenderServerRenderLayerWithTransform();
    if (WebCore::IOSurface::allowConversionFromFormatToFormat())
    {
      v26 = 0;
      WebKit::ViewSnapshot::create(&v26, &v27);
      if (v26)
      {
        WebCore::IOSurface::~IOSurface(v26);
        bmalloc::api::tzoneFree(v19, v20);
      }

      v13 = v27;
      ++*(v27 + 2);
      v14 = WTF::fastMalloc(0x10);
      *v14 = &unk_1F10FD418;
      v14[1] = v13;
      v25 = v14;
      WebCore::IOSurface::convertToFormat();
      v15 = v25;
      v25 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      *v4 = v13;
    }

    else
    {
      v16 = v28;
      v28 = 0;
      v24 = v16;
      WebKit::ViewSnapshot::create(&v24, &v27);
      *v4 = v27;
      if (v24)
      {
        WebCore::IOSurface::~IOSurface(v24);
        bmalloc::api::tzoneFree(v21, v22);
      }
    }

    v10 = v28;
    v28 = 0;
    if (v10)
    {
      WebCore::IOSurface::~IOSurface(v10);
      return bmalloc::api::tzoneFree(v17, v18);
    }
  }

  else
  {
    *v4 = 0;
  }

  return v10;
}

- (void)_zoomToCenter:(FloatPoint)a3 atScale:(double)a4 animated:(BOOL)a5 honorScrollability:(BOOL)a6
{
  v6 = a6;
  m_y = a3.m_y;
  m_x = a3.m_x;
  v12 = [-[WKWebView _currentContentView](self "_currentContentView")];
  if (v12)
  {
    [v12 affineTransform];
    v14 = v33[0];
  }

  else
  {
    v14 = 0.0;
  }

  if (v14 != a4 && ((v16 = vabdd_f64(a4, v14), v17 = fabs(a4), v17 < 1.0) ? (v18 = v17 * 1.79769313e308 < v16) : (v18 = 0), v18 || (v17 * 2.22507386e-308 > v16 ? (v19 = v17 <= 1.0) : (v19 = 1), v19 && v16 / v17 > 2.22044605e-16 || (v20 = fabs(v14), v20 < 1.0) && v20 * 1.79769313e308 < v16 || (v20 * 2.22507386e-308 > v16 ? (v21 = v20 <= 1.0) : (v21 = 1), (v13 = v16 / v20, v21) ? (v22 = v13 > 2.22044605e-16) : (v22 = 0), v22))))
  {
    WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WillStartUserTriggeredZooming>(*(self->_page.m_ptr + 44), v33, *(self->_page.m_ptr + 6), 0);
    v15 = 0;
  }

  else
  {
    if (v6 && ![(WKScrollView *)self->_scrollView.m_ptr isScrollEnabled])
    {
      return;
    }

    v15 = 1;
  }

  [(WKScrollView *)self->_scrollView.m_ptr bounds];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v27 = CGRectGetWidth(v34) / a4;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v28 = CGRectGetHeight(v35) / a4;
  if (a5)
  {
    if (v15)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __82__WKWebView_WKViewInternalIOS___zoomToCenter_atScale_animated_honorScrollability___block_invoke;
      v32[3] = &unk_1E7631DE0;
      v32[4] = self;
      *&v32[5] = m_x - v27 * 0.5;
      *&v32[6] = m_y - v28 * 0.5;
      *&v32[7] = v27;
      *&v32[8] = v28;
      [MEMORY[0x1E69DD250] animateWithDuration:v32 animations:0.25];
      return;
    }

    m_ptr = self->_scrollView.m_ptr;
    v30 = v27;
    v31 = 1;
  }

  else
  {
    m_ptr = self->_scrollView.m_ptr;
    v30 = v27;
    v31 = 0;
  }

  [(WKScrollView *)m_ptr zoomToRect:v31 animated:m_x - v27 * 0.5, m_y - v28 * 0.5, v30];
}

- (void)_zoomToRect:(FloatRect)a3 atScale:(double)a4 origin:(FloatPoint)a5 animated:(BOOL)a6
{
  v6 = a6;
  m_y = a5.m_y;
  m_x = a5.m_x;
  m_height = a3.m_size.m_height;
  v32 = a3.m_location.m_y;
  v33 = a3.m_location.m_x;
  m_width = a3.m_size.m_width;
  v9 = [-[WKWebView _currentContentView](self "_currentContentView")];
  if (v9)
  {
    [v9 affineTransform];
    x = v40.origin.x;
  }

  else
  {
    x = 0.0;
  }

  v11 = x / a4;
  [(WKWebView *)self bounds];
  [(WKWebView *)self convertRect:[(WKWebView *)self _currentContentView] toView:v12, v13, v14, v15];
  v40.origin.x = v16;
  v40.origin.y = v17;
  v40.size.width = v18;
  v40.size.height = v19;
  WebCore::FloatRect::FloatRect(v39, &v40);
  [(WKWebView *)self _contentRectForUserInteraction];
  v40.origin.x = v20;
  v40.origin.y = v21;
  v40.size.width = v22;
  v40.size.height = v23;
  WebCore::FloatRect::FloatRect(&v37, &v40);
  v24 = v11;
  v25 = vmul_n_f32(vsub_f32(v37, v39[0]), v24);
  v26 = vmul_n_f32(vsub_f32(vadd_f32(v39[0], v39[1]), vadd_f32(v37, v38)), v24);
  v27 = vmul_n_f32(v38, v24);
  v28 = vsub_f32(vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(m_height), LODWORD(m_width)), v27), vsub_f32(__PAIR64__(LODWORD(m_y), LODWORD(m_x)), vmul_f32(v27, 0x3F0000003F000000)), vsub_f32(__PAIR64__(LODWORD(v32), LODWORD(v33)), vmul_f32(vsub_f32(v27, __PAIR64__(LODWORD(m_height), LODWORD(m_width))), 0x3F0000003F000000))), v25);
  v29 = vadd_f32(v25, v26);
  v30 = COERCE_DOUBLE(vadd_f32(v28, vmul_f32(vadd_f32(v27, v29), 0x3F0000003F000000)));
  v29.i32[0] = HIDWORD(v30);
  [(WKWebView *)self _zoomToCenter:v6 atScale:1 animated:v30 honorScrollability:*&v29, a4];
}

- (void)_scrollToContentScrollPosition:(FloatPoint)a3 scrollOrigin:(IntPoint)a4 animated:(BOOL)a5
{
  v35 = a3;
  m_y = a3.m_y;
  v37 = a4;
  p_perProcessState = &self->_perProcessState;
  if (self->_perProcessState.commitDidRestoreScrollPosition)
  {
    return;
  }

  v6 = a5;
  if ([(WKWebView *)self _shouldDeferGeometryUpdates])
  {
    return;
  }

  v8 = *(*(*(self->_page.m_ptr + 43) + 32) + 24);
  if ((!v8 || *(v8 + 250) == 1 && *(v8 + 251) == 1) && ([(WKScrollView *)self->_scrollView.m_ptr zoomScale], v10 = v9, v11 = [(WKScrollView *)self->_scrollView.m_ptr minimumZoomScale], v13 = v12, !WebKit::scalesAreEssentiallyEqual(v11, v10, v13)))
  {

    [(WKWebView *)self _scheduleForcedVisibleContentRectUpdate];
  }

  else
  {
    WebCore::FloatPoint::FloatPoint(v38, &v37);
    v14 = vadd_f32(__PAIR64__(LODWORD(m_y), LODWORD(v35.m_x)), v38[0]);
    v15 = [-[WKWebView _currentContentView](self "_currentContentView")];
    if (v15)
    {
      [v15 affineTransform];
      v16 = *v38;
    }

    else
    {
      v16 = 0.0;
    }

    v38[0] = vmul_n_f32(v14, v16);
    WebCore::FloatPoint::operator CGPoint();
    [(WKWebView *)self _contentOffsetAdjustedForObscuredInset:?];
    contentOffsetBoundedInValidRange(&self->_scrollView.m_ptr->super.super.super, v40);
    v18 = v17;
    v20 = v19;
    [(UIScrollView *)self->_scrollView.m_ptr _wk_stopScrollingAndZooming];
    [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
    if (v18 != v21 || v20 != v22)
    {
      if (v35.m_x == 0.0)
      {
        v24 = 1;
        v25 = m_y;
        goto LABEL_26;
      }

      v26 = fabsf(v35.m_x);
      v25 = m_y;
      if (v26 < 1.0 && (v26 * 3.4028e38) < v26)
      {
        goto LABEL_25;
      }

      if (v26 > 1.0)
      {
        if ((v35.m_x / v35.m_x) > 0.00000011921 && (v26 * 1.1755e-38) <= v26)
        {
          goto LABEL_25;
        }
      }

      else if ((v35.m_x / v35.m_x) > 0.00000011921)
      {
LABEL_25:
        v24 = 0;
        goto LABEL_26;
      }

      v24 = (v26 / 0.0) <= 0.00000011921 && v35.m_x <= 0.0 && v35.m_x >= 0.0;
LABEL_26:
      if (v21 >= 0.0 || !v24)
      {
        v21 = v18;
      }

      if (v25 == 0.0)
      {
        v27 = 1;
LABEL_35:
        if (!v27 || v22 >= 0.0)
        {
          v22 = v20;
        }

        [(WKScrollView *)self->_scrollView.m_ptr setContentOffset:v6 animated:v21, v22, v35];
        return;
      }

      v28 = fabsf(v25);
      if (v28 >= 1.0 || (v28 * 3.4028e38) >= v28)
      {
        if (v28 > 1.0)
        {
          if ((v25 / v25) > 0.00000011921 && (v28 * 1.1755e-38) <= v28)
          {
            goto LABEL_34;
          }
        }

        else if ((v25 / v25) > 0.00000011921)
        {
          goto LABEL_34;
        }

        v27 = (v28 / 0.0) <= 0.00000011921 && v25 <= 0.0 && v25 >= 0.0;
        goto LABEL_35;
      }

LABEL_34:
      v27 = 0;
      goto LABEL_35;
    }

    if (!p_perProcessState->didDeferUpdateVisibleContentRectsForAnyReason)
    {
      WebKit::WebPageProxy::resendLastVisibleContentRects(self->_page.m_ptr);
    }
  }
}

- (float)_adjustScrollRectToAvoidHighlightOverlay:(FloatRect)a3
{
  v39 = a3;
  v4 = *(self->_page.m_ptr + 181);
  if (v4)
  {
    [v4 visibleFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  -[WKWebView convertRect:fromCoordinateSpace:](self, "convertRect:fromCoordinateSpace:", [objc_msgSend(-[WKWebView window](self "window")], v6, v8, v10, v12);
  v35.origin.x = v13;
  v35.origin.y = v14;
  v35.size.width = v15;
  v35.size.height = v16;
  WebCore::FloatRect::FloatRect(v36, &v35);
  WebCore::FloatRect::operator CGRect();
  v17 = 0.0;
  if (!CGRectIsNull(v40))
  {
    __asm { FMOV            V1.2S, #5.0 }

    v38 = vadd_f32(v38, _D1);
    if (WebCore::FloatRect::intersects(&v39, v36))
    {
      v23 = v37;
      [(WKWebView *)self bounds];
      v25 = v23 - v24;
      [(WKWebView *)self bounds];
      v27 = v26;
      [(WKWebView *)self bounds];
      v29 = v27 + v28 - (v37 + v38.f32[1]);
      [(WKWebView *)self center];
      v31 = v30;
      [(WKWebView *)self bounds];
      v33 = v31 - (v32 + (v25 * 0.5));
      if (v25 <= v29)
      {
        return v32 + (v29 * 0.5) - v31;
      }

      return v33;
    }
  }

  return v17;
}

- (BOOL)_scrollToRect:(FloatRect)a3 origin:(FloatPoint)a4 minimumScrollDistance:(float)a5
{
  m_y = a4.m_y;
  m_x = a4.m_x;
  m_height = a3.m_size.m_height;
  m_width = a3.m_size.m_width;
  v10 = a3.m_location.m_y;
  v11 = a3.m_location.m_x;
  if (![(WKScrollView *)self->_scrollView.m_ptr isScrollEnabled])
  {
    return 0;
  }

  v62 = a5;
  [(WKWebView *)self _contentRectForUserInteraction];
  v72.origin.x = v13;
  v72.origin.y = v14;
  v72.size.width = v15;
  v72.size.height = v16;
  WebCore::FloatRect::FloatRect(v70, &v72);
  v18 = *v70;
  v17 = *&v70[1];
  [-[WKWebView _currentContentView](self "_currentContentView")];
  v72.origin.x = v19;
  v72.origin.y = v20;
  v72.size.width = v21;
  v72.size.height = v22;
  WebCore::FloatSize::FloatSize(&v69, &v72.size);
  [(WKScrollView *)self->_scrollView.m_ptr adjustedContentInset];
  v24 = v23;
  v26 = v25;
  v27 = -v26;
  v28 = v24;
  v29 = -v28;
  *&v68 = -v26;
  *(&v68 + 1) = -v28;
  if (self->_haveSetObscuredInsets)
  {
    left = self->_obscuredInsets.left;
    top = self->_obscuredInsets.top;
    *&v68 = left - v26;
    *(&v68 + 1) = top - v28;
    v72.origin.x = 0.0;
    WebCore::FloatPoint::constrainedBetween(&v68, &v68, &v72);
    v68 = __PAIR64__(LODWORD(v29), LODWORD(v27));
  }

  v65 = __PAIR64__(LODWORD(v29), LODWORD(v27));
  v32 = v71.f32[0] - m_width;
  if (m_width <= v71.f32[0])
  {
    v33 = v11;
  }

  else
  {
    v32 = v71.f32[0];
    v33 = m_x;
  }

  v34 = v33 - (v32 * 0.5);
  v35 = v71.f32[1];
  if (m_height > v71.f32[1])
  {
    v36 = m_y;
  }

  else
  {
    v35 = v71.f32[1] - m_height;
    v36 = v10;
  }

  *&v72.origin.x = v34;
  *(&v72.origin.x + 1) = v36 - (v35 * 0.5);
  v64 = vsub_f32(v69, v71);
  WebCore::FloatPoint::constrainedBetween(&v72, &v65, &v64);
  if (v18 == v37 && v17 == v38)
  {
    v65 = v68;
    if (m_width > v71.f32[0])
    {
      v37 = m_x - (0.5 * v71.f32[0]);
    }

    v39 = m_y - vmuls_lane_f32(0.5, v71, 1);
    if (m_height > v71.f32[1])
    {
      v38 = v39;
    }

    *&v72.origin.x = __PAIR64__(LODWORD(v38), LODWORD(v37));
    v64 = vsub_f32(v69, v71);
    WebCore::FloatPoint::constrainedBetween(&v72, &v65, &v64);
  }

  v40 = v37 - v18;
  v41 = v38 - v17;
  v42 = [-[WKWebView _currentContentView](self "_currentContentView")];
  if (v42)
  {
    [v42 affineTransform];
    x = v72.origin.x;
  }

  else
  {
    x = 0.0;
  }

  v45 = v40 * x;
  v46 = v41 * x;
  v47 = hypotf(v45, v41 * x);
  v65 = __PAIR64__(LODWORD(v10), LODWORD(v11));
  v66 = m_width;
  v67 = m_height;
  WebCore::FloatRect::operator CGRect();
  [(WKWebView *)self convertRect:[(WKWebView *)self _currentContentView] fromView:v48, v49, v50, v51];
  v72.origin.x = v52;
  v72.origin.y = v53;
  v72.size.width = v54;
  v72.size.height = v55;
  WebCore::FloatRect::FloatRect(&v64, &v72);
  v64.f32[0] = v64.f32[0] - v45;
  v64.f32[1] = v64.f32[1] - v46;
  [(WKWebView *)self _adjustScrollRectToAvoidHighlightOverlay:?];
  v44 = v47 >= v62;
  if (v47 >= v62)
  {
    v57 = v46 + v56;
    [(WKContentView *)self->_contentView.m_ptr willStartZoomOrScroll];
    m_ptr = self->_scrollView.m_ptr;
    [(WKScrollView *)m_ptr contentOffset];
    v72.origin.x = v59;
    v72.origin.y = v60;
    WebCore::FloatPoint::FloatPoint(v63, &v72.origin);
    v63[2] = (v45 + 0.0) + v63[0];
    v63[3] = v57 + v63[1];
    WebCore::FloatPoint::operator CGPoint();
    [(WKScrollView *)m_ptr setContentOffset:1 animated:?];
  }

  return v44;
}

- (void)_zoomOutWithOrigin:(FloatPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  m_y = a3.m_y;
  m_x = a3.m_x;
  [(WKScrollView *)self->_scrollView.m_ptr minimumZoomScale];
  v8 = v9;
  *&v9 = m_x;
  *&v10 = m_y;

  [(WKWebView *)self _zoomToCenter:v4 atScale:1 animated:v9 honorScrollability:v10, v8];
}

- (BOOL)_selectionRectIsFullyVisibleAndNonEmpty
{
  v3 = WebKit::WebPageProxy::selectionBoundingRectInRootViewCoordinates(self->_page.m_ptr);
  result = 0;
  if (v5 > 0.0 && v6 > 0.0)
  {
    [(WKWebView *)self _contentRectForUserInteraction:__PAIR64__(v4];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    WebCore::FloatRect::operator CGRect();
    v21.origin.x = v16;
    v21.origin.y = v17;
    v21.size.width = v18;
    v21.size.height = v19;
    v20.origin.x = v9;
    v20.origin.y = v11;
    v20.size.width = v13;
    v20.size.height = v15;
    return CGRectContainsRect(v20, v21);
  }

  return result;
}

- (void)_scrollToAndRevealSelectionIfNeeded
{
  if ([(WKScrollView *)self->_scrollView.m_ptr isScrollEnabled])
  {
    v37 = WebKit::WebPageProxy::selectionBoundingRectInRootViewCoordinates(self->_page.m_ptr) + -4.0;
    v38 = v3 + -4.0;
    v5.i32[1] = v4;
    __asm { FMOV            V0.2S, #4.0 }

    v39 = vadd_f32(vadd_f32(v5, _D0), _D0);
    [(WKContentView *)self->_contentView.m_ptr bounds];
    v40.origin.x = v11;
    v40.origin.y = v12;
    v40.size.width = v13;
    v40.size.height = v14;
    WebCore::FloatRect::FloatRect(&v33, &v40);
    WebCore::FloatRect::intersect(&v37, &v33);
    if (v39.f32[0] > 0.0)
    {
      LODWORD(v15) = v39.i32[1];
      if (v39.f32[1] > 0.0)
      {
        [(WKWebView *)self _contentRectForUserInteraction];
        v40.origin.x = v16;
        v40.origin.y = v17;
        v40.size.width = v18;
        v40.size.height = v19;
        WebCore::FloatRect::FloatRect(&v33, &v40);
        v20 = v34 + v36;
        v21 = v38 + v39.f32[1];
        v22 = (v38 - v34);
        if (v34 <= v38)
        {
          v22 = *(MEMORY[0x1E695F060] + 8);
        }

        _NF = v20 < v21;
        v23 = (v21 - v20);
        if (_NF)
        {
          v24 = v23;
        }

        else
        {
          v24 = v22;
        }

        v25 = v33 + v35;
        v26 = v37 + v39.f32[0];
        v27 = (v37 - v33);
        if (v33 <= v37)
        {
          v27 = *MEMORY[0x1E695F060];
        }

        if (v25 < v26)
        {
          v28 = (v26 - v25);
        }

        else
        {
          v28 = v27;
        }

        if (v28 != *MEMORY[0x1E695F060] || v24 != *(MEMORY[0x1E695F060] + 8))
        {
          v29 = [-[WKWebView _currentContentView](self "_currentContentView")];
          if (v29)
          {
            [v29 affineTransform];
            x = v40.origin.x;
          }

          else
          {
            x = 0.0;
          }

          [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
          [(WKScrollView *)self->_scrollView.m_ptr setContentOffset:1 animated:v31 + v28 * x, v32 + v24 * x];
        }
      }
    }
  }
}

- (void)_zoomToFocusRect:(const FloatRect *)a3 selectionRect:(const FloatRect *)a4 fontSize:(float)a5 minimumScale:(double)a6 maximumScale:(double)a7 allowScaling:(BOOL)a8 forceScroll:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  v14 = [(WKScrollView *)self->_scrollView.m_ptr window];
  [(WKWebView *)self bounds];
  p_obscuredInsets = &self->_obscuredInsets;
  top = self->_obscuredInsets.top;
  left = self->_obscuredInsets.left;
  v19 = v18 + left;
  v21 = v20 + top;
  v23 = v22 - (left + self->_obscuredInsets.right);
  v25 = v24 - (top + self->_obscuredInsets.bottom);
  [v14 bounds];
  [v14 convertRect:self toView:?];
  v153.origin.x = v26;
  v153.origin.y = v27;
  v153.size.width = v28;
  v153.size.height = v29;
  rect1_8 = v21;
  rect1_16 = v19;
  v131.origin.x = v19;
  v131.origin.y = v21;
  v131.size.width = v23;
  v131.size.height = v25;
  v132 = CGRectIntersection(v131, v153);
  x = v132.origin.x;
  y = v132.origin.y;
  width = v132.size.width;
  height = v132.size.height;
  [v14 convertRect:self toView:{self->_inputViewBoundsInWindow.origin.x, self->_inputViewBoundsInWindow.origin.y, self->_inputViewBoundsInWindow.size.width, self->_inputViewBoundsInWindow.size.height}];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  rect1 = x;
  v133.origin.x = x;
  v113 = y;
  v133.origin.y = y;
  v133.size.width = width;
  v133.size.height = height;
  v154.origin.x = v35;
  v154.origin.y = v37;
  v154.size.width = v39;
  v154.size.height = v41;
  v134 = CGRectIntersection(v133, v154);
  v42 = v134.origin.x;
  v43 = v134.origin.y;
  rect1_24 = v134.size.width;
  rect = v134.size.height;
  v124 = height;
  v125 = width;
  v44 = width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8);
  if (!v44 || (v135.origin.x = v35, v135.origin.y = v37, v135.size.width = v39, v135.size.height = v41, !CGRectIsEmpty(v135)))
  {
    v136.origin.x = v42;
    v136.origin.y = v43;
    v136.size.width = rect1_24;
    v136.size.height = rect;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    if (!CGRectIsEmpty(v136))
    {
      v137.origin.x = v42;
      v137.origin.y = v43;
      v137.size.width = rect1_24;
      v137.size.height = rect;
      MinY = CGRectGetMinY(v137);
      v138.origin.x = rect1;
      v138.origin.y = v113;
      v138.size.width = width;
      v138.size.height = height;
      v48 = MinY - CGRectGetMinY(v138);
      v139.origin.x = rect1;
      v139.origin.y = v113;
      v139.size.width = width;
      v139.size.height = height;
      MaxY = CGRectGetMaxY(v139);
      v140.origin.x = v42;
      v140.origin.y = v43;
      v140.size.width = rect1_24;
      v140.size.height = rect;
      v50 = MaxY - CGRectGetMaxY(v140);
      if (v48 >= 106.0 || v50 < v48)
      {
        v46 = 50.0;
        v47 = 0.0;
        v124 = v48;
      }

      else
      {
        v141.origin.x = v42;
        v141.origin.y = v43;
        v141.size.width = rect1_24;
        v141.size.height = rect;
        v52 = CGRectGetMaxY(v141);
        v142.origin.x = rect1;
        v142.origin.y = v113;
        v142.size.width = width;
        v142.size.height = height;
        v46 = 0.0;
        v124 = v50;
        v47 = v52 - CGRectGetMinY(v142);
      }

      v45 = 0.0;
    }

    v53 = [-[WKWebView _currentContentView](self "_currentContentView")];
    if (v53)
    {
      [v53 affineTransform];
      v45 = v130.origin.x;
    }

    v54 = v45;
    if (v10)
    {
      v55 = 16.0 / a5;
      v56 = a6;
      if (v55 > a6)
      {
        v56 = 16.0 / a5;
      }

      if (v55 >= a7)
      {
        v54 = a7;
      }

      else
      {
        v54 = v56;
      }
    }

    [(WKContentView *)self->_contentView.m_ptr bounds];
    v129 = *a3;
    recta = round(v54 * v57) / v57;
    v58 = recta;
    WebCore::FloatRect::scale(&v129, v58, v58);
    [(WKContentView *)self->_contentView.m_ptr frame];
    v130.origin.x = v59;
    v130.origin.y = v60;
    v130.size.width = v61;
    v130.size.height = v62;
    WebCore::FloatPoint::FloatPoint(v128, &v130.origin);
    v129.m_location = vadd_f32(v128[0], v129.m_location);
    isZero = WebCore::FloatSize::isZero(&a4->m_size);
    if (v9 && ![(WKContentView *)self->_contentView.m_ptr _shouldAvoidScrollingWhenFocusedContentIsVisible]|| (WebCore::FloatRect::operator CGRect(), [(WKWebView *)self convertRect:self->_contentView.m_ptr fromView:?], v155.origin.x = v64, v155.origin.y = v65, v155.size.width = v66, v155.size.height = v67, v143.origin.x = rect1_16, v143.origin.y = rect1_8 + v47, v143.size.width = width, v143.size.height = v124 - v46, !CGRectContainsRect(v143, v155)) && (isZero || (WebCore::FloatRect::operator CGRect(), [(WKWebView *)self convertRect:self->_contentView.m_ptr fromView:?], v156.origin.x = v68, v156.origin.y = v69, v156.size.width = v70, v156.size.height = v71, v144.origin.x = rect1_16, v144.origin.y = rect1_8 + v47, v144.size.width = width, v144.size.height = v124 - v46, !CGRectContainsRect(v144, v156))))
    {
      rect1_24a = v45;
      v72 = (width - v129.m_size.m_width) * 0.5;
      v73 = v124 - v129.m_size.m_height;
      [(WKScrollView *)self->_scrollView.m_ptr adjustedContentInset];
      v75 = v74;
      v77 = v76;
      [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
      if (self->_haveSetObscuredInsets)
      {
        v78 = v78 + self->_obscuredInsets.left;
        v79 = v79 + p_obscuredInsets->top;
      }

      v80 = v73 * 0.5;
      if (v72 <= 0.0)
      {
        v83 = -v77;
        v82 = v125;
        if (v129.m_location.m_x + v125 * -0.5 > -v77)
        {
          v83 = v129.m_location.m_x + v125 * -0.5;
        }

        if (v78 > v83)
        {
          v83 = v78;
        }

        if (v78 >= v129.m_location.m_x)
        {
          m_x = v129.m_location.m_x;
        }

        else
        {
          m_x = v83;
        }
      }

      else
      {
        m_x = v129.m_location.m_x - v72;
        v82 = v125;
      }

      if (v80 <= 0.0)
      {
        m_y = -v75;
        if (v129.m_location.m_y + v124 * -0.5 > -v75)
        {
          m_y = v129.m_location.m_y + v124 * -0.5;
        }

        if (v79 > m_y)
        {
          m_y = v79;
        }

        if (v79 >= v129.m_location.m_y)
        {
          m_y = v129.m_location.m_y;
        }
      }

      else
      {
        m_y = v129.m_location.m_y - v80;
      }

      v85 = m_y - v47;
      [(WKContentView *)self->_contentView.m_ptr bounds];
      v130.origin.x = v86;
      v130.origin.y = v87;
      v130.size.width = v88;
      v130.size.height = v89;
      WebCore::FloatRect::FloatRect(v128, &v130);
      WebCore::FloatRect::scale(v128, v58, v58);
      [(WKContentView *)self->_contentView.m_ptr frame];
      v130.origin.x = v90;
      v130.origin.y = v91;
      v130.size.width = v92;
      v130.size.height = v93;
      WebCore::FloatPoint::FloatPoint(&v127, &v130.origin);
      v128[0] = vadd_f32(v127.m_location, v128[0]);
      WebCore::FloatRect::operator CGRect();
      v94 = CGRectGetMaxX(v145) - v82;
      WebCore::FloatRect::operator CGRect();
      v95 = CGRectGetMaxY(v146) - v124;
      if (isZero)
      {
        v96 = -INFINITY;
        v97 = -INFINITY;
      }

      else
      {
        v127 = *a4;
        WebCore::FloatRect::scale(&v127, v58, v58);
        [(WKContentView *)self->_contentView.m_ptr frame];
        v130.origin.x = v98;
        v130.origin.y = v99;
        v130.size.width = v100;
        v130.size.height = v101;
        WebCore::FloatPoint::FloatPoint(&v126, &v130.origin);
        v127.m_location = vadd_f32(v126, v127.m_location);
        WebCore::FloatRect::operator CGRect();
        v97 = CGRectGetMaxX(v147) + 8.0 - v82;
        WebCore::FloatRect::operator CGRect();
        v96 = CGRectGetMaxY(v148) + 8.0 - v124 - v47;
        WebCore::FloatRect::operator CGRect();
        v102 = CGRectGetMinX(v149) + -8.0;
        if (v102 < v94)
        {
          v94 = v102;
        }

        WebCore::FloatRect::operator CGRect();
        v103 = CGRectGetMinY(v150) + -8.0 - v47;
        if (v103 < v95)
        {
          v95 = v103;
        }
      }

      if (m_x > v97)
      {
        v104 = m_x;
      }

      else
      {
        v104 = v97;
      }

      if (m_x >= v94)
      {
        v105 = v94;
      }

      else
      {
        v105 = v104;
      }

      if (v85 > v96)
      {
        v106 = v85;
      }

      else
      {
        v106 = v96;
      }

      if (v85 >= v95)
      {
        v107 = v95;
      }

      else
      {
        v107 = v106;
      }

      if (self->_haveSetObscuredInsets)
      {
        v105 = v105 - self->_obscuredInsets.left;
        v107 = v107 - p_obscuredInsets->top;
      }

      [(WKWebView *)self bounds];
      v108 = v105 + CGRectGetWidth(v151) * 0.5;
      [(WKWebView *)self bounds];
      v109 = CGRectGetHeight(v152);
      v130.origin.x = v108;
      v130.origin.y = v107 + v109 * 0.5;
      WebCore::FloatPoint::FloatPoint(&v127, &v130.origin);
      if (recta != rect1_24a)
      {
        WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WillStartUserTriggeredZooming>(*(self->_page.m_ptr + 44), &v130, *(self->_page.m_ptr + 6), 0);
      }

      v110 = 1.0 / recta;
      HIDWORD(v111) = LODWORD(v127.m_location.m_y);
      v127.m_location = vmul_n_f32(v127.m_location, v110);
      *&v111 = v127.m_location.m_y;
      [(WKWebView *)self _zoomToCenter:1 atScale:0 animated:*&v127.m_location honorScrollability:v111, recta];
    }
  }
}

- (double)_contentZoomScale
{
  v2 = [-[WKWebView _currentContentView](self "_currentContentView")];
  if (!v2)
  {
    return 0.0;
  }

  [v2 affineTransform];
  return v4;
}

- (double)_targetContentZoomScaleForRect:(const FloatRect *)a3 currentScale:(double)a4 fitEntireRect:(BOOL)a5 minimumScale:(double)a6 maximumScale:(double)a7
{
  [(WKWebView *)self _contentRectForUserInteraction];
  v20.width = v9;
  v20.height = v10;
  WebCore::FloatSize::FloatSize(&v21, &v20);
  v11 = vdivq_f64(vmulq_n_f64(vcvtq_f64_f32(v21), a4), vcvtq_f64_f32(a3->m_size));
  v12 = vdupq_lane_s64(*&a6, 0);
  v13 = vbslq_s8(vcgtq_f64(v12, v11), v12, v11);
  v14 = vdupq_lane_s64(*&a7, 0);
  v15 = vbslq_s8(vcgtq_f64(v13, v14), v14, v13);
  if (a5 && *&v15.i64[1] < *v15.i64)
  {
    v15.i64[0] = v15.i64[1];
  }

  return *v15.i64;
}

- (BOOL)_zoomToRect:(FloatRect)a3 withOrigin:(FloatPoint)a4 fitEntireRect:(BOOL)a5 minimumScale:(double)a6 maximumScale:(double)a7 minimumScrollDistance:(float)a8
{
  v10 = a5;
  m_y = a4.m_y;
  m_x = a4.m_x;
  v26 = a3;
  v14 = [-[WKWebView _currentContentView](self "_currentContentView")];
  if (v14)
  {
    [v14 affineTransform];
    v15 = v27;
  }

  else
  {
    v15 = 0.0;
  }

  [(WKWebView *)self _targetContentZoomScaleForRect:&v26 currentScale:v10 fitEntireRect:v15 minimumScale:a6 maximumScale:a7];
  v21 = v20;
  v22 = vabdd_f64(v20, v15);
  HIDWORD(v23) = 1066695393;
  if (v22 >= 0.0199999996)
  {
    if (v21 != v15)
    {
      *&v22 = v26.m_location.m_x;
      *&v23 = v26.m_location.m_y;
      *&v16 = v26.m_size.m_width;
      *&v17 = v26.m_size.m_height;
      v24 = 1;
      *&v18 = m_x;
      *&v19 = m_y;
      [(WKWebView *)self _zoomToRect:1 atScale:v22 origin:v23 animated:v16, v17, v21, v18, v19];
      return v24;
    }

    return 0;
  }

  *&v19 = a8;
  *&v22 = v26.m_location.m_x;
  *&v23 = v26.m_location.m_y;
  *&v16 = v26.m_size.m_width;
  *&v17 = v26.m_size.m_height;
  *&v21 = m_x;
  *&v18 = m_y;
  return [(WKWebView *)self _scrollToRect:v22 origin:v23 minimumScrollDistance:v16, v17, v21, v18, v19];
}

- (void)_setOpaqueInternal:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = WKWebView;
  [(WKWebView *)&v13 setOpaque:?];
  [(WKContentView *)self->_contentView.m_ptr setOpaque:v3];
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    LOBYTE(v11) = 0;
    v12 = 0;
    if (!v3)
    {
      v10 = 0x1104000000000000;
      std::optional<WebCore::Color>::operator=[abi:sn200100]<WebCore::Color,void>(&v11, &v10);
      if ((v10 & 0x8000000000000) != 0)
      {
        v9 = (v10 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9);
          WTF::fastFree(v9, v6);
        }
      }

      m_ptr = self->_page.m_ptr;
    }

    WebKit::WebPageProxy::setBackgroundColor(m_ptr, &v11);
    [(WKWebView *)self _updateScrollViewBackground];
    if (v12 == 1 && (v11 & 0x8000000000000) != 0)
    {
      v8 = (v11 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        WTF::fastFree(v8, v7);
      }
    }
  }
}

- (void)setOpaque:(BOOL)a3
{
  v3 = a3;
  if ([(WKWebView *)self isOpaque]!= a3)
  {

    [(WKWebView *)self _setOpaqueInternal:v3];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = WKWebView;
  [(WKWebView *)&v5 setBackgroundColor:?];
  [(WKContentView *)self->_contentView.m_ptr setBackgroundColor:a3];
  [(WKWebView *)self _updateScrollViewBackground];
}

- (BOOL)_allowsDoubleTapGestures
{
  if (self->_fastClickingIsDisabled)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = [(WKScrollView *)self->_scrollView.m_ptr isZoomEnabled];
    if (v2)
    {
      [(WKScrollView *)self->_scrollView.m_ptr minimumZoomScale];
      v5 = v4;
      [(WKScrollView *)self->_scrollView.m_ptr maximumZoomScale];
      if (v5 >= v6 || ([(WKScrollView *)self->_scrollView.m_ptr minimumZoomScale], v8 = v7, v9 = [(WKScrollView *)self->_scrollView.m_ptr maximumZoomScale], v11 = v10, WebKit::scalesAreEssentiallyEqual(v9, v8, v11)))
      {
        LOBYTE(v2) = 0;
      }

      else
      {
        p_perProcessState = &self->_perProcessState;
        if (self->_perProcessState.viewportMetaTagWidthWasExplicit && !self->_perProcessState.viewportMetaTagCameFromImageDocument && p_perProcessState->viewportMetaTagWidth == -2.0)
        {
          v13 = [-[WKWebView _currentContentView](self _currentContentView];
          if (v13)
          {
            v13 = [v13 affineTransform];
            v14 = v17;
          }

          else
          {
            v14 = 0.0;
          }

          initialScaleFactor = self->_perProcessState.initialScaleFactor;
          LOBYTE(v2) = !WebKit::scalesAreEssentiallyEqual(v13, v14, initialScaleFactor);
        }

        else
        {
          LOBYTE(v2) = 1;
        }
      }
    }
  }

  return v2;
}

- (CGSize)scrollView:(id)a3 contentSizeForZoomScale:(double)a4 withProposedSize:(CGSize)a5
{
  m_ptr = self->_page.m_ptr;
  v6 = 824;
  if (*(m_ptr + 832))
  {
    v6 = 828;
  }

  v7 = *(m_ptr + v6);
  v8 = floor(a5.width * v7) / v7;
  v9 = floor(a5.height * v7) / v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)viewForZoomingInScrollView:(id)a3
{
  if (self->_resizeAnimationView.m_ptr)
  {
    return 0;
  }

  else
  {
    return [(WKWebView *)self _currentContentView];
  }
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    if ([objc_msgSend(a3 "pinchGestureRecognizer")] == 1)
    {
      WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WillStartUserTriggeredZooming>(*(self->_page.m_ptr + 44), &v10, *(self->_page.m_ptr + 6), 0);
      [(WKContentView *)self->_contentView.m_ptr scrollViewWillStartPanOrPinchGesture];
    }

    [(WKContentView *)self->_contentView.m_ptr willStartZoomOrScroll];
    m_ptr = self->_contentView.m_ptr;
    v9 = [a3 pinchGestureRecognizer];

    [(WKContentView *)m_ptr cancelPointersForGestureRecognizer:v9];
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = self->_customContentView.m_ptr;

    [(WKWebViewContentProvider *)v7 web_scrollViewWillBeginZooming:a3 withView:a4];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    if ([objc_msgSend(a3 "panGestureRecognizer")] == 1)
    {
      [(WKContentView *)self->_contentView.m_ptr scrollViewWillStartPanOrPinchGesture];
    }

    [(WKContentView *)self->_contentView.m_ptr willStartZoomOrScroll];
    v5 = *(self->_page.m_ptr + 43);
    if (v5)
    {
      m_ptr = self->_scrollView.m_ptr;
      shouldSetScrollViewDecelerationRateFast = WebKit::RemoteScrollingCoordinatorProxyIOS::shouldSetScrollViewDecelerationRateFast(v5);
      v8 = MEMORY[0x1E69DE3A0];
      if (!shouldSetScrollViewDecelerationRateFast)
      {
        v8 = MEMORY[0x1E69DE3A8];
      }

      [(WKScrollView *)m_ptr _setDecelerationRateInternal:*v8];

      WebKit::RemoteScrollingCoordinatorProxyIOS::setRootNodeIsInUserScroll(v5, 1);
    }
  }
}

- (void)_didFinishScrolling:(id)a3
{
  if (self->_scrollView.m_ptr == a3)
  {
    if ([(WKWebView *)self usesStandardContentView])
    {
      [(WKWebView *)self _scheduleVisibleContentRectUpdate];
      [(WKContentView *)self->_contentView.m_ptr didFinishScrolling];
      v4 = *(self->_page.m_ptr + 43);
      if (v4)
      {
        v5 = *(*v4 + 112);

        v5();
      }
    }
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  if ([a3 isZooming])
  {
    [a3 contentOffset];
    a5->x = v11;
LABEL_9:
    a5->y = v10;
    goto LABEL_10;
  }

  v12 = [WTF::dynamic_objc_cast<WKBaseScrollView>(a3) axesToPreventMomentumScrolling];
  if ([(WKContentView *)self->_contentView.m_ptr preventsPanningInXAxis]|| (v12 & 1) != 0)
  {
    [a3 contentOffset];
    a5->x = v13;
  }

  if ([(WKContentView *)self->_contentView.m_ptr preventsPanningInYAxis]|| (v12 & 2) != 0)
  {
    [a3 contentOffset];
    goto LABEL_9;
  }

LABEL_10:
  v14 = *(self->_page.m_ptr + 43);
  if (v14)
  {
    [a3 contentSize];
    v16 = v15;
    [a3 bounds];
    v18 = v16 - v17;
    [a3 contentSize];
    v20 = v19;
    [a3 bounds];
    v22 = v20 - v21;
    v23 = [(WKWebView *)self UIDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v23 _webView:self finalObscuredInsetsForScrollView:a3 withVelocity:a5 targetContentOffset:{x, y}];
    }

    else
    {
      [(WKWebView *)self _computedObscuredInset];
    }

    v25 = v24;
    [(WKWebView *)self bounds];
    v27 = v25 + v26;
    [a3 contentOffset];
    v29 = v28;
    v31 = v30;
    v32 = v18;
    v33 = v22;
    v34 = x;
    v35 = y;

    WebKit::RemoteScrollingCoordinatorProxyIOS::adjustTargetContentOffsetForSnapping(v14, *&v32, *&v34, v27, *&v29, a5);
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(WKWebView *)self _didFinishScrolling:a3];
  }
}

- (void)scrollView:(id)a3 handleScrollUpdate:(id)a4 completion:(id)a5
{
  if (WebKit::PointerTouchCompatibilitySimulator::handleScrollUpdate(self->_pointerTouchCompatibilitySimulator.__ptr_, a3, a4))
  {
    v8 = *(a5 + 2);

    v8(a5, 1);
  }

  else
  {
    m_ptr = self->_scrollView.m_ptr;
    [a4 locationInView:m_ptr];
    v10 = [(WKScrollView *)m_ptr hitTest:0 withEvent:?];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    v13 = self->_contentView.m_ptr;
    v14 = WTF::fastMalloc(0x10);
    *v14 = &unk_1F10FD208;
    *&v40.x = v14;
    v15 = [(WKContentView *)v13 _hasEnclosingScrollView:v11 matchingCriteria:&v40];
    x = v40.x;
    v40.x = 0.0;
    if (x != 0.0)
    {
      (*(**&x + 8))(COERCE_CGFLOAT(*&x));
    }

    if (v11)
    {
    }

    v17 = !v15;
    if (![a4 phase])
    {
      if (self->_currentScrollGestureState.__engaged_)
      {
        self->_currentScrollGestureState.__engaged_ = 0;
      }

      self->_wheelEventCountInCurrentScrollGesture = 0;
    }

    [a4 locationInView:self->_contentView.m_ptr];
    v40.x = v18;
    v40.y = v19;
    WebCore::FloatPoint::FloatPoint(&v36, &v40);
    v21 = roundf(*&v36);
    v22 = 0x7FFFFFFFLL;
    v23 = 0x80000000;
    if (v21 > -2147500000.0)
    {
      v23 = v21;
    }

    if (v21 < 2147500000.0)
    {
      v22 = v23;
    }

    v24 = roundf(*(&v36 + 1));
    v25 = 0x7FFFFFFF00000000;
    v26 = 0x8000000000000000;
    if (v24 > -2147500000.0)
    {
      v26 = v24 << 32;
    }

    if (v24 < 2147500000.0)
    {
      v25 = v26;
    }

    v41 = v25 | v22;
    v27 = WebKit::eventListenerTypesAtPoint(self->_contentView.m_ptr, &v41, v20);
    if ((v27 & 1) == 0)
    {
      goto LABEL_35;
    }

    v28 = v27;
    [a4 translationInView:self->_contentView.m_ptr];
    *&v29 = v29;
    *&v30 = v30;
    *&v40.x = __PAIR64__(LODWORD(v30), LODWORD(v29));
    if (WebCore::FloatSize::isZero(&v40) && [a4 phase] != 2)
    {
      goto LABEL_35;
    }

    v31 = (v28 & 2) != 0 && (!self->_currentScrollGestureState.__engaged_ || self->_currentScrollGestureState.var0.__null_state_ == 0);
    WebKit::WebIOSEventFactory::createWebWheelEvent(a4, self->_contentView.m_ptr, (self->_wheelEventCountInCurrentScrollGesture == 0) | ((self->_wheelEventCountInCurrentScrollGesture == 0) << 32), &v40);
    ++self->_wheelEventCountInCurrentScrollGesture;
    v32 = self->_page.m_ptr;
    v36 = 0;
    objc_initWeak(&v36, self);
    aBlock = _Block_copy(a5);
    LOBYTE(v38) = v31;
    HIBYTE(v38) = v17;
    v33 = WTF::fastMalloc(0x20);
    *v33 = &unk_1F10FD440;
    *(v33 + 8) = 0;
    objc_moveWeak((v33 + 8), &v36);
    v34 = aBlock;
    aBlock = 0;
    *(v33 + 16) = v34;
    *(v33 + 24) = v38;
    v39 = v33;
    WebKit::WebPageProxy::dispatchWheelEventWithoutScrolling(v32, &v40, &v39);
    v35 = v39;
    v39 = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    _Block_release(aBlock);
    objc_destroyWeak(&v36);
    if (!v31)
    {
LABEL_35:
      (*(a5 + 2))(a5, v17);
    }
  }
}

- (void)_reinsertTopFixedColorExtensionViewIfNeeded
{
  v30 = *MEMORY[0x1E69E9840];
  m_ptr = self->_fixedColorExtensionViews.m_sides.__elems_[0].m_ptr;
  if (!m_ptr)
  {
    return;
  }

  v3 = m_ptr;
  if (([(WKColorExtensionView *)m_ptr isHidden]& 1) != 0)
  {
    goto LABEL_35;
  }

  v24 = m_ptr;
  v4 = [(WKScrollView *)self->_scrollView.m_ptr refreshControl];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(WKScrollView *)self->_scrollView.m_ptr subviews];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  obj = v7;
  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v20 = 0;
  v21 = 0;
  v12 = 0;
  LOBYTE(v13) = 0;
  v14 = *v26;
  while (2)
  {
    v15 = 0;
    v19 = v8 + v9;
    do
    {
      if (*v26 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v25 + 1) + 8 * v15);
      if (v5 == v16)
      {
        v21 = v9;
        if ((v12 & 1) == 0)
        {
LABEL_19:
          v12 = 0;
          v13 = 1;
          goto LABEL_22;
        }
      }

      else
      {
        if (v24 == v16)
        {
          v12 = 1;
          v20 = v9;
          if ((v13 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (self->_contentView.m_ptr == v16)
          {
            v10 = v9;
            v11 = 1;
          }

          if ((v13 & 1) == 0)
          {
LABEL_21:
            v13 = 0;
            goto LABEL_22;
          }
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v13 = 1;
      v12 = 1;
      v17 = 1;
      if (v11)
      {
        goto LABEL_25;
      }

LABEL_22:
      ++v9;
      ++v15;
    }

    while (v8 != v15);
    v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    v9 = v19;
    if (v8)
    {
      continue;
    }

    break;
  }

  v17 = v11;
  if (v12)
  {
LABEL_25:
    if ([(UIScrollView *)self->_scrollView.m_ptr _wk_isScrolledBeyondTopExtent])
    {
      if (v21 < v20)
      {
        v18 = v13;
      }

      else
      {
        v18 = 0;
      }

      if (v18 == 1)
      {
        [(WKScrollView *)self->_scrollView.m_ptr insertSubview:v24 belowSubview:v5];
      }
    }

    else if ((v17 & (v20 < v10)) == 1)
    {
      [(WKScrollView *)self->_scrollView.m_ptr insertSubview:v24 aboveSubview:self->_contentView.m_ptr];
    }
  }

LABEL_33:
  m_ptr = v24;
  if (v5)
  {
  }

LABEL_35:
}

- (void)_updateNeedsTopScrollPocketDueToVisibleContentInset
{
  shouldUpdateNeedsTopScrollPocketDueToVisibleContentInset = self->_shouldUpdateNeedsTopScrollPocketDueToVisibleContentInset;
  self->_shouldUpdateNeedsTopScrollPocketDueToVisibleContentInset = 0;
  if (shouldUpdateNeedsTopScrollPocketDueToVisibleContentInset)
  {
    [(WKScrollView *)self->_scrollView.m_ptr adjustedContentInset];
    v5 = v4;
    [(WKWebView *)self _computedObscuredInset];
    if (v5 <= v6 + 2.22044605e-16 || [(UIScrollView *)self->_scrollView.m_ptr _wk_isScrolledBeyondTopExtent]|| [(WKScrollView *)self->_scrollView.m_ptr _usesHardTopScrollEdgeEffect])
    {
      v7 = 0;
    }

    else
    {
      [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
      v7 = v8 < 0.0;
    }

    if (self->_needsTopScrollPocketDueToVisibleContentInset != v7)
    {
      self->_needsTopScrollPocketDueToVisibleContentInset = v7;
      [(WKWebView *)self _updateHiddenScrollPocketEdges];

      [(WKWebView *)self _updateTopScrollPocketCaptureColor];
    }
  }
}

- (BOOL)_shouldHideTopScrollPocket
{
  if (self->_reasonsToHideTopScrollPocket.m_storage)
  {
    return 1;
  }

  if (self->_needsTopScrollPocketDueToVisibleContentInset || [(WKScrollView *)self->_scrollView.m_ptr _usesHardTopScrollEdgeEffect])
  {
    return 0;
  }

  return [(WKWebView *)self _hasVisibleColorExtensionView:0];
}

- (void)scrollViewDidScroll:(id)a3
{
  m_ptr = self->_scrollView.m_ptr;
  if (m_ptr == a3)
  {
    [(WKBaseScrollView *)m_ptr updateInteractiveScrollVelocity];
    [(WKWebView *)self _updateFixedColorExtensionViewFrames];
    [(WKWebView *)self _reinsertTopFixedColorExtensionViewIfNeeded];
    self->_shouldUpdateNeedsTopScrollPocketDueToVisibleContentInset = 1;
  }

  if (![(WKWebView *)self usesStandardContentView]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(WKWebViewContentProvider *)self->_customContentView.m_ptr web_scrollViewDidScroll:a3];
  }

  [(WKWebView *)self _updateFindOverlayPosition];
  [(WKWebView *)self _scheduleVisibleContentRectUpdateAfterScrollInView:a3];
  v6 = *(self->_page.m_ptr + 130);
  if (v6)
  {
    [(WKWebView *)self visibleRectInViewCoordinates];
    v12.super.isa = __PAIR64__(v8, v7);
    v12._attr.refcount = v9;
    v12._attr.magic = v10;
    v11 = WebKit::RemoteLayerTreeScrollingPerformanceData::blankPixelCount(v6, &v12);
    WebKit::RemoteLayerTreeScrollingPerformanceData::appendBlankPixelCount(v6, 1, v11);
  }

  [(WKContentView *)self->_contentView.m_ptr updateSelection];

  [(WKWebView *)self _updatePDFPageNumberIndicatorIfNeeded];
}

- (void)scrollViewDidZoom:(id)a3
{
  if (![(WKWebView *)self usesStandardContentView]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(WKWebViewContentProvider *)self->_customContentView.m_ptr web_scrollViewDidZoom:a3];
  }

  [(WKWebView *)self _updateScrollViewBackground];

  [(WKWebView *)self _scheduleVisibleContentRectUpdateAfterScrollInView:a3];
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  if (![(WKWebView *)self usesStandardContentView]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(WKWebViewContentProvider *)self->_customContentView.m_ptr web_scrollViewDidEndZooming:a3 withView:a4 atScale:a5];
  }

  m_ptr = self->_contentView.m_ptr;
  [(WKWebView *)self bounds];
  [(WKContentView *)m_ptr setCenter:?];
  [(WKWebView *)self _scheduleVisibleContentRectUpdateAfterScrollInView:a3];
  [(WKContentView *)self->_contentView.m_ptr didZoomToScale:a5];
  WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidEndUserTriggeredZooming>(*(self->_page.m_ptr + 44), &v10, *(self->_page.m_ptr + 6), 0);
}

- (void)_scrollViewDidInterruptDecelerating:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    [(WKContentView *)self->_contentView.m_ptr didInterruptScrolling];

    [(WKWebView *)self _scheduleVisibleContentRectUpdateAfterScrollInView:a3];
  }
}

- (CGRect)_visibleRectInEnclosingView:(id)a3
{
  if (a3)
  {
    [a3 bounds];
    [a3 convertRect:self toView:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(WKWebView *)self bounds];
    v24.origin.x = v13;
    v24.origin.y = v14;
    v24.size.width = v15;
    v24.size.height = v16;
    v21.origin.x = v6;
    v21.origin.y = v8;
    v21.size.width = v10;
    v21.size.height = v12;
    if (CGRectIntersectsRect(v21, v24))
    {
      [(WKWebView *)self bounds];
      v25.origin.x = v17;
      v25.origin.y = v18;
      v25.size.width = v19;
      v25.size.height = v20;
      v22.origin.x = v6;
      v22.origin.y = v8;
      v22.size.width = v10;
      v22.size.height = v12;
      return CGRectIntersection(v22, v25);
    }

    else
    {
      return **&MEMORY[0x1E695F058];
    }
  }

  else
  {
    [(WKWebView *)self bounds];
  }

  return result;
}

- (void)_didScroll
{
  [(WKWebView *)self _scheduleVisibleContentRectUpdateAfterScrollInView:[(WKWebView *)self _scroller]];
  if (!self->_enclosingScrollViewScrollTimer.m_ptr)
  {
    v3 = objc_alloc(MEMORY[0x1E695DFF0]);
    v4 = [v3 initWithFireDate:objc_msgSend(MEMORY[0x1E695DF00] interval:"dateWithTimeIntervalSinceNow:" target:0.032) selector:self userInfo:sel__enclosingScrollerScrollingEnded_ repeats:{0, 1, 0.0}];
    m_ptr = self->_enclosingScrollViewScrollTimer.m_ptr;
    self->_enclosingScrollViewScrollTimer.m_ptr = v4;
    if (m_ptr)
    {
    }

    v6 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v6 addTimer:self->_enclosingScrollViewScrollTimer.m_ptr forMode:*MEMORY[0x1E695D918]];
  }

  self->_didScrollSinceLastTimerFire = 1;
}

- (void)_enclosingScrollerScrollingEnded:(id)a3
{
  if (self->_didScrollSinceLastTimerFire)
  {
    self->_didScrollSinceLastTimerFire = 0;
  }

  else
  {
    [(WKWebView *)self _scheduleVisibleContentRectUpdate];
    [(NSTimer *)self->_enclosingScrollViewScrollTimer.m_ptr invalidate];
    m_ptr = self->_enclosingScrollViewScrollTimer.m_ptr;
    self->_enclosingScrollViewScrollTimer.m_ptr = 0;
    if (m_ptr)
    {
    }
  }
}

- (FloatSize)activeViewLayoutSize:(const CGRect *)a3
{
  p_overriddenLayoutParameters = &self->_overriddenLayoutParameters;
  if (!self->_overriddenLayoutParameters.__engaged_)
  {
    [(WKWebView *)self _scrollViewSystemContentInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if (self->_automaticallyAdjustsViewLayoutSizesWithObscuredInset)
    {
      [(WKWebView *)self _obscuredInsets];
      if (v7 < v14)
      {
        v7 = v14;
      }

      if (v9 < v15)
      {
        v9 = v15;
      }

      if (v11 < v16)
      {
        v11 = v16;
      }

      if (v13 < v17)
      {
        v13 = v17;
      }
    }

    v18 = a3->size.height - (v11 + v7);
    v21[0] = a3->size.width - (v13 + v9);
    v21[1] = v18;
    p_overriddenLayoutParameters = v21;
  }

  WebCore::FloatSize::FloatSize(v22, p_overriddenLayoutParameters);
  v19 = *v22;
  v20 = *&v22[1];
  result.m_height = v20;
  result.m_width = v19;
  return result;
}

- (void)_dispatchSetViewLayoutSize:(FloatSize)a3
{
  v14 = a3;
  v4 = *(self->_page.m_ptr + 144);
  p_perProcessState = &self->_perProcessState;
  if (!self->_perProcessState.lastSentViewLayoutSize.__engaged_ || ((WebCore::FloatSize::operator CGSize(), v7 = v6, v9 = v8, WebCore::FloatSize::operator CGSize(), v7 == v11) ? (v12 = v9 == v10) : (v12 = 0), !v12 || !p_perProcessState->lastSentMinimumEffectiveDeviceWidth.__engaged_ || p_perProcessState->lastSentMinimumEffectiveDeviceWidth.var0.__val_ != v4))
  {
    WebKit::WebPageProxy::setViewportConfigurationViewLayoutSize(self->_page.m_ptr, &v14, *(self->_page.m_ptr + 143), v4);
    v13 = v14;
    if (!p_perProcessState->lastSentViewLayoutSize.__engaged_)
    {
      p_perProcessState->lastSentViewLayoutSize.__engaged_ = 1;
    }

    p_perProcessState->lastSentViewLayoutSize.var0.__val_ = v13;
    p_perProcessState->lastSentMinimumEffectiveDeviceWidth.var0.__val_ = v4;
    p_perProcessState->lastSentMinimumEffectiveDeviceWidth.__engaged_ = 1;
  }
}

- (void)_dispatchSetDeviceOrientation:(int)a3
{
  p_perProcessState = &self->_perProcessState;
  if (!self->_perProcessState.lastSentDeviceOrientation.__engaged_ || self->_perProcessState.lastSentDeviceOrientation.var0.__val_ != a3)
  {
    WebKit::WebPageProxy::setDeviceOrientation(self->_page.m_ptr, a3);
    p_perProcessState->lastSentDeviceOrientation.var0.__val_ = a3;
    p_perProcessState->lastSentDeviceOrientation.__engaged_ = 1;
  }
}

- (void)_dispatchSetOrientationForMediaCapture:(int)a3
{
  p_perProcessState = &self->_perProcessState;
  if (!self->_perProcessState.lastSentOrientationForMediaCapture.__engaged_ || self->_perProcessState.lastSentOrientationForMediaCapture.var0.__val_ != a3)
  {
    WebKit::WebPageProxy::setOrientationForMediaCapture(self->_page.m_ptr, a3);
    p_perProcessState->lastSentOrientationForMediaCapture.var0.__val_ = a3;
    p_perProcessState->lastSentOrientationForMediaCapture.__engaged_ = 1;
  }
}

- (BOOL)_canBeginAutomaticLiveResize
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v5 = *(m_ptr + 46);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::automaticLiveResizeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::automaticLiveResizeEnabledKey(void)::key = WebKit::WebPreferencesKey::automaticLiveResizeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    LODWORD(v6) = WebKit::WebPreferencesStore::getBoolValueForKey((v5 + 40), &WebKit::WebPreferencesKey::automaticLiveResizeEnabledKey(void)::key, v2);
    if (v6)
    {
      LODWORD(v6) = [(WKWebView *)self usesStandardContentView];
      if (v6)
      {
        v6 = [(WKWebView *)self window];
        if (v6)
        {
          [(WKWebView *)self bounds];
          LOBYTE(v6) = !CGRectIsEmpty(v8);
        }
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_beginAutomaticLiveResizeIfNeeded
{
  if ([(WKWebView *)self _canBeginAutomaticLiveResize])
  {
    if (!self->_perProcessState.dynamicViewportUpdateMode)
    {
      [(WKWebView *)self _rescheduleEndLiveResizeTimer];
      if (!self->_perProcessState.liveResizeParameters.__engaged_)
      {

        [(WKWebView *)self _beginLiveResize];
      }
    }
  }
}

- (void)_rescheduleEndLiveResizeTimer
{
  [(NSTimer *)self->_endLiveResizeTimer.m_ptr invalidate];
  v3 = MEMORY[0x1E695DFF0];
  v9 = 0;
  objc_initWeak(&v9, self);
  to = 0;
  objc_moveWeak(&to, &v9);
  v4 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
  *v4 = MEMORY[0x1E69E9818];
  *(v4 + 1) = 50331650;
  *(v4 + 2) = WTF::BlockPtr<void ()(NSTimer *)>::fromCallable<[WKWebView(WKViewInternalIOS) _rescheduleEndLiveResizeTimer]::$_1>([WKWebView(WKViewInternalIOS) _rescheduleEndLiveResizeTimer]::$_1)::{lambda(void *,NSTimer *)#1}::__invoke;
  *(v4 + 3) = &WTF::BlockPtr<void ()(NSTimer *)>::fromCallable<[WKWebView(WKViewInternalIOS) _rescheduleEndLiveResizeTimer]::$_1>([WKWebView(WKViewInternalIOS) _rescheduleEndLiveResizeTimer]::$_1)::descriptor;
  *(v4 + 4) = 0;
  objc_moveWeak(v4 + 4, &to);
  objc_destroyWeak(&to);
  v5 = [v3 scheduledTimerWithTimeInterval:0 repeats:v4 block:0.5];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  m_ptr = self->_endLiveResizeTimer.m_ptr;
  self->_endLiveResizeTimer.m_ptr = v6;
  if (m_ptr)
  {
  }

  _Block_release(v4);
  objc_destroyWeak(&v9);
}

- (void)_updateLiveResizeTransform
{
  [(WKWebView *)self bounds];
  if (self->_perProcessState.liveResizeParameters.__engaged_)
  {
    viewWidth = self->_perProcessState.liveResizeParameters.var0.__val_.viewWidth;
    memset(&v14, 0, sizeof(v14));
    v5 = v3 / viewWidth;
    CGAffineTransformMakeScale(&v14, v5, v5);
    [(WKWebView *)self _contentOffsetAdjustedForObscuredInset:v5 * self->_perProcessState.liveResizeParameters.var0.__val_.initialScrollPosition.x, v5 * self->_perProcessState.liveResizeParameters.var0.__val_.initialScrollPosition.y];
    v7 = v6;
    v9 = v8;
    [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
    v14.tx = v10 - v7;
    v14.ty = v11 - v9;
    m_ptr = self->_resizeAnimationView.m_ptr;
    v13 = v14;
    [(UIView *)m_ptr setTransform:&v13];
    [(WKWebView *)self _updateFixedColorExtensionViewFrames];
  }

  else
  {
    __break(1u);
  }
}

- (void)_frameOrBoundsWillChange
{
  p_lastKnownWindowSizeAndOrientation = &self->_lastKnownWindowSizeAndOrientation;
  width = self->_lastKnownWindowSizeAndOrientation.first.width;
  second = self->_lastKnownWindowSizeAndOrientation.second;
  [(WKWebView *)self _updateLastKnownWindowSizeAndOrientation];
  if (width != p_lastKnownWindowSizeAndOrientation->first.width && second == p_lastKnownWindowSizeAndOrientation->second)
  {

    [(WKWebView *)self _beginAutomaticLiveResizeIfNeeded];
  }
}

- (void)_acquireResizeAssertionForReason:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (!m_ptr)
  {
    goto LABEL_45;
  }

  v6 = *(m_ptr + 46);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::automaticLiveResizeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::automaticLiveResizeEnabledKey(void)::key = WebKit::WebPreferencesKey::automaticLiveResizeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if ((WebKit::WebPreferencesStore::getBoolValueForKey((v6 + 40), &WebKit::WebPreferencesKey::automaticLiveResizeEnabledKey(void)::key, a3) & 1) == 0)
  {
LABEL_45:
    v7 = [-[WKWebView window](self "window")];
    if (v7)
    {
      v8 = v7;
      p_resizeAssertions = &self->_resizeAssertions;
      if (!self->_resizeAssertions.m_size)
      {
        v10 = WTF::fastMalloc(8);
        *v10 = 1;
        *(v10 + 4) = 0;
        location = 0;
        objc_initWeak(&location, self);
        atomic_fetch_add(v10, 1u);
        v38 = v10;
        to = 0;
        objc_moveWeak(&to, &location);
        v11 = v38;
        v38 = 0;
        v40 = v11;
        v12 = malloc_type_malloc(0x30uLL, 0x10E00409BB9573DuLL);
        *v12 = MEMORY[0x1E69E9818];
        *(v12 + 1) = 50331650;
        *(v12 + 2) = WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView(WKViewInternalIOS) _acquireResizeAssertionForReason:]::$_2>([WKWebView(WKViewInternalIOS) _acquireResizeAssertionForReason:]::$_2)::{lambda(void *)#1}::__invoke;
        *(v12 + 3) = &WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView(WKViewInternalIOS) _acquireResizeAssertionForReason:]::$_2>([WKWebView(WKViewInternalIOS) _acquireResizeAssertionForReason:]::$_2)::descriptor;
        *(v12 + 4) = 0;
        objc_moveWeak(v12 + 4, &to);
        *(v12 + 5) = v40;
        v40 = 0;
        objc_destroyWeak(&to);
        [(WKWebView *)self _doAfterNextVisibleContentRectUpdate:v12];
        _Block_release(v12);
        v14 = v38;
        v38 = 0;
        if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v14);
          WTF::fastFree(v14, v13);
        }

        objc_destroyWeak(&location);
        WTF::RunLoop::mainSingleton(v15);
        to = 0;
        objc_initWeak(&to, self);
        atomic_fetch_add(v10, 1u);
        v40 = v10;
        v16 = WTF::fastMalloc(0x18);
        *v16 = &unk_1F10FD468;
        *(v16 + 8) = 0;
        objc_moveWeak((v16 + 8), &to);
        v17 = v40;
        v40 = 0;
        *(v16 + 16) = v17;
        location = v16;
        WTF::RunLoop::dispatchAfter();
        if (v36)
        {
          WTF::ThreadSafeRefCounted<WTF::RunLoop::DispatchTimer,(WTF::DestructionThread)0>::deref((v36 + 40));
        }

        v19 = location;
        location = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        v20 = v40;
        v40 = 0;
        if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v20);
          WTF::fastFree(v20, v18);
        }

        objc_destroyWeak(&to);
        if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v10);
          WTF::fastFree(v10, v21);
        }
      }

      v22 = [v8 _holdLiveResizeSnapshotForReason:a3];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      m_size = p_resizeAssertions->m_size;
      if (m_size == p_resizeAssertions->m_capacity)
      {
        v26 = m_size + (m_size >> 1);
        if (v26 <= m_size + 1)
        {
          v26 = m_size + 1;
        }

        if (v26 >> 29)
        {
          __break(0xC471u);
          return;
        }

        m_buffer = p_resizeAssertions->m_buffer;
        if (v26 <= 0x10)
        {
          v28 = 16;
        }

        else
        {
          v28 = v26;
        }

        v30 = WTF::fastMalloc((8 * v28));
        p_resizeAssertions->m_capacity = v28;
        p_resizeAssertions->m_buffer = v30;
        if (m_size)
        {
          v31 = 8 * m_size;
          v32 = m_buffer;
          do
          {
            v33 = *v32;
            *v32 = 0;
            *v30 = v33;
            v34 = *v32;
            *v32 = 0;
            if (v34)
            {
            }

            v30 = (v30 + 8);
            v32 = (v32 + 8);
            v31 -= 8;
          }

          while (v31);
          v30 = p_resizeAssertions->m_buffer;
        }

        if (m_buffer)
        {
          if (v30 == m_buffer)
          {
            p_resizeAssertions->m_buffer = 0;
            p_resizeAssertions->m_capacity = 0;
          }

          WTF::fastFree(m_buffer, v29);
          v30 = p_resizeAssertions->m_buffer;
        }

        m_size = p_resizeAssertions->m_size;
        v35 = (v30 + 8 * m_size);
      }

      else
      {
        v35 = p_resizeAssertions->m_buffer + 8 * m_size;
      }

      *v35 = v23;
      p_resizeAssertions->m_size = m_size + 1;
    }
  }
}

- (CGRect)_contentRectForUserInteraction
{
  top = self->_obscuredInsets.top;
  left = self->_obscuredInsets.left;
  right = self->_obscuredInsets.right;
  if (self->_obscuredInsets.bottom >= self->_inputViewBoundsInWindow.size.height)
  {
    bottom = self->_obscuredInsets.bottom;
  }

  else
  {
    bottom = self->_inputViewBoundsInWindow.size.height;
  }

  [(WKWebView *)self bounds];
  v8 = left + v7;
  v10 = top + v9;
  v12 = v11 - (left + right);
  v14 = v13 - (top + bottom);
  v15 = [(WKWebView *)self _currentContentView];

  [(WKWebView *)self convertRect:v15 toView:v8, v10, v12, v14];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)_scrollViewIsRubberBanding:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v5 = 824;
  if (*(m_ptr + 832))
  {
    v5 = 828;
  }

  v6 = *(m_ptr + v5);
  [a3 contentOffset];
  x = v12.x;
  y = v12.y;
  contentOffsetBoundedInValidRange(a3, v12);
  return fabs(x * v6 - v10 * v6) >= 0.00000011920929 || fabs(y * v6 - v9 * v6) >= 0.00000011920929;
}

- (BOOL)_scrollViewIsRubberBandingForRefreshControl
{
  if (![(WKScrollView *)self->_scrollView.m_ptr refreshControl])
  {
    return 0;
  }

  [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
  v4 = v3;
  [(WKScrollView *)self->_scrollView.m_ptr adjustedContentInset];
  if (v4 >= -v5)
  {
    return 0;
  }

  m_ptr = self->_scrollView.m_ptr;

  return [(WKWebView *)self _scrollViewIsRubberBanding:m_ptr];
}

- (OptionSet<WebKit::ViewStabilityFlag>)_viewStabilityState:(id)a3
{
  v5 = ([a3 isDragging] & 1) != 0 || objc_msgSend(a3, "isZooming");
  if (([a3 isDecelerating] & 1) != 0 || (objc_msgSend(a3, "_wk_isZoomAnimating") & 1) != 0 || (objc_msgSend(a3, "_wk_isScrollAnimating") & 1) != 0 || objc_msgSend(a3, "isZoomBouncing"))
  {
    v5 |= 2u;
  }

  if (self->_scrollView.m_ptr == a3 && self->_isChangingObscuredInsetsInteractively)
  {
    v5 |= 8u;
  }

  if ([(WKWebView *)self _scrollViewIsRubberBanding:a3])
  {
    v6.m_storage = v5 | 4;
  }

  else
  {
    v6.m_storage = v5;
  }

  v7 = [(WKWebView *)self _stableStateOverride];
  if (v7)
  {
    if ([(NSNumber *)v7 BOOLValue])
    {
      return 0;
    }

    else
    {
      return (v6.m_storage | 0x10);
    }
  }

  return v6;
}

- (void)_scheduleVisibleContentRectUpdateAfterScrollInView:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(WKWebView *)self _viewStabilityState:a3];
  self->_viewStabilityWhenVisibleContentRectUpdateScheduled.m_storage = v4;
  if (self->_perProcessState.hasScheduledVisibleRectUpdate)
  {
    WTF::MonotonicTime::now(v4);
    v6 = v5;
    v7 = v5 - self->_timeOfRequestForVisibleContentRectUpdate.m_value;
    if (v7 > 1.0)
    {
      v8 = qword_1ED641490;
      if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v6 - self->_timeOfLastVisibleContentRectUpdate.m_value;
        *v15 = 134218752;
        *&v15[4] = self;
        v16 = 2048;
        v17 = v7;
        v18 = 2048;
        v19 = v9;
        v20 = 1024;
        v21 = [(WKWebView *)self _isValid];
        _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "[WKWebView %p]: hasScheduledVisibleRectUpdate is true but haven't updated visible content rects for %.2fs (last update was %.2fs ago) - valid %d", v15, 0x26u);
      }
    }
  }

  else
  {
    self->_perProcessState.hasScheduledVisibleRectUpdate = 1;
    WTF::MonotonicTime::now(v4);
    self->_timeOfRequestForVisibleContentRectUpdate.m_value = v10;
    v11 = [MEMORY[0x1E6979518] currentPhase];
    if ((v11 + 1) > 1)
    {
      WTF::RunLoop::mainSingleton(v11);
      v12 = self;
      v13 = WTF::fastMalloc(0x10);
      *v13 = &unk_1F10FD490;
      v13[1] = self;
      *v15 = v13;
      WTF::RunLoop::dispatch();
      v14 = *v15;
      *v15 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    else
    {

      [(WKWebView *)self _addUpdateVisibleContentRectPreCommitHandler];
    }
  }
}

- (CGRect)_contentBoundsExtendedForRubberbandingWithScale:(double)a3
{
  [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
  x = v17.x;
  y = v17.y;
  contentOffsetBoundedInValidRange(&self->_scrollView.m_ptr->super.super.super, v17);
  v8 = (x - v7) / a3;
  v10 = (y - v9) / a3;
  [(WKContentView *)self->_contentView.m_ptr bounds];
  v15 = v8 + v13;
  if (v8 <= 0.0)
  {
    v15 = v13;
  }

  v16 = v13 - v8;
  if (v8 < 0.0)
  {
    v11 = v8 + v11;
  }

  else
  {
    v16 = v15;
  }

  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v14 = v10 + v14;
    }
  }

  else
  {
    v12 = v10 + v12;
    v14 = v14 - v10;
  }

  result.size.height = v14;
  result.size.width = v16;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIEdgeInsets)currentlyVisibleContentInsetsWithScale:(double)a3 obscuredInsets:(UIEdgeInsets)a4
{
  left = a4.left;
  top = a4.top;
  [(WKScrollView *)self->_scrollView.m_ptr contentInset:a3];
  v7 = v6;
  v9 = v8;
  v42 = v11;
  v43 = v10;
  [(WKScrollView *)self->_scrollView.m_ptr bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(WKScrollView *)self->_scrollView.m_ptr contentSize];
  v21 = v20;
  v40 = v22;
  v23 = left + v13;
  v45.origin.x = v13;
  v45.origin.y = v15;
  v45.size.width = v17;
  v45.size.height = v19;
  Height = CGRectGetHeight(v45);
  v46.origin.x = v13;
  v46.origin.y = v15;
  v46.size.width = v17;
  v46.size.height = v19;
  Width = CGRectGetWidth(v46);
  v25 = *(MEMORY[0x1E69DDCE0] + 8);
  if (v9 <= 0.0)
  {
    v26 = a3;
  }

  else
  {
    v26 = a3;
    if (v23 < 0.0)
    {
      v27 = -v23;
      if (v9 < -v23)
      {
        v27 = v9;
      }

      v25 = v27 / a3;
    }
  }

  v28 = top + v15;
  v29 = v21 - Width;
  v30 = *MEMORY[0x1E69DDCE0];
  if (v7 > 0.0 && v28 < 0.0)
  {
    v31 = -v28;
    if (v7 < -v28)
    {
      v31 = v7;
    }

    v30 = v31 / v26;
  }

  v32 = v40 - Height;
  if (v42 <= 0.0 || v23 <= v29)
  {
    v34 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v35 = v23 - v29;
    if (v42 < v35)
    {
      v35 = v42;
    }

    v34 = v35 / v26;
  }

  if (v43 <= 0.0 || v28 <= v32)
  {
    v37 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  else
  {
    v38 = v28 - v32;
    if (v43 < v38)
    {
      v38 = v43;
    }

    v37 = v38 / v26;
  }

  result.right = v34;
  result.bottom = v37;
  result.left = v25;
  result.top = v30;
  return result;
}

- (void)_didStartProvisionalLoadForMainFrame
{
  m_ptr = self->_gestureController.m_ptr;
  if (m_ptr)
  {
    WebKit::ViewGestureController::didStartProvisionalOrSameDocumentLoadForMainFrame(m_ptr);
  }
}

- (void)_ensureResizeAnimationView
{
  if (!self->_resizeAnimationView.m_ptr)
  {
    v3 = [-[WKScrollView subviews](self->_scrollView.m_ptr "subviews")];
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    m_ptr = self->_resizeAnimationView.m_ptr;
    self->_resizeAnimationView.m_ptr = v4;
    if (m_ptr)
    {

      v4 = self->_resizeAnimationView.m_ptr;
    }

    [(CALayer *)[(UIView *)v4 layer] setName:@"ResizeAnimation"];
    [(WKScrollView *)self->_scrollView.m_ptr insertSubview:self->_resizeAnimationView.m_ptr atIndex:v3];
    [(UIView *)self->_resizeAnimationView.m_ptr addSubview:self->_contentView.m_ptr];
    v6 = self->_resizeAnimationView.m_ptr;
    v7 = [(WKContentView *)self->_contentView.m_ptr unscaledView];

    [(UIView *)v6 addSubview:v7];
  }
}

- (void)_destroyResizeAnimationView
{
  if (self->_resizeAnimationView.m_ptr)
  {
    v3 = [-[WKScrollView subviews](self->_scrollView.m_ptr "subviews")];
    [(WKScrollView *)self->_scrollView.m_ptr insertSubview:self->_contentView.m_ptr atIndex:v3];
    [(WKScrollView *)self->_scrollView.m_ptr insertSubview:[(WKContentView *)self->_contentView.m_ptr unscaledView] atIndex:v3 + 1];
    [(UIView *)self->_resizeAnimationView.m_ptr removeFromSuperview];
    m_ptr = self->_resizeAnimationView.m_ptr;
    self->_resizeAnimationView.m_ptr = 0;
    if (m_ptr)
    {
    }
  }
}

- (void)_cancelAnimatedResize
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(self->_page.m_ptr + 5);
    dynamicViewportUpdateMode = self->_perProcessState.dynamicViewportUpdateMode;
    v13 = 134218496;
    v14 = self;
    v15 = 2048;
    v16 = v4;
    v17 = 1024;
    v18 = dynamicViewportUpdateMode;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _cancelAnimatedResize] dynamicViewportUpdateMode %d", &v13, 0x1Cu);
  }

  if (self->_perProcessState.dynamicViewportUpdateMode)
  {
    if (!self->_customContentView.m_ptr)
    {
      [(WKWebView *)self _destroyResizeAnimationView];
      [(WKContentView *)self->_contentView.m_ptr setHidden:0];
      v6 = MEMORY[0x1E69792E8];
      v7 = *(MEMORY[0x1E69792E8] + 48);
      v9 = *MEMORY[0x1E69792E8];
      v8 = *(MEMORY[0x1E69792E8] + 16);
      *&self->_resizeAnimationTransformAdjustments.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&self->_resizeAnimationTransformAdjustments.m23 = v7;
      *&self->_resizeAnimationTransformAdjustments.m11 = v9;
      *&self->_resizeAnimationTransformAdjustments.m13 = v8;
      v10 = v6[7];
      v12 = v6[4];
      v11 = v6[5];
      *&self->_resizeAnimationTransformAdjustments.m41 = v6[6];
      *&self->_resizeAnimationTransformAdjustments.m43 = v10;
      *&self->_resizeAnimationTransformAdjustments.m31 = v12;
      *&self->_resizeAnimationTransformAdjustments.m33 = v11;
    }

    self->_perProcessState.dynamicViewportUpdateMode = 0;
    self->_perProcessState.animatedResizeOldBounds.origin = 0u;
    self->_perProcessState.animatedResizeOldBounds.size = 0u;
    [(WKWebView *)self _scheduleVisibleContentRectUpdate];
  }
}

- (void)_didCompleteAnimatedResize
{
  v46 = *MEMORY[0x1E69E9840];
  p_perProcessState = &self->_perProcessState;
  if (self->_perProcessState.dynamicViewportUpdateMode)
  {
    [(WKContentView *)self->_contentView.m_ptr setHidden:0];
    m_ptr = self->_resizeAnimationView.m_ptr;
    v5 = qword_1ED641490;
    v6 = os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT);
    if (m_ptr)
    {
      if (v6)
      {
        v7 = *(self->_page.m_ptr + 5);
        *buf = 134218240;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v7;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _didCompleteAnimatedResize]", buf, 0x16u);
      }

      v8 = [-[WKScrollView subviews](self->_scrollView.m_ptr "subviews")];
      [(WKScrollView *)self->_scrollView.m_ptr insertSubview:self->_contentView.m_ptr atIndex:v8];
      [(WKScrollView *)self->_scrollView.m_ptr insertSubview:[(WKContentView *)self->_contentView.m_ptr unscaledView] atIndex:v8 + 1];
      v9 = [(WKContentView *)self->_contentView.m_ptr layer];
      m11 = self->_resizeAnimationTransformAdjustments.m11;
      v11 = MEMORY[0x1E69792E8];
      v12 = *(MEMORY[0x1E69792E8] + 80);
      v42 = *(MEMORY[0x1E69792E8] + 64);
      v43 = v12;
      v13 = *(MEMORY[0x1E69792E8] + 112);
      v44 = *(MEMORY[0x1E69792E8] + 96);
      v45 = v13;
      v14 = *(MEMORY[0x1E69792E8] + 16);
      *buf = *MEMORY[0x1E69792E8];
      *&buf[16] = v14;
      v15 = *(MEMORY[0x1E69792E8] + 48);
      v40 = *(MEMORY[0x1E69792E8] + 32);
      v41 = v15;
      [v9 setSublayerTransform:buf];
      v16 = [(UIView *)self->_resizeAnimationView.m_ptr layer];
      if (v16)
      {
        [(CALayer *)v16 transform];
        v17 = *buf;
      }

      else
      {
        v17 = 0.0;
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      memset(buf, 0, sizeof(buf));
      if (v9)
      {
        [v9 transform];
      }

      v18 = [(UIView *)self->_resizeAnimationView.m_ptr layer];
      if (v18)
      {
        [(CALayer *)v18 transform];
        v19 = *v38;
      }

      else
      {
        v19 = 0.0;
      }

      *buf = m11 * (v19 * *buf);
      *(&v40 + 1) = *buf;
      v38[4] = v42;
      v38[5] = v43;
      v38[6] = v44;
      v38[7] = v45;
      v38[0] = *buf;
      v38[1] = *&buf[16];
      v38[2] = v40;
      v38[3] = v41;
      [v9 setTransform:v38];
      [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
      v21 = v20;
      v23 = v22;
      v24 = v17 * self->_resizeAnimationTransformAdjustments.m41;
      v25 = self->_scrollView.m_ptr;
      v26 = v17 * self->_resizeAnimationTransformAdjustments.m42;
      v27 = self->_page.m_ptr;
      [(WKContentView *)self->_contentView.m_ptr frame];
      v30 = 824;
      if (*(v27 + 832))
      {
        v30 = 828;
      }

      [(WKScrollView *)v25 setContentSize:floor(v28 * *(v27 + v30)) / *(v27 + v30), floor(v29 * *(v27 + v30)) / *(v27 + v30)];
      [(WKScrollView *)self->_scrollView.m_ptr setContentOffset:v21 - v24, v23 - v26];
      [(UIView *)self->_resizeAnimationView.m_ptr removeFromSuperview];
      v31 = self->_resizeAnimationView.m_ptr;
      self->_resizeAnimationView.m_ptr = 0;
      if (v31)
      {
      }

      v32 = *v11;
      v33 = v11[1];
      v34 = v11[3];
      *&self->_resizeAnimationTransformAdjustments.m21 = v11[2];
      *&self->_resizeAnimationTransformAdjustments.m23 = v34;
      *&self->_resizeAnimationTransformAdjustments.m11 = v32;
      *&self->_resizeAnimationTransformAdjustments.m13 = v33;
      v35 = v11[4];
      v36 = v11[5];
      v37 = v11[7];
      *&self->_resizeAnimationTransformAdjustments.m41 = v11[6];
      *&self->_resizeAnimationTransformAdjustments.m43 = v37;
      *&self->_resizeAnimationTransformAdjustments.m31 = v35;
      *&self->_resizeAnimationTransformAdjustments.m33 = v36;
      p_perProcessState->dynamicViewportUpdateMode = 0;
      p_perProcessState->animatedResizeOldBounds.origin = 0u;
      p_perProcessState->animatedResizeOldBounds.size = 0u;
      [(WKWebView *)self _didStopDeferringGeometryUpdates];
      [(WKWebView *)self _updateFixedColorExtensionViewFrames];
    }

    else
    {
      if (v6)
      {
        *buf = 134217984;
        *&buf[4] = self;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p [WKWebView _didCompleteAnimatedResize:] - _resizeAnimationView is nil", buf, 0xCu);
      }

      [(WKWebView *)self _cancelAnimatedResize];
    }
  }
}

- (void)_didStopDeferringGeometryUpdates
{
  [(WKWebView *)self _scheduleVisibleContentRectUpdate];
  [(WKWebView *)self bounds];
  v29[0] = v3;
  v29[1] = v4;
  v30[0] = v5;
  v30[1] = v6;
  [(WKWebView *)self activeViewLayoutSize:v29];
  v8 = v7;
  v10 = v9;
  if (self->_overriddenLayoutParameters.__engaged_)
  {
    p_minimumUnobscuredSize = &self->_overriddenLayoutParameters.var0.__val_.minimumUnobscuredSize;
  }

  else
  {
    p_minimumUnobscuredSize = v30;
  }

  WebCore::FloatSize::FloatSize(&v31, p_minimumUnobscuredSize);
  v12 = v31;
  if (self->_overriddenLayoutParameters.__engaged_)
  {
    p_maximumUnobscuredSize = &self->_overriddenLayoutParameters.var0.__val_.maximumUnobscuredSize;
  }

  else
  {
    p_maximumUnobscuredSize = v30;
  }

  WebCore::FloatSize::FloatSize(&v31, p_maximumUnobscuredSize);
  if (!self->_overridesInterfaceOrientation)
  {
    v15 = (self->_page.m_ptr + 540);
    goto LABEL_11;
  }

  v14 = self->_interfaceOrientationOverride - 2;
  if (v14 < 3)
  {
    v15 = &dword_19E703870[v14];
LABEL_11:
    v16 = *v15;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:
  v17 = v31;
  [(WKWebView *)self _minimumEffectiveDeviceWidth];
  if (!self->_perProcessState.lastSentViewLayoutSize.__engaged_)
  {
    goto LABEL_21;
  }

  if (v8 != self->_perProcessState.lastSentViewLayoutSize.var0.__val_.m_width || v10 != self->_perProcessState.lastSentViewLayoutSize.var0.__val_.m_height)
  {
    goto LABEL_21;
  }

  if (!self->_perProcessState.lastSentMinimumEffectiveDeviceWidth.__engaged_)
  {
    v28 = std::__throw_bad_optional_access[abi:sn200100]();
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    _Unwind_Resume(v28);
  }

  val = self->_perProcessState.lastSentMinimumEffectiveDeviceWidth.var0.__val_;
  if (v18 != val)
  {
LABEL_21:
    *&v18 = v8;
    *&val = v10;
    [(WKWebView *)self _dispatchSetViewLayoutSize:v18, val];
  }

  if (self->_overriddenLayoutParameters.__engaged_)
  {
    m_ptr = self->_page.m_ptr;
    v31 = v12;
    WebKit::WebPageProxy::setMinimumUnobscuredSize(m_ptr, &v31);
    v22 = self->_page.m_ptr;
    v31 = v17;
    WebKit::WebPageProxy::setDefaultUnobscuredSize(v22, &v31);
    v23 = self->_page.m_ptr;
    v31 = v17;
    WebKit::WebPageProxy::setMaximumUnobscuredSize(v23, &v31);
  }

  [(WKWebView *)self _recalculateViewportSizesWithMinimumViewportInset:0 maximumViewportInset:self->_minimumViewportInset.top throwOnInvalidInput:self->_minimumViewportInset.left, self->_minimumViewportInset.bottom, self->_minimumViewportInset.right, self->_maximumViewportInset.top, self->_maximumViewportInset.left, self->_maximumViewportInset.bottom, self->_maximumViewportInset.right];
  if (!self->_perProcessState.lastSentDeviceOrientation.__engaged_ || v16 != self->_perProcessState.lastSentDeviceOrientation.var0.__val_)
  {
    [(WKWebView *)self _dispatchSetDeviceOrientation:v16];
  }

  [(WKWebView *)self _updateDrawingAreaSize];
  p_callbacksDeferredDuringResize = &self->_callbacksDeferredDuringResize;
  while (1)
  {
    m_size = p_callbacksDeferredDuringResize->m_size;
    if (!m_size)
    {
      break;
    }

    v26 = p_callbacksDeferredDuringResize->m_buffer + 8 * m_size;
    v27 = *(v26 - 8);
    *(v26 - 8) = 0;
    WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(p_callbacksDeferredDuringResize, m_size - 1);
    (*(*v27 + 16))(v27);
    (*(*v27 + 8))(v27);
  }
}

- (void)_didFinishNavigation:(Navigation *)a3
{
  m_ptr = self->_gestureController.m_ptr;
  if (m_ptr)
  {
    WebKit::ViewGestureController::didReachNavigationTerminalState(m_ptr, a3);
  }
}

- (void)_didFailNavigation:(Navigation *)a3
{
  m_ptr = self->_gestureController.m_ptr;
  if (m_ptr)
  {
    WebKit::ViewGestureController::didReachNavigationTerminalState(m_ptr, a3);
  }
}

- (void)_didSameDocumentNavigationForMainFrame:(unsigned __int8)a3
{
  m_ptr = self->_customContentView.m_ptr;
  if ((a3 - 1) < 3)
  {
    v6 = (a3 - 1) + 1;
  }

  else
  {
    v6 = 0;
  }

  [(WKWebViewContentProvider *)m_ptr web_didSameDocumentNavigation:v6];
  v7 = self->_gestureController.m_ptr;
  if (v7)
  {

    WebKit::ViewGestureController::didSameDocumentNavigationForMainFrame(v7, a3);
  }
}

- (void)_keyboardChangedWithInfo:(id)a3 adjustScrollView:(BOOL)a4
{
  v4 = a4;
  v7 = [a3 objectForKey:*MEMORY[0x1E69DDFA0]];
  if (v7)
  {
    v8 = v7;
    p_inputViewBoundsInWindow = &self->_inputViewBoundsInWindow;
    x = self->_inputViewBoundsInWindow.origin.x;
    y = self->_inputViewBoundsInWindow.origin.y;
    width = self->_inputViewBoundsInWindow.size.width;
    height = self->_inputViewBoundsInWindow.size.height;
    v14 = [(WKWebView *)self _selectionRectIsFullyVisibleAndNonEmpty];
    if ([objc_msgSend(MEMORY[0x1E69DCD68] "sharedInstance")])
    {
      v15 = *MEMORY[0x1E695F058];
      v16 = *(MEMORY[0x1E695F058] + 8);
      v17 = *(MEMORY[0x1E695F058] + 16);
      v18 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      [v8 CGRectValue];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      if (([-[WKWebView window](self "window")] & 1) == 0)
      {
        [objc_msgSend(-[WKWebView window](self "window")];
        v41.origin.x = v27;
        v41.origin.y = v28;
        v41.size.width = v29;
        v41.size.height = v30;
        v36.origin.x = v20;
        v36.origin.y = v22;
        v36.size.width = v24;
        v36.size.height = v26;
        v37 = CGRectIntersection(v36, v41);
        v20 = v37.origin.x;
        v22 = v37.origin.y;
        v24 = v37.size.width;
        v26 = v37.size.height;
      }

      [-[WKWebView window](self "window")];
    }

    p_inputViewBoundsInWindow->origin.x = v15;
    self->_inputViewBoundsInWindow.origin.y = v16;
    self->_inputViewBoundsInWindow.size.width = v17;
    self->_inputViewBoundsInWindow.size.height = v18;
    if (v4)
    {
      [(WKScrollView *)self->_scrollView.m_ptr contentInset];
      v32 = v31;
      currentlyAdjustingScrollViewInsetsForKeyboard = self->_perProcessState.currentlyAdjustingScrollViewInsetsForKeyboard;
      self->_perProcessState.currentlyAdjustingScrollViewInsetsForKeyboard = 1;
      [(WKScrollView *)self->_scrollView.m_ptr _adjustForAutomaticKeyboardInfo:a3 animated:1 lastAdjustment:&self->_lastAdjustmentForScroller];
      [(WKScrollView *)self->_scrollView.m_ptr contentInset];
      if (v32 != v34)
      {
        self->_totalScrollViewBottomInsetAdjustmentForKeyboard = v34 - v32 + self->_totalScrollViewBottomInsetAdjustmentForKeyboard;
      }

      self->_perProcessState.currentlyAdjustingScrollViewInsetsForKeyboard = currentlyAdjustingScrollViewInsetsForKeyboard;
    }

    if (v14)
    {
      if ([(WKContentView *)self->_contentView.m_ptr _hasFocusedElement])
      {
        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        if (!CGRectIsEmpty(v38))
        {
          v39.origin.x = p_inputViewBoundsInWindow->origin.x;
          v39.origin.y = self->_inputViewBoundsInWindow.origin.y;
          v39.size.width = self->_inputViewBoundsInWindow.size.width;
          v39.size.height = self->_inputViewBoundsInWindow.size.height;
          if (!CGRectIsEmpty(v39))
          {
            v42.origin.x = p_inputViewBoundsInWindow->origin.x;
            v42.origin.y = self->_inputViewBoundsInWindow.origin.y;
            v42.size.width = self->_inputViewBoundsInWindow.size.width;
            v42.size.height = self->_inputViewBoundsInWindow.size.height;
            v40.origin.x = x;
            v40.origin.y = y;
            v40.size.width = width;
            v40.size.height = height;
            if (!CGRectEqualToRect(v40, v42))
            {
              [(WKWebView *)self _scrollToAndRevealSelectionIfNeeded];
            }
          }
        }
      }
    }

    [(WKWebView *)self _scheduleVisibleContentRectUpdate];
  }
}

- (BOOL)_shouldUpdateKeyboardWithInfo:(id)a3
{
  if ([(WKContentView *)self->_contentView.m_ptr isFocusingElement]|| [(UIFindInteraction *)self->_findInteraction.m_ptr isFindNavigatorVisible])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 valueForKey:*MEMORY[0x1E69DDFC8]];
    if (v5)
    {
      LOBYTE(v5) = [v5 BOOLValue] ^ 1;
    }
  }

  return v5;
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  if (-[WKWebView _shouldUpdateKeyboardWithInfo:](self, "_shouldUpdateKeyboardWithInfo:", [a3 userInfo]))
  {
    v5 = [a3 userInfo];

    [(WKWebView *)self _keyboardChangedWithInfo:v5 adjustScrollView:1];
  }
}

- (void)_keyboardDidChangeFrame:(id)a3
{
  v4 = [a3 userInfo];

  [(WKWebView *)self _keyboardChangedWithInfo:v4 adjustScrollView:0];
}

- (void)_keyboardWillShow:(id)a3
{
  if (-[WKWebView _shouldUpdateKeyboardWithInfo:](self, "_shouldUpdateKeyboardWithInfo:", [a3 userInfo]))
  {
    -[WKWebView _keyboardChangedWithInfo:adjustScrollView:](self, "_keyboardChangedWithInfo:adjustScrollView:", [a3 userInfo], 1);
  }

  *(self->_page.m_ptr + 545) = 1;
  m_ptr = self->_contentView.m_ptr;

  [(WKContentView *)m_ptr _keyboardWillShow];
}

- (void)_keyboardWillHide:(id)a3
{
  if (![(WKContentView *)self->_contentView.m_ptr shouldIgnoreKeyboardWillHideNotification])
  {
    v5 = [a3 userInfo];

    [(WKWebView *)self _keyboardChangedWithInfo:v5 adjustScrollView:1];
  }
}

- (void)_windowDidRotate:(id)a3
{
  if (!self->_overridesInterfaceOrientation)
  {
    [(WKWebView *)self _dispatchSetDeviceOrientation:[(WKWebView *)self _deviceOrientationIgnoringOverrides]];
  }

  v4 = [(WKWebView *)self _deviceOrientationIgnoringOverrides];

  [(WKWebView *)self _dispatchSetOrientationForMediaCapture:v4];
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  m_ptr = self->_page.m_ptr;
  MEMORY[0x19EB02040](&v7, [(WKWebView *)self _contentSizeCategory]);
  v4 = *(m_ptr + 44);
  v8 = &v7;
  WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ContentSizeCategoryDidChange>(v4, &v8, *(m_ptr + 6), 0);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (BOOL)_isNavigationSwipeGestureRecognizer:(id)a3
{
  m_ptr = self->_gestureController.m_ptr;
  if (m_ptr)
  {
    return [*(m_ptr + 23) isNavigationSwipeGestureRecognizer:a3];
  }

  else
  {
    return 0;
  }
}

- (void)_navigationGestureDidBegin
{
  [(WKWebView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(WKWebView *)self _computedObscuredInset];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  [(WKWebView *)self convertRect:self->_contentView.m_ptr toView:v4, v6, v8, v10];
  engaged = self->_perProcessState.frozenVisibleContentRect.__engaged_;
  self->_perProcessState.frozenVisibleContentRect.var0.__val_.origin.x = v20;
  self->_perProcessState.frozenVisibleContentRect.var0.__val_.origin.y = v21;
  self->_perProcessState.frozenVisibleContentRect.var0.__val_.size.width = v22;
  self->_perProcessState.frozenVisibleContentRect.var0.__val_.size.height = v23;
  if (!engaged)
  {
    self->_perProcessState.frozenVisibleContentRect.__engaged_ = 1;
  }

  [(WKWebView *)self convertRect:self->_contentView.m_ptr toView:v12, v14, v16, v18];
  v24 = self->_perProcessState.frozenUnobscuredContentRect.__engaged_;
  self->_perProcessState.frozenUnobscuredContentRect.var0.__val_.origin.x = v25;
  self->_perProcessState.frozenUnobscuredContentRect.var0.__val_.origin.y = v26;
  self->_perProcessState.frozenUnobscuredContentRect.var0.__val_.size.width = v27;
  self->_perProcessState.frozenUnobscuredContentRect.var0.__val_.size.height = v28;
  if (!v24)
  {
    self->_perProcessState.frozenUnobscuredContentRect.__engaged_ = 1;
  }

  self->_contentViewShouldBecomeFirstResponderAfterNavigationGesture = [(WKContentView *)self->_contentView.m_ptr isFirstResponder];
}

- (void)_navigationGestureDidEnd
{
  if (self->_perProcessState.frozenVisibleContentRect.__engaged_)
  {
    self->_perProcessState.frozenVisibleContentRect.__engaged_ = 0;
  }

  if (self->_perProcessState.frozenUnobscuredContentRect.__engaged_)
  {
    self->_perProcessState.frozenUnobscuredContentRect.__engaged_ = 0;
  }

  if (self->_contentViewShouldBecomeFirstResponderAfterNavigationGesture)
  {
    if ([(WKWebView *)self window]&& ([(WKContentView *)self->_contentView.m_ptr isFirstResponder]& 1) == 0)
    {
      [(WKContentView *)self->_contentView.m_ptr becomeFirstResponder];
    }

    self->_contentViewShouldBecomeFirstResponderAfterNavigationGesture = 0;
  }

  [(WKWebView *)self _forceScrollPocketsToRecomputeElementRegions];
}

- (void)_forceScrollPocketsToRecomputeElementRegions
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return;
  }

  v3 = 0;
  while (1)
  {
    v4 = [(WKScrollView *)self->_scrollView.m_ptr _pocketForEdge:WebKit::allUIRectEdges[v3] makeIfNeeded:0];
    if (v4)
    {
      break;
    }

LABEL_7:
    if (++v3 == 4)
    {
      return;
    }
  }

  v6 = v4;
  v5 = v4;
  if (byte_1ED6424D1 == 1)
  {
    if ((_MergedGlobals_69 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  _MergedGlobals_69 = objc_opt_respondsToSelector() & 1;
  byte_1ED6424D1 = 1;
  if (_MergedGlobals_69)
  {
LABEL_6:
    [v6 invalidateAllElements];

    goto LABEL_7;
  }

LABEL_10:
}

- (void)_showPasswordViewWithDocumentName:(id)a3 passwordHandler:(id)a4
{
  v7 = [WKPasswordView alloc];
  [(WKWebView *)self bounds];
  v8 = [(WKPasswordView *)v7 initWithFrame:a3 documentName:?];
  m_ptr = self->_passwordView.m_ptr;
  self->_passwordView.m_ptr = v8;
  if (m_ptr)
  {

    v8 = self->_passwordView.m_ptr;
  }

  [(WKPasswordView *)v8 setUserDidEnterPassword:a4];
  [(WKPasswordView *)self->_passwordView.m_ptr showInScrollView:self->_scrollView.m_ptr];
  [-[WKWebView _currentContentView](self "_currentContentView")];

  [(WKWebView *)self _didRequestPasswordForDocument];
}

- (void)_hidePasswordView
{
  if (self->_passwordView.m_ptr)
  {
    [-[WKWebView _currentContentView](self "_currentContentView")];
    [(WKPasswordView *)self->_passwordView.m_ptr hide];
    m_ptr = self->_passwordView.m_ptr;
    self->_passwordView.m_ptr = 0;
    if (m_ptr)
    {
    }

    [(WKWebView *)self _didStopRequestingPasswordForDocument];
  }
}

- (void)_resetScrollViewInsetAdjustmentBehavior
{
  [(WKScrollView *)self->_scrollView.m_ptr _resetContentInsetAdjustmentBehavior];

  [(WKWebView *)self _updateScrollViewInsetAdjustmentBehavior];
}

- (void)_setAvoidsUnsafeArea:(BOOL)a3
{
  if (self->_perProcessState.avoidsUnsafeArea != a3)
  {
    v12[8] = v3;
    v12[9] = v4;
    v5 = a3;
    self->_perProcessState.avoidsUnsafeArea = a3;
    if ([(WKWebView *)self _updateScrollViewContentInsetsIfNecessary]&& ![(WKWebView *)self _shouldDeferGeometryUpdates]&& !self->_overriddenLayoutParameters.__engaged_)
    {
      [(WKWebView *)self bounds];
      v12[0] = v7;
      v12[1] = v8;
      v12[2] = v9;
      v12[3] = v10;
      [(WKWebView *)self activeViewLayoutSize:v12];
      [(WKWebView *)self _dispatchSetViewLayoutSize:?];
    }

    [(WKWebView *)self _updateScrollViewInsetAdjustmentBehavior];
    [(WKWebView *)self _scheduleVisibleContentRectUpdate];
    v11 = [(WKWebView *)self UIDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v11 _webView:self didChangeSafeAreaShouldAffectObscuredInsets:v5];
    }
  }
}

- (void)_endAnimatedFullScreenExit
{
  isAnimatingFullScreenExit = self->_perProcessState.isAnimatingFullScreenExit;
  self->_perProcessState.isAnimatingFullScreenExit = 0;
  if (isAnimatingFullScreenExit && ![(WKWebView *)self _shouldDeferGeometryUpdates])
  {

    [(WKWebView *)self _didStopDeferringGeometryUpdates];
  }
}

- (void)_firePresentationUpdateForPendingStableStatePresentationCallbacks
{
  if (self)
  {
    v3 = self;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = __97__WKWebView_WKViewInternalIOS___firePresentationUpdateForPendingStableStatePresentationCallbacks__block_invoke;
  v7[3] = &__block_descriptor_40_e8_32c111_ZTSKZ97__WKWebView_WKViewInternalIOS___firePresentationUpdateForPendingStableStatePresentationCallbacks_E4__22_e5_v8__0l;
  if (self)
  {
    v4 = self;
    v8 = self;
    v5 = self;
  }

  else
  {
    v8 = 0;
  }

  [(WKWebView *)self _doAfterNextPresentationUpdate:v7];
  if (self)
  {
  }

  v6 = v8;
  v8 = 0;
  if (v6)
  {
  }

  if (self)
  {
  }
}

uint64_t __97__WKWebView_WKViewInternalIOS___firePresentationUpdateForPendingStableStatePresentationCallbacks__block_invoke(WTF::RunLoop *a1)
{
  WTF::RunLoop::mainSingleton(a1);
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = v2;
  }

  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F10FD270;
  v4[1] = v2;
  v6 = v4;
  WTF::RunLoop::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WKWebView;
  [(WKWebView *)&v7 setSemanticContentAttribute:?];
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v6 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:a3];
    if ((*(m_ptr + 865) & 1) == 0 && *(m_ptr + 864) == 1)
    {
      v8 = v6 == 1;
      WebKit::WebPageProxy::send<Messages::WebPage::SetUserInterfaceLayoutDirection>(m_ptr, &v8);
    }
  }
}

- (void)buildMenuWithBuilder:(id)a3
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    [(WKContentView *)self->_contentView.m_ptr buildMenuForWebViewWithBuilder:a3];
  }

  v5.receiver = self;
  v5.super_class = WKWebView;
  [(WKWebView *)&v5 buildMenuWithBuilder:a3];
}

- (void)_beginLiveResize
{
  v21 = *MEMORY[0x1E69E9840];
  p_perProcessState = &self->_perProcessState;
  if (self->_perProcessState.liveResizeParameters.__engaged_)
  {
    v3 = qword_1ED641120;
    if (!os_log_type_enabled(qword_1ED641120, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    LOWORD(v17) = 0;
    v4 = "Error: _beginLiveResize called with an outstanding live resize.";
LABEL_7:
    _os_log_fault_impl(&dword_19D52D000, v3, OS_LOG_TYPE_FAULT, v4, &v17, 2u);
    return;
  }

  if (self->_perProcessState.dynamicViewportUpdateMode)
  {
    v3 = qword_1ED641120;
    if (!os_log_type_enabled(qword_1ED641120, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    LOWORD(v17) = 0;
    v4 = "Error: _beginLiveResize called during an animated resize.";
    goto LABEL_7;
  }

  v6 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(self->_page.m_ptr + 5);
    v17 = 134218240;
    v18 = self;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _beginLiveResize]", &v17, 0x16u);
  }

  [(UIScrollView *)[(WKWebView *)self scrollView] contentOffset];
  v9 = v8;
  v11 = v10;
  [(WKWebView *)self _computedObscuredInset];
  v13 = v9 + v12;
  v15 = v11 + v14;
  [(WKWebView *)self bounds];
  p_perProcessState->liveResizeParameters.var0.__val_.viewWidth = v16;
  p_perProcessState->liveResizeParameters.var0.__val_.initialScrollPosition.x = v13;
  p_perProcessState->liveResizeParameters.var0.__val_.initialScrollPosition.y = v15;
  p_perProcessState->liveResizeParameters.__engaged_ = 1;
  [(WKWebView *)self _ensureResizeAnimationView];
}

- (id)_searchableObject
{
  p_m_ptr = &self->_customContentView.m_ptr;
  if (([(WKWebViewContentProvider *)self->_customContentView.m_ptr conformsToProtocol:&unk_1F1190100]& 1) == 0)
  {
    p_m_ptr = &self->_contentView.m_ptr;
  }

  return *p_m_ptr;
}

- (BOOL)supportsTextReplacement
{
  if (objc_opt_respondsToSelector())
  {
    m_ptr = self->_customContentView.m_ptr;

    return [(WKWebViewContentProvider *)m_ptr supportsTextReplacement];
  }

  else
  {
    v5 = self->_contentView.m_ptr;

    return [(WKContentView *)v5 supportsTextReplacementForWebView];
  }
}

- (id)_animationForFindOverlay:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v5 = v4;
  if (v3)
  {
    v6 = &unk_1F1184878;
  }

  else
  {
    v6 = &unk_1F1184890;
  }

  if (v3)
  {
    v7 = &unk_1F1184890;
  }

  else
  {
    v7 = &unk_1F1184878;
  }

  [v4 setFromValue:v6];
  [v5 setToValue:v7];
  [v5 setDuration:0.200000003];
  LODWORD(v8) = 1055119114;
  LODWORD(v9) = 1028443341;
  LODWORD(v10) = 1057803469;
  LODWORD(v11) = 1064514355;
  [v5 setTimingFunction:{objc_msgSend(MEMORY[0x1E69793D0], "functionWithControlPoints::::", v8, v9, v10, v11)}];
  return v5;
}

- (void)_showFindOverlay
{
  p_findOverlaysOutsideContentView = &self->_findOverlaysOutsideContentView;
  if (!self->_findOverlaysOutsideContentView.__engaged_)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:0.250980392];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v5 setBackgroundColor:v4];
    [(WKScrollView *)self->_scrollView.m_ptr insertSubview:v5 belowSubview:self->_contentView.m_ptr];
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:0.250980392];
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v7 setBackgroundColor:v6];
    [(WKScrollView *)self->_scrollView.m_ptr insertSubview:v7 belowSubview:self->_contentView.m_ptr];
    v8 = [MEMORY[0x1E69DC888] colorWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:0.250980392];
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v9 setBackgroundColor:v8];
    [(WKScrollView *)self->_scrollView.m_ptr insertSubview:v9 belowSubview:self->_contentView.m_ptr];
    v10 = [MEMORY[0x1E69DC888] colorWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:0.250980392];
    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v11 setBackgroundColor:v10];
    [(WKScrollView *)self->_scrollView.m_ptr insertSubview:v11 belowSubview:self->_contentView.m_ptr];
    if (p_findOverlaysOutsideContentView->__engaged_)
    {
      m_ptr = p_findOverlaysOutsideContentView->var0.__val_.top.m_ptr;
      p_findOverlaysOutsideContentView->var0.__val_.top.m_ptr = v5;
      if (m_ptr)
      {
      }

      v13 = p_findOverlaysOutsideContentView->var0.__val_.right.m_ptr;
      p_findOverlaysOutsideContentView->var0.__val_.right.m_ptr = v7;
      if (v13)
      {
      }

      v14 = p_findOverlaysOutsideContentView->var0.__val_.bottom.m_ptr;
      p_findOverlaysOutsideContentView->var0.__val_.bottom.m_ptr = v9;
      if (v14)
      {
      }

      v15 = p_findOverlaysOutsideContentView->var0.__val_.left.m_ptr;
      p_findOverlaysOutsideContentView->var0.__val_.left.m_ptr = v11;
      if (v15)
      {
      }
    }

    else
    {
      p_findOverlaysOutsideContentView->var0.__val_.top.m_ptr = v5;
      p_findOverlaysOutsideContentView->var0.__val_.right.m_ptr = v7;
      p_findOverlaysOutsideContentView->var0.__val_.bottom.m_ptr = v9;
      p_findOverlaysOutsideContentView->var0.__val_.left.m_ptr = v11;
      p_findOverlaysOutsideContentView->__engaged_ = 1;
    }
  }

  [(WKWebView *)self _updateFindOverlayPosition];
  v16 = [(WKWebView *)self _layerForFindOverlay];
  if (v16)
  {
    v17 = v16;
    [(WKWebView *)self _updateFindOverlaysOutsideContentView:&__block_literal_global_20];
    [(CALayer *)v17 removeAllAnimations];
    LODWORD(v18) = 1.0;

    [(CALayer *)v17 setOpacity:v18];
  }

  else
  {
    [(WKWebView *)self _updateFindOverlaysOutsideContentView:&__block_literal_global_706];

    [(WKWebView *)self _addLayerForFindOverlay];
  }
}

uint64_t __48__WKWebView_WKViewInternalIOS___showFindOverlay__block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "layer")];

  return [a2 setAlpha:1.0];
}

- (void)_hideFindOverlay
{
  v3 = [(WKWebView *)self _layerForFindOverlay];
  if (self->_findOverlaysOutsideContentView.__engaged_)
  {
    v4 = [(UIView *)self->_findOverlaysOutsideContentView.var0.__val_.top.m_ptr layer];
  }

  else
  {
    v4 = 0;
  }

  if (v4 | v3)
  {
    if (![v4 animationForKey:@"findOverlayFadeOut"])
    {
      [v3 removeAllAnimations];
      [(WKWebView *)self _updateFindOverlaysOutsideContentView:&__block_literal_global_711];
      [MEMORY[0x1E6979518] begin];
      v5 = [(WKWebView *)self _animationForFindOverlay:0];
      v6 = MEMORY[0x1E6979518];
      location = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3321888768;
      v9[2] = __48__WKWebView_WKViewInternalIOS___hideFindOverlay__block_invoke_2;
      v9[3] = &__block_descriptor_40_e8_32c62_ZTSKZ48__WKWebView_WKViewInternalIOS___hideFindOverlay_E4__25_e5_v8__0l;
      objc_initWeak(&location, self);
      v10 = 0;
      objc_copyWeak(&v10, &location);
      [v6 setCompletionBlock:v9];
      objc_destroyWeak(&location);
      [v3 addAnimation:v5 forKey:@"findOverlayFadeOut"];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __48__WKWebView_WKViewInternalIOS___hideFindOverlay__block_invoke_713;
      v7[3] = &unk_1E7631E28;
      v7[4] = v5;
      [(WKWebView *)self _updateFindOverlaysOutsideContentView:v7];
      [MEMORY[0x1E6979518] commit];
      [v3 setOpacity:0.0];
      [(WKWebView *)self _updateFindOverlaysOutsideContentView:&__block_literal_global_716];
      objc_destroyWeak(&v10);
    }
  }
}

uint64_t __48__WKWebView_WKViewInternalIOS___hideFindOverlay__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 layer];

  return [v2 removeAllAnimations];
}

void __48__WKWebView_WKViewInternalIOS___hideFindOverlay__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained + 712;
    v3 = WeakRetained[744];
    v9 = WeakRetained;
    if (v3 != 1 || ([*v2 alpha], WeakRetained = v9, v4 == 0.0))
    {
      [WeakRetained _removeLayerForFindOverlay];
      WeakRetained = v9;
      if (v3)
      {
        [v9 _updateFindOverlaysOutsideContentView:&__block_literal_global_1272];
        WeakRetained = v9;
        if (v2[32] == 1)
        {
          v5 = *(v2 + 3);
          *(v2 + 3) = 0;
          if (v5)
          {

            WeakRetained = v9;
          }

          v6 = *(v2 + 2);
          *(v2 + 2) = 0;
          if (v6)
          {

            WeakRetained = v9;
          }

          v7 = *(v2 + 1);
          *(v2 + 1) = 0;
          if (v7)
          {

            WeakRetained = v9;
          }

          v8 = *v2;
          *v2 = 0;
          if (v8)
          {

            WeakRetained = v9;
          }

          v2[32] = 0;
        }
      }
    }
  }
}

uint64_t __48__WKWebView_WKViewInternalIOS___hideFindOverlay__block_invoke_713(uint64_t a1, void *a2)
{
  v3 = [a2 layer];
  v4 = *(a1 + 32);

  return [v3 addAnimation:v4 forKey:@"findOverlayFadeOut"];
}

uint64_t __48__WKWebView_WKViewInternalIOS___hideFindOverlay__block_invoke_2_714(uint64_t a1, void *a2)
{
  v2 = [a2 layer];

  return [v2 setOpacity:0.0];
}

- (void)_enhancedWindowingToggled:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
    }
  }

  if (v4 == [-[WKWebView window](self "window")])
  {
    m_ptr = self->_page.m_ptr;
    if (m_ptr)
    {
      if ((*(m_ptr + 865) & 1) == 0 && *(m_ptr + 864) == 1)
      {
        v6 = [(WKWebView *)self _isWindowResizingEnabled];
        WebKit::WebPageProxy::send<Messages::WebPage::SetIsWindowResizingEnabled>(m_ptr, &v6);
      }
    }
  }
}

- (int64_t)_effectiveDataOwner:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    if (a3)
    {
      return 0;
    }

    else if ([objc_msgSend((*MEMORY[0x1E69E2328])(self a2)])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return a3;
}

- (void)_updateFindOverlaysOutsideContentView:(id)a3
{
  p_findOverlaysOutsideContentView = &self->_findOverlaysOutsideContentView;
  if (self->_findOverlaysOutsideContentView.__engaged_)
  {
    (*(a3 + 2))(a3, p_findOverlaysOutsideContentView->var0.__val_.top.m_ptr);
    if (p_findOverlaysOutsideContentView->__engaged_ && ((*(a3 + 2))(a3, p_findOverlaysOutsideContentView->var0.__val_.bottom.m_ptr), p_findOverlaysOutsideContentView->__engaged_) && ((*(a3 + 2))(a3, p_findOverlaysOutsideContentView->var0.__val_.left.m_ptr), p_findOverlaysOutsideContentView->__engaged_))
    {
      m_ptr = p_findOverlaysOutsideContentView->var0.__val_.right.m_ptr;
      v6 = *(a3 + 2);

      v6(a3, m_ptr);
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)_didAddLayerForFindOverlay:(id)a3
{
  m_identifier = self->_perProcessState.pendingFindLayerID.m_value.m_object.m_identifier;
  v6 = self->_perProcessState.pendingFindLayerID.m_value.m_processIdentifier.m_identifier;
  self->_perProcessState.pendingFindLayerID.m_value.m_object.m_identifier = 0;
  self->_perProcessState.pendingFindLayerID.m_value.m_processIdentifier.m_identifier = 0;
  self->_perProcessState.committedFindLayerID.m_value.m_object.m_identifier = m_identifier;
  self->_perProcessState.committedFindLayerID.m_value.m_processIdentifier.m_identifier = v6;
  (*(**(self->_page.m_ptr + 16) + 40))(*(self->_page.m_ptr + 16));
  v7 = [(WKWebView *)self _animationForFindOverlay:1];
  [a3 addAnimation:v7 forKey:@"findOverlayFadeIn"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__WKWebView_WKViewInternalIOS___didAddLayerForFindOverlay___block_invoke;
  v9[3] = &unk_1E7631E28;
  v9[4] = v7;
  [(WKWebView *)self _updateFindOverlaysOutsideContentView:v9];
  LODWORD(v8) = 1.0;
  [a3 setOpacity:v8];
}

uint64_t __59__WKWebView_WKViewInternalIOS___didAddLayerForFindOverlay___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layer];
  [v3 addAnimation:*(a1 + 32) forKey:@"findOverlayFadeIn"];
  LODWORD(v4) = 1.0;

  return [v3 setOpacity:v4];
}

- (void)_didRemoveLayerForFindOverlay
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    (*(**(m_ptr + 16) + 48))();
  }
}

- (void)_resetContentOffset
{
  m_ptr = self->_scrollView.m_ptr;
  [(WKWebView *)self _initialContentOffsetForScrollView];

  [(WKScrollView *)m_ptr setContentOffset:?];
}

- (void)_resetUnobscuredSafeAreaInsets
{
  self->_haveSetUnobscuredSafeAreaInsets = 0;
  *&self->_unobscuredSafeAreaInsets.top = 0u;
  *&self->_unobscuredSafeAreaInsets.bottom = 0u;
  [(WKWebView *)self _scheduleVisibleContentRectUpdate];
}

- (void)_resetObscuredInsets
{
  self->_haveSetObscuredInsets = 0;
  *&self->_obscuredInsets.top = 0u;
  *&self->_obscuredInsets.bottom = 0u;
  [(WKWebView *)self _scheduleVisibleContentRectUpdate];
}

- (void)_setPointerTouchCompatibilitySimulatorEnabled:(BOOL)a3
{
  ptr = self->_pointerTouchCompatibilitySimulator.__ptr_;
  if (*(ptr + 32) != a3)
  {
    *(ptr + 32) = a3;
    if (!a3)
    {
      WebKit::PointerTouchCompatibilitySimulator::resetState(ptr);
    }
  }
}

- (unint64_t)axesToPreventScrollingForPanGestureInScrollView:(id)a3
{
  v5 = [a3 panGestureRecognizer];
  if (![(WKContentView *)self->_contentView.m_ptr preventsPanningInXAxis]&& ![(WKContentView *)self->_contentView.m_ptr preventsPanningInYAxis])
  {
    v6 = 0;
LABEL_11:
    [(WKContentView *)self->_contentView.m_ptr cancelPointersForGestureRecognizer:v5];
    return v6;
  }

  v6 = [(WKContentView *)self->_contentView.m_ptr preventsPanningInXAxis];
  if ([(WKContentView *)self->_contentView.m_ptr preventsPanningInYAxis])
  {
    v6 |= 2uLL;
  }

  [v5 translationInView:a3];
  v8 = v7;
  v10 = v9;
  if (![(WKContentView *)self->_contentView.m_ptr preventsPanningInXAxis]&& fabs(v8) > 2.22044605e-16 || ![(WKContentView *)self->_contentView.m_ptr preventsPanningInYAxis]&& fabs(v10) > 2.22044605e-16)
  {
    goto LABEL_11;
  }

  return v6;
}

uint64_t __60__WKWebView_WKViewInternalIOS___updatePageLoadObserverState__block_invoke(uint64_t result)
{
  v1 = result;
  v64 = *MEMORY[0x1E69E9840];
  if ((byte_1ED6424D2 & 1) == 0)
  {
    qword_1ED6424E8 = 0;
    byte_1ED6424D2 = 1;
    goto LABEL_19;
  }

  v2 = qword_1ED6424E8;
  if (!qword_1ED6424E8)
  {
    goto LABEL_19;
  }

  v3 = *(result + 56);
  *buf = *(result + 40);
  v59 = v3;
  LODWORD(v60) = *(result + 72);
  v4 = *(qword_1ED6424E8 + 36);
  if (v4)
  {
    if ((v60 & 1) == 0)
    {
      goto LABEL_19;
    }

    v5 = *(qword_1ED6424E8 + 4) == *buf && *(qword_1ED6424E8 + 12) == *&buf[8];
    v6 = v5 && *(qword_1ED6424E8 + 20) == v59;
    if (!v6 || *(qword_1ED6424E8 + 28) != *(&v59 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (v60)
  {
    if (v4 == v60)
    {
      __break(1u);
      return result;
    }

LABEL_19:
    v8 = *(result + 56);
    *buf = *(result + 40);
    v59 = v8;
    LODWORD(v60) = *(result + 72);
    v2 = WTF::fastMalloc(0x40);
    *v2 = 1;
    v9 = v60;
    *(v2 + 36) = v60;
    *(v2 + 4) = *buf;
    *(v2 + 20) = v59;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    v10 = *MEMORY[0x1E695E480];
    if (v9)
    {
      v11 = *(v2 + 20);
      *token.val = *(v2 + 4);
      *&token.val[4] = v11;
      v12 = SecTaskCreateWithAuditToken(v10, &token);
    }

    else
    {
      v12 = SecTaskCreateFromSelf(v10);
    }

    v14 = v12;
    if (!v12)
    {
      goto LABEL_44;
    }

    v15 = SecTaskCopySigningIdentifier(v12, 0);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    v18 = *(v2 + 40);
    *(v2 + 40) = v16;
    if (v18)
    {
    }

    if (WTF::hasEntitlement())
    {
      v19 = 1;
    }

    else
    {
      if (![*(v2 + 40) isEqualToString:@"com.apple.webapp"])
      {
LABEL_32:
        if (*(v2 + 36) == 1)
        {
          *(v2 + 48) = 3;
        }

        v20 = SecTaskCopyValueForEntitlement(v14, @"com.apple.developer.associated-domains", 0);
        v21 = WTF::dynamic_cf_cast<__CFArray const*>(v20);
        if (v21)
        {
          v22 = [MEMORY[0x1E69CDB30] serviceSpecifiersWithEntitlementValue:v21 serviceType:*MEMORY[0x1E69CDB38] error:0];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          v25 = *(v2 + 56);
          *(v2 + 56) = v23;
          if (v25)
          {
          }
        }

        if (v20)
        {
          CFRelease(v20);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        CFRelease(v14);
LABEL_44:
        ++*v2;
        v26 = qword_1ED6424E8;
        qword_1ED6424E8 = v2;
        if (v26)
        {
        }

        v27 = qword_1ED640F18;
        if (os_log_type_enabled(qword_1ED640F18, OS_LOG_TYPE_DEBUG))
        {
          v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(v2 + 56), "count")}];
          v62 = 0u;
          v63 = 0u;
          memset(&token, 0, sizeof(token));
          v29 = *(v2 + 56);
          v30 = [v29 countByEnumeratingWithState:&token objects:buf count:16];
          if (v30)
          {
            v31 = **&token.val[4];
            while (2)
            {
              for (i = 0; i != v30; ++i)
              {
                if (**&token.val[4] != v31)
                {
                  objc_enumerationMutation(v29);
                }

                v33 = [*(*&token.val[2] + 8 * i) domain];
                if (v33)
                {
                  if ([(__CFString *)v28 count]>= 6)
                  {
                    [(__CFString *)v28 addObject:@"..."];
                    goto LABEL_79;
                  }

                  [(__CFString *)v28 addObject:v33];
                }
              }

              v30 = [v29 countByEnumeratingWithState:&token objects:buf count:16];
              if (v30)
              {
                continue;
              }

              break;
            }
          }

LABEL_79:
          v46 = *(v2 + 40);
          if (!v46)
          {
            v46 = @"unknown";
          }

          v55 = v46;
          v54[0] = @"bundleID";
          v54[1] = @"appType";
          v47 = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 48)];
          v54[2] = @"domains";
          v56 = v47;
          v57 = v28;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:v54 count:3];
          v49 = v48;
          if (v48)
          {
            v50 = v48;
          }

          if (v28)
          {
          }

          v52 = 138739971;
          v53 = v49;
          _os_log_debug_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEBUG, "Loaded app state: %{sensitive}@", &v52, 0xCu);
          if (v49)
          {
          }
        }

        goto LABEL_59;
      }

      v19 = 2;
    }

    *(v2 + 48) = v19;
    goto LABEL_32;
  }

  ++*qword_1ED6424E8;
LABEL_59:
  if (*(v2 + 48) == 1)
  {
    v34 = 1;
  }

  else
  {
    v35 = *(v1 + 32);
    memset(&token, 0, sizeof(token));
    v62 = 0u;
    v63 = 0u;
    v36 = *(v2 + 56);
    v37 = [v36 countByEnumeratingWithState:&token objects:buf count:16];
    if (v37)
    {
      v38 = **&token.val[4];
      while (2)
      {
        for (j = 0; j != v37; ++j)
        {
          if (**&token.val[4] != v38)
          {
            objc_enumerationMutation(v36);
          }

          if ([*(*&token.val[2] + 8 * j) domainEncompassesDomain:v35])
          {
            v45 = qword_1ED640F18;
            if (os_log_type_enabled(qword_1ED640F18, OS_LOG_TYPE_DEBUG))
            {
              v51 = *(v1 + 32);
              *buf = 138739971;
              *&buf[4] = v51;
              _os_log_debug_impl(&dword_19D52D000, v45, OS_LOG_TYPE_DEBUG, "Ignoring event: host %{sensitive}@ matches first party domain", buf, 0xCu);
            }
          }
        }

        v37 = [v36 countByEnumeratingWithState:&token objects:buf count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    v34 = *(v2 + 48);
  }

  v40 = *(v2 + 40);
  if (!v40)
  {
    v40 = @"unknown";
  }

  *token.val = v40;
  v55 = @"bundleID";
  v56 = @"appType";
  v41 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  v57 = @"pageLoadCount";
  *&token.val[2] = v41;
  *&token.val[4] = &unk_1F1184890;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&token forKeys:&v55 count:3];
  v43 = qword_1ED640F18;
  if (os_log_type_enabled(qword_1ED640F18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138739971;
    *&buf[4] = v42;
    _os_log_debug_impl(&dword_19D52D000, v43, OS_LOG_TYPE_DEBUG, "Submitting event %{sensitive}@", buf, 0xCu);
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&v59 = ___ZL26sendPageLoadAnalyticsEventON3WTF9RetainPtrI8NSStringEENSt3__18optionalI13audit_token_tEE_block_invoke;
  *(&v59 + 1) = &unk_1E7631E50;
  v60 = v42;
  AnalyticsSendEventLazy();
}

- (void)_setUIEventAttribution:(id)a3
{
  if (a3)
  {
    v5 = [a3 sourceIdentifier];
    MEMORY[0x19EB01DE0](v28, [a3 reportEndpoint]);
    WebCore::RegistrableDomain::RegistrableDomain(&v29, v28);
    MEMORY[0x19EB01DE0](v26, [a3 destinationURL]);
    v6 = WebCore::RegistrableDomain::RegistrableDomain(&v27, v26);
    v7 = WTF::applicationBundleIdentifier(&v25, v6);
    WTF::WallTime::now(v7);
    v30[0] = v5;
    v10 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    v31 = v10;
    v11 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
    }

    v32 = v11;
    v33 = v9;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v48 = 0;
    v45 = 0u;
    v46 = 0u;
    v47 = 0;
    v12 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      v13 = v25;
      v49 = v12;
      v25 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }
    }

    else
    {
      v49 = 0;
    }

    v15 = v27;
    v27 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v8);
    }

    v16 = v26[0];
    v26[0] = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v8);
    }

    v17 = v29;
    v29 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v8);
    }

    v18 = v28[0];
    v28[0] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v8);
    }

    m_ptr = self->_page.m_ptr;
    MEMORY[0x19EB02040](&v24, [a3 sourceDescription]);
    MEMORY[0x19EB02040](&v23, [a3 purchaser]);
    WebKit::WebPageProxy::setPrivateClickMeasurement(m_ptr, v30, &v24, &v23);
    v21 = v23;
    v23 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }

    v22 = v24;
    v24 = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v20);
      }
    }

    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v30, v20);
  }

  else
  {
    v14 = (*(self->_page.m_ptr + 4) + 1544);

    std::__optional_destruct_base<WebKit::PrivateClickMeasurementAndMetadata,false>::reset[abi:sn200100](v14, a2);
  }
}

- (UIEventAttribution)_uiEventAttribution
{
  WebKit::WebPageProxy::privateClickMeasurementEventAttribution(self->_page.m_ptr, v29);
  if (v33 != 1)
  {
    return 0;
  }

  v2 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
  }

  v26 = v2;
  v34[0] = "https://";
  v34[1] = 9;
  result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(v34, &v26, &v27);
  if (v27)
  {
    MEMORY[0x19EB01DD0](v28, &v27, 0);
    v5 = v27;
    v27 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    v6 = v26;
    v26 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = objc_alloc(MEMORY[0x1E69DC9F0]);
    v8 = v29[0];
    WTF::URL::createCFURL(v34, v28);
    v9 = v34[0];
    v10 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v27, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v27 = &stru_1F1147748;
      v13 = &stru_1F1147748;
    }

    v14 = v27;
    v15 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v25, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v25 = &stru_1F1147748;
      v17 = &stru_1F1147748;
    }

    v18 = [v7 initWithSourceIdentifier:v8 destinationURL:v9 sourceDescription:v14 purchaser:v25];
    v12 = v18;
    if (v18)
    {
      v20 = v18;
    }

    v21 = v25;
    v25 = 0;
    if (v21)
    {
    }

    v22 = v27;
    v27 = 0;
    if (v22)
    {
    }

    v23 = v34[0];
    v34[0] = 0;
    if (v23)
    {
    }

    v24 = v28[0];
    v28[0] = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v19);
      if (!v15)
      {
        goto LABEL_34;
      }
    }

    else if (!v15)
    {
      goto LABEL_34;
    }

    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v19);
    }

LABEL_34:
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v19);
      if (v2)
      {
LABEL_37:
        if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v2, v19);
        }
      }
    }

    else if (v2)
    {
      goto LABEL_37;
    }

    return v12;
  }

  __break(0xC471u);
  return result;
}

- (void)_setEphemeralUIEventAttribution:(id)a3 forApplicationWithBundleID:(id)a4
{
  if (a3)
  {
    v7 = [a3 sourceIdentifier];
    MEMORY[0x19EB01DE0](v29, [a3 reportEndpoint]);
    WebCore::RegistrableDomain::RegistrableDomain(&v30, v29);
    MEMORY[0x19EB01DE0](v27, [a3 destinationURL]);
    WebCore::RegistrableDomain::RegistrableDomain(&v28, v27);
    v8 = MEMORY[0x19EB02040](&v26, a4);
    WTF::WallTime::now(v8);
    v31[0] = v7;
    v11 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
    }

    v32 = v11;
    v12 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    }

    v33 = v12;
    v34 = v10;
    v35 = 1;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v49 = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    v13 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      v14 = v26;
      v50 = v13;
      v26 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v9);
      }
    }

    else
    {
      v50 = 0;
    }

    v16 = v28;
    v28 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v9);
    }

    v17 = v27[0];
    v27[0] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v9);
    }

    v18 = v30;
    v30 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v9);
    }

    v19 = v29[0];
    v29[0] = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v9);
    }

    m_ptr = self->_page.m_ptr;
    MEMORY[0x19EB02040](&v25, [a3 sourceDescription]);
    MEMORY[0x19EB02040](&v24, [a3 purchaser]);
    WebKit::WebPageProxy::setPrivateClickMeasurement(m_ptr, v31, &v25, &v24);
    v22 = v24;
    v24 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    v23 = v25;
    v25 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }
    }

    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v31, v21);
  }

  else
  {
    v15 = (*(self->_page.m_ptr + 4) + 1544);

    std::__optional_destruct_base<WebKit::PrivateClickMeasurementAndMetadata,false>::reset[abi:sn200100](v15, a2);
  }
}

- (CGRect)_contentVisibleRect
{
  [(WKWebView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(WKWebView *)self _currentContentView];

  [(WKWebView *)self convertRect:v11 toView:v4, v6, v8, v10];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGSize)_minimumLayoutSizeOverride
{
  p_overriddenLayoutParameters = &self->_overriddenLayoutParameters;
  if (!self->_overriddenLayoutParameters.__engaged_)
  {
    p_overriddenLayoutParameters = MEMORY[0x1E695F060];
  }

  width = p_overriddenLayoutParameters->var0.__val_.viewLayoutSize.width;
  height = p_overriddenLayoutParameters->var0.__val_.viewLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_minimumUnobscuredSizeOverride
{
  p_height = &self->_overriddenLayoutParameters.var0.__val_.minimumUnobscuredSize.height;
  if (self->_overriddenLayoutParameters.__engaged_)
  {
    p_minimumUnobscuredSize = &self->_overriddenLayoutParameters.var0.__val_.minimumUnobscuredSize;
  }

  else
  {
    p_minimumUnobscuredSize = MEMORY[0x1E695F060];
  }

  if (!self->_overriddenLayoutParameters.__engaged_)
  {
    p_height = (MEMORY[0x1E695F060] + 8);
  }

  v4 = *p_height;
  width = p_minimumUnobscuredSize->width;
  result.height = v4;
  result.width = width;
  return result;
}

- (CGSize)_maximumUnobscuredSizeOverride
{
  p_height = &self->_overriddenLayoutParameters.var0.__val_.maximumUnobscuredSize.height;
  if (self->_overriddenLayoutParameters.__engaged_)
  {
    p_maximumUnobscuredSize = &self->_overriddenLayoutParameters.var0.__val_.maximumUnobscuredSize;
  }

  else
  {
    p_maximumUnobscuredSize = MEMORY[0x1E695F060];
  }

  if (!self->_overriddenLayoutParameters.__engaged_)
  {
    p_height = (MEMORY[0x1E695F060] + 8);
  }

  v4 = *p_height;
  width = p_maximumUnobscuredSize->width;
  result.height = v4;
  result.width = width;
  return result;
}

- (void)_setObscuredInsetEdgesAffectedBySafeArea:(unint64_t)a3
{
  if (self->_obscuredInsetEdgesAffectedBySafeArea != a3)
  {
    self->_obscuredInsetEdgesAffectedBySafeArea = a3;
    [(WKWebView *)self _scheduleVisibleContentRectUpdate];

    [(WKWebView *)self _updateFixedColorExtensionViewFrames];
  }
}

- (UIEdgeInsets)_unobscuredSafeAreaInsets
{
  top = self->_unobscuredSafeAreaInsets.top;
  left = self->_unobscuredSafeAreaInsets.left;
  bottom = self->_unobscuredSafeAreaInsets.bottom;
  right = self->_unobscuredSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setUnobscuredSafeAreaInsets:(UIEdgeInsets)a3
{
  self->_haveSetUnobscuredSafeAreaInsets = 1;
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_unobscuredSafeAreaInsets.top, v3), vceqq_f64(*&self->_unobscuredSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_unobscuredSafeAreaInsets = a3;
    [(WKWebView *)self _scheduleVisibleContentRectUpdate];
  }
}

- (void)_setInterfaceOrientationOverride:(int64_t)a3
{
  if (!self->_overridesInterfaceOrientation || self->_interfaceOrientationOverride != a3)
  {
    self->_overridesInterfaceOrientation = 1;
    self->_interfaceOrientationOverride = a3;
    if (![(WKWebView *)self _shouldDeferGeometryUpdates])
    {
      v4 = self->_interfaceOrientationOverride - 2;
      if (v4 > 2)
      {
        v5 = 0;
      }

      else
      {
        v5 = dword_19E703870[v4];
      }

      [(WKWebView *)self _dispatchSetDeviceOrientation:v5];
    }
  }
}

- (NSData)_dataForDisplayedPDF
{
  if (![(WKWebView *)self _isDisplayingPDF])
  {
    return 0;
  }

  m_ptr = self->_customContentView.m_ptr;

  return [(WKWebViewContentProvider *)m_ptr web_dataRepresentation];
}

- (NSString)_suggestedFilenameForDisplayedPDF
{
  if (![(WKWebView *)self _isDisplayingPDF])
  {
    return 0;
  }

  m_ptr = self->_customContentView.m_ptr;

  return [(WKWebViewContentProvider *)m_ptr web_suggestedFilename];
}

- (void)_setDragInteractionPolicy:(unint64_t)a3
{
  if (self->_dragInteractionPolicy != a3)
  {
    self->_dragInteractionPolicy = a3;
    [(WKContentView *)self->_contentView.m_ptr _didChangeDragInteractionPolicy];
  }
}

- (CGRect)_uiTextCaretRect
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

- (CGPoint)_convertPointFromContentsToView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(WKWebView *)self _currentContentView];

  [(WKWebView *)self convertPoint:v6 fromView:x, y];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)_convertPointFromViewToContents:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(WKWebView *)self _currentContentView];

  [(WKWebView *)self convertPoint:v6 toView:x, y];
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)_doAfterNextStablePresentationUpdate:(id)a3
{
  v5 = [(WKWebView *)self usesStandardContentView];
  if (v5)
  {
    v6 = _Block_copy(a3);
    m_ptr = self->_stableStatePresentationUpdateCallbacks.m_ptr;
    if (m_ptr)
    {
      [(NSMutableArray *)m_ptr addObject:v6];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v6, 0}];
      v11 = self->_stableStatePresentationUpdateCallbacks.m_ptr;
      self->_stableStatePresentationUpdateCallbacks.m_ptr = v10;
      if (v11)
      {
      }

      [(WKWebView *)self _firePresentationUpdateForPendingStableStatePresentationCallbacks];
    }

    _Block_release(v6);
  }

  else
  {
    WTF::RunLoop::mainSingleton(v5);
    v8 = _Block_copy(a3);
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F10FD508;
    v9[1] = v8;
    v12 = v9;
    WTF::RunLoop::dispatch();
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    _Block_release(0);
  }
}

- (void)_setFont:(id)a3 sender:(id)a4
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _setFontForWebView:a3 sender:a4];
  }
}

- (void)_setFontSize:(double)a3 sender:(id)a4
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _setFontSizeForWebView:a4 sender:a3];
  }
}

- (void)_setTextColor:(id)a3 sender:(id)a4
{
  if ([(WKWebView *)self usesStandardContentView])
  {
    m_ptr = self->_contentView.m_ptr;

    [(WKContentView *)m_ptr _setTextColorForWebView:a3 sender:a4];
  }
}

- (void)_detectDataWithTypes:(unint64_t)a3 completionHandler:(id)a4
{
  v4 = a3;
  m_ptr = self->_page.m_ptr;
  v7 = _Block_copy(a4);
  v8 = self->_page.m_ptr;
  if (v8)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v8 + 6, v8 + 16);
    v8 = *(v8 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
    }
  }

  v9 = WTF::fastMalloc(0x18);
  *v9 = &unk_1F10FD530;
  v9[1] = v7;
  v9[2] = v8;
  v11 = v9;
  WebKit::WebPageProxy::detectDataInAllFrames(m_ptr, v4 & 0x7F, &v11);
  v10 = v11;
  v11 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Block_release(0);
}

- (void)_requestActivatedElementAtPosition:(CGPoint)a3 completionBlock:(id)a4
{
  v17 = a3;
  WebCore::FloatPoint::FloatPoint(v16, &v17);
  v6 = roundf(v16[0]);
  v7 = 0x80000000;
  if (v6 > -2147500000.0)
  {
    v7 = v6;
  }

  if (v6 < 2147500000.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x7FFFFFFFLL;
  }

  v9 = roundf(v16[1]);
  v10 = 0x8000000000000000;
  if (v9 > -2147500000.0)
  {
    v10 = v9 << 32;
  }

  if (v9 < 2147500000.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x7FFFFFFF00000000;
  }

  m_ptr = self->_contentView.m_ptr;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __78__WKWebView_WKPrivateIOS___requestActivatedElementAtPosition_completionBlock___block_invoke;
  v14[3] = &__block_descriptor_40_e8_32c92_ZTSKZ78__WKWebView_WKPrivateIOS___requestActivatedElementAtPosition_completionBlock__E4__31_e5242_v536__0_InteractionInformationAtPosition__InteractionInformationRequest__IntPoint_ii_BBBBBBB_B_optional_BOOL_____cB_B_CBBBBBBBBBBBBB_Markable_WebCore::ProcessQualified_WTF::ObjectIdentifierGeneric_WebCore::ScrollingNodeIDType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long____WTF::MarkableTraits_WebCore::ProcessQualified_WTF::ObjectIdentifierGeneric_WebCore::ScrollingNodeIDType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long______ProcessQualified_WTF::ObjectIdentifierGeneric_WebCore::ScrollingNodeIDType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long____ObjectIdentifierGeneric_WebCore::ScrollingNodeIDType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long__Q__ObjectIdentifierGeneric_WebCore::ProcessIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long__Q___BBBBBB_FloatPoint_ff__URL__String__RefPtr_WTF::StringImpl__WTF::RawPtrTraits_WTF::StringImpl___WTF::DefaultRefDerefTraits_WTF::StringImpl_____StringImpl___b1b1b1b3b26IIIIIII__URL__String__RefPtr_WTF::StringImpl__WTF::RawPtrTraits_WTF::StringImpl___WTF::DefaultRefDerefTraits_WTF::StringImpl_____StringImpl___b1b1b1b3b26IIIIIII__String__RefPtr_WTF::StringImpl__WTF::RawPtrTraits_WTF::StringImpl___WTF::DefaultRefDerefTraits_WTF::StringImpl_____StringImpl____String__RefPtr_WTF::StringImpl__WTF::RawPtrTraits_WTF::StringImpl___WTF::DefaultRefDerefTraits_WTF::StringImpl_____StringImpl____String__RefPtr_WTF::StringImpl__WTF::RawPtrTraits_WTF::StringImpl___WTF::DefaultRefDerefTraits_WTF::StringImpl_____StringImpl____IntRect__IntPoint_ii__IntSize_ii___RefPtr_WebCore::ShareableBitmap__WTF::RawPtrTraits_WebCore::ShareableBitmap___WTF::DefaultRefDerefTraits_WebCore::ShareableBitmap_____ShareableBitmap___String__RefPtr_WTF::StringImpl__WTF::RawPtrTraits_WTF::StringImpl___WTF::DefaultRefDerefTraits_WTF::StringImpl_____StringImpl____String__RefPtr_WTF::StringImpl__WTF::RawPtrTraits_WTF::StringImpl___WTF::DefaultRefDerefTraits_WTF::StringImpl_____StringImpl____CursorContext__FloatRect__FloatPoint_ff__FloatSize_ff___optional_WebCore::Cursor_____c_Cursor_C_RefPtr_WebCore::Image__WTF::RawPtrTraits_WebCore::Image___WTF::DefaultRefDerefTraits_WebCore::Image_____Image___IntPoint_ii__v__B_BB__RefPtr_WebCore::TextIndicator__WTF::RawPtrTraits_WebCore::TextIndicator___WTF::DefaultRefDerefTraits_WebCore::TextIndicator_____TextIndicator___String__RefPtr_WTF::StringImpl__WTF::RawPtrTraits_WTF::StringImpl___WTF::DefaultRefDerefTraits_WTF::StringImpl_____StringImpl____RetainPtr_NSArray_____IntRect__IntPoint_ii__IntSize_ii___optional_WebCore::ElementContext_____c_ElementContext__FloatRect__FloatPoint_ff__FloatSize_ff___Markable_WTF::ObjectIdentifierGeneric_WebCore::PageIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long___WTF::MarkableTraits_WTF::ObjectIdentifierGeneric_WebCore::PageIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long_____ObjectIdentifierGeneric_WebCore::PageIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long__Q___Markable_WebCore::ProcessQualified_WTF::UUID___WTF::MarkableTraits_WebCore::ProcessQualified_UUID_____ProcessQualified_WTF::UUID___UUID_T__ObjectIdentifierGeneric_WebCore::ProcessIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long__Q____Markable_WTF::ObjectIdentifierGeneric_WebCore::ElementIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long___WTF::MarkableTraits_WTF::ObjectIdentifierGeneric_WebCore::ElementIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long_____ObjectIdentifierGeneric_WebCore::ElementIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long__Q____B__optional_WebCore::ElementContext_____c_ElementContext__FloatRect__FloatPoint_ff__FloatSize_ff___Markable_WTF::ObjectIdentifierGeneric_WebCore::PageIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long___WTF::MarkableTraits_WTF::ObjectIdentifierGeneric_WebCore::PageIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long_____ObjectIdentifierGeneric_WebCore::PageIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long__Q___Markable_WebCore::ProcessQualified_WTF::UUID___WTF::MarkableTraits_WebCore::ProcessQualified_UUID_____ProcessQualified_WTF::UUID___UUID_T__ObjectIdentifierGeneric_WebCore::ProcessIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long__Q____Markable_WTF::ObjectIdentifierGeneric_WebCore::ElementIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long___WTF::MarkableTraits_WTF::ObjectIdentifierGeneric_WebCore::ElementIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long_____ObjectIdentifierGeneric_WebCore::ElementIdentifierType__WTF::ObjectIdentifierMainThreadAccessTraits_uint64_t___unsigned_long_long__Q____B__Vector_WebCore::ElementAnimationContext__0UL__WTF::CrashOnOverflow__16UL__WTF::FastMalloc____ElementAnimationContext_II__8l;
  v13 = _Block_copy(a4);
  aBlock = _Block_copy(v13);
  [(WKContentView *)m_ptr doAfterPositionInformationUpdate:v14 forRequest:v11 | v8, 16777217];
  _Block_release(v13);
  _Block_release(aBlock);
}

uint64_t __78__WKWebView_WKPrivateIOS___requestActivatedElementAtPosition_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  [_WKActivatedElementInfo activatedElementInfoWithInteractionInformationAtPosition:a2 userInfo:0];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_hideContentUntilNextUpdate
{
  v2 = *(self->_page.m_ptr + 41);
  if (v2)
  {
    (*(*v2 + 208))();
  }
}

- (void)_beginAnimatedResizeWithUpdates:(id)a3
{
  v155 = *MEMORY[0x1E69E9840];
  p_perProcessState = &self->_perProcessState;
  dynamicViewportUpdateMode = self->_perProcessState.dynamicViewportUpdateMode;
  [(WKWebView *)self bounds];
  *&v147 = v7;
  *(&v147 + 1) = v8;
  m_ptr = self->_page.m_ptr;
  v148.width = v9;
  v148.height = v10;
  v12 = *(m_ptr + 4);
  v13 = 0;
  v139 = 0;
  if (v12[348].i8[0] == 1)
  {
    v13 = v12[327];
    v139 = v12[328];
  }

  v138 = v13;
  v14 = !CGRectIsEmpty(*&v7) || !CGRectIsEmpty(p_perProcessState->animatedResizeOldBounds);
  if ([(WKWebView *)self usesStandardContentView])
  {
    if (p_perProcessState->hasCommittedLoadForMainFrame && v14 && v139.f32[0] > 0.0)
    {
      v15 = v139.f32[1];
      if (v139.f32[1] > 0.0 && !p_perProcessState->liveResizeParameters.__engaged_)
      {
        if (!-[WKWebView _canBeginAutomaticLiveResize](self, "_canBeginAutomaticLiveResize") || (v18 = [objc_msgSend(-[WKWebView window](self "window")], (objc_opt_respondsToSelector() & 1) == 0) || (objc_msgSend(v18, "isInteractivelyResizing") & 1) == 0)
        {
          if (*(self->_page.m_ptr + 548) != 1 || ![(WKWebView *)self _isDisplayingPDF])
          {
            v19 = qword_1ED641490;
            if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(self->_page.m_ptr + 5);
              LODWORD(buf.a) = 134218240;
              *(&buf.a + 4) = self;
              WORD2(buf.b) = 2048;
              *(&buf.b + 6) = v20;
              _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _beginAnimatedResizeWithUpdates:]", &buf, 0x16u);
            }

            p_animatedResizeOldBounds = &p_perProcessState->animatedResizeOldBounds;
            v157.origin.x = p_perProcessState->animatedResizeOldBounds.origin.x;
            p_perProcessState->dynamicViewportUpdateMode = 1;
            v157.origin.y = p_perProcessState->animatedResizeOldBounds.origin.y;
            v157.size.width = p_perProcessState->animatedResizeOldBounds.size.width;
            v157.size.height = p_perProcessState->animatedResizeOldBounds.size.height;
            if (!CGRectIsEmpty(v157))
            {
              size = p_perProcessState->animatedResizeOldBounds.size;
              v147 = *p_animatedResizeOldBounds;
              v148 = size;
              animatedResizeOldMinimumEffectiveDeviceWidth = self->_animatedResizeOldMinimumEffectiveDeviceWidth;
              animatedResizeOldOrientation = self->_animatedResizeOldOrientation;
              v129 = *&self->_animatedResizeOldObscuredInsets.top;
              v130 = *&self->_animatedResizeOldObscuredInsets.bottom;
              *p_animatedResizeOldBounds = 0u;
              p_perProcessState->animatedResizeOldBounds.size = 0u;
              goto LABEL_34;
            }

            [(WKWebView *)self _minimumEffectiveDeviceWidth];
            animatedResizeOldMinimumEffectiveDeviceWidth = v22;
            if (self->_overridesInterfaceOrientation)
            {
              v23 = self->_interfaceOrientationOverride - 2;
              if (v23 >= 3)
              {
                animatedResizeOldOrientation = 0;
                goto LABEL_33;
              }

              v24 = &dword_19E703870[v23];
            }

            else
            {
              v24 = (self->_page.m_ptr + 540);
            }

            animatedResizeOldOrientation = *v24;
LABEL_33:
            v129 = *&self->_obscuredInsets.top;
            v130 = *&self->_obscuredInsets.bottom;
LABEL_34:
            [(WKWebView *)self activeViewLayoutSize:&v147];
            v124 = v27;
            v125 = v26;
            if (self->_overriddenLayoutParameters.__engaged_)
            {
              p_minimumUnobscuredSize = &self->_overriddenLayoutParameters.var0.__val_.minimumUnobscuredSize;
            }

            else
            {
              p_minimumUnobscuredSize = &v148;
            }

            WebCore::FloatSize::FloatSize(&buf, p_minimumUnobscuredSize);
            a = buf.a;
            if (self->_overriddenLayoutParameters.__engaged_)
            {
              p_maximumUnobscuredSize = &self->_overriddenLayoutParameters.var0.__val_.maximumUnobscuredSize;
            }

            else
            {
              p_maximumUnobscuredSize = &v148;
            }

            WebCore::FloatSize::FloatSize(&buf, p_maximumUnobscuredSize);
            v30 = buf.a;
            (*(a3 + 2))(a3);
            memset(&v146, 0, sizeof(v146));
            [(WKWebView *)self bounds];
            v146.origin.x = v31;
            v146.origin.y = v32;
            v146.size.width = v33;
            v146.size.height = v34;
            [(WKWebView *)self _minimumEffectiveDeviceWidth];
            v126 = v35;
            [(WKWebView *)self activeViewLayoutSize:&v146];
            v37 = v36;
            v137 = v38;
            if (self->_overriddenLayoutParameters.__engaged_)
            {
              p_size = &self->_overriddenLayoutParameters.var0.__val_.minimumUnobscuredSize;
            }

            else
            {
              p_size = &v146.size;
            }

            WebCore::FloatSize::FloatSize(&buf, p_size);
            v135 = buf.a;
            if (self->_overriddenLayoutParameters.__engaged_)
            {
              v40 = &self->_overriddenLayoutParameters.var0.__val_.maximumUnobscuredSize;
            }

            else
            {
              v40 = &v146.size;
            }

            WebCore::FloatSize::FloatSize(&buf, v40);
            if (self->_overridesInterfaceOrientation)
            {
              v41 = self->_interfaceOrientationOverride - 2;
              if (v41 >= 3)
              {
                v134 = 0;
                v43 = 0x1EB016000uLL;
                goto LABEL_52;
              }

              v42 = &dword_19E703870[v41];
            }

            else
            {
              v42 = (self->_page.m_ptr + 540);
            }

            v43 = 0x1EB016000;
            v134 = *v42;
LABEL_52:
            v136 = buf.a;
            v44 = (self + *(v43 + 2356));
            v46 = *v44;
            v45 = v44[1];
            v47 = v44->f64[1] + v146.origin.x;
            v48 = v44->f64[0] + v146.origin.y;
            v145.origin.x = v47;
            v145.origin.y = v48;
            v121 = v46;
            v122 = v45;
            v49 = vaddq_f64(v46, v45);
            v128 = vsubq_f64(v146.size, vextq_s8(v49, v49, 8uLL));
            v145.size = v128;
            [(WKContentView *)self->_contentView.m_ptr bounds];
            v51 = v50;
            v53 = v52;
            v55 = v54;
            v127 = v56;
            if (CGRectIsEmpty(v146) || v37 <= 0.0 || v137 <= 0.0 || (v158.size = v128, v158.origin.x = v47, v158.origin.y = v48, CGRectIsEmpty(v158)) || (v159.origin.x = v51, v159.origin.y = v53, v159.size.width = v55, v159.size.height = v127, CGRectIsEmpty(v159)))
            {
              if (CGRectIsEmpty(v146))
              {
                v57 = v148;
                *p_animatedResizeOldBounds = v147;
                p_perProcessState->animatedResizeOldBounds.size = v57;
                self->_animatedResizeOldMinimumEffectiveDeviceWidth = animatedResizeOldMinimumEffectiveDeviceWidth;
                self->_animatedResizeOldOrientation = animatedResizeOldOrientation;
                *&self->_animatedResizeOldObscuredInsets.top = v129;
                *&self->_animatedResizeOldObscuredInsets.bottom = v130;
                *&p_perProcessState->waitingForEndAnimatedResize = 257;
              }

              else
              {
                [(WKWebView *)self _cancelAnimatedResize];
              }

              [(WKWebView *)self _frameOrBoundsMayHaveChanged];
              if (self->_overriddenLayoutParameters.__engaged_)
              {
                *&v58 = v37;
                *&v59 = v137;
                [(WKWebView *)self _dispatchSetViewLayoutSize:v58, v59];
                v60 = self->_page.m_ptr;
                buf.a = v135;
                WebKit::WebPageProxy::setMinimumUnobscuredSize(v60, &buf);
                v61 = self->_page.m_ptr;
                buf.a = v136;
                WebKit::WebPageProxy::setDefaultUnobscuredSize(v61, &buf);
                v62 = self->_page.m_ptr;
                buf.a = v136;
                WebKit::WebPageProxy::setMaximumUnobscuredSize(v62, &buf);
              }

              if (self->_overridesInterfaceOrientation)
              {
                [(WKWebView *)self _dispatchSetDeviceOrientation:v134];
              }
            }

            else if (!dynamicViewportUpdateMode && (v160.origin.y = *(&v147 + 1), v160.size = v148, *&v160.origin.x = v147, CGRectEqualToRect(v160, v146)) && v125 == v37 && v124 == v137 && (v63 = vceq_f32(*&a, *&v135), (v63.i32[0] & v63.i32[1] & 1) != 0) && (v64 = vceq_f32(*&v30, *&v136), (v64.i8[0] & 1) != 0) && (v64.i8[4] & 1) != 0 && animatedResizeOldOrientation == v134 && animatedResizeOldMinimumEffectiveDeviceWidth == v126 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v129, v121), vceqq_f64(v130, v122)), xmmword_19E703830)) & 0xF) == 0)
            {
              [(WKWebView *)self _cancelAnimatedResize];
            }

            else
            {
              v65 = MEMORY[0x1E69792E8];
              v66 = *(MEMORY[0x1E69792E8] + 48);
              v68 = *MEMORY[0x1E69792E8];
              v67 = *(MEMORY[0x1E69792E8] + 16);
              *&self->_resizeAnimationTransformAdjustments.m21 = *(MEMORY[0x1E69792E8] + 32);
              *&self->_resizeAnimationTransformAdjustments.m23 = v66;
              *&self->_resizeAnimationTransformAdjustments.m11 = v68;
              *&self->_resizeAnimationTransformAdjustments.m13 = v67;
              v69 = v65[7];
              v71 = v65[4];
              v70 = v65[5];
              *&self->_resizeAnimationTransformAdjustments.m41 = v65[6];
              *&self->_resizeAnimationTransformAdjustments.m43 = v69;
              *&self->_resizeAnimationTransformAdjustments.m31 = v71;
              *&self->_resizeAnimationTransformAdjustments.m33 = v70;
              [(WKWebView *)self _ensureResizeAnimationView];
              v72 = self->_scrollView.m_ptr;
              v73 = v37 / v55;
              [(WKScrollView *)v72 minimumZoomScale];
              if (v74 >= v73)
              {
                v74 = v37 / v55;
              }

              [(WKScrollView *)v72 setMinimumZoomScale:v74];
              v75 = self->_scrollView.m_ptr;
              [(WKScrollView *)v75 maximumZoomScale];
              if (v73 >= v76)
              {
                v76 = v37 / v55;
              }

              [(WKScrollView *)v75 setMaximumZoomScale:v76];
              if (![(WKWebView *)self _isWindowResizingEnabled]|| (v77 = [(WKWebView *)self _isDisplayingPDF], v78 = v55, v77))
              {
                v78 = v139.f32[0];
                if (v55 <= v139.f32[0])
                {
                  v78 = v55;
                }

                v73 = v37 / v78;
              }

              p_perProcessState->animatedResizeOriginalContentWidth = v78;
              v79 = [-[WKWebView _currentContentView](self "_currentContentView")];
              if (v79)
              {
                [v79 affineTransform];
                v80 = buf.a;
              }

              else
              {
                v80 = 0.0;
              }

              v81 = self->_resizeAnimationView.m_ptr;
              CGAffineTransformMakeScale(&buf, v73 / v80, v73 / v80);
              [(UIView *)v81 setTransform:&buf];
              *&buf.a = vadd_f32(v138, vmul_f32(v139, 0x3F0000003F000000));
              WebCore::FloatPoint::operator CGPoint();
              [(WKWebView *)self convertPoint:self->_contentView.m_ptr fromView:?];
              v133 = v82;
              v140 = v83;
              [(WKScrollView *)self->_scrollView.m_ptr contentOffset];
              v84 = v73;
              v86 = v133 - (v47 + v128.width * 0.5) + v85;
              v88 = v140 - (v48 + v128.height * 0.5) + v87;
              v89 = v55 * v73;
              v90 = v127 * v73;
              if (v89 - v146.size.width + v44[1].f64[1] < v86)
              {
                v86 = v89 - v146.size.width + v44[1].f64[1];
              }

              v91 = v44[1].f64[0];
              v92 = v90 - v146.size.height + v91;
              if (v92 < v88)
              {
                v88 = v90 - v146.size.height + v91;
              }

              v93 = v44->f64[0];
              if (v86 < -v44->f64[1])
              {
                v86 = -v44->f64[1];
              }

              v141 = v86;
              v94 = -v93;
              if (v88 >= -v93)
              {
                v94 = v88;
              }

              if (v127 + -1.0 >= (v138.f32[1] + v15))
              {
                v95 = v94;
              }

              else
              {
                v95 = v92;
              }

              if (v138.f32[1] < 1.0)
              {
                [(WKWebView *)self _initialContentOffsetForScrollView];
                v95 = v96;
              }

              v97 = self->_page.m_ptr;
              v98 = 824;
              if (*(v97 + 832))
              {
                v98 = 828;
              }

              [(WKScrollView *)self->_scrollView.m_ptr setContentSize:floor(v89 * *(v97 + v98)) / *(v97 + v98), floor(v90 * *(v97 + v98)) / *(v97 + v98)];
              [(WKScrollView *)self->_scrollView.m_ptr setContentOffset:v141, v95];
              [(WKWebView *)self convertRect:self->_contentView.m_ptr toView:*&v146.origin, *&v146.size];
              v144.origin.x = v99;
              v144.origin.y = v100;
              v144.size.width = v101;
              v144.size.height = v102;
              [(WKWebView *)self convertRect:self->_contentView.m_ptr toView:v47, v48, v128];
              v143.origin.x = v103;
              v143.origin.y = v104;
              v143.size.width = v105;
              v143.size.height = v106;
              [(WKWebView *)self _computedUnobscuredSafeAreaInset];
              v108 = v107;
              v110 = v109;
              v112 = v111;
              v114 = v113;
              if (!p_perProcessState->lastSentViewLayoutSize.__engaged_)
              {
                p_perProcessState->lastSentViewLayoutSize.__engaged_ = 1;
              }

              p_perProcessState->lastSentViewLayoutSize.var0.__val_.m_width = v37;
              p_perProcessState->lastSentViewLayoutSize.var0.__val_.m_height = v137;
              p_perProcessState->lastSentDeviceOrientation.var0.__val_ = v134;
              p_perProcessState->lastSentDeviceOrientation.__engaged_ = 1;
              p_perProcessState->lastSentMinimumEffectiveDeviceWidth.var0.__val_ = v126;
              p_perProcessState->lastSentMinimumEffectiveDeviceWidth.__engaged_ = 1;
              v115 = self->_page.m_ptr;
              *&buf.a = __PAIR64__(LODWORD(v137), LODWORD(v37));
              *&v116 = v135;
              *(&v116 + 1) = v136;
              *&buf.b = v116;
              WebCore::FloatRect::FloatRect(&buf.d, &v144);
              WebCore::FloatRect::FloatRect(&buf.ty, &v143);
              WebCore::FloatRect::FloatRect(v150, &v145);
              *&v150[4] = v108;
              *&v150[5] = v110;
              *&v150[6] = v112;
              *&v150[7] = v114;
              v151 = v84;
              v152 = v134;
              v153 = v126;
              v117 = self->_currentDynamicViewportSizeUpdateID + 1;
              self->_currentDynamicViewportSizeUpdateID = v117;
              v154 = v117;
              WebKit::WebPageProxy::dynamicViewportSizeUpdate(v115, &buf);
              v118 = *(self->_page.m_ptr + 41);
              if (v118)
              {
                WebCore::IntSize::IntSize(&buf, &v146.size);
                v142 = 0;
                WebKit::DrawingAreaProxy::setSize(v118, &buf, &v142, v119, v120);
              }

              *&p_perProcessState->waitingForEndAnimatedResize = 257;
              [(WKWebView *)self _updateFixedColorExtensionViewFrames];
            }

            return;
          }
        }
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = self->_customContentView.m_ptr;

    [(WKWebViewContentProvider *)v16 web_beginAnimatedResizeWithUpdates:a3];
  }

  else
  {
    v17 = *(a3 + 2);

    v17(a3);
  }
}

- (void)_endAnimatedResize
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(self->_page.m_ptr + 5);
    dynamicViewportUpdateMode = self->_perProcessState.dynamicViewportUpdateMode;
    v6 = 134218496;
    v7 = self;
    v8 = 2048;
    v9 = v4;
    v10 = 1024;
    v11 = dynamicViewportUpdateMode;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _endAnimatedResize] dynamicViewportUpdateMode %d", &v6, 0x1Cu);
  }

  self->_perProcessState.waitingForEndAnimatedResize = 0;
  if (!self->_perProcessState.waitingForCommitAfterAnimatedResize)
  {
    [(WKWebView *)self _didCompleteAnimatedResize];
  }
}

- (void)_resizeWhileHidingContentWithUpdates:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(self->_page.m_ptr + 5);
    v7 = 134218240;
    v8 = self;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p (pageProxyID=%llu) [WKWebView _resizeWhileHidingContentWithUpdates:]", &v7, 0x16u);
  }

  [(WKWebView *)self _beginAnimatedResizeWithUpdates:a3];
  if (self->_perProcessState.dynamicViewportUpdateMode == 1)
  {
    [(WKContentView *)self->_contentView.m_ptr setHidden:1];
    self->_perProcessState.dynamicViewportUpdateMode = 2;
    self->_perProcessState.waitingForEndAnimatedResize = 0;
  }
}

- (void)_setSuppressSoftwareKeyboard:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WKWebView;
  [(WKWebView *)&v4 _setSuppressSoftwareKeyboard:a3];
  [(WKContentView *)self->_contentView.m_ptr updateSoftwareKeyboardSuppressionStateFromWebView];
}

- (void)_snapshotRectAfterScreenUpdates:(BOOL)a3 rectInViewCoordinates:(CGRect)a4 intoImageOfWidth:(double)a5 completionHandler:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  if ([(WKWebView *)self _shouldDeferGeometryUpdates])
  {
    if (self)
    {
      v14 = self;
    }

    v15 = _Block_copy(a6);
    p_callbacksDeferredDuringResize = &self->_callbacksDeferredDuringResize;
    m_size = self->_callbacksDeferredDuringResize.m_size;
    if (m_size == self->_callbacksDeferredDuringResize.m_capacity)
    {
      v18 = m_size + (m_size >> 1);
      if (v18 <= m_size + 1)
      {
        v18 = m_size + 1;
      }

      if (v18 <= 0x10)
      {
        v19 = 16;
      }

      else
      {
        v19 = v18;
      }

      WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&self->_callbacksDeferredDuringResize, v19);
      m_size = self->_callbacksDeferredDuringResize.m_size;
      m_buffer = p_callbacksDeferredDuringResize->m_buffer;
      v21 = WTF::fastMalloc(0x48);
    }

    else
    {
      m_buffer = p_callbacksDeferredDuringResize->m_buffer;
      v21 = WTF::fastMalloc(0x48);
    }

    *v21 = &unk_1F10FD558;
    *(v21 + 8) = self;
    *(v21 + 16) = v12;
    *(v21 + 24) = x;
    *(v21 + 32) = y;
    *(v21 + 40) = width;
    *(v21 + 48) = height;
    *(v21 + 56) = a5;
    *(v21 + 64) = v15;
    m_buffer[m_size] = v21;
    ++self->_callbacksDeferredDuringResize.m_size;

    _Block_release(0);
  }

  else
  {
    v55 = x;
    v56 = y;
    [(WKWebView *)self convertRect:[(WKWebView *)self _currentContentView] toView:x, y, width, height];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    *v63 = v22;
    *&v63[1] = v24;
    *&v63[2] = v26;
    *&v63[3] = v28;
    v30 = a5 / v26;
    v31 = v28 * (a5 / v26);
    v62.width = a5;
    v62.height = v31;
    if ([objc_opt_class() web_requiresCustomSnapshotting])
    {
      m_ptr = self->_customContentView.m_ptr;

      [(WKWebViewContentProvider *)m_ptr web_snapshotRectInContentViewCoordinates:a6 snapshotWidth:v23 completionHandler:v25, v27, v29, a5];
    }

    else if ([objc_msgSend(objc_msgSend(-[WKWebView window](self "window")] && (objc_msgSend(-[WKWebView window](self, "window"), "isHidden") & 1) == 0)
    {
      kdebug_trace();
      v37 = WebCore::FloatSize::FloatSize(&v60, &v62);
      WebCore::DestinationColorSpace::SRGB(v37);
      WebCore::IOSurface::create();
      if (v61)
      {
        if (v12)
        {
          [MEMORY[0x1E6979518] synchronize];
        }

        memset(&v60, 0, sizeof(v60));
        CATransform3DMakeScale(&v60, a5 / width, a5 / width, 1.0);
        v58 = v60;
        CATransform3DTranslate(&v59, &v58, -v55, -v56, 0.0);
        v60 = v59;
        [objc_msgSend(-[WKWebView layer](self "layer")];
        [(WKWebView *)self layer];
        CARenderServerRenderDisplayLayerWithTransformAndTimeOffset();
        v38 = v61;
        v61 = 0;
        v57 = v38;
        WebCore::IOSurface::sinkIntoImage();
        (*(a6 + 2))(a6, *&v59.m11);
        m11 = v59.m11;
        v59.m11 = 0.0;
        if (m11 != 0.0)
        {
          CFRelease(*&m11);
        }

        if (v57)
        {
          WebCore::IOSurface::~IOSurface(v57);
          bmalloc::api::tzoneFree(v40, v41);
        }
      }

      else
      {
        (*(a6 + 2))(a6, 0);
      }

      v52 = v61;
      v61 = 0;
      if (v52)
      {
        WebCore::IOSurface::~IOSurface(v52);
        bmalloc::api::tzoneFree(v53, v54);
      }

      kdebug_trace();
    }

    else if (self->_customContentView.m_ptr)
    {
      v65.width = a5;
      v65.height = v31;
      UIGraphicsBeginImageContextWithOptions(v65, 1, 1.0);
      v34 = self->_customContentView.m_ptr;
      [-[WKWebViewContentProvider backgroundColor](v34 "backgroundColor")];
      v66.origin.x = 0.0;
      v66.origin.y = 0.0;
      v66.size.width = a5;
      v66.size.height = v31;
      UIRectFill(v66);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextTranslateCTM(CurrentContext, -(v23 * v30), -(v25 * v30));
      CGContextScaleCTM(CurrentContext, v30, v30);
      [-[WKWebViewContentProvider layer](v34 "layer")];
      v36 = [(UIImage *)UIGraphicsGetImageFromCurrentImageContext() CGImage];
      (*(a6 + 2))(a6, v36);

      UIGraphicsEndImageContext();
    }

    else
    {
      v42 = self->_page.m_ptr;
      *&v60.m11 = WebCore::enclosingIntRect(v63, v33);
      v60.m12 = v43;
      WebCore::FloatSize::FloatSize(&v58, &v62);
      v44 = ceilf(*&v58.m11);
      v45 = 0x7FFFFFFFLL;
      v46 = v44;
      if (v44 <= -2147500000.0)
      {
        v46 = 0x80000000;
      }

      if (v44 < 2147500000.0)
      {
        v45 = v46;
      }

      v47 = ceilf(*(&v58.m11 + 1));
      v48 = 0x7FFFFFFF00000000;
      v49 = 0x8000000000000000;
      if (v47 > -2147500000.0)
      {
        v49 = v47 << 32;
      }

      if (v47 < 2147500000.0)
      {
        v48 = v49;
      }

      *&v59.m11 = v48 | v45;
      v50 = _Block_copy(a6);
      v51 = WTF::fastMalloc(0x10);
      *v51 = &unk_1F10FD580;
      *(v51 + 1) = v50;
      v61 = v51;
      WebKit::WebPageProxy::takeSnapshot(v42, &v60, &v59, 32, &v61);
      if (v61)
      {
        (*(*v61 + 8))(v61);
      }

      _Block_release(0);
    }
  }
}

- (void)_overrideLayoutParametersWithMinimumLayoutSize:(CGSize)a3 minimumUnobscuredSizeOverride:(CGSize)a4 maximumUnobscuredSizeOverride:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v9 = a3.height;
  v10 = a3.width;
  v23 = *MEMORY[0x1E69E9840];
  if (a3.width < 0.0 || a3.height < 0.0)
  {
    v12 = qword_1ED641508;
    if (os_log_type_enabled(qword_1ED641508, OS_LOG_TYPE_FAULT))
    {
      v24.width = v10;
      v24.height = v9;
      *buf = 136315394;
      *&buf[4] = "[WKWebView(WKPrivateIOS) _overrideLayoutParametersWithMinimumLayoutSize:minimumUnobscuredSizeOverride:maximumUnobscuredSizeOverride:]";
      *&buf[12] = 2112;
      *&buf[14] = NSStringFromCGSize(v24);
      _os_log_fault_impl(&dword_19D52D000, v12, OS_LOG_TYPE_FAULT, "%s: Error: attempting to override layout parameters with negative width or height: %@", buf, 0x16u);
    }
  }

  *buf = fmax(v10, 0.0);
  *&buf[8] = fmax(v9, 0.0);
  *&buf[16] = v8;
  *&buf[24] = v7;
  v22.width = width;
  v22.height = height;
  engaged = self->_overriddenLayoutParameters.__engaged_;
  v14 = v22;
  self->_overriddenLayoutParameters.var0.__val_.minimumUnobscuredSize = *&buf[16];
  self->_overriddenLayoutParameters.var0.__val_.maximumUnobscuredSize = v14;
  *&self->_overriddenLayoutParameters.var0.__null_state_ = *buf;
  if (!engaged)
  {
    self->_overriddenLayoutParameters.__engaged_ = 1;
  }

  if ([(WKWebView *)self _shouldDispatchOverridenLayoutParametersImmediately])
  {
    WebCore::FloatSize::FloatSize(v20, buf);
    LODWORD(v15) = v20[0];
    LODWORD(v16) = v20[1];
    [(WKWebView *)self _dispatchSetViewLayoutSize:v15, v16];
    m_ptr = self->_page.m_ptr;
    WebCore::FloatSize::FloatSize(v20, &buf[16]);
    WebKit::WebPageProxy::setMinimumUnobscuredSize(m_ptr, v20);
    v18 = self->_page.m_ptr;
    WebCore::FloatSize::FloatSize(v20, &v22);
    WebKit::WebPageProxy::setDefaultUnobscuredSize(v18, v20);
    v19 = self->_page.m_ptr;
    WebCore::FloatSize::FloatSize(v20, &v22);
    WebKit::WebPageProxy::setMaximumUnobscuredSize(v19, v20);
  }
}

- (void)_clearOverrideLayoutParameters
{
  if (self->_overriddenLayoutParameters.__engaged_)
  {
    self->_overriddenLayoutParameters.__engaged_ = 0;
  }

  m_ptr = self->_page.m_ptr;
  v6 = 0;
  WebKit::WebPageProxy::setMinimumUnobscuredSize(m_ptr, &v6);
  v4 = self->_page.m_ptr;
  v6 = 0;
  WebKit::WebPageProxy::setDefaultUnobscuredSize(v4, &v6);
  v5 = self->_page.m_ptr;
  v6 = 0;
  WebKit::WebPageProxy::setMaximumUnobscuredSize(v5, &v6);
}

- (void)_overrideViewportWithArguments:(id)a3
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    if (a3)
    {
      v14[0] = 2;
      __asm { FMOV            V0.4S, #-1.0 }

      *&v14[4] = _Q0;
      *&v14[20] = _Q0;
      *&v14[36] = 0;
      v10 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
      *v10 = MEMORY[0x1E69E9818];
      v10[1] = 50331650;
      v10[2] = WTF::BlockPtr<void ()(NSString *,NSString *,BOOL *)>::fromCallable<viewportArgumentsFromDictionary(NSDictionary<NSString *,NSString *> *)::$_0>(viewportArgumentsFromDictionary(NSDictionary<NSString *,NSString *> *)::$_0)::{lambda(void *,NSString *,NSString *,BOOL *)#1}::__invoke;
      v10[3] = &WTF::BlockPtr<void ()(NSString *,NSString *,BOOL *)>::fromCallable<viewportArgumentsFromDictionary(NSDictionary<NSString *,NSString *> *)::$_0>(viewportArgumentsFromDictionary(NSDictionary<NSString *,NSString *> *)::$_0)::descriptor;
      v10[4] = v14;
      [a3 enumerateKeysAndObjectsUsingBlock:v10];
      _Block_release(v10);
      v11[0] = *v14;
      v11[1] = *&v14[16];
      v12 = *&v14[32];
      v13 = 1;
    }

    else
    {
      LOBYTE(v11[0]) = 0;
      v13 = 0;
    }

    WebKit::WebPageProxy::setOverrideViewportArguments(m_ptr, v11);
  }
}

- (id)_viewForFindUI
{
  v3 = [(WKWebView *)self scrollView];

  return [(WKWebView *)self viewForZoomingInScrollView:v3];
}

- (id)_retainActiveFocusedState
{
  ++self->_activeFocusedStateRetainCount;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = __52__WKWebView_WKPrivateIOS___retainActiveFocusedState__block_invoke;
  v6[3] = &__block_descriptor_40_e8_32c66_ZTSKZ52__WKWebView_WKPrivateIOS___retainActiveFocusedState_E4__36_e5_v8__0l;
  v6[4] = self;
  v2 = [v6 copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)_becomeFirstResponderWithSelectionMovingForward:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  if (a4)
  {
    v6 = _Block_copy(a4);
  }

  else
  {
    v6 = 0;
  }

  m_ptr = self->_contentView.m_ptr;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __93__WKWebView_WKPrivateIOS___becomeFirstResponderWithSelectionMovingForward_completionHandler___block_invoke;
  v8[3] = &__block_descriptor_40_e8_32c107_ZTSKZ93__WKWebView_WKPrivateIOS___becomeFirstResponderWithSelectionMovingForward_completionHandler__E4__37_e8_v12__0B8l;
  v8[4] = v6;
  [(WKContentView *)m_ptr _becomeFirstResponderWithSelectionMovingForward:v4 completionHandler:v8];
}

void __93__WKWebView_WKPrivateIOS___becomeFirstResponderWithSelectionMovingForward_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);

    _Block_release(v3);
  }
}

- (id)_snapshotLayerContentsForBackForwardListItem:(id)a3
{
  v4 = *(self->_page.m_ptr + 89);
  v5 = *(v4 + 16);
  if (!v5 || !*(v5 + 8) || *(v4 + 48) != 1)
  {
    [a3 _item];
    goto LABEL_12;
  }

  v6 = *(v4 + 40);
  if (v6 >= *(v4 + 36))
  {
    goto LABEL_22;
  }

  v8 = *(*(v4 + 24) + 8 * v6);
  if (v8 != [a3 _item])
  {
    goto LABEL_12;
  }

  m_ptr = self->_page.m_ptr;
  v10 = *(m_ptr + 89);
  v11 = *(v10 + 16);
  if (v11 && *(v11 + 8) && *(v10 + 48) == 1)
  {
    v12 = *(v10 + 40);
    if (v12 < *(v10 + 36))
    {
      v13 = *(*(v10 + 24) + 8 * v12);
      goto LABEL_18;
    }

LABEL_22:
    __break(0xC471u);
    JUMPOUT(0x19DBCF1C4);
  }

  v13 = 0;
LABEL_18:
  if (*(m_ptr + 991) == 1)
  {
    {
      byte_1ED6436B0 = 0;
      WebKit::ViewSnapshotStore::singleton(void)::store = 0u;
      *&qword_1ED6436A0 = 0u;
    }

    WebKit::ViewSnapshotStore::recordSnapshot(&WebKit::ViewSnapshotStore::singleton(void)::store, m_ptr, v13);
  }

LABEL_12:
  result = *([a3 _item] + 128);
  if (result)
  {

    return WebKit::ViewSnapshot::asLayerContents(result);
  }

  return result;
}

- (void)_accessibilityRetrieveRectsAtSelectionOffset:(int64_t)a3 withText:(id)a4 completionHandler:(id)a5
{
  m_ptr = self->_contentView.m_ptr;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __99__WKWebView_WKPrivateIOS___accessibilityRetrieveRectsAtSelectionOffset_withText_completionHandler___block_invoke;
  v9[3] = &__block_descriptor_40_e8_32c113_ZTSKZ99__WKWebView_WKPrivateIOS___accessibilityRetrieveRectsAtSelectionOffset_withText_completionHandler__E4__38_e10_v16__0r_v8l;
  v8 = _Block_copy(a5);
  aBlock = _Block_copy(v8);
  [(WKContentView *)m_ptr _accessibilityRetrieveRectsAtSelectionOffset:a3 withText:a4 completionHandler:v9];
  _Block_release(v8);
  _Block_release(aBlock);
}

void __99__WKWebView_WKPrivateIOS___accessibilityRetrieveRectsAtSelectionOffset_withText_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 12)];
    v5 = *(a2 + 12);
    if (v5)
    {
      v6 = *a2;
      v7 = 84 * v5;
      do
      {
        v8 = MEMORY[0x1E696B098];
        v11 = WebCore::SelectionGeometry::rect(v6);
        v12 = v9;
        WebCore::IntRect::operator CGRect();
        v10 = [v8 valueWithCGRect:{v11, v12}];
        if (v10)
        {
          [v4 addObject:v10];
        }

        v6 = (v6 + 84);
        v7 -= 84;
      }

      while (v7);
    }

    (*(*(a1 + 32) + 16))();
    if (v4)
    {
    }
  }
}

- (void)_willOpenAppLink
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    WebKit::WebPageProxy::willOpenAppLink(m_ptr);
  }
}

- (void)_isNavigatingToAppBoundDomain:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FD5A8;
  v5[1] = v4;
  if (*(m_ptr + 1393) == 1)
  {
    v6 = *(m_ptr + 1392);
  }

  else
  {
    v6 = 0;
  }

  v4[2](v4, v6 & 1);
  (*(*v5 + 8))(v5);

  _Block_release(0);
}

- (void)_isForcedIntoAppBoundMode:(id)a3
{
  m_ptr = self->_page.m_ptr;
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FD5D0;
  v5[1] = v4;
  v4[2](v4, *(m_ptr + 1397));
  (*(*v5 + 8))(v5);

  _Block_release(0);
}

- (void)performTextSearchWithQueryString:(id)a3 usingOptions:(id)a4 resultAggregator:(id)a5
{
  v8 = [(WKWebView *)self _searchableObject];

  [v8 performTextSearchWithQueryString:a3 usingOptions:a4 resultAggregator:a5];
}

- (id)findInteraction:(id)a3 sessionForView:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DD140]) initWithSearchableObject:{-[WKWebView _searchableObject](self, "_searchableObject")}];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4
{
  v5 = [(WKWebView *)self _searchableObject:a3];
  m_ptr = self->_contentView.m_ptr;
  if (v5 == m_ptr)
  {

    [(WKContentView *)m_ptr didBeginTextSearchOperation];
  }
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
{
  v5 = [(WKWebView *)self _searchableObject:a3];
  m_ptr = self->_contentView.m_ptr;
  if (v5 == m_ptr)
  {

    [(WKContentView *)m_ptr didEndTextSearchOperation];
  }
}

- (void)_addLayerForFindOverlay
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr && !self->_perProcessState.pendingFindLayerID.m_value.m_object.m_identifier && !self->_perProcessState.committedFindLayerID.m_value.m_object.m_identifier)
  {
    location = 0;
    objc_initWeak(&location, self);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F10FD5F8;
    *(v3 + 8) = 0;
    objc_moveWeak((v3 + 8), &location);
    v6 = v3;
    WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::AddLayerForFindOverlay,WTF::CompletionHandler<void ()(std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>)>>(m_ptr, &v7, &v6);
    v4 = v6;
    v6 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    objc_destroyWeak(&location);
  }
}

- (void)_removeLayerForFindOverlay
{
  if (self->_page.m_ptr && (self->_perProcessState.pendingFindLayerID.m_value.m_object.m_identifier || self->_perProcessState.committedFindLayerID.m_value.m_object.m_identifier))
  {
    self->_perProcessState.pendingFindLayerID = 0u;
    self->_perProcessState.committedFindLayerID = 0u;
    m_ptr = self->_page.m_ptr;
    location = 0;
    objc_initWeak(&location, self);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F10FD620;
    *(v3 + 8) = 0;
    objc_moveWeak((v3 + 8), &location);
    v6 = v3;
    WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::RemoveLayerForFindOverlay,WTF::CompletionHandler<void ()(void)>>(m_ptr, &v7, &v6);
    v4 = v6;
    v6 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    objc_destroyWeak(&location);
  }
}

- (CALayer)_layerForFindOverlay
{
  m_ptr = self->_page.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  p_perProcessState = &self->_perProcessState;
  if (!self->_perProcessState.committedFindLayerID.m_value.m_object.m_identifier)
  {
    return 0;
  }

  v4 = *(m_ptr + 41);
  if (!v4)
  {
    return 0;
  }

  (**v4)(v4, a2);
  if (*(v4 + 36) || !p_perProcessState->committedFindLayerID.m_value.m_object.m_identifier)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBCFB08);
  }

  v5 = *(v4 + 80);
  committedFindLayerID = p_perProcessState->committedFindLayerID;
  v9 = 1;
  v6 = WebKit::RemoteLayerTreeHost::layerForID(v5, &committedFindLayerID);
  (*(*v4 + 8))(v4);
  return v6;
}

- (void)closeFullScreenWindowController
{
  m_ptr = self->_fullScreenWindowController.m_ptr;
  if (m_ptr)
  {
    [(WKFullScreenWindowController *)m_ptr close];
    v4 = self->_fullScreenWindowController.m_ptr;
    self->_fullScreenWindowController.m_ptr = 0;
    if (v4)
    {
    }
  }
}

- (id)fullScreenWindowController
{
  result = self->_fullScreenWindowController.m_ptr;
  if (!result)
  {
    result = [[WKFullScreenWindowController alloc] initWithWebView:self];
    m_ptr = self->_fullScreenWindowController.m_ptr;
    self->_fullScreenWindowController.m_ptr = result;
    if (m_ptr)
    {

      return self->_fullScreenWindowController.m_ptr;
    }
  }

  return result;
}

- (_WKWebViewPrintProvider)_printProvider
{
  m_ptr = self->_customContentView.m_ptr;
  if (!m_ptr)
  {
    m_ptr = self->_contentView.m_ptr;
  }

  if ([(_WKWebViewPrintProvider *)m_ptr conformsToProtocol:&unk_1F11DD208])
  {
    return m_ptr;
  }

  else
  {
    return 0;
  }
}

- (void)_requestTextInputContextsInRect:(CGRect)a3 completionHandler:(id)a4
{
  [(WKWebView *)self convertRect:self->_contentView.m_ptr toView:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  m_ptr = self->_contentView.m_ptr;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = __77__WKWebView_WKTestingIOS___requestTextInputContextsInRect_completionHandler___block_invoke;
  v17[3] = &__block_descriptor_48_e8_32c91_ZTSKZ77__WKWebView_WKTestingIOS___requestTextInputContextsInRect_completionHandler__E4__46_e17_v16__0__NSArray_8l;
  v15 = 0;
  objc_initWeak(&v15, self);
  aBlock = _Block_copy(a4);
  v18 = 0;
  objc_copyWeak(&v18, &v15);
  v19 = _Block_copy(aBlock);
  [(WKContentView *)m_ptr _requestTextInputContextsInRect:v17 completionHandler:v7, v9, v11, v13];
  _Block_release(aBlock);
  objc_destroyWeak(&v15);
  _Block_release(v19);
  objc_destroyWeak(&v18);
}

void __77__WKWebView_WKTestingIOS___requestTextInputContextsInRect_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [a2 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(a2);
          }

          v9 = [*(*(&v20 + 1) + 8 * v8) _textInputContext];
          v24[0] = *v9;
          v10 = v9[1];
          v11 = v9[2];
          v12 = v9[4];
          v24[3] = v9[3];
          v24[4] = v12;
          v24[1] = v10;
          v24[2] = v11;
          WebCore::FloatRect::operator CGRect();
          [WeakRetained convertRect:WeakRetained[82] fromView:?];
          v18.origin.x = v13;
          v18.origin.y = v14;
          v18.size.width = v15;
          v18.size.height = v16;
          WebCore::FloatRect::FloatRect(&v19, &v18);
          v24[0] = v19;
          v17 = [[_WKTextInputContext alloc] _initWithTextInputContext:v24];
          [v5 addObject:v17];
          if (v17)
          {
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [a2 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v6);
    }

    (*(*(a1 + 40) + 16))();
    if (v5)
    {
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    if (!WeakRetained)
    {
      return;
    }
  }
}

- (void)_focusTextInputContext:(id)a3 placeCaretAt:(CGPoint)a4 completionHandler:(id)a5
{
  [(WKWebView *)self convertPoint:self->_contentView.m_ptr toView:a4.x, a4.y];
  m_ptr = self->_contentView.m_ptr;

  [(WKContentView *)m_ptr _focusTextInputContext:a3 placeCaretAt:a5 completionHandler:?];
}

- (BOOL)_mayContainEditableElementsInRect:(CGRect)a3
{
  m_ptr = self->_contentView.m_ptr;
  [(WKWebView *)self convertRect:m_ptr toView:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10.origin.x = v4;
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  WebCore::FloatRect::FloatRect(_20, &v10);
  return WebKit::mayContainEditableElementsInRect(m_ptr, _20, v8);
}

- (CGRect)_inputViewBoundsInWindow
{
  x = self->_inputViewBoundsInWindow.origin.x;
  y = self->_inputViewBoundsInWindow.origin.y;
  width = self->_inputViewBoundsInWindow.size.width;
  height = self->_inputViewBoundsInWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSString)_uiViewTreeAsText
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 256;
  v21 = 0;
  WTF::TextStream::startGroup(&v15);
  WTF::TextStream::operator<<();
  dumpUIView(&v15, &self->super);
  WTF::TextStream::endGroup(&v15);
  WTF::TextStream::release(&v13, &v15);
  v3 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v14, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v14 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  v6 = v14;
  v14 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v14;
    v14 = 0;
    if (v8)
    {
    }
  }

  v9 = v13;
  v13 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  v10 = v16;
  v16 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  v11 = v15;
  v15 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  return v6;
}

- (id)_scrollbarState:(unint64_t)a3 processID:(unint64_t)a4 isVertical:(BOOL)a5
{
  v7 = a3 - 1 < 0xFFFFFFFFFFFFFFFELL && a4 - 1 < 0xFFFFFFFFFFFFFFFELL;
  m_ptr = self->_page.m_ptr;
  v9 = *(*(*(m_ptr + 43) + 32) + 24);
  if (v9)
  {
    if (v7)
    {
      if (*(v9 + 56) != a3 || *(v9 + 64) != a4)
      {
        goto LABEL_18;
      }

LABEL_21:
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 1;
      v31 = 0;
      v32 = 256;
      v33 = 0;
      WTF::TextStream::startGroup(&v27);
      [(WKScrollView *)self->_scrollView.m_ptr showsHorizontalScrollIndicator];
      WTF::TextStream::operator<<();
      WTF::TextStream::endGroup(&v27);
      WTF::TextStream::release(&v25, &v27);
      v13 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v26, v13);
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }

      else
      {
        v26 = &stru_1F1147748;
        v19 = &stru_1F1147748;
      }

      v15 = v26;
      v26 = 0;
      if (v15)
      {
        v20 = v15;
        v21 = v26;
        v26 = 0;
        if (v21)
        {
        }
      }

      v22 = v25;
      v25 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v12);
      }

      v23 = v28;
      v28 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v12);
      }

      v18 = v27;
      v27 = 0;
      if (v18)
      {
        goto LABEL_41;
      }

      return v15;
    }
  }

  else if (!v7)
  {
    goto LABEL_21;
  }

  if (!v7)
  {
    a3 = 0;
  }

LABEL_18:
  v27 = a3;
  v28 = a4;
  LOBYTE(v29) = v7;
  WebKit::WebPageProxy::scrollbarStateForScrollingNodeID(m_ptr, a5, &v25);
  v11 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v26, v11);
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v12);
    }
  }

  else
  {
    v26 = &stru_1F1147748;
    v14 = &stru_1F1147748;
  }

  v15 = v26;
  v26 = 0;
  if (v15)
  {
    v16 = v15;
    v17 = v26;
    v26 = 0;
    if (v17)
    {
    }
  }

  v18 = v25;
  v25 = 0;
  if (v18)
  {
LABEL_41:
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }
  }

  return v15;
}

- (id)_colorExtensionViewForTesting:(unint64_t)a3
{
  v3 = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      p_fixedColorExtensionViews = &self->_fixedColorExtensionViews.m_sides.__elems_[2];
      return p_fixedColorExtensionViews->m_sides.__elems_[0].m_ptr;
    }

    if (a3 == 8)
    {
      p_fixedColorExtensionViews = &self->_fixedColorExtensionViews.m_sides.__elems_[1];
      return p_fixedColorExtensionViews->m_sides.__elems_[0].m_ptr;
    }
  }

  else
  {
    if (a3 == 1)
    {
      p_fixedColorExtensionViews = &self->_fixedColorExtensionViews;
      return p_fixedColorExtensionViews->m_sides.__elems_[0].m_ptr;
    }

    if (a3 == 2)
    {
      p_fixedColorExtensionViews = &self->_fixedColorExtensionViews.m_sides.__elems_[3];
      return p_fixedColorExtensionViews->m_sides.__elems_[0].m_ptr;
    }
  }

  return v3;
}

- (CGRect)_dragCaretRect
{
  WebCore::IntRect::operator CGRect();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_tapHighlightViewRect
{
  [(WKContentView *)self->_contentView.m_ptr tapHighlightViewRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_triggerSystemPreviewActionOnElement:(unint64_t)a3 document:(id)a4 page:(unint64_t)a5
{
  m_ptr = self->_page.m_ptr;
  if (m_ptr)
  {
    v6 = *(m_ptr + 69);
    if (v6)
    {
      WebKit::SystemPreviewController::triggerSystemPreviewActionWithTargetForTesting(v6, a3, a4, a5);
    }
  }
}

- (void)_setDeviceOrientationUserPermissionHandlerForTesting:(id)a3
{
  if (a3)
  {
    v4 = _Block_copy(a3);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F10FD648;
    v5[1] = v4;
    _Block_release(0);
  }

  else
  {
    v5 = 0;
  }

  m_ptr = self->_page.m_ptr;
  v7 = *(m_ptr + 145);
  *(m_ptr + 145) = v5;
  if (v7)
  {
    v8 = *(*v7 + 8);

    v8();
  }
}

- (void)_resetObscuredInsetsForTesting
{
  if ([(WKWebView *)self _haveSetObscuredInsets])
  {

    [(WKWebView *)self _resetObscuredInsets];
  }
}

- (void)_doAfterNextVisibleContentRectAndStablePresentationUpdate:(id)a3
{
  if (self)
  {
    v5 = self;
  }

  v6 = _Block_copy(a3);
  v7 = malloc_type_malloc(0x30uLL, 0x10E0040B46A7B6EuLL);
  *v7 = MEMORY[0x1E69E9818];
  v7[1] = 50331650;
  v7[2] = WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView(WKTestingIOS) _doAfterNextVisibleContentRectAndStablePresentationUpdate:]::$_43>([WKWebView(WKTestingIOS) _doAfterNextVisibleContentRectAndStablePresentationUpdate:]::$_43)::{lambda(void *)#1}::__invoke;
  v7[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView(WKTestingIOS) _doAfterNextVisibleContentRectAndStablePresentationUpdate:]::$_43>([WKWebView(WKTestingIOS) _doAfterNextVisibleContentRectAndStablePresentationUpdate:]::$_43)::descriptor;
  v7[4] = self;
  v7[5] = v6;
  _Block_release(0);
  [(WKWebView *)self _doAfterNextVisibleContentRectUpdate:v7];
  _Block_release(v7);

  _Block_release(0);
}

@end