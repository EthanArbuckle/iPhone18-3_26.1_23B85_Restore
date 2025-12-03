@interface AXQuickSpeak
+ (BOOL)isQuickSpeakSelector:(SEL)selector;
+ (BOOL)quickSpeakClassIsDenied:(id)denied;
+ (id)sharedInstance;
+ (void)initialize;
- (AXLanguageTaggedContent)selectedContent;
- (AXOrator)orator;
- (AXQuickSpeak)init;
- (BOOL)isSpeaking;
- (BOOL)selectedContentIsSpeakable;
- (BOOL)selectedContentRequiresUserChoice;
- (BOOL)spellOutContent;
- (NSString)content;
- (_NSRange)_updatedRangeForComposedCharacters:(_NSRange)characters string:(id)string lastKnownWholeCharacterLocation:(unint64_t)location lastKnownUnicharLocation:(unint64_t)unicharLocation;
- (_NSRange)modifiedRange:(_NSRange)range withString:(id)string;
- (id)_quickSpeakInputInitiator;
- (id)_rectsByUnionSamelineRects:(id)rects;
- (id)_sentenceHighlightOverlapHeightArray;
- (id)_sentenceRects:(id)rects speakingRange:(id)range;
- (id)_sliceRects:(id)rects withSentenceRects:(id)sentenceRects wordRects:(id)wordRects;
- (id)_textSelectionViews;
- (id)_viewsWithBlock:(id)block;
- (void)_handleAppDidEnterBackground:(id)background;
- (void)_handlePauseCallback;
- (void)_handleQuickSpeakHighlight:(id)highlight sentenceRects:(id)rects textRect:(CGRect)rect initiator:(id)initiator;
- (void)_manipulateOtherTextViews:(BOOL)views;
- (void)_quickSpeakTextRects:(id)rects withRange:(_NSRange)range string:(id)string highlightRects:(id)highlightRects sentenceRects:(id)sentenceRects singleTextRect:(CGRect *)rect;
- (void)_quickSpeakUITextInputTextRects:(id)rects withRange:(_NSRange)range string:(id)string highlightRects:(id)highlightRects sentenceRects:(id)sentenceRects singleTextRect:(CGRect *)rect;
- (void)_scrollToTextRect:(CGRect)rect withScrollView:(id)view;
- (void)_willSpeakRange:(_NSRange)range string:(id)string;
- (void)dealloc;
- (void)orator:(id)orator willSpeakRange:(_NSRange)range ofContent:(id)content;
- (void)oratorDidFinishSpeaking:(id)speaking;
- (void)oratorDidResumeSpeaking:(id)speaking;
- (void)pauseAction:(id)action;
- (void)resumeAction:(id)action;
- (void)setContent:(id)content;
- (void)speakAction:(id)action withPreferredLanguage:(id)language;
- (void)speakStatusWithLanguage:(id)language rate:(id)rate;
- (void)stopAction:(id)action;
@end

@implementation AXQuickSpeak

- (AXOrator)orator
{
  orator = self->_orator;
  if (!orator)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDBDF88]);
    v5 = self->_orator;
    self->_orator = v4;

    [(AXOrator *)self->_orator setDelegate:self];
    orator = self->_orator;
  }

  return orator;
}

- (NSString)content
{
  orator = [(AXQuickSpeak *)self orator];
  content = [orator content];

  return content;
}

- (void)setContent:(id)content
{
  contentCopy = content;
  [(AXQuickSpeak *)self setPaused:0];
  orator = [(AXQuickSpeak *)self orator];
  [orator setContent:contentCopy];
}

- (AXLanguageTaggedContent)selectedContent
{
  orator = [(AXQuickSpeak *)self orator];
  selectedContent = [orator selectedContent];

  return selectedContent;
}

- (BOOL)spellOutContent
{
  orator = [(AXQuickSpeak *)self orator];
  spellOutContent = [orator spellOutContent];

  return spellOutContent;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXQuickSpeak sharedInstance];
  }

  v3 = sharedInstance__shared;

  return v3;
}

uint64_t __30__AXQuickSpeak_sharedInstance__block_invoke()
{
  sharedInstance__shared = objc_alloc_init(AXQuickSpeak);

  return MEMORY[0x2A1C71028]();
}

+ (BOOL)quickSpeakClassIsDenied:(id)denied
{
  v28 = *MEMORY[0x29EDCA608];
  deniedCopy = denied;
  v4 = quickSpeakClassIsDenied__Denylist;
  if (!quickSpeakClassIsDenied__Denylist)
  {
    v5 = [MEMORY[0x29EDB8E20] setWithCapacity:5];
    v6 = quickSpeakClassIsDenied__Denylist;
    quickSpeakClassIsDenied__Denylist = v5;

    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"PLStackView", @"WAllPhotosAlbumViewController", @"WInteractiveNavigationControllerView", @"WInteractiveNavigationController", @"PKTextAttachmentDrawingView", @"Files.DOCItemCollectionViewController", @"com_apple_DocumentManager_Service.DOCItemCollectionViewController", 0}];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = NSClassFromString(*(*(&v23 + 1) + 8 * v10));
          if (v11)
          {
            [quickSpeakClassIsDenied__Denylist addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v4 = quickSpeakClassIsDenied__Denylist;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __40__AXQuickSpeak_quickSpeakClassIsDenied___block_invoke;
  v16[3] = &unk_29F2F00D8;
  v12 = deniedCopy;
  v17 = v12;
  v18 = &v19;
  [v4 enumerateObjectsUsingBlock:v16];
  v13 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x29EDCA608];
  return v13 & 1;
}

uint64_t __40__AXQuickSpeak_quickSpeakClassIsDenied___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

+ (BOOL)isQuickSpeakSelector:(SEL)selector
{
  if (isQuickSpeakSelector__onceToken != -1)
  {
    +[AXQuickSpeak isQuickSpeakSelector:];
  }

  return isQuickSpeakSelector___axQSSpeakSentence == selector || isQuickSpeakSelector___axQSSpeakSpellOut == selector || isQuickSpeakSelector___axQSPauseMethod == selector || isQuickSpeakSelector___axQSSpeakMethod == selector || isQuickSpeakSelector___axQSSpeakLangsMethod == selector || isQuickSpeakSelector___axQSSpeakLangs2Method == selector;
}

void __37__AXQuickSpeak_isQuickSpeakSelector___block_invoke()
{
  isQuickSpeakSelector___axQSPauseMethod = sel__accessibilityPauseSpeaking_;
  isQuickSpeakSelector___axQSSpeakMethod = sel__accessibilitySpeak_;
  isQuickSpeakSelector___axQSSpeakLangsMethod = sel__accessibilitySpeakLanguageSelection_;
  isQuickSpeakSelector___axQSSpeakLangs2Method = sel__accessibilitySpeakWithLanguage_;
  isQuickSpeakSelector___axQSSpeakSentence = sel__accessibilitySpeakSentence_;
  isQuickSpeakSelector___axQSSpeakSpellOut = sel__accessibilitySpeakSpellOut_;
}

+ (void)initialize
{
  if (objc_opt_class() == self && (MEMORY[0x29C2E9CC0]() & 1) == 0)
  {
    v2 = +[AXQuickSpeak sharedInstance];
  }
}

- (AXQuickSpeak)init
{
  v9.receiver = self;
  v9.super_class = AXQuickSpeak;
  v2 = [(AXQuickSpeak *)&v9 init];
  if (v2)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global_331 withPreValidationHandler:&__block_literal_global_397 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_400];

    mEMORY[0x29EDBD690] = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690] addHandler:&__block_literal_global_442 forFramework:@"PDFKit"];

    mEMORY[0x29EDBD690]2 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]2 addHandler:&__block_literal_global_459 forFramework:@"WebKit"];

    QSInstallSharedSafeCategoriesIfNeeded();
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleAppDidEnterBackground_ name:*MEMORY[0x29EDC8018] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleAppWillResignActive_ name:*MEMORY[0x29EDC8038] object:0];
    [defaultCenter addObserver:v2 selector:sel__stopSpeakingQuickSpeak_ name:*MEMORY[0x29EDC83A8] object:0];
    v7 = v2;
  }

  return v2;
}

uint64_t __20__AXQuickSpeak_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"UIColor" hasClassMethod:@"selectionHighlightColor" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UICalloutBar" hasInstanceMethod:@"buttonPressed:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"UICalloutBar" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UICalloutBar" hasInstanceMethod:@"fade" withFullSignature:{"v", 0}];
  [v2 validateClass:@"UICalloutBar" hasInstanceMethod:@"hide" withFullSignature:{"v", 0}];
  [v2 validateClass:@"UICalloutBar" hasInstanceMethod:@"_targetForAction:" withFullSignature:{"@", ":", 0}];
  [v2 validateClass:@"UICalloutBar" hasInstanceMethod:@"updateAvailableButtons" withFullSignature:{"v", 0}];
  [v2 validateClass:@"UICalloutBarButton" hasInstanceMethod:@"setPage:" withFullSignature:{"v", "q", 0}];
  [v2 validateClass:@"UITextSelectionView" hasInstanceMethod:@"setVisible:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"UITextSelectionView" hasInstanceMethod:@"showSelectionCommands" withFullSignature:{"v", 0}];
  [v2 validateClass:@"UICalloutBar" hasInstanceVariable:@"m_extraItems" withType:"NSArray"];
  [v2 validateClass:@"UICalloutBar" hasInstanceVariable:@"m_currentSystemButtons" withType:"NSMutableArray"];
  [v2 validateClass:@"UITextInteraction"];
  [v2 validateClass:@"UITextInteraction" hasInstanceMethod:@"_textInput" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UITextInteraction" hasInstanceMethod:@"_updatedAccessibilityTextMenuWithMenuElements:" withFullSignature:{"@", "@", 0}];

  return 1;
}

uint64_t __20__AXQuickSpeak_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"QuickSpeak"];
  [v2 setOverrideProcessName:@"QuickSpeak"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __20__AXQuickSpeak_init__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 installSafeCategory:@"NSObject_QSExtras" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UIResponder_QSExtras" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UITextField_QSExtrasAccessibility" canInteractWithTargetClass:1];
  if (NSClassFromString(&cfstr_Cktextballoonv.isa))
  {
    [v4 installSafeCategory:@"CKBalloonTextView_QSExtras" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"CKFullScreenBalloonViewController_QSExtras" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"CKFullScreenBalloonViewControllerPhone_QSExtras" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"CKChatController_ClickyOrb_QSExtras" canInteractWithTargetClass:1];
  }

  if (NSClassFromString(&cfstr_Ekdayoccurrenc.isa))
  {
    [v4 installSafeCategory:@"EKDayOccurrenceView_QSExtras" canInteractWithTargetClass:1];
  }

  v2 = NSClassFromString(&cfstr_Puoneupviewcon.isa);
  v3 = v4;
  if (v2)
  {
    [v4 installSafeCategory:@"PUOneUpViewController_QSExtras" canInteractWithTargetClass:1];
    v3 = v4;
  }

  [v3 installSafeCategory:@"UITextInteraction_QSExtras" canInteractWithTargetClass:1];
}

void __20__AXQuickSpeak_init__block_invoke_4()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_444 withPreValidationHandler:&__block_literal_global_446 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_451];
}

uint64_t __20__AXQuickSpeak_init__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"QuickSpeak PDF"];
  [v2 setOverrideProcessName:@"QuickSpeak PDF"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __20__AXQuickSpeak_init__block_invoke_8()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_461 withPreValidationHandler:&__block_literal_global_463 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_468];
}

uint64_t __20__AXQuickSpeak_init__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"QuickSpeak WebKit2"];
  [v2 setOverrideProcessName:@"QuickSpeak WebKit2"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __20__AXQuickSpeak_init__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"WKContentView_QSExtras" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WKWebViewAccessibility_QSExtras" canInteractWithTargetClass:1];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  sentenceHighlightView = [(AXQuickSpeak *)self sentenceHighlightView];
  [sentenceHighlightView removeFromSuperview];

  highlightView = [(AXQuickSpeak *)self highlightView];
  [highlightView removeFromSuperview];

  v7 = CachedSentenceRects;
  CachedSentenceRects = 0;

  v8 = CachedSentenceHighlightOverlapHeights;
  CachedSentenceHighlightOverlapHeights = 0;

  v9.receiver = self;
  v9.super_class = AXQuickSpeak;
  [(AXQuickSpeak *)&v9 dealloc];
}

- (void)_handleAppDidEnterBackground:(id)background
{
  orator = [(AXQuickSpeak *)self orator];
  [orator clearSelectedContent];

  [(AXQuickSpeak *)self stopAction:0];
}

- (void)speakAction:(id)action withPreferredLanguage:(id)language
{
  v31 = *MEMORY[0x29EDCA608];
  actionCopy = action;
  languageCopy = language;
  mEMORY[0x29EDBDF80] = [MEMORY[0x29EDBDF80] sharedInstance];
  if (![(AXQuickSpeak *)self isPaused])
  {
    v9 = _AXSAutomationEnabled();
    v10 = MEMORY[0x29EDC8008];
    if (v9)
    {
      v11 = *MEMORY[0x29EDC8008];
      orator = [(AXQuickSpeak *)self orator];
      content = [orator content];
      [v11 _accessibilitySetRetainedValue:content forKey:@"AXSpeakSelectionLastSpokenString"];
    }

    orator2 = [(AXQuickSpeak *)self orator];
    [orator2 setSpeakingContext:2];

    orator3 = [(AXQuickSpeak *)self orator];
    v28 = 0;
    v16 = [orator3 startSpeakingWithPreferredLanguage:languageCopy error:&v28];
    v17 = v28;

    if (v16)
    {
      self->_lastWholeCharacterLocation = 0;
      self->_lastUnicharLocation = 0;
      [(AXQuickSpeak *)self setQuickSpeakInitiator:actionCopy];
      quickSpeakInitiator = [(AXQuickSpeak *)self quickSpeakInitiator];
      objc_setAssociatedObject(quickSpeakInitiator, &QSSelectedTextRangeKey, 0, 1);

      quickSpeakInitiator2 = [(AXQuickSpeak *)self quickSpeakInitiator];
      _accessibilitySpeakSelectionTextInputResponder = [quickSpeakInitiator2 _accessibilitySpeakSelectionTextInputResponder];

      if (objc_opt_respondsToSelector())
      {
        [_accessibilitySpeakSelectionTextInputResponder _accessibilityStoreSelection];
      }

      -[AXQuickSpeak setCachedIdleTimerPref:](self, "setCachedIdleTimerPref:", [*v10 isIdleTimerDisabled]);
      [*v10 setIdleTimerDisabled:1];
    }

    else
    {
      mEMORY[0x29EDBD6C8] = [MEMORY[0x29EDBD6C8] sharedInstance];
      ignoreLogging = [mEMORY[0x29EDBD6C8] ignoreLogging];

      if (ignoreLogging)
      {
        goto LABEL_11;
      }

      identifier = [MEMORY[0x29EDBD6C8] identifier];
      _accessibilitySpeakSelectionTextInputResponder = AXLoggerForFacility();

      v25 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(_accessibilitySpeakSelectionTextInputResponder, v25))
      {
        v26 = AXColorizeFormatLog();
        v27 = _AXStringForArgs();
        if (os_log_type_enabled(_accessibilitySpeakSelectionTextInputResponder, v25))
        {
          *buf = 138543362;
          v30 = v27;
          _os_log_impl(&dword_29C1E5000, _accessibilitySpeakSelectionTextInputResponder, v25, "%{public}@", buf, 0xCu);
        }
      }
    }

LABEL_11:
    goto LABEL_12;
  }

  [(AXQuickSpeak *)self resumeAction:0];
LABEL_12:

  v23 = *MEMORY[0x29EDCA608];
}

- (void)pauseAction:(id)action
{
  v18 = *MEMORY[0x29EDCA608];
  [(AXQuickSpeak *)self setPaused:1];
  orator = [(AXQuickSpeak *)self orator];
  v15 = 0;
  v5 = [orator pauseSpeaking:&v15];
  v6 = v15;

  if ((v5 & 1) == 0)
  {
    mEMORY[0x29EDBD6C8] = [MEMORY[0x29EDBD6C8] sharedInstance];
    ignoreLogging = [mEMORY[0x29EDBD6C8] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x29EDBD6C8] identifier];
      v10 = AXLoggerForFacility();

      v11 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = AXColorizeFormatLog();
        v13 = _AXStringForArgs();
        if (os_log_type_enabled(v10, v11))
        {
          *buf = 138543362;
          v17 = v13;
          _os_log_impl(&dword_29C1E5000, v10, v11, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)resumeAction:(id)action
{
  v18 = *MEMORY[0x29EDCA608];
  [(AXQuickSpeak *)self setPaused:0];
  orator = [(AXQuickSpeak *)self orator];
  v15 = 0;
  v5 = [orator resumeSpeaking:&v15];
  v6 = v15;

  if ((v5 & 1) == 0)
  {
    mEMORY[0x29EDBD6C8] = [MEMORY[0x29EDBD6C8] sharedInstance];
    ignoreLogging = [mEMORY[0x29EDBD6C8] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x29EDBD6C8] identifier];
      v10 = AXLoggerForFacility();

      v11 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = AXColorizeFormatLog();
        v13 = _AXStringForArgs();
        if (os_log_type_enabled(v10, v11))
        {
          *buf = 138543362;
          v17 = v13;
          _os_log_impl(&dword_29C1E5000, v10, v11, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)stopAction:(id)action
{
  orator = [(AXQuickSpeak *)self orator];
  [orator stopSpeaking:0];

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __27__AXQuickSpeak_stopAction___block_invoke;
  v6[3] = &unk_29F2F0140;
  v6[4] = self;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __27__AXQuickSpeak_stopAction___block_invoke_2;
  v5[3] = &unk_29F2F0168;
  v5[4] = self;
  [MEMORY[0x29EDC7DA0] animateWithDuration:v6 animations:v5 completion:0.2];
}

uint64_t __27__AXQuickSpeak_stopAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) highlightView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) sentenceHighlightView];
  [v3 setAlpha:0.0];

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;

  v6 = *(a1 + 32);

  return [v6 _manipulateOtherTextViews:1];
}

void __27__AXQuickSpeak_stopAction___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) quickSpeakInitiator];
  objc_setAssociatedObject(v2, &QSSelectedTextRangeKey, 0, 1);

  v3 = [*(a1 + 32) quickSpeakInitiator];
  v9 = [v3 _accessibilitySpeakSelectionTextInputResponder];

  if (objc_opt_respondsToSelector())
  {
    [v9 _accessibilityClearSelection];
  }

  [*(a1 + 32) setContentOwner:0];
  [*(a1 + 32) setQuickSpeakInitiator:0];
  v4 = [*(a1 + 32) speakingSentenceRange];

  if (v4)
  {
    [*(a1 + 32) setContent:0];
  }

  [*(a1 + 32) setSpeakingSentenceRange:0];
  v5 = [*(a1 + 32) highlightView];
  [v5 removeFromSuperview];

  v6 = [*(a1 + 32) sentenceHighlightView];
  [v6 removeFromSuperview];

  [*(a1 + 32) setHighlightView:0];
  [*(a1 + 32) setSentenceHighlightView:0];
  [*(a1 + 32) setSpellOutContent:0];
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;
}

- (void)_manipulateOtherTextViews:(BOOL)views
{
  v27 = *MEMORY[0x29EDCA608];
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = __42__AXQuickSpeak__manipulateOtherTextViews___block_invoke;
  v24[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  viewsCopy = views;
  v5 = MEMORY[0x29C2EA130](v24, a2);
  if (!views)
  {
    _textSelectionViews = [(AXQuickSpeak *)self _textSelectionViews];
    [(AXQuickSpeak *)self setHiddenTextSelectionViews:_textSelectionViews];

    array = [MEMORY[0x29EDB8DE8] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    hiddenTextSelectionViews = [(AXQuickSpeak *)self hiddenTextSelectionViews];
    v9 = [hiddenTextSelectionViews countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(hiddenTextSelectionViews);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            delegate = [v13 delegate];
            if (delegate)
            {
              [array addObject:delegate];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [hiddenTextSelectionViews countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v10);
    }

    [(AXQuickSpeak *)self setHiddenTextSelectionViewDelegates:array];
  }

  hiddenTextSelectionViews2 = [(AXQuickSpeak *)self hiddenTextSelectionViews];
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __42__AXQuickSpeak__manipulateOtherTextViews___block_invoke_3;
  v18[3] = &unk_29F2F01D8;
  v19 = v5;
  v16 = v5;
  [hiddenTextSelectionViews2 enumerateObjectsUsingBlock:v18];

  v17 = *MEMORY[0x29EDCA608];
}

void __42__AXQuickSpeak__manipulateOtherTextViews___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Uitextselectio.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v6 = *(a1 + 32);
    AXPerformSafeBlock();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v4) = *(a1 + 32);
      [v3 setAlpha:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 setHidden:*(a1 + 32) == 0];
      }
    }
  }
}

- (id)_viewsWithBlock:(id)block
{
  blockCopy = block;
  highlightView = [(AXQuickSpeak *)self highlightView];

  if (!highlightView)
  {
    _AXAssert();
  }

  highlightView2 = [(AXQuickSpeak *)self highlightView];
  window = [highlightView2 window];

  v8 = objc_alloc(MEMORY[0x29EDB8DE8]);
  subviews = [window subviews];
  v10 = [v8 initWithArray:subviews];

  v11 = MEMORY[0x29EDC7D40];
  windowScene = [window windowScene];
  v13 = [v11 activeTextEffectsWindowForWindowScene:windowScene];

  if (v13)
  {
    subviews2 = [v13 subviews];
    [v10 addObjectsFromArray:subviews2];
  }

  array = [MEMORY[0x29EDB8DE8] array];
  while ([v10 count])
  {
    lastObject = [v10 lastObject];
    [v10 removeLastObject];
    if (blockCopy[2](blockCopy, lastObject))
    {
      [array addObject:lastObject];
    }

    subviews3 = [lastObject subviews];
    [v10 addObjectsFromArray:subviews3];
  }

  return array;
}

- (id)_textSelectionViews
{
  highlightView = [(AXQuickSpeak *)self highlightView];
  superview = [highlightView superview];

  if (objc_opt_respondsToSelector())
  {
    v5 = [superview safeValueForKey:@"interactionAssistant"];
    v6 = [v5 safeValueForKey:@"selectionView"];
  }

  else
  {
    v6 = 0;
  }

  array = [MEMORY[0x29EDB8DE8] array];
  v8 = [(AXQuickSpeak *)self _viewsWithBlock:&__block_literal_global_527];
  if (v8)
  {
    [array addObjectsFromArray:v8];
  }

  superview2 = [v6 superview];

  if (superview2)
  {
    [array addObject:v6];
  }

  v10 = [(AXQuickSpeak *)self _viewsWithBlock:&__block_literal_global_532];
  if (![v10 count])
  {
    _quickSpeakInputInitiator = [(AXQuickSpeak *)self _quickSpeakInputInitiator];
    if (objc_opt_respondsToSelector())
    {
      v12 = [_quickSpeakInputInitiator safeValueForKey:@"_accessibilitySpeakTextSelectionViews"];

      v10 = v12;
    }
  }

  if (v10)
  {
    [array addObjectsFromArray:v10];
  }

  return array;
}

uint64_t __35__AXQuickSpeak__textSelectionViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uiselectiongra.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __35__AXQuickSpeak__textSelectionViews__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uitextselectio.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __42__AXQuickSpeak__cleanupTextSelectionViews__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __42__AXQuickSpeak__cleanupTextSelectionViews__block_invoke_2;
  v3[3] = &unk_29F2F0140;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = __42__AXQuickSpeak__cleanupTextSelectionViews__block_invoke_3;
  v2[3] = &unk_29F2F0168;
  v2[4] = v4;
  return [MEMORY[0x29EDC7DA0] animateWithDuration:v3 animations:v2 completion:0.25];
}

uint64_t __42__AXQuickSpeak__cleanupTextSelectionViews__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) highlightView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) sentenceHighlightView];
  [v3 setAlpha:0.0];

  v4 = *(a1 + 32);

  return [v4 _manipulateOtherTextViews:1];
}

uint64_t __42__AXQuickSpeak__cleanupTextSelectionViews__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) highlightView];
  [v2 removeFromSuperview];

  [*(a1 + 32) setHighlightView:0];
  v3 = [*(a1 + 32) sentenceHighlightView];
  [v3 removeFromSuperview];

  [*(a1 + 32) setSentenceHighlightView:0];
  [*(a1 + 32) setHiddenTextSelectionViews:0];
  v4 = *(a1 + 32);

  return [v4 setHiddenTextSelectionViewDelegates:0];
}

- (void)_handlePauseCallback
{
  [*MEMORY[0x29EDC8008] setIdleTimerDisabled:{-[AXQuickSpeak cachedIdleTimerPref](self, "cachedIdleTimerPref")}];

  [(AXQuickSpeak *)self _cleanupTextSelectionViews];
}

- (void)_scrollToTextRect:(CGRect)rect withScrollView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  view = view;
  if (![(UIView *)view isHidden])
  {
    window = [(UIView *)view window];
    if (window)
    {
      v10 = window;
      isScrollEnabled = [(UIView *)view isScrollEnabled];

      if (isScrollEnabled)
      {
        [(UIView *)view contentOffset];
        v13 = self->_lastQuickSpeakOffset.x;
        if (vabdd_f64(v13, v14) >= 5.0)
        {
          v16 = 0;
          v15 = self->_lastQuickSpeakOffset.y;
        }

        else
        {
          v15 = self->_lastQuickSpeakOffset.y;
          v16 = vabdd_f64(v15, v12) < 5.0;
        }

        v17 = v13 == *MEMORY[0x29EDB90B8];
        if (v15 != *(MEMORY[0x29EDB90B8] + 8))
        {
          v17 = 0;
        }

        if (v16 || v17)
        {
          v56.origin.x = x;
          v56.origin.y = y;
          v56.size.width = width;
          v56.size.height = height;
          UIAccessibilityZoomFocusChanged(4, v56, view);
          [(UIView *)view bounds];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          rect = v24;
          [(UIView *)view adjustedContentInset];
          v29 = -v28;
          v30 = v28 < -0.0;
          v31 = 0.0;
          if (v30)
          {
            v29 = 0.0;
          }

          if (v25 >= -0.0)
          {
            v32 = -v25;
          }

          else
          {
            v32 = 0.0;
          }

          if (v26 >= -0.0)
          {
            v33 = -v26;
          }

          else
          {
            v33 = 0.0;
          }

          if (v27 >= -0.0)
          {
            v31 = -v27;
          }

          v34 = x + v32;
          v35 = y + v29;
          v36 = width - (v32 + v31);
          v37 = height - (v29 + v33);
          v57.origin.x = v19;
          v57.origin.y = v21;
          v57.size.width = v23;
          v57.size.height = rect;
          v58 = CGRectInset(v57, 0.0, 20.0);
          v38 = v58.origin.x;
          v39 = v58.origin.y;
          v40 = v58.size.width;
          v41 = v58.size.height;
          v59.origin.x = v34;
          v59.origin.y = v35;
          v59.size.width = v36;
          v59.size.height = v37;
          if (!CGRectContainsRect(v58, v59) && v41 >= v37)
          {
            [(UIView *)view contentOffset];
            v44 = v34 + v36;
            if (v34 < v38)
            {
              v42 = v34;
            }

            if (v44 >= v38 + v40)
            {
              v45 = v44 - v40;
            }

            else
            {
              v45 = v42;
            }

            v46 = v35 + v37;
            if (v35 + v37 >= v39 + v41)
            {
              v46 = -25.0;
              v47 = v35 + -25.0;
            }

            else if (v35 < v39)
            {
              v47 = v35;
            }

            else
            {
              v47 = v43;
            }

            [(UIView *)view bounds];
            v49 = v48;
            [(UIView *)view contentSize];
            v51 = v47 + v49 - v50;
            if (v51 > 0.0)
            {
              v52 = v47 - v51;
              if (v52 > 0.0)
              {
                v47 = v52;
              }
            }

            [(UIView *)view setContentOffset:1 animated:v45, v47];
            self->_lastQuickSpeakOffset.x = v45;
            self->_lastQuickSpeakOffset.y = v47;
          }
        }
      }
    }
  }

  MEMORY[0x2A1C71028]();
}

- (_NSRange)_updatedRangeForComposedCharacters:(_NSRange)characters string:(id)string lastKnownWholeCharacterLocation:(unint64_t)location lastKnownUnicharLocation:(unint64_t)unicharLocation
{
  length = characters.length;
  location = characters.location;
  for (i = string; unicharLocation < location; unicharLocation += v11)
  {
    ++location;
    [i rangeOfComposedCharacterSequenceAtIndex:unicharLocation];
  }

  v12 = location + length;
  if (location >= location + length)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    locationCopy = location;
    do
    {
      [i rangeOfComposedCharacterSequenceAtIndex:locationCopy];
      ++v13;
      locationCopy += v15;
    }

    while (locationCopy < v12);
  }

  locationCopy2 = location;
  v17 = v13;
  result.length = v17;
  result.location = locationCopy2;
  return result;
}

- (id)_quickSpeakInputInitiator
{
  quickSpeakInitiator = [(AXQuickSpeak *)self quickSpeakInitiator];
  if ([quickSpeakInitiator conformsToProtocol:&unk_2A22C5028])
  {
    if (quickSpeakInitiator)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  quickSpeakInitiator2 = [(AXQuickSpeak *)self quickSpeakInitiator];
  _accessibilitySpeakSelectionTextInputResponder = [quickSpeakInitiator2 _accessibilitySpeakSelectionTextInputResponder];

  if (_accessibilitySpeakSelectionTextInputResponder)
  {
    quickSpeakInitiator = _accessibilitySpeakSelectionTextInputResponder;
  }

  else
  {
    contentOwner = [(AXQuickSpeak *)self contentOwner];
    quickSpeakInitiator = [contentOwner _accessibilitySpeakSelectionTextInputResponder];

    if (!quickSpeakInitiator)
    {
      quickSpeakInitiator = [(AXQuickSpeak *)self quickSpeakInitiator];
      if (!quickSpeakInitiator)
      {
LABEL_3:
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }

LABEL_8:

  return quickSpeakInitiator;
}

uint64_t __41__AXQuickSpeak__quickSpeakInputInitiator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) orator];
  [v2 clearSelectedContent];

  v3 = *(a1 + 32);

  return [v3 stopAction:0];
}

- (id)_rectsByUnionSamelineRects:(id)rects
{
  v17 = *MEMORY[0x29EDCA608];
  rectsCopy = rects;
  if (rectsCopy)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = rectsCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * i) CGRectValue];
          QSUnionRectsWithRect();
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    array = 0;
  }

  v10 = *MEMORY[0x29EDCA608];

  return array;
}

- (id)_sentenceRects:(id)rects speakingRange:(id)range
{
  rectsCopy = rects;
  rangeCopy = range;
  array = [MEMORY[0x29EDB8DE8] array];
  v9 = [rectsCopy safeValueForKey:@"_accessibilityQuickSpeakTokenizer"];
  v10 = AXUISentenceTextRangeForInput();
  currentSentenceRange = self->_currentSentenceRange;
  p_currentSentenceRange = &self->_currentSentenceRange;
  if (([v10 isEqual:currentSentenceRange] & 1) == 0)
  {
    objc_storeStrong(p_currentSentenceRange, v10);
    v13 = [rectsCopy _accessibilitySentenceRectsForRange:rangeCopy];
    v14 = [v13 mutableCopy];

    array = v14;
  }

  return array;
}

- (id)_sentenceHighlightOverlapHeightArray
{
  array = [MEMORY[0x29EDB8DE8] array];
  if (CachedSentenceRects && [CachedSentenceRects count])
  {
    v3 = [CachedSentenceRects objectAtIndex:0];
    [v3 rectValue];
    v5 = v4;

    v6 = [CachedSentenceRects objectAtIndex:0];
    [v6 rectValue];
    v8 = v7;

    if ([CachedSentenceRects count] >= 2)
    {
      v9 = 1;
      do
      {
        v10 = [CachedSentenceRects objectAtIndex:v9];
        [v10 rectValue];
        v12 = v11;

        v13 = v8 + v5 - v12;
        v14 = [CachedSentenceRects objectAtIndex:v9];
        [v14 rectValue];
        v5 = v15;

        *&v16 = v13;
        v17 = [MEMORY[0x29EDBA070] numberWithFloat:v16];
        [array addObject:v17];

        ++v9;
        v8 = v12;
      }

      while ([CachedSentenceRects count] > v9);
    }

    v18 = [MEMORY[0x29EDBA070] numberWithFloat:0.0];
    [array addObject:v18];
  }

  return array;
}

- (void)_willSpeakRange:(_NSRange)range string:(id)string
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x29EDCA608];
  stringCopy = string;
  _quickSpeakInputInitiator = [(AXQuickSpeak *)self _quickSpeakInputInitiator];
  array = [MEMORY[0x29EDB8DE8] array];
  array2 = [MEMORY[0x29EDB8DE8] array];
  v11 = MEMORY[0x29EDB90E0];
  v12 = *(MEMORY[0x29EDB90E0] + 16);
  v29.origin = *MEMORY[0x29EDB90E0];
  v29.size = v12;
  if (objc_opt_respondsToSelector())
  {
    [(AXQuickSpeak *)self _quickSpeakTextRects:_quickSpeakInputInitiator withRange:location string:length highlightRects:stringCopy sentenceRects:array singleTextRect:array2, &v29];
  }

  else if ([_quickSpeakInputInitiator conformsToProtocol:&unk_2A22C5028])
  {
    [(AXQuickSpeak *)self _quickSpeakUITextInputTextRects:_quickSpeakInputInitiator withRange:location string:length highlightRects:stringCopy sentenceRects:array singleTextRect:array2, &v29];
  }

  else
  {
    mEMORY[0x29EDBD6C8] = [MEMORY[0x29EDBD6C8] sharedInstance];
    ignoreLogging = [mEMORY[0x29EDBD6C8] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x29EDBD6C8] identifier];
      v16 = AXLoggerForFacility();

      v17 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v16, v17))
      {
        AXColorizeFormatLog();
        v27 = v26 = _quickSpeakInputInitiator;
        v28 = _AXStringForArgs();
        if (os_log_type_enabled(v16, v17))
        {
          *buf = 138543362;
          v31 = v28;
          _os_log_impl(&dword_29C1E5000, v16, v17, "%{public}@", buf, 0xCu);
        }
      }
    }

    [_quickSpeakInputInitiator _accessibilityQuickSpeakTextRectsWithRange:location string:length highlightRects:stringCopy sentenceRects:array singleTextRect:{array2, &v29, v26}];
  }

  if ([array count] || !CGRectEqualToRect(*v11, v29))
  {
    [(AXQuickSpeak *)self _handleQuickSpeakHighlight:array sentenceRects:array2 textRect:_quickSpeakInputInitiator initiator:*&v29.origin, *&v29.size];
  }

  else
  {
    mEMORY[0x29EDBD6C8]2 = [MEMORY[0x29EDBD6C8] sharedInstance];
    ignoreLogging2 = [mEMORY[0x29EDBD6C8]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x29EDBD6C8] identifier];
      v21 = AXLoggerForFacility();

      v22 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = AXColorizeFormatLog();
        v24 = _AXStringForArgs();
        if (os_log_type_enabled(v21, v22))
        {
          *buf = 138543362;
          v31 = v24;
          _os_log_impl(&dword_29C1E5000, v21, v22, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  v25 = *MEMORY[0x29EDCA608];
}

- (_NSRange)modifiedRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  v7 = [(AXQuickSpeak *)self _updatedRangeForComposedCharacters:range.location string:range.length lastKnownWholeCharacterLocation:string lastKnownUnicharLocation:self->_lastWholeCharacterLocation, self->_lastUnicharLocation];
  self->_lastWholeCharacterLocation = v7 + v8;
  self->_lastUnicharLocation = location + length;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)_quickSpeakTextRects:(id)rects withRange:(_NSRange)range string:(id)string highlightRects:(id)highlightRects sentenceRects:(id)sentenceRects singleTextRect:(CGRect *)rect
{
  length = range.length;
  location = range.location;
  rectsCopy = rects;
  sentenceRectsCopy = sentenceRects;
  highlightRectsCopy = highlightRects;
  stringCopy = string;
  stringCopy = [(AXQuickSpeak *)self modifiedRange:location withString:length, stringCopy];
  v19 = [stringCopy substringWithRange:{stringCopy, v18}];

  v20 = [rectsCopy _accessibilityRetrieveRectsForGuanularity:1 atSelectionOffset:stringCopy wordText:v19];
  v21 = [(AXQuickSpeak *)self _rectsByUnionSamelineRects:v20];
  [highlightRectsCopy axSafelyAddObjectsFromArray:v21];

  if ([v20 count])
  {
    firstObject = [v20 firstObject];
    [firstObject CGRectValue];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
  }

  else
  {
    v24 = *MEMORY[0x29EDB90E0];
    v26 = *(MEMORY[0x29EDB90E0] + 8);
    v28 = *(MEMORY[0x29EDB90E0] + 16);
    v30 = *(MEMORY[0x29EDB90E0] + 24);
  }

  v31 = [rectsCopy _accessibilityRetrieveRectsForGuanularity:2 atSelectionOffset:stringCopy wordText:v19];
  v32 = [(AXQuickSpeak *)self _rectsByUnionSamelineRects:v31];
  [sentenceRectsCopy axSafelyAddObjectsFromArray:v32];

  rect->origin.x = v24;
  rect->origin.y = v26;
  rect->size.width = v28;
  rect->size.height = v30;
}

- (void)_quickSpeakUITextInputTextRects:(id)rects withRange:(_NSRange)range string:(id)string highlightRects:(id)highlightRects sentenceRects:(id)sentenceRects singleTextRect:(CGRect *)rect
{
  length = range.length;
  location = range.location;
  v49 = *MEMORY[0x29EDCA608];
  rectsCopy = rects;
  stringCopy = string;
  highlightRectsCopy = highlightRects;
  sentenceRectsCopy = sentenceRects;
  stringCopy = [(AXQuickSpeak *)self modifiedRange:location withString:length, stringCopy];
  v18 = v17;
  quickSpeakInitiator = [(AXQuickSpeak *)self quickSpeakInitiator];
  v20 = objc_getAssociatedObject(quickSpeakInitiator, &QSSelectedTextRangeKey);

  if (!v20)
  {
    speakingSentenceRange = [(AXQuickSpeak *)self speakingSentenceRange];

    if (speakingSentenceRange)
    {
      [(AXQuickSpeak *)self speakingSentenceRange];
    }

    else
    {
      [rectsCopy selectedTextRange];
    }
    v20 = ;
    quickSpeakInitiator2 = [(AXQuickSpeak *)self quickSpeakInitiator];
    objc_setAssociatedObject(quickSpeakInitiator2, &QSSelectedTextRangeKey, v20, 1);
  }

  start = [v20 start];
  v24 = [rectsCopy positionFromPosition:start offset:stringCopy];

  v25 = [rectsCopy positionFromPosition:v24 offset:v18];
  v26 = v25;
  if (v24 && v25)
  {
    v27 = [rectsCopy textRangeFromPosition:v24 toPosition:v25];
    v28 = *(MEMORY[0x29EDB90E0] + 16);
    *buf = *MEMORY[0x29EDB90E0];
    v48 = v28;
    if (objc_opt_respondsToSelector())
    {
      v29 = [stringCopy substringWithRange:{stringCopy, v18}];
      v30 = [rectsCopy _accessibilityTextRectsForRange:v27 singleTextRect:buf selectedRange:v20 string:v29];
    }

    else
    {
      v30 = [rectsCopy _accessibilityTextRectsForRange:v27 singleTextRect:buf];
    }

    [highlightRectsCopy axSafelyAddObjectsFromArray:v30];
    v39 = [(AXQuickSpeak *)self _sentenceRects:rectsCopy speakingRange:v27];
    [sentenceRectsCopy axSafelyAddObjectsFromArray:v39];
    v40 = v48;
    rect->origin = *buf;
    rect->size = v40;

LABEL_17:
    goto LABEL_18;
  }

  mEMORY[0x29EDBD6C8] = [MEMORY[0x29EDBD6C8] sharedInstance];
  ignoreLogging = [mEMORY[0x29EDBD6C8] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x29EDBD6C8] identifier];
    v27 = AXLoggerForFacility();

    v34 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v27, v34))
    {
      v35 = AXColorizeFormatLog();
      [v20 start];
      v36 = type = v34;
      v37 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:stringCopy];
      v42 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v18];
      v44 = v35;
      v38 = _AXStringForArgs();

      if (os_log_type_enabled(v27, type))
      {
        *buf = 138543362;
        *&buf[4] = v38;
        _os_log_impl(&dword_29C1E5000, v27, type, "%{public}@", buf, 0xCu);
      }
    }

    goto LABEL_17;
  }

LABEL_18:

  v41 = *MEMORY[0x29EDCA608];
}

- (id)_sliceRects:(id)rects withSentenceRects:(id)sentenceRects wordRects:(id)wordRects
{
  v60 = *MEMORY[0x29EDCA608];
  rectsCopy = rects;
  sentenceRectsCopy = sentenceRects;
  wordRectsCopy = wordRects;
  v9 = wordRectsCopy;
  if (sentenceRectsCopy)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v45 = sentenceRectsCopy;
    obj = sentenceRectsCopy;
    v10 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (!v10)
    {
      goto LABEL_30;
    }

    v11 = v10;
    v48 = *v55;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v55 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        [v13 rectValue];
        v15 = v14;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v16 = v9;
        v17 = [v16 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (!v17)
        {

LABEL_27:
          [rectsCopy addObject:v13];
          continue;
        }

        v18 = v17;
        v19 = v9;
        v20 = 0;
        v21 = v15;
        v22 = *v51;
        v23 = v21;
        v24 = 1.17549435e-38;
        v25 = 3.40282347e38;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v51 != v22)
            {
              objc_enumerationMutation(v16);
            }

            v27 = *(*(&v50 + 1) + 8 * j);
            [v27 rectValue];
            if (vabdd_f64(v23, v28) <= 1.0)
            {
              if ((v20 & 1) == 0)
              {
                v20 = 1;
              }

              [v27 rectValue];
              if (v25 >= v29)
              {
                v25 = v29;
              }

              [v27 rectValue];
              Width = CGRectGetWidth(v62);
              if (v24 < Width)
              {
                v24 = Width;
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v18);

        v9 = v19;
        if ((v20 & 1) == 0)
        {
          goto LABEL_27;
        }

        [v13 rectValue];
        Height = CGRectGetHeight(v63);
        [v13 rectValue];
        v33 = v32;
        v34 = v33;
        if (v25 >= v33)
        {
          v35 = v25;
        }

        else
        {
          v35 = v33;
        }

        v36 = vabdd_f64(v34, v35);
        v37 = Height;
        [v13 rectValue];
        v38 = CGRectGetWidth(v64);
        v65.origin.x = v34;
        v65.origin.y = v23;
        v65.size.width = v36;
        v65.size.height = v37;
        v39 = vabdd_f64(v38 - CGRectGetWidth(v65), v24);
        v40 = [MEMORY[0x29EDBA168] valueWithCGRect:{v34, v23, v36, v37}];
        [rectsCopy addObject:v40];

        v41 = [MEMORY[0x29EDBA168] valueWithCGRect:{v24 + v35, v23, v39, v37}];
        [rectsCopy addObject:v41];

        v42 = [MEMORY[0x29EDBA168] valueWithRect:{v35, v23, v24, v37}];
        [array addObject:v42];
      }

      v11 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (!v11)
      {
LABEL_30:

        sentenceRectsCopy = v45;
        goto LABEL_32;
      }
    }
  }

  array = wordRectsCopy;
LABEL_32:

  v43 = *MEMORY[0x29EDCA608];

  return array;
}

- (void)_handleQuickSpeakHighlight:(id)highlight sentenceRects:(id)rects textRect:(CGRect)rect initiator:(id)initiator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v127 = *MEMORY[0x29EDCA608];
  highlightCopy = highlight;
  rectsCopy = rects;
  initiatorCopy = initiator;
  textInputView = [initiatorCopy textInputView];
  objc_opt_class();
  v110 = initiatorCopy;
  v111 = highlightCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    quickSpeakInitiator = [(AXQuickSpeak *)self quickSpeakInitiator];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      textInputView = quickSpeakInitiator;
    }

    else
    {
      textInputView = initiatorCopy;

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        textInputView = 0;
      }
    }
  }

  _accessibilitySpeakSelectionAssociatedScrollView = [textInputView _accessibilitySpeakSelectionAssociatedScrollView];
  if (_accessibilitySpeakSelectionAssociatedScrollView)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [_accessibilitySpeakSelectionAssociatedScrollView superview];

      _accessibilitySpeakSelectionAssociatedScrollView = superview;
    }

    while (superview);
  }

  v20 = _accessibilitySpeakSelectionAssociatedScrollView;
  v115 = textInputView;
  [textInputView convertRect:v20 toView:{x, y, width, height}];
  v109 = v20;
  [(AXQuickSpeak *)self _scrollToTextRect:v20 withScrollView:?];
  if (rectsCopy && [rectsCopy count])
  {
    objc_storeStrong(&CachedSentenceRects, rects);
    _sentenceHighlightOverlapHeightArray = [(AXQuickSpeak *)self _sentenceHighlightOverlapHeightArray];
    v22 = CachedSentenceHighlightOverlapHeights;
    CachedSentenceHighlightOverlapHeights = _sentenceHighlightOverlapHeightArray;
  }

  selfCopy = self;
  v114 = rectsCopy;
  array = [MEMORY[0x29EDB8DE8] array];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v23 = CachedSentenceRects;
  v24 = [v23 countByEnumeratingWithState:&v122 objects:v126 count:16];
  v25 = 0x29EDBD000uLL;
  if (v24)
  {
    v26 = v24;
    v27 = *v123;
    do
    {
      v28 = 0;
      do
      {
        if (*v123 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v122 + 1) + 8 * v28);
        [v29 rectValue];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        sharedInstance = [*(v25 + 4000) sharedInstance];
        quickSpeakSentenceHighlightOption = [sharedInstance quickSpeakSentenceHighlightOption];

        if (quickSpeakSentenceHighlightOption == 2 && [CachedSentenceRects indexOfObject:v29] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v41 = [CachedSentenceRects indexOfObject:v29];
          v25 = 0x29EDBD000;
          if (CachedSentenceHighlightOverlapHeights && [CachedSentenceHighlightOverlapHeights count] > v41)
          {
            v42 = [CachedSentenceHighlightOverlapHeights objectAtIndex:v41];
            [v42 floatValue];
            v37 = v37 - v43;
          }
        }

        else
        {
          v25 = 0x29EDBD000uLL;
        }

        v40 = [MEMORY[0x29EDBA168] valueWithRect:{v31, v33, v35, v37}];
        [array addObject:v40];

        ++v28;
      }

      while (v26 != v28);
      v44 = [v23 countByEnumeratingWithState:&v122 objects:v126 count:16];
      v26 = v44;
    }

    while (v44);
  }

  array2 = [MEMORY[0x29EDB8DE8] array];
  sharedInstance2 = [*(v25 + 4000) sharedInstance];
  if ([sharedInstance2 quickSpeakHighlightOption] == 3)
  {
    sharedInstance3 = [*(v25 + 4000) sharedInstance];
    quickSpeakSentenceHighlightOption2 = [sharedInstance3 quickSpeakSentenceHighlightOption];

    v50 = v110;
    v49 = highlightCopy;
    v51 = v114;
    if (quickSpeakSentenceHighlightOption2 == 2)
    {
      selfCopy3 = self;
      v53 = [(AXQuickSpeak *)self _sliceRects:array2 withSentenceRects:array wordRects:v111];

      v49 = v53;
      goto LABEL_31;
    }
  }

  else
  {

    v50 = v110;
    v49 = highlightCopy;
    v51 = v114;
  }

  [array2 addObjectsFromArray:array];
  selfCopy3 = self;
LABEL_31:
  v54 = v115;
  if (!_AXSQuickSpeakHighlightTextEnabled())
  {
    goto LABEL_85;
  }

  highlightView = [(AXQuickSpeak *)selfCopy3 highlightView];

  if (!highlightView)
  {
    v56 = objc_alloc(MEMORY[0x29EDBDE18]);
    v57 = *MEMORY[0x29EDB90E0];
    v58 = *(MEMORY[0x29EDB90E0] + 8);
    v59 = *(MEMORY[0x29EDB90E0] + 16);
    v60 = *(MEMORY[0x29EDB90E0] + 24);
    v61 = [v56 initWithFrame:{*MEMORY[0x29EDB90E0], v58, v59, v60}];
    [v61 setAlpha:0.0];
    mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
    quickSpeakWordHighlightColor = [mEMORY[0x29EDBDFA0] quickSpeakWordHighlightColor];

    v112 = v61;
    if (!quickSpeakWordHighlightColor)
    {
      if (objc_opt_respondsToSelector())
      {
        [v50 selectionHighlightColor];
      }

      else
      {
        [MEMORY[0x29EDC7A00] safeValueForKey:@"selectionHighlightColor"];
      }
      v73 = ;
      v72 = 0x29EDBD000;
      v120 = 0.0;
      v121 = 0.0;
      v118 = 0;
      v119 = 0.0;
      [v73 getRed:&v121 green:&v120 blue:&v119 alpha:&v118];
      v74 = v121 * 0.9;
      if (v121 * 0.9 < 0.0)
      {
        v74 = 0.0;
      }

      v75 = v120 * 0.9;
      if (v120 * 0.9 < 0.0)
      {
        v75 = 0.0;
      }

      v76 = v119 * 0.9;
      if (v119 * 0.9 < 0.0)
      {
        v76 = 0.0;
      }

      v77 = [MEMORY[0x29EDC7A00] colorWithRed:v74 green:v75 blue:v76 alpha:0.5];
      goto LABEL_51;
    }

    mEMORY[0x29EDBDFA0]2 = [MEMORY[0x29EDBDFA0] sharedInstance];
    [mEMORY[0x29EDBDFA0]2 quickSpeakWordHighlightColor];
    v65 = AXSpeakHighlightColor();

    v66 = [MEMORY[0x29EDC7A00] colorWithCGColor:v65];
    mEMORY[0x29EDBDFA0]3 = [MEMORY[0x29EDBDFA0] sharedInstance];
    quickSpeakSentenceHighlightColor = [mEMORY[0x29EDBDFA0]3 quickSpeakSentenceHighlightColor];
    mEMORY[0x29EDBDFA0]4 = [MEMORY[0x29EDBDFA0] sharedInstance];
    if (quickSpeakSentenceHighlightColor == [mEMORY[0x29EDBDFA0]4 quickSpeakWordHighlightColor])
    {
      mEMORY[0x29EDBDFA0]5 = [MEMORY[0x29EDBDFA0] sharedInstance];
      quickSpeakHighlightOption = [mEMORY[0x29EDBDFA0]5 quickSpeakHighlightOption];

      if (quickSpeakHighlightOption != 3)
      {
        v72 = 0x29EDBD000uLL;
        goto LABEL_50;
      }

      AXSlightlyDarkerColorForColor();
      v66 = mEMORY[0x29EDBDFA0]3 = v66;
      v72 = 0x29EDBD000;
    }

    else
    {

      v72 = 0x29EDBD000uLL;
    }

LABEL_50:
    v77 = [v66 colorWithAlphaComponent:0.5];

    sharedInstance4 = [*(v72 + 4000) sharedInstance];
    [sharedInstance4 quickSpeakSentenceHighlightColor];
    v79 = AXSpeakHighlightColor();

    v80 = [MEMORY[0x29EDC7A00] colorWithCGColor:v79];
    v73 = [v80 colorWithAlphaComponent:0.5];

    v61 = v112;
LABEL_51:
    [v61 setSelectionColor:{v77, v77}];
    if ([array2 count])
    {
      v81 = [objc_alloc(MEMORY[0x29EDBDE18]) initWithFrame:{v57, v58, v59, v60}];
      [v81 setSentenceHighlight:1];
      [v81 setAlpha:0.0];
      [v81 setSelectionColor:v73];
    }

    else
    {
      v81 = 0;
    }

    mainBundle = [MEMORY[0x29EDB9F48] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v84 = [bundleIdentifier isEqualToString:*MEMORY[0x29EDBD680]];

    sharedInstance5 = [*(v72 + 4000) sharedInstance];
    quickSpeakSentenceHighlightColor2 = [sharedInstance5 quickSpeakSentenceHighlightColor];

    if (quickSpeakSentenceHighlightColor2)
    {
      sharedInstance6 = [*(v72 + 4000) sharedInstance];
      [sharedInstance6 quickSpeakSentenceHighlightColor];
      v88 = AXSpeakHighlightColor();

      labelColor = [MEMORY[0x29EDC7A00] colorWithCGColor:v88];
    }

    else
    {
      labelColor = [MEMORY[0x29EDC7A00] labelColor];
      if (v84)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          backgroundColor = [v115 backgroundColor];
          if (backgroundColor)
          {
            v91 = AXInvertColorForColor();

            labelColor = v91;
          }
        }
      }
    }

    [v81 setUnderlineColor:labelColor];

    v92 = objc_opt_class();
    v108 = v73;
    if (v92)
    {
      v93 = v92;
      while (1)
      {
        v94 = NSStringFromClass(v93);
        if ([v94 isEqualToString:@"WKContentView"])
        {
          break;
        }

        v93 = [(objc_class *)v93 superclass];

        if (!v93)
        {
          goto LABEL_65;
        }
      }

      v95 = 1;
    }

    else
    {
LABEL_65:
      v95 = 0;
    }

    NSClassFromString(&cfstr_Sxcanvasview.isa);
    v54 = v115;
    isKindOfClass = objc_opt_isKindOfClass();
    NSClassFromString(&cfstr_Tsdcanvasview.isa);
    selfCopy3 = selfCopy;
    if ((v95 | objc_opt_isKindOfClass()) & v84)
    {
      superview2 = [v115 superview];

      if (superview2)
      {
        if (v81)
        {
          superview3 = [v115 superview];
          [superview3 addSubview:v81];
        }

        superview4 = [v115 superview];
        [superview4 addSubview:v112];
      }
    }

    else if ((v95 | isKindOfClass))
    {
      if (v81)
      {
        [v115 addSubview:v81];
      }

      [v115 addSubview:v112];
    }

    else
    {
      [v115 insertSubview:v112 atIndex:0];
      if (v81)
      {
        [v115 insertSubview:v81 atIndex:0];
      }
    }

    [v115 bounds];
    [v112 setFrame:?];
    [v115 bounds];
    [v81 setFrame:?];
    [(AXQuickSpeak *)selfCopy setHighlightView:v112];
    highlightView2 = [(AXQuickSpeak *)selfCopy highlightView];
    superview5 = [highlightView2 superview];
    [superview5 setAutoresizesSubviews:1];

    if (v81 && ![(AXQuickSpeak *)selfCopy spellOutContent])
    {
      [(AXQuickSpeak *)selfCopy setSentenceHighlightView:v81];
      sentenceHighlightView = [(AXQuickSpeak *)selfCopy sentenceHighlightView];
      superview6 = [sentenceHighlightView superview];
      [superview6 setAutoresizesSubviews:1];
    }

    v117[0] = MEMORY[0x29EDCA5F8];
    v117[1] = 3221225472;
    v117[2] = __76__AXQuickSpeak__handleQuickSpeakHighlight_sentenceRects_textRect_initiator___block_invoke;
    v117[3] = &unk_29F2F0140;
    v117[4] = selfCopy;
    [MEMORY[0x29EDC7DA0] animateWithDuration:v117 animations:0.25];

    v51 = v114;
  }

  highlightView3 = [(AXQuickSpeak *)selfCopy3 highlightView];
  [highlightView3 setHighlightSelectionRects:v49];

  if ([array2 count] && !-[AXQuickSpeak spellOutContent](selfCopy3, "spellOutContent"))
  {
    sentenceHighlightView2 = [(AXQuickSpeak *)selfCopy3 sentenceHighlightView];
    [sentenceHighlightView2 setHighlightSelectionRects:array2];
  }

LABEL_85:

  v106 = *MEMORY[0x29EDCA608];
}

void __76__AXQuickSpeak__handleQuickSpeakHighlight_sentenceRects_textRect_initiator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _manipulateOtherTextViews:0];
  v2 = [*(a1 + 32) highlightView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) sentenceHighlightView];
  [v3 setAlpha:1.0];
}

- (BOOL)isSpeaking
{
  orator = [(AXQuickSpeak *)self orator];
  isSpeaking = [orator isSpeaking];

  return isSpeaking;
}

- (void)speakStatusWithLanguage:(id)language rate:(id)rate
{
  rateCopy = rate;
  languageCopy = language;
  orator = [(AXQuickSpeak *)self orator];
  [orator speakStatusWithLanguage:languageCopy rate:rateCopy];
}

- (BOOL)selectedContentIsSpeakable
{
  orator = [(AXQuickSpeak *)self orator];
  contentIsSpeakable = [orator contentIsSpeakable];

  return contentIsSpeakable;
}

- (BOOL)selectedContentRequiresUserChoice
{
  v38 = *MEMORY[0x29EDCA608];
  selectedContent = [(AXQuickSpeak *)self selectedContent];
  mEMORY[0x29EDBDF80] = [MEMORY[0x29EDBDF80] sharedInstance];
  systemLanguageID = [mEMORY[0x29EDBDF80] systemLanguageID];

  predictedSecondaryLangMaps = [selectedContent predictedSecondaryLangMaps];
  v6 = [predictedSecondaryLangMaps count];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    unpredictedAmbiguousLangMaps = [selectedContent unpredictedAmbiguousLangMaps];
    v9 = [unpredictedAmbiguousLangMaps count];

    if (v9 >= 2)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      ambiguousLangMaps = [selectedContent ambiguousLangMaps];
      v11 = [ambiguousLangMaps countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v11)
      {
        v12 = *v33;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(ambiguousLangMaps);
            }

            v14 = *(*(&v32 + 1) + 8 * i);
            generalLanguageID = [v14 generalLanguageID];
            v16 = [generalLanguageID isEqualToString:systemLanguageID];

            if (v16)
            {
              v11 = v14;
              goto LABEL_15;
            }
          }

          v11 = [ambiguousLangMaps countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      ambiguousLangMaps2 = [selectedContent ambiguousLangMaps];
      v18 = [ambiguousLangMaps2 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        while (2)
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(ambiguousLangMaps2);
            }

            v22 = *(*(&v28 + 1) + 8 * j);
            if (v11 != v22)
            {
              associatedAmbiguousLanguages = [v11 associatedAmbiguousLanguages];
              generalLanguageID2 = [v22 generalLanguageID];
              v25 = [associatedAmbiguousLanguages containsObject:generalLanguageID2];

              if (!v25)
              {
                v7 = 1;
                goto LABEL_26;
              }
            }
          }

          v19 = [ambiguousLangMaps2 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      ambiguousLangMaps2 = [selectedContent unpredictedAmbiguousLangMaps];
      v7 = [ambiguousLangMaps2 count] > 1;
LABEL_26:
    }

    else
    {
      v7 = 0;
    }
  }

  v26 = *MEMORY[0x29EDCA608];
  return v7;
}

- (void)oratorDidFinishSpeaking:(id)speaking
{
  [*MEMORY[0x29EDC8008] setIdleTimerDisabled:{-[AXQuickSpeak cachedIdleTimerPref](self, "cachedIdleTimerPref", speaking)}];
  [(AXQuickSpeak *)self stopAction:0];
  orator = [(AXQuickSpeak *)self orator];
  [orator clearSelectedContent];

  quickSpeakInitiator = [(AXQuickSpeak *)self quickSpeakInitiator];
  [quickSpeakInitiator _accessibilityHandleFinishSpeaking];

  [(AXQuickSpeak *)self _cleanupTextSelectionViews];
}

- (void)oratorDidResumeSpeaking:(id)speaking
{
  v3 = MEMORY[0x29EDC8008];
  -[AXQuickSpeak setCachedIdleTimerPref:](self, "setCachedIdleTimerPref:", [*MEMORY[0x29EDC8008] isIdleTimerDisabled]);
  v4 = *v3;

  [v4 setIdleTimerDisabled:1];
}

- (void)orator:(id)orator willSpeakRange:(_NSRange)range ofContent:(id)content
{
  contentCopy = content;
  highlightViewDispatcher = [(AXQuickSpeak *)self highlightViewDispatcher];

  if (!highlightViewDispatcher)
  {
    v8 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v9 = [v8 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(AXQuickSpeak *)self setHighlightViewDispatcher:v9];
  }

  v11 = MEMORY[0x29EDCA5F8];
  v10 = contentCopy;
  AXPerformSafeBlock();
  [*MEMORY[0x29EDC8008] setIdleTimerDisabled:{1, v11, 3221225472, __48__AXQuickSpeak_orator_willSpeakRange_ofContent___block_invoke, &unk_29F2F0220, self}];
}

@end