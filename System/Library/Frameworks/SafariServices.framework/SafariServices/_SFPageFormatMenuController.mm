@interface _SFPageFormatMenuController
- (BOOL)_canHideToolbar;
- (BOOL)_canShowListenToPageMenuAction;
- (BOOL)_canShowReportWebsiteIssueInMainMenu;
- (BOOL)_canShowScribble;
- (BOOL)_canShowWebsiteSettings;
- (BOOL)_canToggleAdvancedPrivateBrowsingPrivacyProtections;
- (BOOL)_canToggleBetweenDesktopAndMobileSite;
- (BOOL)_canToggleContentBlockers;
- (BOOL)_canTogglePrivateRelay;
- (BOOL)_canViewSecurityInformation;
- (BOOL)_hasExtensionsAvailableToShowInManageExtensionsView;
- (BOOL)_hasStartedTranslation;
- (BOOL)_isActiveTabPausedOrPlaying;
- (BOOL)_isSiriReaderCurrentlyActive;
- (BOOL)_presentBrowsingAssistantFromViewController:(id)controller withSourceInfo:(id)info fromSafariViewController:(BOOL)viewController;
- (BOOL)_shouldEnableDownloadsAlert;
- (BOOL)_shouldShowItemForAction:(id)action;
- (BOOL)_shouldShowUnviewedFinishedDownloadsIndicator;
- (BOOL)isReaderModeAvailable;
- (BOOL)presentMenuFromViewController:(id)controller withSourceInfo:(id)info fromSafariViewController:(BOOL)viewController;
- (NSArray)cardItems;
- (SFBrowsingAssistantMenuSection)settingsSection;
- (UIViewController)viewController;
- (_SFBrowserContentController)browserContentController;
- (_SFPageFormatMenuController)initWithBrowserContentController:(id)controller;
- (id)_advancedPrivateBrowsingPrivacyProtectionsAlertItem;
- (id)_clearEditsAlertItem;
- (id)_consentCard;
- (id)_contentBlockerManager;
- (id)_contentBlockersToggleAlertItem;
- (id)_desktopMobileToggleAlertItemWithOrientation:(int64_t)orientation;
- (id)_downloadsAlertItem;
- (id)_downloadsSection;
- (id)_editToolbarAlertItem;
- (id)_effectiveScribbleItems;
- (id)_endListeningToSiriReaderAlertItem;
- (id)_entityItems;
- (id)_exitTranslationAlertItem;
- (id)_extensionItems;
- (id)_extensionsSection;
- (id)_fullScreenAlertItem;
- (id)_internalTapToRadarTranslationAlertItem;
- (id)_itemForAction:(id)action;
- (id)_listenToPageCard;
- (id)_listeningControlsAlertItem;
- (id)_localizedStringOfRunningDownloads;
- (id)_makeItemForAction:(id)action;
- (id)_manageExtensionsAlertItem;
- (id)_mediaStateAlertItem;
- (id)_moreControlsAlertItem;
- (id)_otherTabAudioMediaStateAlertItem;
- (id)_pageZoomAlertItem;
- (id)_pauseAllAnimationsAlertItem;
- (id)_playAllAnimationsAlertItem;
- (id)_playbackRateAlertItem;
- (id)_playbackStateAndPositionAlertItem;
- (id)_privateRelayToggleAlertItem;
- (id)_readerAlertItem;
- (id)_readerCard;
- (id)_readerFontAlertItem;
- (id)_readerOptionsCard;
- (id)_readerTextSizeAlertItem;
- (id)_readerThemeAlertItem;
- (id)_reportScribbleIssueItem;
- (id)_reportWebCompatibilityIssueItemMainMenu;
- (id)_reportWebCompatibilityIssueItemMoreMenu;
- (id)_reportWebCompatibilityIssueItemWithAction:(int64_t)action;
- (id)_scribbleAlertItem;
- (id)_siriReaderAlertItem;
- (id)_siriReaderAlertItemWithState:(int64_t)state identifier:(id)identifier;
- (id)_titleForPlaybackState:(int64_t)state;
- (id)_translateAlertItemForLocaleIdentifier:(id)identifier;
- (id)_userFeedbackAutofillAlertItem;
- (id)_userFeedbackTranslationAlertItem;
- (id)_viewSecurityInformationAlertItem;
- (id)_webExtensionsController;
- (id)_websiteSettingsAlertItem;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)menuForOrientation:(int64_t)orientation sourceInfo:(id)info;
- (id)moreMenuSectionsForEditMode:(BOOL)mode;
- (id)primaryMenuSectionsForEditMode:(BOOL)mode inFirstLevelMenu:(BOOL)menu;
- (id)viewControllerForPresentationForItemController:(id)controller;
- (int64_t)_deviceOrientation;
- (unint64_t)_listenToPageActionStateForActiveTab;
- (void)_anchorInWindowCoordinatesForAlert:(id)alert;
- (void)_buildTranslationAlertItemsWithSourceInfo:(id)info;
- (void)_clearCachedCardItems;
- (void)_clearCachedItems;
- (void)_constructMenuForAlert:(id)alert orientation:(int64_t)orientation;
- (void)_didTapButtonInStepper:(id)stepper;
- (void)_didTapFindOnPage;
- (void)_donateSummaryPresentationStartedIfNeeded;
- (void)_hideReader;
- (void)_invokeListenToPage;
- (void)_presentSecurityInformation;
- (void)_readerAvailabilityDidChange:(id)change;
- (void)_showReader;
- (void)_translationAvailabilityDidChange:(id)change;
- (void)_updateDownloadsAlertItem:(id)item;
- (void)_updateListenToPageButtonAvailabilityForCard:(id)card;
- (void)_updateListenToPageIfNeeded;
- (void)_updateSiriReaderPlaybackStateAndIdentifierWithCompletion:(id)completion;
- (void)browsingAssistantWillAppear:(id)appear;
- (void)browsingAssistantWillDisappear:(id)disappear;
- (void)configureMainHeaderFooter:(id)footer;
- (void)configureReaderButtonFooter:(id)footer;
- (void)didReportUserResponseFeedback:(id)feedback;
- (void)dismissMenu;
- (void)presentModalViewController:(id)controller completion:(id)completion;
- (void)reloadAlert;
- (void)reloadBrowsingAssistantIfNeeded;
- (void)updateReaderCardWithSummaryIfNeeded;
- (void)updateShouldShowListeningControls:(BOOL)controls;
@end

@implementation _SFPageFormatMenuController

- (void)_updateSiriReaderPlaybackStateAndIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89___SFPageFormatMenuController__updateSiriReaderPlaybackStateAndIdentifierWithCompletion___block_invoke;
  v7[3] = &unk_1E8490818;
  v8 = mEMORY[0x1E69B1B90];
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = mEMORY[0x1E69B1B90];
  [v6 updatePlaybackStateWithCompletion:v7];
}

- (_SFPageFormatMenuController)initWithBrowserContentController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = _SFPageFormatMenuController;
  v5 = [(_SFPageFormatMenuController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserContentController, controllerCopy);
    v7 = objc_alloc_init(MEMORY[0x1E69E3098]);
    featureManager = v6->_featureManager;
    v6->_featureManager = v7;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__readerAvailabilityDidChange_ name:@"readerAvailabilityDidChange" object:0];
    [defaultCenter addObserver:v6 selector:sel__translationAvailabilityDidChange_ name:*MEMORY[0x1E69C9A10] object:0];
    [defaultCenter addObserver:v6 selector:sel__totalProgressDidChange_ name:@"_SFDownloadManagerTotalProgressDidChangeNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__didFinishLastDownload_ name:@"_SFDownloadManagerDidFinishLastDownloadNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__hasUnviewedDownloadsDidChange_ name:@"_SFDownloadManagerHasUnviewedDownloadsDidChangeNotification" object:0];
    v10 = v6;
  }

  return v6;
}

- (id)_webExtensionsController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  webExtensionsController = [activeDocument webExtensionsController];

  return webExtensionsController;
}

- (id)_contentBlockerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  contentBlockerManager = [activeDocument contentBlockerManager];

  return contentBlockerManager;
}

- (BOOL)_presentBrowsingAssistantFromViewController:(id)controller withSourceInfo:(id)info fromSafariViewController:(BOOL)viewController
{
  v42[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v7 = objc_loadWeakRetained(&self->_viewController);
  presentingViewController = [v7 presentingViewController];

  if (presentingViewController)
  {
    if ([v7 stepperFocused])
    {
      [v7 setStepperFocused:0];
    }

    else
    {
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    [(_SFPageFormatMenuController *)self _clearCachedItems];
    v9 = objc_alloc(MEMORY[0x1E69B1AD8]);
    activeDocument = [WeakRetained activeDocument];
    v11 = [v9 initWithShowingOnStartPage:{objc_msgSend(activeDocument, "isShowingSystemStartPage")}];

    [v11 setDataSource:self];
    [v11 setDelegate:self];
    [v11 setModalPresentationStyle:7];
    objc_storeWeak(&self->_viewController, v11);
    popoverPresentationController = [v11 popoverPresentationController];
    if (objc_opt_respondsToSelector())
    {
      permittedArrowDirections = [infoCopy permittedArrowDirections];
    }

    else
    {
      permittedArrowDirections = 1;
    }

    [popoverPresentationController setPermittedArrowDirections:permittedArrowDirections];
    v14 = [[_SFPopoverPresentationDelegate alloc] initWithSourceInfo:infoCopy];
    [(_SFPopoverPresentationDelegate *)v14 setNestsAdaptiveSheetPresentationInNavigationController:0];
    v29 = v14;
    [(_SFPopoverPresentationDelegate *)v14 attachToPopoverPresentationController:popoverPresentationController];
    view = [controllerCopy view];
    window = [view window];
    windowScene = [window windowScene];
    v18 = _SFContextInfoWithComment();
    location[1] = MEMORY[0x1E69E9820];
    location[2] = 3221225472;
    location[3] = __115___SFPageFormatMenuController__presentBrowsingAssistantFromViewController_withSourceInfo_fromSafariViewController___block_invoke;
    location[4] = &unk_1E8493EF0;
    v19 = infoCopy;
    v40 = v19;
    v30 = popoverPresentationController;
    v41 = v30;
    _SFPopoverSourceInfoUnwrap();

    adaptiveSheetPresentationController = [v30 adaptiveSheetPresentationController];
    objc_initWeak(location, v11);
    v21 = MEMORY[0x1E69DCF58];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __115___SFPageFormatMenuController__presentBrowsingAssistantFromViewController_withSourceInfo_fromSafariViewController___block_invoke_4;
    v36[3] = &unk_1E8493F38;
    objc_copyWeak(&v38, location);
    v22 = controllerCopy;
    v37 = v22;
    v23 = [v21 customDetentWithIdentifier:0 resolver:v36];
    v42[0] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [adaptiveSheetPresentationController setDetents:v24];

    [adaptiveSheetPresentationController setPrefersGrabberVisible:1];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [adaptiveSheetPresentationController setPrefersGrabberVisible:0];
      [v30 _setShouldHideArrow:{objc_msgSend(v19, "shouldHideArrow")}];
      zoomTransitionSourceView = [v19 zoomTransitionSourceView];

      if (zoomTransitionSourceView)
      {
        v26 = MEMORY[0x1E69DD260];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __115___SFPageFormatMenuController__presentBrowsingAssistantFromViewController_withSourceInfo_fromSafariViewController___block_invoke_5;
        v34[3] = &unk_1E8493F60;
        v35 = v19;
        v27 = [v26 zoomWithOptions:0 sourceViewProvider:v34];
        [v11 setPreferredTransition:v27];
      }
    }

    [v22 presentViewController:v11 animated:1 completion:0];
    [WeakRetained clearBadgeOnPageFormatMenu];
    *&self->_didDonateVisualPresentationSummaryToBiome = 0;

    objc_destroyWeak(&v38);
    objc_destroyWeak(location);
  }

  return presentingViewController == 0;
}

- (BOOL)presentMenuFromViewController:(id)controller withSourceInfo:(id)info fromSafariViewController:(BOOL)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  infoCopy = info;
  if ([MEMORY[0x1E69C8880] isBrowsingAssistantEnabled])
  {
    v10 = [(_SFPageFormatMenuController *)self _presentBrowsingAssistantFromViewController:controllerCopy withSourceInfo:infoCopy fromSafariViewController:viewControllerCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    presentingViewController = [WeakRetained presentingViewController];

    if (presentingViewController)
    {
      v13 = objc_loadWeakRetained(&self->_viewController);
      focusedItem = [v13 focusedItem];

      if (focusedItem)
      {
        [v13 setFocusedItem:0];
      }

      else
      {
        [v13 dismissViewControllerAnimated:1 completion:0];
      }

      v10 = 0;
    }

    else
    {
      view = [controllerCopy view];
      window = [view window];
      windowScene = [window windowScene];
      v18 = -[_SFPageFormatMenuController menuForOrientation:sourceInfo:](self, "menuForOrientation:sourceInfo:", [windowScene interfaceOrientation], infoCopy);

      [v18 setUsesReverseOrder:{objc_msgSend(infoCopy, "permittedArrowDirections") == 2}];
      [v18 setProvenance:{objc_msgSend(infoCopy, "provenance")}];
      [v18 setModalPresentationStyle:7];
      view2 = [v18 view];
      [view2 setAccessibilityIdentifier:@"PageFormatMenu"];

      v20 = [[_SFPopoverPresentationDelegate alloc] initWithSourceInfo:infoCopy];
      [(_SFPopoverPresentationDelegate *)v20 setPopoverUsesAdaptivePresentationInCompact:0];
      popoverPresentationController = [v18 popoverPresentationController];
      v32 = v20;
      [(_SFPopoverPresentationDelegate *)v20 attachToPopoverPresentationController:popoverPresentationController];
      [popoverPresentationController _setShouldHideArrow:{objc_msgSend(infoCopy, "shouldHideArrow")}];
      if ([infoCopy shouldPassthroughSuperview])
      {
        [popoverPresentationController _setPreferredHorizontalAlignment:1];
      }

      if (objc_opt_respondsToSelector())
      {
        permittedArrowDirections = [infoCopy permittedArrowDirections];
      }

      else
      {
        permittedArrowDirections = 1;
      }

      [popoverPresentationController setPermittedArrowDirections:permittedArrowDirections];
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      view3 = [controllerCopy view];
      window2 = [view3 window];
      windowScene2 = [window2 windowScene];
      v27 = _SFContextInfoWithComment();
      v33 = v23;
      v34 = infoCopy;
      v35 = v18;
      v28 = v18;
      v29 = v23;
      _SFPopoverSourceInfoUnwrap();

      v10 = 1;
      [controllerCopy presentViewController:v28 animated:1 completion:0];
      v30 = objc_loadWeakRetained(&self->_browserContentController);
      [v30 clearBadgeOnPageFormatMenu];

      objc_storeWeak(&self->_viewController, v28);
    }
  }

  return v10;
}

- (id)menuForOrientation:(int64_t)orientation sourceInfo:(id)info
{
  v6 = objc_alloc_init(_SFSettingsAlertController);
  [(_SFPageFormatMenuController *)self _constructMenuForAlert:v6 orientation:orientation];

  return v6;
}

- (void)_constructMenuForAlert:(id)alert orientation:(int64_t)orientation
{
  v70 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  if ([activeDocument isShowingSystemStartPage])
  {
    _otherTabAudioMediaStateAlertItem = [(_SFPageFormatMenuController *)self _otherTabAudioMediaStateAlertItem];
LABEL_7:
    v15 = _otherTabAudioMediaStateAlertItem;
    [alertCopy addItem:_otherTabAudioMediaStateAlertItem];

    goto LABEL_8;
  }

  isShowingReader = [WeakRetained isShowingReader];
  if (self->_shouldShowListeningControls)
  {
    _endListeningToSiriReaderAlertItem = [(_SFPageFormatMenuController *)self _endListeningToSiriReaderAlertItem];
    [alertCopy addItem:_endListeningToSiriReaderAlertItem];

    if (![(_SFPageFormatMenuController *)self _isActiveTabPausedOrPlaying])
    {
      _siriReaderAlertItem = [(_SFPageFormatMenuController *)self _siriReaderAlertItem];
      [alertCopy addItem:_siriReaderAlertItem];
    }

    [alertCopy addDivider];
    _playbackStateAndPositionAlertItem = [(_SFPageFormatMenuController *)self _playbackStateAndPositionAlertItem];
    [alertCopy addItem:_playbackStateAndPositionAlertItem];

    _playbackRateAlertItem = [(_SFPageFormatMenuController *)self _playbackRateAlertItem];
    [alertCopy addItem:_playbackRateAlertItem];

    [alertCopy addDivider];
    _otherTabAudioMediaStateAlertItem = [(_SFPageFormatMenuController *)self _moreControlsAlertItem];
    goto LABEL_7;
  }

  v16 = isShowingReader;
  if (isShowingReader)
  {
    [(_SFPageFormatMenuController *)self _readerTextSizeAlertItem];
  }

  else
  {
    [(_SFPageFormatMenuController *)self _pageZoomAlertItem];
  }
  v17 = ;
  [alertCopy addItem:v17];

  _readerAlertItem = [(_SFPageFormatMenuController *)self _readerAlertItem];
  readerAlertItem = self->_readerAlertItem;
  self->_readerAlertItem = _readerAlertItem;

  if (v16)
  {
    isReaderAvailable = 1;
  }

  else
  {
    readerContext = [activeDocument readerContext];
    isReaderAvailable = [readerContext isReaderAvailable];
  }

  [(_SFSettingsAlertItem *)self->_readerAlertItem setEnabled:isReaderAvailable];
  [alertCopy addItem:self->_readerAlertItem];
  if ([MEMORY[0x1E69C8880] isSiriReadThisEnabled] && objc_msgSend(WeakRetained, "supportsSiriReadThis"))
  {
    if ([(_SFPageFormatMenuController *)self _isSiriReaderCurrentlyActive])
    {
      [(_SFPageFormatMenuController *)self _listeningControlsAlertItem];
    }

    else
    {
      [(_SFPageFormatMenuController *)self _siriReaderAlertItem];
    }
    v22 = ;
    [alertCopy addItem:v22];
  }

  if ((v16 & 1) == 0)
  {
    v59 = isReaderAvailable;
    if (([WeakRetained hasDedicatedMediaStateButton] & 1) != 0 || !objc_msgSend(activeDocument, "mediaStateIcon"))
    {
      v24 = 0;
    }

    else
    {
      [alertCopy addDivider];
      _mediaStateAlertItem = [(_SFPageFormatMenuController *)self _mediaStateAlertItem];
      [alertCopy addItem:_mediaStateAlertItem];

      v24 = 1;
    }

    activeDocument2 = [WeakRetained activeDocument];
    atLeastOneOtherTabPlayingAudio = [activeDocument2 atLeastOneOtherTabPlayingAudio];

    if (atLeastOneOtherTabPlayingAudio)
    {
      if ((v24 & 1) == 0)
      {
        [alertCopy addDivider];
      }

      _otherTabAudioMediaStateAlertItem2 = [(_SFPageFormatMenuController *)self _otherTabAudioMediaStateAlertItem];
      [alertCopy addItem:_otherTabAudioMediaStateAlertItem2];
    }

    if (([WeakRetained hasDedicatedDownloadsToolbarItem] & 1) == 0 && -[_SFPageFormatMenuController _shouldEnableDownloadsAlert](self, "_shouldEnableDownloadsAlert"))
    {
      [alertCopy addDivider];
      _downloadsAlertItem = [(_SFPageFormatMenuController *)self _downloadsAlertItem];
      downloadsAlertItem = self->_downloadsAlertItem;
      self->_downloadsAlertItem = _downloadsAlertItem;

      [alertCopy addItem:self->_downloadsAlertItem];
    }

    [alertCopy addDivider];
    safari_popoverSourceInfo = [alertCopy safari_popoverSourceInfo];
    [(_SFPageFormatMenuController *)self _buildTranslationAlertItemsWithSourceInfo:safari_popoverSourceInfo];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v31 = self->_translationAlertItems;
    v32 = [(NSArray *)v31 countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v65;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v65 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [alertCopy addItem:*(*(&v64 + 1) + 8 * i)];
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v33);
    }

    LOBYTE(isReaderAvailable) = v59;
  }

  if (-[_SFPageFormatMenuController _canShowWebsiteSettings](self, "_canShowWebsiteSettings") && [MEMORY[0x1E69C8880] isInternalInstall])
  {
    [alertCopy addDivider];
    _userFeedbackAutofillAlertItem = [(_SFPageFormatMenuController *)self _userFeedbackAutofillAlertItem];
    [alertCopy addItem:_userFeedbackAutofillAlertItem];
  }

  [alertCopy addDivider];
  if ((isReaderAvailable & 1) == 0)
  {
    readerContext2 = [activeDocument readerContext];
    [readerContext2 checkReaderAvailability];
  }

  if (v16)
  {
    _readerFontAlertItem = [(_SFPageFormatMenuController *)self _readerFontAlertItem];
    [alertCopy addItem:_readerFontAlertItem];

    _readerThemeAlertItem = [(_SFPageFormatMenuController *)self _readerThemeAlertItem];
LABEL_58:
    v44 = _readerThemeAlertItem;
    [alertCopy addItem:_readerThemeAlertItem];

    goto LABEL_59;
  }

  if ([(_SFPageFormatMenuController *)self _canHideToolbar])
  {
    _fullScreenAlertItem = [(_SFPageFormatMenuController *)self _fullScreenAlertItem];
    [alertCopy addItem:_fullScreenAlertItem];
  }

  if ([(_SFPageFormatMenuController *)self _canToggleBetweenDesktopAndMobileSite])
  {
    v41 = [(_SFPageFormatMenuController *)self _desktopMobileToggleAlertItemWithOrientation:orientation];
    [alertCopy addItem:v41];
  }

  if ([(_SFPageFormatMenuController *)self _canToggleContentBlockers])
  {
    _contentBlockersToggleAlertItem = [(_SFPageFormatMenuController *)self _contentBlockersToggleAlertItem];
    [alertCopy addItem:_contentBlockersToggleAlertItem];
  }

  if ([(_SFPageFormatMenuController *)self _canToggleAdvancedPrivateBrowsingPrivacyProtections])
  {
    _advancedPrivateBrowsingPrivacyProtectionsAlertItem = [(_SFPageFormatMenuController *)self _advancedPrivateBrowsingPrivacyProtectionsAlertItem];
    [alertCopy addItem:_advancedPrivateBrowsingPrivacyProtectionsAlertItem];
  }

  if ([(_SFPageFormatMenuController *)self _canTogglePrivateRelay])
  {
    _readerThemeAlertItem = [(_SFPageFormatMenuController *)self _privateRelayToggleAlertItem];
    goto LABEL_58;
  }

LABEL_59:
  [alertCopy addDivider];
  if ([(_SFPageFormatMenuController *)self _canShowWebsiteSettings])
  {
    _websiteSettingsAlertItem = [(_SFPageFormatMenuController *)self _websiteSettingsAlertItem];
    [alertCopy addItem:_websiteSettingsAlertItem];
  }

  if (!(v16 & 1 | (([WeakRetained supportsPrivacyReport] & 1) == 0)))
  {
    v46 = [_SFPageFormatMenuPrivacyReportController alloc];
    activeDocument3 = [WeakRetained activeDocument];
    v48 = [(_SFPageFormatMenuPrivacyReportController *)v46 initWithDocument:activeDocument3];

    [(_SFPageFormatMenuPrivacyReportController *)v48 setDelegate:self];
    alertItem = [(_SFPageFormatMenuPrivacyReportController *)v48 alertItem];
    [alertCopy addItem:alertItem];
  }

  if ((v16 & 1) == 0)
  {
    if (([WeakRetained hasDedicatedExtensionsButton] & 1) == 0)
    {
      _hasExtensionsAvailableToShowInManageExtensionsView = [(_SFPageFormatMenuController *)self _hasExtensionsAvailableToShowInManageExtensionsView];
      if (_hasExtensionsAvailableToShowInManageExtensionsView)
      {
        [alertCopy addDivider];
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      _extensionItems = [(_SFPageFormatMenuController *)self _extensionItems];
      v52 = [_extensionItems countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v61;
        do
        {
          for (j = 0; j != v53; ++j)
          {
            if (*v61 != v54)
            {
              objc_enumerationMutation(_extensionItems);
            }

            [alertCopy addItem:*(*(&v60 + 1) + 8 * j)];
          }

          v53 = [_extensionItems countByEnumeratingWithState:&v60 objects:v68 count:16];
        }

        while (v53);
      }

      if (_hasExtensionsAvailableToShowInManageExtensionsView)
      {
        _manageExtensionsAlertItem = [(_SFPageFormatMenuController *)self _manageExtensionsAlertItem];
        [alertCopy addItem:_manageExtensionsAlertItem];
      }
    }

    if (WBSAXShouldShowAnimatedImageControls() && [MEMORY[0x1E69853A0] instancesRespondToSelector:sel__pauseAllAnimationsWithCompletionHandler_])
    {
      [alertCopy addDivider];
      activeWebView = [activeDocument activeWebView];
      _allowsAnyAnimationToPlay = [activeWebView _allowsAnyAnimationToPlay];

      if (_allowsAnyAnimationToPlay)
      {
        [(_SFPageFormatMenuController *)self _pauseAllAnimationsAlertItem];
      }

      else
      {
        [(_SFPageFormatMenuController *)self _playAllAnimationsAlertItem];
      }
      _otherTabAudioMediaStateAlertItem = ;
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (BOOL)_hasExtensionsAvailableToShowInManageExtensionsView
{
  _webExtensionsController = [(_SFPageFormatMenuController *)self _webExtensionsController];
  if ([_webExtensionsController loadEnabledExtensionsWasCalled])
  {
    _contentBlockerManager = [(_SFPageFormatMenuController *)self _contentBlockerManager];
    extensions = [_webExtensionsController extensions];
    if ([extensions count])
    {
      v6 = 1;
    }

    else
    {
      extensions2 = [_contentBlockerManager extensions];
      v6 = [extensions2 count] != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_extensionItems
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  _webExtensionsController = [(_SFPageFormatMenuController *)self _webExtensionsController];
  activeDocument = [WeakRetained activeDocument];
  isPrivateBrowsingEnabled = [activeDocument isPrivateBrowsingEnabled];

  v7 = [_webExtensionsController enabledExtensionsWithPrivateBrowsingEnabled:isPrivateBrowsingEnabled];
  activeTabForExtensions = [WeakRetained activeTabForExtensions];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46___SFPageFormatMenuController__extensionItems__block_invoke;
  v13[3] = &unk_1E8493FB0;
  v14 = _webExtensionsController;
  v15 = activeTabForExtensions;
  v9 = activeTabForExtensions;
  v10 = _webExtensionsController;
  v11 = [v7 safari_mapAndFilterObjectsUsingBlock:v13];

  return v11;
}

- (id)_siriReaderAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  readerContext = [activeDocument readerContext];
  mEMORY[0x1E69B1B98] = [MEMORY[0x1E69B1B98] sharedVoiceUtilities];
  activeSiriReaderSessionIdentifier = [mEMORY[0x1E69B1B98] activeSiriReaderSessionIdentifier];
  if (activeSiriReaderSessionIdentifier)
  {
    v7 = activeSiriReaderSessionIdentifier;
    mEMORY[0x1E69B1B98]2 = [MEMORY[0x1E69B1B98] sharedVoiceUtilities];
    activeSiriReaderSessionURL = [mEMORY[0x1E69B1B98]2 activeSiriReaderSessionURL];
    v10 = readerContext;
    readerURL = [readerContext readerURL];
    v12 = [activeSiriReaderSessionURL isEqual:readerURL];

    if (v12)
    {
      mEMORY[0x1E69B1B98]3 = [MEMORY[0x1E69B1B98] sharedVoiceUtilities];
      activeSiriReaderSessionIdentifier2 = [mEMORY[0x1E69B1B98]3 activeSiriReaderSessionIdentifier];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = readerContext;
  }

  mEMORY[0x1E69B1B98]3 = [MEMORY[0x1E696AFB0] UUID];
  activeSiriReaderSessionIdentifier2 = [mEMORY[0x1E69B1B98]3 UUIDString];
LABEL_6:
  v15 = activeSiriReaderSessionIdentifier2;

  v16 = [(_SFPageFormatMenuController *)self _siriReaderAlertItemWithState:0 identifier:v15];
  cachedSiriReaderAlertItem = self->_cachedSiriReaderAlertItem;
  self->_cachedSiriReaderAlertItem = v16;

  [(_SFSettingsAlertItem *)self->_cachedSiriReaderAlertItem setEnabled:0];
  objc_initWeak(&location, self);
  mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  v19 = MEMORY[0x1E69E96A0];
  v20 = MEMORY[0x1E69E96A0];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51___SFPageFormatMenuController__siriReaderAlertItem__block_invoke;
  v27[3] = &unk_1E8493FD8;
  v21 = WeakRetained;
  v28 = v21;
  objc_copyWeak(&v31, &location);
  v22 = v10;
  v29 = v22;
  v23 = activeDocument;
  v30 = v23;
  [mEMORY[0x1E69B1B90] updateContentIdentifierOnQueue:v19 completion:v27];

  v24 = self->_cachedSiriReaderAlertItem;
  objc_destroyWeak(&v31);

  objc_destroyWeak(&location);

  return v24;
}

- (id)_endListeningToSiriReaderAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  objc_initWeak(&location, self);
  v5 = *MEMORY[0x1E69DDCF8];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __65___SFPageFormatMenuController__endListeningToSiriReaderAlertItem__block_invoke;
  v11 = &unk_1E8494000;
  objc_copyWeak(&v12, &location);
  v6 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v5 icon:v4 action:36 handler:&v8];
  [v6 setAccessibilityIdentifier:{@"EndListening", v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

- (id)_moreControlsAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"textformat.size"];
  v5 = *MEMORY[0x1E69DDCF8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53___SFPageFormatMenuController__moreControlsAlertItem__block_invoke;
  v8[3] = &unk_1E848F9D8;
  v8[4] = self;
  v6 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v5 icon:v4 action:38 handler:v8];
  [v6 setAccessibilityIdentifier:@"MoreControls"];
  [v6 setKeepsMenuPresented:1];

  return v6;
}

- (id)_listeningControlsAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"speaker.wave.2.bubble.left"];
  v5 = *MEMORY[0x1E69DDCF8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58___SFPageFormatMenuController__listeningControlsAlertItem__block_invoke;
  v10[3] = &unk_1E848F9D8;
  v10[4] = self;
  v6 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v5 icon:v4 action:37 handler:v10];
  [v6 setAccessibilityIdentifier:@"ListeningControls"];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  [v6 setEnabled:{objc_msgSend(activeDocument, "isBlockedByScreenTime") ^ 1}];

  [v6 setKeepsMenuPresented:1];

  return v6;
}

- (id)_playbackRateAlertItem
{
  v2 = _WBSLocalizedString();
  v3 = objc_alloc_init(_SFSiriReaderPlaybackRateController);
  v4 = [_SFSettingsAlertItem optionsGroupWithTitle:v2 action:39 subItemAction:40 controller:v3];

  [v4 setAccessibilityIdentifier:@"PlaybackRate"];

  return v4;
}

- (id)_playbackStateAndPositionAlertItem
{
  v3 = objc_alloc_init(_SFSiriReaderPlaybackPositionAndStateController);
  v4 = [_SFSettingsAlertItem stepperWithController:v3 action:41 handler:0];

  [v4 setAccessibilityIdentifier:@"PlaybackStateAndPosition"];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  [v4 setEnabled:{objc_msgSend(activeDocument, "isBlockedByScreenTime") ^ 1}];

  return v4;
}

- (void)reloadAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  presentingViewController = [WeakRetained presentingViewController];

  if (presentingViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPageFormatMenuController *)self _clearCachedItems];
      [WeakRetained reloadData];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = WeakRetained;
        [v4 removeAllItems];
        view = [v4 view];
        window = [view window];
        windowScene = [window windowScene];
        -[_SFPageFormatMenuController _constructMenuForAlert:orientation:](self, "_constructMenuForAlert:orientation:", v4, [windowScene interfaceOrientation]);

        [v4 resizeMenu];
      }
    }
  }
}

- (void)dismissMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  presentingViewController = [WeakRetained presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [WeakRetained presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_readerAvailabilityDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  readerContext = [activeDocument readerContext];

  v8 = changeCopy;
  if (object == readerContext)
  {
    userInfo = [changeCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:@"isAvailable"];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      [(_SFSettingsAlertItem *)self->_readerAlertItem setEnabled:1];
    }

    v8 = changeCopy;
  }
}

- (id)_readerAlertItem
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  isShowingReader = [WeakRetained isShowingReader];

  v5 = _WBSLocalizedString();
  if (isShowingReader)
  {
    [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.plaintext"];
  }
  v6 = ;
  v7 = *MEMORY[0x1E69DDCF8];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47___SFPageFormatMenuController__readerAlertItem__block_invoke;
  v13 = &unk_1E8494000;
  objc_copyWeak(&v14, &location);
  v8 = [_SFSettingsAlertItem buttonWithTitle:v5 textStyle:v7 icon:v6 action:5 handler:&v10];
  [v8 setAccessibilityIdentifier:{@"HideReaderViewButton", v10, v11, v12, v13}];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);

  return v8;
}

- (BOOL)_isActiveTabPausedOrPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  siriReaderPlaybackStateForActiveTab = [WeakRetained siriReaderPlaybackStateForActiveTab];

  return (siriReaderPlaybackStateForActiveTab - 1) < 2;
}

- (BOOL)_isSiriReaderCurrentlyActive
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  siriReaderPlaybackStateForActiveTab = [WeakRetained siriReaderPlaybackStateForActiveTab];

  mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  currentPlaybackState = [mEMORY[0x1E69B1B90] currentPlaybackState];

  return (currentPlaybackState - 1) < 2 && siriReaderPlaybackStateForActiveTab != 3;
}

- (void)updateShouldShowListeningControls:(BOOL)controls
{
  controlsCopy = controls;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([(_SFPageFormatMenuController *)self _isActiveTabPausedOrPlaying])
  {
    if (!controlsCopy)
    {
      LOBYTE(isSiriReadThisEnabled) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    _isSiriReaderCurrentlyActive = [(_SFPageFormatMenuController *)self _isSiriReaderCurrentlyActive];
    LOBYTE(isSiriReadThisEnabled) = 0;
    if (!_isSiriReaderCurrentlyActive || !controlsCopy)
    {
      goto LABEL_8;
    }
  }

  isSiriReadThisEnabled = [MEMORY[0x1E69C8880] isSiriReadThisEnabled];
  if (isSiriReadThisEnabled)
  {
    LOBYTE(isSiriReadThisEnabled) = [WeakRetained supportsSiriReadThis];
  }

LABEL_8:
  self->_shouldShowListeningControls = isSiriReadThisEnabled;
}

- (id)_titleForPlaybackState:(int64_t)state
{
  if ((state - 2) >= 2 && state != 1)
  {
    mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
    currentPlaybackState = [mEMORY[0x1E69B1B90] currentPlaybackState];

    if ((currentPlaybackState - 1) <= 1)
    {
      mEMORY[0x1E69B1B98] = [MEMORY[0x1E69B1B98] sharedVoiceUtilities];
      activeSiriReaderSessionIdentifier = [mEMORY[0x1E69B1B98] activeSiriReaderSessionIdentifier];
      mEMORY[0x1E69B1B90]2 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
      nowPlayingContentIdentifier = [mEMORY[0x1E69B1B90]2 nowPlayingContentIdentifier];
      [activeSiriReaderSessionIdentifier isEqualToString:nowPlayingContentIdentifier];
    }
  }

  v9 = _WBSLocalizedString();

  return v9;
}

- (id)_siriReaderAlertItemWithState:(int64_t)state identifier:(id)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v7 = [(_SFPageFormatMenuController *)self _titleForPlaybackState:state];
  v8 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"speaker.wave.2.bubble.left"];
  v9 = *MEMORY[0x1E69DDCF8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72___SFPageFormatMenuController__siriReaderAlertItemWithState_identifier___block_invoke;
  v13[3] = &unk_1E848F9D8;
  v14 = WeakRetained;
  v10 = WeakRetained;
  v11 = [_SFSettingsAlertItem buttonWithTitle:v7 textStyle:v9 icon:v8 action:35 handler:v13];
  [v11 setAccessibilityIdentifier:@"ActivateSiriReader"];

  return v11;
}

- (id)_mediaStateAlertItem
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  [activeDocument mediaStateIcon];

  v5 = SFTitleForTogglingMediaStateIcon();
  v6 = MEMORY[0x1E69DCAB8];
  v7 = SFSystemImageNameForTogglingMediaStateIcon();
  v8 = [v6 systemImageNamed:v7];

  v9 = *MEMORY[0x1E69DDCF8];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __51___SFPageFormatMenuController__mediaStateAlertItem__block_invoke;
  v16 = &unk_1E8494000;
  objc_copyWeak(&v17, &location);
  v10 = [_SFSettingsAlertItem buttonWithTitle:v5 textStyle:v9 icon:v8 action:9 handler:&v13];
  v11 = SFColorForMediaStateIcon();
  [v10 setTintColor:{v11, v13, v14, v15, v16}];

  [v10 setAccessibilityIdentifier:@"ToggleMediaState"];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);

  return v10;
}

- (id)_otherTabAudioMediaStateAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = SFBrowserContentControllerOtherTabWithSound(WeakRetained);

  [v3 isMuted];
  v4 = _WBSLocalizedString();
  v5 = MEMORY[0x1E69DCAB8];
  [v3 isMuted];
  v6 = SFSystemImageNameForMediaStateIcon();
  v7 = [v5 systemImageNamed:v6];

  v8 = *MEMORY[0x1E69DDCF8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64___SFPageFormatMenuController__otherTabAudioMediaStateAlertItem__block_invoke;
  v13[3] = &unk_1E848F9D8;
  v14 = v3;
  v9 = v3;
  v10 = [_SFSettingsAlertItem buttonWithTitle:v4 textStyle:v8 icon:v7 action:10 handler:v13];
  title = [v9 title];
  [v10 setSubtitle:title];

  [v10 setAccessibilityIdentifier:@"ToggleOtherTabsAudioMediaState"];

  return v10;
}

- (id)_downloadsAlertItem
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.down.circle"];
  v4 = _WBSLocalizedString();
  v5 = *MEMORY[0x1E69DDCF8];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50___SFPageFormatMenuController__downloadsAlertItem__block_invoke;
  v12 = &unk_1E8494000;
  objc_copyWeak(&v13, &location);
  v6 = [_SFSettingsAlertItem buttonWithTitle:v4 textStyle:v5 icon:v3 action:13 handler:&v9];

  [v6 setAccessibilityIdentifier:{@"ShowDownloads", v9, v10, v11, v12}];
  [(_SFPageFormatMenuController *)self _updateDownloadsAlertItem:v6];
  v7 = +[_SFPageFormatMenuBadgeView defaultComponentsArrangement];
  [v6 setComponentsArrangement:v7];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_updateDownloadsAlertItem:(id)item
{
  itemCopy = item;
  isEnabled = [itemCopy isEnabled];
  showsIndicatorDot = [itemCopy showsIndicatorDot];
  badgeText = [itemCopy badgeText];
  v7 = +[_SFDownloadManager sharedManager];
  runningDownloadsCount = [v7 runningDownloadsCount];

  if (runningDownloadsCount)
  {
    badgeView = [itemCopy badgeView];

    if (badgeView)
    {
      badgeView2 = [itemCopy badgeView];
      _localizedStringOfRunningDownloads = [(_SFPageFormatMenuController *)self _localizedStringOfRunningDownloads];
      [badgeView2 setBadgeText:_localizedStringOfRunningDownloads];
    }

    else
    {
      v12 = [_SFPageFormatMenuBadgeView alloc];
      _localizedStringOfRunningDownloads2 = [(_SFPageFormatMenuController *)self _localizedStringOfRunningDownloads];
      v14 = [(_SFPageFormatMenuBadgeView *)v12 initWithText:_localizedStringOfRunningDownloads2];
      [itemCopy setBadgeView:v14];
    }
  }

  else
  {
    [itemCopy setShowsIndicatorDot:{-[_SFPageFormatMenuController _shouldShowUnviewedFinishedDownloadsIndicator](self, "_shouldShowUnviewedFinishedDownloadsIndicator")}];
    [itemCopy setBadgeView:0];
  }

  [itemCopy setEnabled:{-[_SFPageFormatMenuController _shouldEnableDownloadsAlert](self, "_shouldEnableDownloadsAlert")}];
  v15 = +[_SFDownloadManager sharedManager];
  if ([v15 runningDownloadsCount])
  {
    _localizedStringOfRunningDownloads3 = [(_SFPageFormatMenuController *)self _localizedStringOfRunningDownloads];
    [itemCopy setBadgeText:_localizedStringOfRunningDownloads3];
  }

  else
  {
    [itemCopy setBadgeText:0];
  }

  if (isEnabled != [itemCopy isEnabled] || showsIndicatorDot != objc_msgSend(itemCopy, "showsIndicatorDot") || (objc_msgSend(itemCopy, "badgeText"), v17 = objc_claimAutoreleasedReturnValue(), v18 = WBSIsEqual(), v17, (v18 & 1) == 0))
  {
    [itemCopy notifyObserversItemDidUpdate];
  }
}

- (id)_localizedStringOfRunningDownloads
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[_SFDownloadManager sharedManager];
  v4 = [v2 localizedStringWithFormat:@"%zu", objc_msgSend(v3, "runningDownloadsCount")];

  return v4;
}

- (BOOL)_shouldEnableDownloadsAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained downloadsCount] != 0;

  return v3;
}

- (BOOL)_shouldShowUnviewedFinishedDownloadsIndicator
{
  v3 = +[_SFDownloadManager sharedManager];
  if ([v3 runningDownloadsCount])
  {
    hasUnviewedDownloads = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
    hasUnviewedDownloads = [WeakRetained hasUnviewedDownloads];
  }

  return hasUnviewedDownloads;
}

- (id)_desktopMobileToggleAlertItemWithOrientation:(int64_t)orientation
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];

  reloadOptionsController = [activeDocument reloadOptionsController];
  webView = [activeDocument webView];
  v8 = [webView URL];
  [reloadOptionsController setSupportsAdvancedPrivacyProtections:{objc_msgSend(activeDocument, "supportsAdvancedPrivacyProtectionsForURL:", v8)}];

  loadedUsingDesktopUserAgent = [reloadOptionsController loadedUsingDesktopUserAgent];
  v10 = _WBSLocalizedString();
  v11 = [MEMORY[0x1E69DCAB8] safari_currentDeviceImageNameForOrientation:orientation];
  if (loadedUsingDesktopUserAgent)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"desktopcomputer";
  }

  v13 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v12];
  v14 = *MEMORY[0x1E69DDCF8];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __76___SFPageFormatMenuController__desktopMobileToggleAlertItemWithOrientation___block_invoke;
  v21 = &unk_1E8494028;
  v23 = loadedUsingDesktopUserAgent;
  v22 = reloadOptionsController;
  v15 = reloadOptionsController;
  v16 = [_SFSettingsAlertItem buttonWithTitle:v10 textStyle:v14 icon:v13 action:21 handler:&v18];
  [v16 setAccessibilityIdentifier:{@"ToggleDesktopMobileWebsite", v18, v19, v20, v21}];

  return v16;
}

- (id)_pauseAllAnimationsAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pause.circle"];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  activeWebView = [activeDocument activeWebView];

  v8 = *MEMORY[0x1E69DDCF8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59___SFPageFormatMenuController__pauseAllAnimationsAlertItem__block_invoke;
  v12[3] = &unk_1E848F9D8;
  v13 = activeWebView;
  v9 = activeWebView;
  v10 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v8 icon:v4 action:33 handler:v12];
  [v10 setAccessibilityIdentifier:@"PauseAllAnimationsAlertItem"];

  return v10;
}

- (id)_playAllAnimationsAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.circle"];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  activeWebView = [activeDocument activeWebView];

  v8 = *MEMORY[0x1E69DDCF8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58___SFPageFormatMenuController__playAllAnimationsAlertItem__block_invoke;
  v12[3] = &unk_1E848F9D8;
  v13 = activeWebView;
  v9 = activeWebView;
  v10 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v8 icon:v4 action:34 handler:v12];
  [v10 setAccessibilityIdentifier:@"PlayAllAnimationsAlertItem"];

  return v10;
}

- (id)_fullScreenAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.left.and.arrow.down.right"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___SFPageFormatMenuController__fullScreenAlertItem__block_invoke;
  v8[3] = &unk_1E848F9D8;
  v8[4] = self;
  v6 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v4 icon:v5 action:20 handler:v8];

  [v6 setAccessibilityIdentifier:@"HideToolbar"];

  return v6;
}

- (void)_anchorInWindowCoordinatesForAlert:(id)alert
{
  popoverPresentationController = [alert popoverPresentationController];
  sourceView = [popoverPresentationController sourceView];
  [popoverPresentationController sourceRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  window = [sourceView window];
  [popoverPresentationController setSourceView:window];
  [window convertRect:sourceView fromView:{v5, v7, v9, v11}];
  [popoverPresentationController setSourceRect:?];
}

- (void)_buildTranslationAlertItemsWithSourceInfo:(id)info
{
  infoCopy = info;
  p_translationAlertItems = &self->_translationAlertItems;
  translationAlertItems = self->_translationAlertItems;
  self->_translationAlertItems = 0;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _userFeedbackTranslationAlertItem = [(_SFPageFormatMenuController *)self _userFeedbackTranslationAlertItem];
  [v7 addObject:_userFeedbackTranslationAlertItem];
  if ([(_SFPageFormatMenuController *)self _hasStartedTranslation])
  {
    _exitTranslationAlertItem = [(_SFPageFormatMenuController *)self _exitTranslationAlertItem];
    [v7 insertObject:_exitTranslationAlertItem atIndex:0];

    _internalTapToRadarTranslationAlertItem = [(_SFPageFormatMenuController *)self _internalTapToRadarTranslationAlertItem];
    [v7 safari_addObjectUnlessNil:_internalTapToRadarTranslationAlertItem];

    objc_storeStrong(&self->_translationAlertItems, v7);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
    activeDocument = [WeakRetained activeDocument];
    translationContext = [activeDocument translationContext];

    availableTargetLocaleIdentifiers = [translationContext availableTargetLocaleIdentifiers];
    if ([availableTargetLocaleIdentifiers count])
    {
      [_userFeedbackTranslationAlertItem setEnabled:0];
      if ([availableTargetLocaleIdentifiers count] == 1)
      {
        firstObject = [availableTargetLocaleIdentifiers firstObject];
        v16 = [(_SFPageFormatMenuController *)self _translateAlertItemForLocaleIdentifier:firstObject];
        [v7 insertObject:v16 atIndex:0];

        objc_storeStrong(p_translationAlertItems, v7);
      }

      else if ([availableTargetLocaleIdentifiers count] >= 2)
      {
        v17 = _WBSLocalizedString();
        objc_initWeak(&location, infoCopy);
        v18 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
        v21 = *MEMORY[0x1E69DDCF8];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __73___SFPageFormatMenuController__buildTranslationAlertItemsWithSourceInfo___block_invoke;
        v27[3] = &unk_1E8494070;
        objc_copyWeak(&v29, &location);
        v19 = translationContext;
        v28 = v19;
        v22 = v17;
        v20 = [_SFSettingsAlertItem buttonWithTitle:v17 textStyle:v21 icon:v18 action:14 handler:v27];

        objc_initWeak(&from, self);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __73___SFPageFormatMenuController__buildTranslationAlertItemsWithSourceInfo___block_invoke_4;
        v23[3] = &unk_1E8494098;
        objc_copyWeak(&v25, &from);
        v24 = v19;
        [v20 setSelectionHandler:v23];
        [v20 setAccessibilityIdentifier:@"Translate Website"];
        [v7 insertObject:v20 atIndex:0];
        objc_storeStrong(p_translationAlertItems, v7);

        objc_destroyWeak(&v25);
        objc_destroyWeak(&from);

        objc_destroyWeak(&v29);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (id)_translateAlertItemForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  translationContext = [activeDocument translationContext];

  v8 = [MEMORY[0x1E695DF58] safari_displayNameForLocaleIdentifier:identifierCopy];
  v9 = MEMORY[0x1E696AEC0];
  v10 = _WBSLocalizedString();
  v11 = [v9 stringWithFormat:v10, v8];

  v12 = *MEMORY[0x1E69DDCF8];
  v13 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70___SFPageFormatMenuController__translateAlertItemForLocaleIdentifier___block_invoke;
  v22[3] = &unk_1E8493BD8;
  v23 = translationContext;
  v24 = identifierCopy;
  v14 = identifierCopy;
  v15 = translationContext;
  v16 = [_SFSettingsAlertItem buttonWithTitle:v11 textStyle:v12 icon:v13 action:15 handler:v22];

  [v16 setEnabled:0];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Translate-%@", v14];
  [v16 setAccessibilityIdentifier:v17];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70___SFPageFormatMenuController__translateAlertItemForLocaleIdentifier___block_invoke_2;
  v20[3] = &unk_1E848FA00;
  v18 = v16;
  v21 = v18;
  [v15 validateTargetLocale:v14 completionHandler:v20];

  return v18;
}

- (id)_exitTranslationAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  translationContext = [activeDocument translationContext];

  v5 = _WBSLocalizedString();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56___SFPageFormatMenuController__exitTranslationAlertItem__block_invoke;
  v11[3] = &unk_1E848F9D8;
  v12 = translationContext;
  v8 = translationContext;
  v9 = [_SFSettingsAlertItem buttonWithTitle:v5 textStyle:v6 icon:v7 action:17 handler:v11];

  [v9 setAccessibilityIdentifier:@"ReloadTranslatedWebpage"];

  return v9;
}

- (id)_internalTapToRadarTranslationAlertItem
{
  if (showInternalTranslationActions())
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
    v4 = _WBSLocalizedString();
    v5 = *MEMORY[0x1E69DDCF8];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70___SFPageFormatMenuController__internalTapToRadarTranslationAlertItem__block_invoke;
    v10[3] = &unk_1E848F9D8;
    v11 = WeakRetained;
    v7 = WeakRetained;
    v8 = [_SFSettingsAlertItem buttonWithTitle:v4 textStyle:v5 icon:v6 action:19 handler:v10];

    [v8 setAccessibilityIdentifier:@"TranslationTapToRadar"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_userFeedbackTranslationAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64___SFPageFormatMenuController__userFeedbackTranslationAlertItem__block_invoke;
  v8[3] = &unk_1E848F9D8;
  v8[4] = self;
  v6 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v4 icon:v5 action:18 handler:v8];

  [v6 setAccessibilityIdentifier:@"ReportTranslationIssue"];

  return v6;
}

- (void)_translationAvailabilityDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___SFPageFormatMenuController__translationAvailabilityDidChange___block_invoke;
  v6[3] = &unk_1E848F548;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)_userFeedbackAutofillAlertItem
{
  titleText = [MEMORY[0x1E69C8E90] titleText];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___SFPageFormatMenuController__userFeedbackAutofillAlertItem__block_invoke;
  v8[3] = &unk_1E848F9D8;
  v8[4] = self;
  v6 = [_SFSettingsAlertItem buttonWithTitle:titleText textStyle:v4 icon:v5 action:32 handler:v8];

  return v6;
}

- (id)_pageZoomAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [SFPageZoomStepperController alloc];
  activeDocument = [WeakRetained activeDocument];
  pageZoomManager = [WeakRetained pageZoomManager];
  v6 = [(SFPageZoomStepperController *)v3 initWithDocument:activeDocument preferenceManager:pageZoomManager];
  v7 = [_SFSettingsAlertItem stepperWithController:v6 action:3 handler:&__block_literal_global_279_0];

  return v7;
}

- (id)_readerTextSizeAlertItem
{
  v3 = [SFReaderTextSizeStepperController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  readerContext = [activeDocument readerContext];
  v7 = [(SFReaderTextSizeStepperController *)v3 initWithReaderContext:readerContext];
  v8 = [_SFSettingsAlertItem stepperWithController:v7 action:4 handler:&__block_literal_global_282];

  return v8;
}

- (id)_readerThemeAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];

  readerContext = [activeDocument readerContext];
  v6 = objc_loadWeakRetained(&self->_viewController);
  provenance = [v6 provenance];

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __52___SFPageFormatMenuController__readerThemeAlertItem__block_invoke;
  v16 = &unk_1E84940C0;
  v17 = readerContext;
  v18 = provenance;
  v8 = readerContext;
  v9 = [SFReaderAppearanceThemeSelector themeSelectorWithBlock:&v13];
  configurationManager = [v8 configurationManager];
  [v9 setSelectedTheme:{objc_msgSend(configurationManager, "themeForAppearance:", objc_msgSend(v8, "currentAppearance"))}];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [_SFSettingsAlertItem paletteWithAction:0 controller:v9];
  [v11 setAccessibilityIdentifier:@"ThemeSelector"];

  return v11;
}

- (id)_readerFontAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  readerContext = [activeDocument readerContext];

  v5 = _WBSLocalizedString();
  v6 = [[_SFReaderFontOptionsGroupController alloc] initWithReaderContext:readerContext];
  v7 = [_SFSettingsAlertItem optionsGroupWithTitle:v5 action:6 subItemAction:7 controller:v6];

  [v7 setAccessibilityIdentifier:@"ReaderFont"];

  return v7;
}

- (BOOL)_canToggleContentBlockers
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader] & 1) != 0 || (objc_msgSend(WeakRetained, "activeDocument"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "webView"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "URL"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "safari_isSafariWebExtensionURL"), v5, v4, v3, (v6))
  {
    hasEnabledContentBlockers = 0;
  }

  else
  {
    perSitePreferencesVendor = [WeakRetained perSitePreferencesVendor];
    contentBlockersPreferenceManager = [perSitePreferencesVendor contentBlockersPreferenceManager];
    hasEnabledContentBlockers = [contentBlockersPreferenceManager hasEnabledContentBlockers];
  }

  return hasEnabledContentBlockers;
}

- (BOOL)_canHideToolbar
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  if ([activeDocument canHideToolbar])
  {
    v4 = [WeakRetained isShowingReader] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_canToggleBetweenDesktopAndMobileSite
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    activeDocument = [WeakRetained activeDocument];
    webView = [activeDocument webView];
    v6 = [webView URL];

    if ([v6 sf_isOfflineReadingListURL])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = [v6 safari_isSafariWebExtensionURL] ^ 1;
    }
  }

  return v3;
}

- (BOOL)_canShowWebsiteSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  webView = [activeDocument webView];
  v5 = [webView URL];
  safari_isSafariWebExtensionURL = [v5 safari_isSafariWebExtensionURL];

  return safari_isSafariWebExtensionURL ^ 1;
}

- (BOOL)_canShowReportWebsiteIssueInMainMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  isPageReloaded = [activeDocument isPageReloaded];

  return isPageReloaded;
}

- (BOOL)_canShowScribble
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader])
  {
    canEnableScribble = 0;
  }

  else
  {
    activeDocument = [WeakRetained activeDocument];
    sfScribbleController = [activeDocument sfScribbleController];
    canEnableScribble = [sfScribbleController canEnableScribble];
  }

  return canEnableScribble;
}

- (BOOL)_canTogglePrivateRelay
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader])
  {
    _wasPrivateRelayed = 0;
  }

  else
  {
    activeDocument = [WeakRetained activeDocument];
    if ([activeDocument isNavigatingViaReloadWithoutPrivateRelay])
    {
      _wasPrivateRelayed = 1;
    }

    else
    {
      webView = [activeDocument webView];
      if (objc_opt_respondsToSelector())
      {
        webView2 = [activeDocument webView];
        _wasPrivateRelayed = [webView2 _wasPrivateRelayed];
      }

      else
      {
        _wasPrivateRelayed = 0;
      }
    }
  }

  return _wasPrivateRelayed;
}

- (id)_privateRelayToggleAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  wasLoadedWithPrivateRelay = [activeDocument wasLoadedWithPrivateRelay];
  if (wasLoadedWithPrivateRelay)
  {
    v5 = @"pin.point.of.interest.to.line.below";
    v6 = 23;
  }

  else
  {
    v5 = @"pin.point.of.interest.to.line.below.slash";
    v6 = 24;
  }

  v7 = _WBSLocalizedString();
  v8 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v5];
  v9 = *MEMORY[0x1E69DDCF8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59___SFPageFormatMenuController__privateRelayToggleAlertItem__block_invoke;
  v14[3] = &unk_1E8494110;
  v17 = wasLoadedWithPrivateRelay;
  v15 = activeDocument;
  v16 = WeakRetained;
  v10 = WeakRetained;
  v11 = activeDocument;
  v12 = [_SFSettingsAlertItem buttonWithTitle:v7 textStyle:v9 icon:v8 action:v6 handler:v14];
  [v12 setAccessibilityIdentifier:@"TogglePrivateRelay"];

  return v12;
}

- (BOOL)_canViewSecurityInformation
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  webView = [activeDocument webView];
  v5 = [webView serverTrust] != 0;

  return v5;
}

- (id)_viewSecurityInformationAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"lock"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64___SFPageFormatMenuController__viewSecurityInformationAlertItem__block_invoke;
  v8[3] = &unk_1E848F9D8;
  v8[4] = self;
  v6 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v4 icon:v5 action:55 handler:v8];

  [v6 setAccessibilityIdentifier:@"ViewSecurityInformation"];

  return v6;
}

- (void)_presentSecurityInformation
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v3 = getSFCertificatePresentationRequestClass_softClass;
  v26 = getSFCertificatePresentationRequestClass_softClass;
  if (!getSFCertificatePresentationRequestClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getSFCertificatePresentationRequestClass_block_invoke;
    v21 = &unk_1E848F710;
    v22 = &v23;
    SecurityUILibraryCore();
    v24[3] = objc_getClass("SFCertificatePresentationRequest");
    getSFCertificatePresentationRequestClass_softClass = *(v22[1] + 24);
    v3 = v24[3];
  }

  v4 = v3;
  _Block_object_dispose(&v23, 8);
  v5 = [v3 alloc];
  activeDocument = [WeakRetained activeDocument];
  webView = [activeDocument webView];
  v8 = [v5 initWithTrust:{objc_msgSend(webView, "serverTrust")}];

  v9 = _WBSLocalizedString();
  [v8 setTitle:v9];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v10 = getSFCertificateViewControllerClass_softClass;
  v26 = getSFCertificateViewControllerClass_softClass;
  if (!getSFCertificateViewControllerClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getSFCertificateViewControllerClass_block_invoke;
    v21 = &unk_1E848F710;
    v22 = &v23;
    SecurityUILibraryCore();
    v24[3] = objc_getClass("SFCertificateViewController");
    getSFCertificateViewControllerClass_softClass = *(v22[1] + 24);
    v10 = v24[3];
  }

  v11 = v10;
  _Block_object_dispose(&v23, 8);
  v12 = [[v10 alloc] initWithCertificatePresentationRequest:v8];
  if (v12)
  {
    viewControllerToPresentFromNavigationBar = [WeakRetained viewControllerToPresentFromNavigationBar];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58___SFPageFormatMenuController__presentSecurityInformation__block_invoke;
    v15[3] = &unk_1E848F548;
    v16 = viewControllerToPresentFromNavigationBar;
    v17 = v12;
    v14 = viewControllerToPresentFromNavigationBar;
    [v14 dismissViewControllerAnimated:1 completion:v15];
  }
}

- (BOOL)_hasStartedTranslation
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  translationContext = [activeDocument translationContext];
  hasStartedTranslating = [translationContext hasStartedTranslating];

  return hasStartedTranslating;
}

- (id)_contentBlockersToggleAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];

  wasLoadedWithContentBlockersEnabled = [activeDocument wasLoadedWithContentBlockersEnabled];
  if (wasLoadedWithContentBlockersEnabled)
  {
    v5 = @"shield.slash";
  }

  else
  {
    v5 = @"checkmark.shield";
  }

  v6 = _WBSLocalizedString();
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5];
  v8 = *MEMORY[0x1E69DDCF8];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __62___SFPageFormatMenuController__contentBlockersToggleAlertItem__block_invoke;
  v15 = &unk_1E8494028;
  v16 = activeDocument;
  v17 = wasLoadedWithContentBlockersEnabled;
  v9 = activeDocument;
  v10 = [_SFSettingsAlertItem buttonWithTitle:v6 textStyle:v8 icon:v7 action:22 handler:&v12];
  [v10 setAccessibilityIdentifier:{@"ToggleContentBlockers", v12, v13, v14, v15}];

  return v10;
}

- (BOOL)_canToggleAdvancedPrivateBrowsingPrivacyProtections
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader])
  {
    v3 = 0;
  }

  else
  {
    activeDocument = [WeakRetained activeDocument];
    webView = [activeDocument webView];
    v6 = [webView URL];
    safari_isSafariWebExtensionURL = [v6 safari_isSafariWebExtensionURL];

    if (safari_isSafariWebExtensionURL)
    {
      v3 = 0;
    }

    else
    {
      isPrivateBrowsingEnabled = [activeDocument isPrivateBrowsingEnabled];
      safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
      v3 = [safari_browserDefaults safari_enableAdvancedPrivacyProtections:isPrivateBrowsingEnabled];
    }
  }

  return v3;
}

- (id)_advancedPrivateBrowsingPrivacyProtectionsAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  wasLoadedWithAdvancedPrivateBrowsingPrivacyProtections = [activeDocument wasLoadedWithAdvancedPrivateBrowsingPrivacyProtections];
  v6 = wasLoadedWithAdvancedPrivateBrowsingPrivacyProtections;
  if (wasLoadedWithAdvancedPrivateBrowsingPrivacyProtections)
  {
    v7 = _WBSLocalizedString();
    if ([(_SFPageFormatMenuController *)self _canTogglePrivateRelay])
    {
      v8 = 26;
LABEL_6:
      v9 = _WBSLocalizedString();

      v7 = v9;
      goto LABEL_9;
    }

    v8 = 26;
  }

  else
  {
    v7 = _WBSLocalizedString();
    if ([(_SFPageFormatMenuController *)self _canTogglePrivateRelay])
    {
      v8 = 25;
      goto LABEL_6;
    }

    v8 = 25;
  }

LABEL_9:
  v10 = *MEMORY[0x1E69DDCF8];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __82___SFPageFormatMenuController__advancedPrivateBrowsingPrivacyProtectionsAlertItem__block_invoke;
  v17 = &unk_1E8494028;
  v18 = activeDocument;
  v19 = v6;
  v11 = activeDocument;
  v12 = [_SFSettingsAlertItem buttonWithTitle:v7 textStyle:v10 icon:0 action:v8 handler:&v14];
  [v12 setAccessibilityIdentifier:{@"ToggleAdvancedPrivateBrowsingPrivacyProtections", v14, v15, v16, v17}];

  return v12;
}

- (id)_websiteSettingsAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gear"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56___SFPageFormatMenuController__websiteSettingsAlertItem__block_invoke;
  v8[3] = &unk_1E848F9D8;
  v8[4] = self;
  v6 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v4 icon:v5 action:27 handler:v8];

  [v6 setAccessibilityIdentifier:@"WebsiteSettings"];

  return v6;
}

- (id)_scribbleAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];

  sfScribbleController = [activeDocument sfScribbleController];
  userInitiatedScribblingDisabled = [sfScribbleController userInitiatedScribblingDisabled];

  if (userInitiatedScribblingDisabled)
  {
    v6 = 0;
  }

  else
  {
    v7 = _WBSLocalizedString();
    v8 = *MEMORY[0x1E69DDCF8];
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye.slash.fill"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49___SFPageFormatMenuController__scribbleAlertItem__block_invoke;
    v11[3] = &unk_1E848F9D8;
    v12 = activeDocument;
    v6 = [_SFSettingsAlertItem buttonWithTitle:v7 textStyle:v8 icon:v9 action:49 handler:v11];

    [v6 setAccessibilityIdentifier:@"Scribble"];
  }

  return v6;
}

- (id)_clearEditsAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];

  v4 = _WBSLocalizedString();
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.backward"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51___SFPageFormatMenuController__clearEditsAlertItem__block_invoke;
  v10[3] = &unk_1E848F9D8;
  v11 = activeDocument;
  v7 = activeDocument;
  v8 = [_SFSettingsAlertItem buttonWithTitle:v4 textStyle:v5 icon:v6 action:50 handler:v10];

  [v8 setAccessibilityIdentifier:@"ClearEdits"];

  return v8;
}

- (id)_reportScribbleIssueItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];

  v5 = _WBSLocalizedString();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __55___SFPageFormatMenuController__reportScribbleIssueItem__block_invoke;
  v14 = &unk_1E8493BD8;
  selfCopy = self;
  v16 = activeDocument;
  v8 = activeDocument;
  v9 = [_SFSettingsAlertItem buttonWithTitle:v5 textStyle:v6 icon:v7 action:51 handler:&v11];

  [v9 setAccessibilityIdentifier:{@"ReportScribbleIssue", v11, v12, v13, v14, selfCopy}];

  return v9;
}

- (id)_reportWebCompatibilityIssueItemMainMenu
{
  if ([(_SFPageFormatMenuController *)self _canShowReportWebsiteIssueInMainMenu])
  {
    v3 = [(_SFPageFormatMenuController *)self _reportWebCompatibilityIssueItemWithAction:53];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_reportWebCompatibilityIssueItemMoreMenu
{
  if ([(_SFPageFormatMenuController *)self _canShowReportWebsiteIssueInMainMenu])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_SFPageFormatMenuController *)self _reportWebCompatibilityIssueItemWithAction:52];
  }

  return v3;
}

- (id)_reportWebCompatibilityIssueItemWithAction:(int64_t)action
{
  v5 = _WBSLocalizedString();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74___SFPageFormatMenuController__reportWebCompatibilityIssueItemWithAction___block_invoke;
  v10[3] = &unk_1E848F9D8;
  v10[4] = self;
  v8 = [_SFSettingsAlertItem buttonWithTitle:v5 textStyle:v6 icon:v7 action:action handler:v10];

  [v8 setAccessibilityIdentifier:@"ReportWebCompatibilityIssue"];

  return v8;
}

- (id)_manageExtensionsAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"puzzlepiece.extension"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57___SFPageFormatMenuController__manageExtensionsAlertItem__block_invoke;
  v19[3] = &unk_1E848F9D8;
  v19[4] = self;
  v6 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v4 icon:v5 action:30 handler:v19];

  [v6 setAccessibilityIdentifier:@"ManageExtensions"];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  LOBYTE(v5) = [activeDocument isPrivateBrowsingEnabled];

  if ((v5 & 1) != 0 || (-[_SFPageFormatMenuController _webExtensionsController](self, "_webExtensionsController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 recentlyInstalledExtensionCount], -[_SFPageFormatMenuController _contentBlockerManager](self, "_contentBlockerManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "recentlyInstalledExtensionCount") + v10, v11, v9, !v12))
  {
    v15 = &stru_1F4FE9E38;
  }

  else
  {
    v13 = MEMORY[0x1E696ADA0];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    v15 = [v13 localizedStringFromNumber:v14 numberStyle:1];
  }

  v16 = [SFWebExtensionPageMenuController badgeViewForText:v15];
  [v6 setBadgeView:v16];

  [v6 setBadgeText:v15];
  v17 = +[_SFPageFormatMenuBadgeView defaultComponentsArrangement];
  [v6 setComponentsArrangement:v17];

  return v6;
}

- (id)_editToolbarAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"wrench.and.screwdriver"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52___SFPageFormatMenuController__editToolbarAlertItem__block_invoke;
  v8[3] = &unk_1E848F9D8;
  v9 = WeakRetained;
  v5 = WeakRetained;
  v6 = [_SFSettingsAlertItem buttonWithTitle:@"Edit Tab Bar" textStyle:v3 icon:v4 action:54 handler:v8];

  return v6;
}

- (void)reloadBrowsingAssistantIfNeeded
{
  if ([MEMORY[0x1E69C8880] isBrowsingAssistantEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    presentingViewController = [WeakRetained presentingViewController];

    if (presentingViewController)
    {
      [WeakRetained reloadData];
    }
  }
}

- (void)_clearCachedItems
{
  cachedMenuItems = self->_cachedMenuItems;
  self->_cachedMenuItems = 0;

  downloadsAlertItem = self->_downloadsAlertItem;
  self->_downloadsAlertItem = 0;

  translationAlertItems = self->_translationAlertItems;
  self->_translationAlertItems = 0;

  extensionsSection = self->_extensionsSection;
  self->_extensionsSection = 0;

  settingsSection = self->_settingsSection;
  self->_settingsSection = 0;

  [(_SFPageFormatMenuController *)self _clearCachedCardItems];
}

- (void)_clearCachedCardItems
{
  cachedConsentCard = self->_cachedConsentCard;
  self->_cachedConsentCard = 0;

  cachedListenToPageCard = self->_cachedListenToPageCard;
  self->_cachedListenToPageCard = 0;

  cachedReaderCard = self->_cachedReaderCard;
  self->_cachedReaderCard = 0;

  cachedReaderOptionsCard = self->_cachedReaderOptionsCard;
  self->_cachedReaderOptionsCard = 0;

  cachedEntityCards = self->_cachedEntityCards;
  self->_cachedEntityCards = 0;
}

- (id)_entityItems
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if (([WeakRetained isShowingReader] & 1) != 0 || !objc_msgSend(MEMORY[0x1E69C8EC8], "hasUserConsent"))
  {
    array = 0;
  }

  else
  {
    activeDocument = [WeakRetained activeDocument];
    array = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    assistantController = [activeDocument assistantController];
    result = [assistantController result];
    obj = [result entityResults];

    v27 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v27)
    {
      v26 = *v32;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v31 + 1) + 8 * i);
          cachedEntityCards = self->_cachedEntityCards;
          identifier = [v7 identifier];
          v10 = [(NSMutableDictionary *)cachedEntityCards objectForKeyedSubscript:identifier];

          if (v10)
          {
            if (([array containsObject:v10] & 1) == 0)
            {
              [array addObject:v10];
            }
          }

          else
          {
            assistantController2 = [activeDocument assistantController];
            webpageIdentifier = [assistantController2 webpageIdentifier];

            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(array, "count") + 3}];
            objc_initWeak(&location, self);
            v14 = MEMORY[0x1E69B1AE0];
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __43___SFPageFormatMenuController__entityItems__block_invoke;
            v28[3] = &unk_1E8494138;
            objc_copyWeak(&v29, &location);
            v15 = [v14 entityCardWithSearchResult:v7 webpageIdentifier:webpageIdentifier componentIdentifier:v13 actionHandler:v28];
            if (!self->_didDonateVisualPresentationEntityToBiome)
            {
              mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
              [mEMORY[0x1E69C8810] didShowEntityCardSBA];

              mEMORY[0x1E69C8EB0] = [MEMORY[0x1E69C8EB0] sharedManager];
              [mEMORY[0x1E69C8EB0] donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:webpageIdentifier componentType:objc_msgSend(MEMORY[0x1E69C8EB0] componentIdentifier:"entityComponentTypeFromResult:" tableOfContentsArrayLength:{v7), v13, 0}];
            }

            v18 = self->_cachedEntityCards;
            if (!v18)
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              v20 = self->_cachedEntityCards;
              self->_cachedEntityCards = dictionary;

              v18 = self->_cachedEntityCards;
            }

            identifier2 = [v7 identifier];
            [(NSMutableDictionary *)v18 setObject:v15 forKeyedSubscript:identifier2];

            if (([array containsObject:0] & 1) == 0)
            {
              [array addObject:v15];
            }

            objc_destroyWeak(&v29);
            objc_destroyWeak(&location);
          }
        }

        v27 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v27);
    }

    if ([array count])
    {
      self->_didDonateVisualPresentationEntityToBiome = 1;
    }
  }

  return array;
}

- (BOOL)_shouldShowItemForAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  if (![actionCopy isEqualToString:*MEMORY[0x1E69B1D60]])
  {
    if ([activeDocument isShowingSystemStartPage])
    {
LABEL_5:
      LOBYTE(v8) = 0;
      goto LABEL_13;
    }

    if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CD0]])
    {
      goto LABEL_9;
    }

    if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D68]])
    {
      canTogglePinningTab = [WeakRetained canTogglePinningTab];
      goto LABEL_12;
    }

    if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CC8]])
    {
LABEL_9:
      canTogglePinningTab = [WeakRetained canAddToBookmarks];
    }

    else
    {
      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CE0]])
      {
        canTogglePinningTab = [WeakRetained canAddToReadingList];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CD8]])
      {
        canTogglePinningTab = [WeakRetained canAddToQuickNote];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D00]])
      {
        canTogglePinningTab = [WeakRetained canMoveToTabGroup];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D10]])
      {
        canTogglePinningTab = [WeakRetained supportsPrivacyReport];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D08]])
      {
        canTogglePinningTab = [WeakRetained canPrintCurrentTab];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D38]])
      {
        canTogglePinningTab = [(_SFPageFormatMenuController *)self _canShowScribble];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D28]])
      {
        canTogglePinningTab = [(_SFPageFormatMenuController *)self _canShowReportWebsiteIssueInMainMenu];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D20]])
      {
        _canShowReportWebsiteIssueInMainMenu = [(_SFPageFormatMenuController *)self _canShowReportWebsiteIssueInMainMenu];
        goto LABEL_31;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CF0]])
      {
        canTogglePinningTab = [(_SFPageFormatMenuController *)self _canHideToolbar];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D30]])
      {
        canTogglePinningTab = [(_SFPageFormatMenuController *)self _canToggleBetweenDesktopAndMobileSite];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D50]])
      {
        canTogglePinningTab = [(_SFPageFormatMenuController *)self _canToggleContentBlockers];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D40]])
      {
        canTogglePinningTab = [(_SFPageFormatMenuController *)self _canToggleAdvancedPrivateBrowsingPrivacyProtections];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D70]])
      {
        canTogglePinningTab = [(_SFPageFormatMenuController *)self _canTogglePrivateRelay];
        goto LABEL_12;
      }

      if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D18]])
      {
        if (![(_SFPageFormatMenuController *)self _canShowWebsiteSettings])
        {
          goto LABEL_5;
        }

        canTogglePinningTab = [MEMORY[0x1E69C8880] isAutoFillInternalFeedbackUIEnabled];
      }

      else
      {
        if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D58]])
        {
          if (([WeakRetained hasDedicatedMediaStateButton] & 1) != 0 || !objc_msgSend(activeDocument, "mediaStateIcon"))
          {
            goto LABEL_5;
          }

          _canShowReportWebsiteIssueInMainMenu = [WeakRetained isShowingReader];
LABEL_31:
          LOBYTE(v8) = _canShowReportWebsiteIssueInMainMenu ^ 1;
          goto LABEL_13;
        }

        if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D48]])
        {
          if (!WBSAXShouldShowAnimatedImageControls())
          {
            goto LABEL_5;
          }

          canTogglePinningTab = [MEMORY[0x1E69853A0] instancesRespondToSelector:sel__pauseAllAnimationsWithCompletionHandler_];
        }

        else if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D98]])
        {
          canTogglePinningTab = [(_SFPageFormatMenuController *)self _canViewSecurityInformation];
        }

        else
        {
          if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CE8]] && objc_msgSend(MEMORY[0x1E69C8880], "isSolariumEnabled") && (objc_opt_respondsToSelector() & 1) != 0)
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }

          if (![actionCopy isEqualToString:*MEMORY[0x1E69B1CF8]])
          {
            goto LABEL_5;
          }

          canTogglePinningTab = [(_SFPageFormatMenuController *)self _canShowListenToPageMenuAction];
        }
      }
    }

LABEL_12:
    LOBYTE(v8) = canTogglePinningTab;
    goto LABEL_13;
  }

  activeDocument2 = [WeakRetained activeDocument];
  if ([activeDocument2 atLeastOneOtherTabPlayingAudio])
  {
    v8 = [WeakRetained isShowingReader] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

LABEL_13:
  return v8;
}

- (id)_itemForAction:(id)action
{
  actionCopy = action;
  cachedMenuItems = self->_cachedMenuItems;
  if (!cachedMenuItems)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_cachedMenuItems;
    self->_cachedMenuItems = dictionary;

    cachedMenuItems = self->_cachedMenuItems;
  }

  v8 = [(NSMutableDictionary *)cachedMenuItems objectForKeyedSubscript:actionCopy];

  if (!v8)
  {
    v9 = [(_SFPageFormatMenuController *)self _makeItemForAction:actionCopy];
    [(NSMutableDictionary *)self->_cachedMenuItems setObject:v9 forKeyedSubscript:actionCopy];
  }

  v10 = [(NSMutableDictionary *)self->_cachedMenuItems objectForKeyedSubscript:actionCopy];

  return v10;
}

- (id)_makeItemForAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CD0]])
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star"];
    v8 = _WBSLocalizedString();
    v9 = *MEMORY[0x1E69DDCF8];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke;
    v47[3] = &unk_1E848F9D8;
    v48 = WeakRetained;
    alertItem = [_SFSettingsAlertItem buttonWithTitle:v8 textStyle:v9 icon:v7 action:42 handler:v47];
    v11 = v48;
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D68]])
  {
    if ([WeakRetained currentTabIsPinned])
    {
      v12 = @"pin.slash";
    }

    else
    {
      v12 = @"pin";
    }

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v12];
    v8 = _WBSLocalizedString();
    v14 = *MEMORY[0x1E69DDCF8];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_3;
    v45[3] = &unk_1E848F9D8;
    v46 = WeakRetained;
    alertItem = [_SFSettingsAlertItem buttonWithTitle:v8 textStyle:v14 icon:v7 action:48 handler:v45];
    v11 = v46;
    goto LABEL_10;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CC8]])
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"book"];
    v8 = _WBSLocalizedString();
    v13 = *MEMORY[0x1E69DDCF8];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_4;
    v43[3] = &unk_1E848F9D8;
    v44 = WeakRetained;
    alertItem = [_SFSettingsAlertItem buttonWithTitle:v8 textStyle:v13 icon:v7 action:43 handler:v43];
    v11 = v44;
    goto LABEL_10;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CE0]])
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eyeglasses"];
    v16 = _WBSLocalizedString();
    v17 = *MEMORY[0x1E69DDCF8];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_6;
    v41[3] = &unk_1E848F9D8;
    v42 = WeakRetained;
    alertItem = [_SFSettingsAlertItem buttonWithTitle:v16 textStyle:v17 icon:v7 action:45 handler:v41];

    [alertItem setAccessibilityIdentifier:@"AddToReadingList"];
    goto LABEL_11;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CD8]])
  {
    v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"quicknote"];
    v8 = _WBSLocalizedString();
    v18 = *MEMORY[0x1E69DDCF8];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_8;
    v39[3] = &unk_1E848F9D8;
    v40 = WeakRetained;
    alertItem = [_SFSettingsAlertItem buttonWithTitle:v8 textStyle:v18 icon:v7 action:44 handler:v39];
    v11 = v40;
    goto LABEL_10;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D00]])
  {
    activeWebView = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.forward.app"];
    v20 = _WBSLocalizedString();
    alertItem = [_SFSettingsAlertItem buttonWithTitle:v20 textStyle:*MEMORY[0x1E69DDCF8] icon:activeWebView action:46 handler:&__block_literal_global_507];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_23:

      goto LABEL_12;
    }

    objc_initWeak(&location, self);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_11;
    v36[3] = &unk_1E848F8F0;
    objc_copyWeak(&v37, &location);
    v21 = [WeakRetained moveMenuOnPageMenuWithDismissHandler:v36];
    [alertItem setPopUpMenu:v21];

    v22 = &v37;
LABEL_22:
    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
    goto LABEL_23;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D10]])
  {
    v23 = [_SFPageFormatMenuPrivacyReportController alloc];
    activeDocument2 = [WeakRetained activeDocument];
    v25 = [(_SFPageFormatMenuPrivacyReportController *)v23 initWithDocument:activeDocument2];

    [(_SFPageFormatMenuPrivacyReportController *)v25 setDelegate:self];
    alertItem = [(_SFPageFormatMenuPrivacyReportController *)v25 alertItem];

    goto LABEL_12;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D08]])
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"printer"];
    v8 = _WBSLocalizedString();
    v26 = *MEMORY[0x1E69DDCF8];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_12;
    v34[3] = &unk_1E848F9D8;
    v35 = WeakRetained;
    alertItem = [_SFSettingsAlertItem buttonWithTitle:v8 textStyle:v26 icon:v7 action:47 handler:v34];
    v11 = v35;
    goto LABEL_10;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D38]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _scribbleAlertItem];
LABEL_50:
    alertItem = _scribbleAlertItem;
    goto LABEL_12;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D28]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _reportWebCompatibilityIssueItemMainMenu];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D20]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _reportWebCompatibilityIssueItemMoreMenu];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CF0]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _fullScreenAlertItem];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D30]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _desktopMobileToggleAlertItemWithOrientation:[(_SFPageFormatMenuController *)self _deviceOrientation]];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D50]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _contentBlockersToggleAlertItem];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D40]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _advancedPrivateBrowsingPrivacyProtectionsAlertItem];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D70]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _privateRelayToggleAlertItem];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D18]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _userFeedbackAutofillAlertItem];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D58]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _mediaStateAlertItem];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D60]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _otherTabAudioMediaStateAlertItem];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D48]])
  {
    activeWebView = [activeDocument activeWebView];
    if ([activeWebView _allowsAnyAnimationToPlay])
    {
      [(_SFPageFormatMenuController *)self _pauseAllAnimationsAlertItem];
    }

    else
    {
      [(_SFPageFormatMenuController *)self _playAllAnimationsAlertItem];
    }
    alertItem = ;
    goto LABEL_23;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1D98]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _viewSecurityInformationAlertItem];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CE8]])
  {
    _scribbleAlertItem = [(_SFPageFormatMenuController *)self _editToolbarAlertItem];
    goto LABEL_50;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E69B1CF8]])
  {
    alertItem = [(_SFPageFormatMenuController *)self _siriReaderAlertItem];
    v28 = objc_loadWeakRetained(&self->_browserContentController);
    mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
    currentPlaybackState = [mEMORY[0x1E69B1B90] currentPlaybackState];

    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_14;
    v31[3] = &unk_1E8494160;
    objc_copyWeak(v33, &location);
    v33[1] = currentPlaybackState;
    activeWebView = v28;
    v32 = activeWebView;
    [(_SFPageFormatMenuController *)self _updateSiriReaderPlaybackStateAndIdentifierWithCompletion:v31];

    v22 = v33;
    goto LABEL_22;
  }

  alertItem = 0;
LABEL_12:

  return alertItem;
}

- (id)primaryMenuSectionsForEditMode:(BOOL)mode inFirstLevelMenu:(BOOL)menu
{
  menuCopy = menu;
  v80 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = 0x1E69B1000uLL;
  favoritesSection = [MEMORY[0x1E69B1AE8] favoritesSection];
  array2 = [MEMORY[0x1E695DF70] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  browsingAssistant_favoritedMenuActions = [safari_browserDefaults browsingAssistant_favoritedMenuActions];

  v10 = [browsingAssistant_favoritedMenuActions countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v74;
    v13 = *MEMORY[0x1E69B1D38];
    v58 = *MEMORY[0x1E69B1D88];
    v60 = *MEMORY[0x1E69B1D38];
    modeCopy = mode;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(browsingAssistant_favoritedMenuActions);
        }

        v15 = *(*(&v73 + 1) + 8 * i);
        if ([(_SFPageFormatMenuController *)self _shouldShowItemForAction:v15])
        {
          if (mode || ![v15 isEqualToString:v13])
          {
            _effectiveScribbleItems = [(_SFPageFormatMenuController *)self _itemForAction:v15];
            [array2 safari_addObjectUnlessNil:_effectiveScribbleItems];
          }

          else
          {
            _effectiveScribbleItems = [(_SFPageFormatMenuController *)self _effectiveScribbleItems];
            if ([_effectiveScribbleItems count] > 1)
            {
              v18 = array2;
              if ([array2 count])
              {
                v19 = favoritesSection;
                [favoritesSection setItems:v18];
                [array addObject:favoritesSection];
                v20 = [objc_alloc(*(v6 + 2792)) initWithIdentifier:v58];
                [v20 setItems:_effectiveScribbleItems];
                [array addObject:v20];

                v6 = 0x1E69B1000;
              }

              else
              {
                v19 = favoritesSection;
                [favoritesSection setItems:_effectiveScribbleItems];
                [array addObject:favoritesSection];
              }

              v21 = [objc_alloc(*(v6 + 2792)) initWithIdentifier:@"otherFavorites"];

              array2 = [MEMORY[0x1E695DF70] array];
              firstObject = v18;
              favoritesSection = v21;
              mode = modeCopy;
              v13 = v60;
            }

            else
            {
              firstObject = [_effectiveScribbleItems firstObject];
              [array2 safari_addObjectUnlessNil:firstObject];
            }

            v6 = 0x1E69B1000;
          }
        }
      }

      v11 = [browsingAssistant_favoritedMenuActions countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v11);
  }

  v22 = WeakRetained;
  isShowingReader = [WeakRetained isShowingReader];
  if (!menuCopy || isShowingReader)
  {
    if (!(mode | ![(_SFPageFormatMenuController *)self _canShowListenToPageMenuAction]| ((isShowingReader & 1) == 0) | !menuCopy))
    {
      _siriReaderAlertItem = [(_SFPageFormatMenuController *)self _siriReaderAlertItem];
      [array2 addObject:_siriReaderAlertItem];
    }

    goto LABEL_55;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v24 = SFUnconfigurableMenuAcitons();
  v25 = [v24 countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v70;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v70 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v69 + 1) + 8 * j);
        if ([(_SFPageFormatMenuController *)self _shouldShowItemForAction:v29])
        {
          v30 = [(_SFPageFormatMenuController *)self _itemForAction:v29];
          [array2 safari_addObjectUnlessNil:v30];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v26);
  }

  if ([(_SFPageFormatMenuController *)self _isShowingImmersiveContent])
  {
LABEL_55:
    v33 = favoritesSection;
    [favoritesSection setItems:array2];
    v32 = array;
    [array addObject:favoritesSection];
    v46 = [array copy];
    goto LABEL_64;
  }

  translationAlertItems = self->_translationAlertItems;
  v32 = array;
  v33 = favoritesSection;
  if (!translationAlertItems)
  {
    [(_SFPageFormatMenuController *)self _buildTranslationAlertItemsWithSourceInfo:0];
    translationAlertItems = self->_translationAlertItems;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v34 = translationAlertItems;
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (!v35)
  {

    v44 = 0;
    v22 = WeakRetained;
    goto LABEL_57;
  }

  v64 = 0;
  v36 = 0;
  v59 = 0;
  v61 = 0;
  v37 = *v66;
  do
  {
    for (k = 0; k != v35; k = k + 1)
    {
      if (*v66 != v37)
      {
        objc_enumerationMutation(v34);
      }

      v39 = *(*(&v65 + 1) + 8 * k);
      actionType = [v39 actionType];
      if (actionType > 17)
      {
        if (actionType == 18)
        {
          v41 = v61;
          v42 = v36;
          v61 = v39;
        }

        else
        {
          if (actionType != 19)
          {
            continue;
          }

          v41 = v59;
          v42 = v36;
          v59 = v39;
        }

        goto LABEL_48;
      }

      if ((actionType - 14) < 2)
      {
        v41 = v64;
        v64 = v39;
        v42 = v36;
LABEL_48:
        v43 = v39;

        v36 = v42;
        continue;
      }

      v41 = v36;
      v42 = v39;
      if (actionType == 17)
      {
        goto LABEL_48;
      }
    }

    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v65 objects:v77 count:16];
  }

  while (v35);

  if (v64)
  {
    [array2 addObject:?];
    v33 = favoritesSection;
    [favoritesSection setItems:array2];
    v32 = array;
    [array addObject:favoritesSection];
    v22 = WeakRetained;
    v35 = v59;
    v44 = v61;
    goto LABEL_61;
  }

  v22 = WeakRetained;
  v32 = array;
  v44 = v61;
  v33 = favoritesSection;
  v35 = v59;
  if (v36)
  {
    [favoritesSection setItems:array2];
    [array addObject:favoritesSection];
    v47 = objc_alloc(MEMORY[0x1E69B1AE8]);
    v48 = [v47 initWithIdentifier:*MEMORY[0x1E69B1D90]];
    array3 = [MEMORY[0x1E695DF70] array];
    [array3 safari_addObjectUnlessNil:v36];
    [array3 safari_addObjectUnlessNil:v61];
    [array3 safari_addObjectUnlessNil:v59];
    [v48 setItems:array3];
    [array addObject:v48];

    goto LABEL_60;
  }

LABEL_57:
  [v33 setItems:array2];
  [v32 addObject:v33];
  v36 = 0;
LABEL_60:
  v64 = 0;
LABEL_61:
  activeDocument = [v22 activeDocument];
  isShowingSystemStartPage = [activeDocument isShowingSystemStartPage];

  if ((isShowingSystemStartPage & 1) == 0)
  {
    _downloadsSection = [(_SFPageFormatMenuController *)self _downloadsSection];
    [v32 safari_addObjectUnlessNil:_downloadsSection];

    _extensionsSection = [(_SFPageFormatMenuController *)self _extensionsSection];
    [v32 safari_addObjectUnlessNil:_extensionsSection];
  }

  v46 = [v32 copy];

LABEL_64:

  return v46;
}

- (id)_extensionsSection
{
  v25[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained hasDedicatedExtensionsButton])
  {

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  _hasExtensionsAvailableToShowInManageExtensionsView = [(_SFPageFormatMenuController *)self _hasExtensionsAvailableToShowInManageExtensionsView];

  if (!_hasExtensionsAvailableToShowInManageExtensionsView)
  {
    goto LABEL_6;
  }

  extensionsSection = self->_extensionsSection;
  if (extensionsSection)
  {
    v6 = extensionsSection;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69B1AE8]);
    v6 = [v8 initWithIdentifier:*MEMORY[0x1E69B1D80]];
    _manageExtensionsAlertItem = [(_SFPageFormatMenuController *)self _manageExtensionsAlertItem];
    v25[0] = _manageExtensionsAlertItem;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    _extensionItems = [(_SFPageFormatMenuController *)self _extensionItems];
    v12 = [v10 arrayByAddingObjectsFromArray:_extensionItems];
    [(SFBrowsingAssistantMenuSection *)v6 setItems:v12];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    items = [(SFBrowsingAssistantMenuSection *)v6 items];
    v14 = [items countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(items);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          v19 = objc_loadWeakRetained(&self->_viewController);
          [v18 setUpSelectionHandlerIfNeededWithViewController:v19];
        }

        v15 = [items countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    objc_storeStrong(&self->_extensionsSection, v6);
  }

LABEL_7:

  return v6;
}

- (id)_downloadsSection
{
  v11[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained hasDedicatedDownloadsToolbarItem])
  {

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  _shouldEnableDownloadsAlert = [(_SFPageFormatMenuController *)self _shouldEnableDownloadsAlert];

  if (!_shouldEnableDownloadsAlert)
  {
    goto LABEL_7;
  }

  v5 = [objc_alloc(MEMORY[0x1E69B1AE8]) initWithIdentifier:@"downloads"];
  downloadsAlertItem = self->_downloadsAlertItem;
  if (!downloadsAlertItem)
  {
    _downloadsAlertItem = [(_SFPageFormatMenuController *)self _downloadsAlertItem];
    v8 = self->_downloadsAlertItem;
    self->_downloadsAlertItem = _downloadsAlertItem;

    downloadsAlertItem = self->_downloadsAlertItem;
  }

  v11[0] = downloadsAlertItem;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v5 setItems:v9];

LABEL_8:

  return v5;
}

- (id)moreMenuSectionsForEditMode:(BOOL)mode
{
  v49 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E695DFD8];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  browsingAssistant_favoritedMenuActions = [safari_browserDefaults browsingAssistant_favoritedMenuActions];
  v8 = [v5 setWithArray:browsingAssistant_favoritedMenuActions];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = SFMorePageMenuSections();
  v31 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v31)
  {
    v30 = *v44;
    v37 = *MEMORY[0x1E69B1D38];
    v33 = *MEMORY[0x1E69B1D88];
    v9 = 0x1E69B1000uLL;
    modeCopy = mode;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v10;
        v11 = *(*(&v43 + 1) + 8 * v10);
        v38 = [objc_alloc(*(v9 + 2792)) initWithIdentifier:v11];
        array2 = [MEMORY[0x1E695DF70] array];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v13 = SFSectionToConfigurableMenuActions();
        v14 = [v13 objectForKeyedSubscript:v11];

        v15 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v40;
          v18 = array2;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v40 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v39 + 1) + 8 * i);
              if (-[_SFPageFormatMenuController _shouldShowItemForAction:](self, "_shouldShowItemForAction:", v20) && ([v8 containsObject:v20] & 1) == 0)
              {
                if (mode || ![v20 isEqualToString:v37])
                {
                  _effectiveScribbleItems = [(_SFPageFormatMenuController *)self _itemForAction:v20];
                  [v18 safari_addObjectUnlessNil:_effectiveScribbleItems];
                }

                else
                {
                  _effectiveScribbleItems = [(_SFPageFormatMenuController *)self _effectiveScribbleItems];
                  if ([_effectiveScribbleItems count] > 1)
                  {
                    if ([v18 count])
                    {
                      [v38 setItems:v18];
                      [array addObject:v38];
                      v36 = v18;
                      v25 = [objc_alloc(MEMORY[0x1E69B1AE8]) initWithIdentifier:v33];
                      [v25 setItems:_effectiveScribbleItems];
                      [array addObject:v25];

                      v18 = v36;
                    }

                    else
                    {
                      [v38 setItems:_effectiveScribbleItems];
                      [array addObject:v38];
                    }

                    v26 = [objc_alloc(MEMORY[0x1E69B1AE8]) initWithIdentifier:@"otherAdvancedActions"];

                    array3 = [MEMORY[0x1E695DF70] array];
                    v38 = v26;
                    mode = modeCopy;
                  }

                  else
                  {
                    firstObject = [_effectiveScribbleItems firstObject];
                    v23 = v18;
                    v18 = firstObject;
                    array3 = v23;
                    [v23 safari_addObjectUnlessNil:firstObject];
                  }

                  v18 = array3;
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v16);
        }

        else
        {
          v18 = array2;
        }

        [v38 setItems:v18];
        [array addObject:v38];

        v10 = v32 + 1;
        v9 = 0x1E69B1000;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v31);
  }

  v27 = [array copy];

  return v27;
}

- (id)_effectiveScribbleItems
{
  v3 = [(_SFPageFormatMenuController *)self _itemForAction:*MEMORY[0x1E69B1D38]];
  array = [MEMORY[0x1E695DF70] array];
  [array safari_addObjectUnlessNil:v3];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];

  sfScribbleController = [activeDocument sfScribbleController];
  hiddenElementCount = [sfScribbleController hiddenElementCount];

  if (hiddenElementCount)
  {
    _clearEditsAlertItem = [(_SFPageFormatMenuController *)self _clearEditsAlertItem];
    [array safari_addObjectUnlessNil:_clearEditsAlertItem];
  }

  else if (![activeDocument hasEnteredScribbleMode])
  {
    goto LABEL_7;
  }

  sfScribbleController2 = [activeDocument sfScribbleController];
  userInitiatedScribblingDisabled = [sfScribbleController2 userInitiatedScribblingDisabled];

  if ((userInitiatedScribblingDisabled & 1) == 0 && [(_SFPageFormatMenuController *)self _shouldShowScribbleFeedbackButton])
  {
    _reportScribbleIssueItem = [(_SFPageFormatMenuController *)self _reportScribbleIssueItem];
    [array safari_addObjectUnlessNil:_reportScribbleIssueItem];
  }

LABEL_7:
  v13 = [array copy];

  return v13;
}

- (int64_t)_deviceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  presentingViewController = [WeakRetained presentingViewController];
  view = [presentingViewController view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return interfaceOrientation;
}

- (SFBrowsingAssistantMenuSection)settingsSection
{
  if ([(_SFPageFormatMenuController *)self _canShowWebsiteSettings])
  {
    settingsSection = self->_settingsSection;
    if (!settingsSection)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
      activeDocument = [WeakRetained activeDocument];
      v6 = [_SFPerSitePreferencesPopoverViewController alloc];
      perSitePreferencesVendor = [activeDocument perSitePreferencesVendor];
      v8 = [(_SFPerSitePreferencesPopoverViewController *)v6 initWithBrowserDocument:activeDocument perSitePreferencesVendor:perSitePreferencesVendor];

      pageMenuSection = [(_SFPerSitePreferencesPopoverViewController *)v8 pageMenuSection];
      v10 = self->_settingsSection;
      self->_settingsSection = pageMenuSection;

      settingsSection = self->_settingsSection;
    }

    v11 = settingsSection;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)_listenToPageActionStateForActiveTab
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained supportsSiriReadThis])
  {
    activeDocument = [WeakRetained activeDocument];
    readerContext = [activeDocument readerContext];
    if ([WeakRetained canReadActiveLanguage] && objc_msgSend(readerContext, "isReaderAvailable") && (objc_msgSend(activeDocument, "isBlockedByScreenTime") & 1) == 0)
    {
      siriReaderPlaybackStateForActiveTab = [WeakRetained siriReaderPlaybackStateForActiveTab];
      if ((siriReaderPlaybackStateForActiveTab - 1) > 2)
      {
        v5 = 1;
      }

      else
      {
        v5 = qword_1D47DE748[siriReaderPlaybackStateForActiveTab - 1];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_canShowListenToPageMenuAction
{
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if (isSolariumEnabled)
  {
    LOBYTE(isSolariumEnabled) = [(_SFPageFormatMenuController *)self _listenToPageActionStateForActiveTab]!= 0;
  }

  return isSolariumEnabled;
}

- (NSArray)cardItems
{
  array = [MEMORY[0x1E695DF70] array];
  _readerCard = [(_SFPageFormatMenuController *)self _readerCard];
  _listenToPageCard = [(_SFPageFormatMenuController *)self _listenToPageCard];
  [array safari_addObjectUnlessNil:_listenToPageCard];

  [array safari_addObjectUnlessNil:_readerCard];
  _readerOptionsCard = [(_SFPageFormatMenuController *)self _readerOptionsCard];
  [array safari_addObjectUnlessNil:_readerOptionsCard];

  _consentCard = [(_SFPageFormatMenuController *)self _consentCard];
  [array safari_addObjectUnlessNil:_consentCard];

  _entityItems = [(_SFPageFormatMenuController *)self _entityItems];
  [array safari_addObjectsFromArrayUnlessNil:_entityItems];

  v9 = [array copy];

  return v9;
}

- (void)_updateListenToPageButtonAvailabilityForCard:(id)card
{
  cardCopy = card;
  _listenToPageActionStateForActiveTab = [(_SFPageFormatMenuController *)self _listenToPageActionStateForActiveTab];
  secondaryAction = [cardCopy secondaryAction];

  if (_listenToPageActionStateForActiveTab)
  {
    if (!secondaryAction)
    {
      objc_initWeak(&location, self);
      v11 = MEMORY[0x1E69B1AE0];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __76___SFPageFormatMenuController__updateListenToPageButtonAvailabilityForCard___block_invoke;
      v17 = &unk_1E848F8F0;
      objc_copyWeak(&v18, &location);
      v12 = [v11 listenToPageActionForHandler:&v14 state:_listenToPageActionStateForActiveTab];
      [cardCopy setSecondaryAction:{v12, v14, v15, v16, v17}];

      secondaryAction2 = [cardCopy secondaryAction];
      [secondaryAction2 setAttributes:{objc_msgSend(secondaryAction2, "attributes") & 0xFFFFFFFFFFFFFFFELL}];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      goto LABEL_8;
    }

    secondaryAction3 = [cardCopy secondaryAction];
    attributes = [secondaryAction3 attributes];

    if (attributes)
    {
      secondaryAction4 = [cardCopy secondaryAction];
      v10 = [secondaryAction4 copy];

      [v10 setAttributes:{objc_msgSend(v10, "attributes") & 0xFFFFFFFFFFFFFFFELL}];
      [cardCopy setSecondaryAction:v10];

LABEL_8:
      [cardCopy notifyObserverCardDidUpdate];
    }
  }

  else if (secondaryAction)
  {
    [cardCopy setSecondaryAction:0];
    goto LABEL_8;
  }
}

- (id)_readerOptionsCard
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader])
  {
    cachedReaderOptionsCard = self->_cachedReaderOptionsCard;
    if (cachedReaderOptionsCard)
    {
      v5 = cachedReaderOptionsCard;
    }

    else
    {
      objc_initWeak(&location, self);
      activeDocument = [WeakRetained activeDocument];
      readerContext = [activeDocument readerContext];

      _listenToPageActionStateForActiveTab = [(_SFPageFormatMenuController *)self _listenToPageActionStateForActiveTab];
      v9 = MEMORY[0x1E69B1AE0];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __49___SFPageFormatMenuController__readerOptionsCard__block_invoke;
      v20[3] = &unk_1E848F8F0;
      objc_copyWeak(&v21, &location);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __49___SFPageFormatMenuController__readerOptionsCard__block_invoke_2;
      v18[3] = &unk_1E848F8F0;
      objc_copyWeak(&v19, &location);
      v10 = [v9 readerOptionsCardWithReaderContext:readerContext dismissReaderHandler:v20 listenToPageHandler:v18 listenToPageActionState:_listenToPageActionStateForActiveTab];
      v11 = self->_cachedReaderOptionsCard;
      self->_cachedReaderOptionsCard = v10;

      if (_listenToPageActionStateForActiveTab)
      {
        mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
        v13 = MEMORY[0x1E69E96A0];
        v14 = MEMORY[0x1E69E96A0];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __49___SFPageFormatMenuController__readerOptionsCard__block_invoke_3;
        v16[3] = &unk_1E8494188;
        objc_copyWeak(&v17, &location);
        [mEMORY[0x1E69B1B90] updateContentIdentifierOnQueue:v13 completion:v16];

        objc_destroyWeak(&v17);
      }

      v5 = self->_cachedReaderOptionsCard;
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);

      objc_destroyWeak(&location);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isReaderModeAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  readerContext = [activeDocument readerContext];
  isReaderAvailable = [readerContext isReaderAvailable];

  return isReaderAvailable;
}

- (void)_showReader
{
  viewController = [(_SFPageFormatMenuController *)self viewController];
  [viewController dismissViewControllerAnimated:1 completion:0];

  browserContentController = [(_SFPageFormatMenuController *)self browserContentController];
  if (([browserContentController isShowingReader] & 1) == 0)
  {
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] didToggleReaderSBA];

    WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
    activeDocument = [WeakRetained activeDocument];
    assistantController = [activeDocument assistantController];

    summary = [assistantController summary];
    if (summary)
    {
      mEMORY[0x1E69C8810]2 = [MEMORY[0x1E69C8810] sharedLogger];
      [mEMORY[0x1E69C8810]2 didClickSummaryCardSBA];

      mEMORY[0x1E69C8EB0] = [MEMORY[0x1E69C8EB0] sharedManager];
      webpageIdentifier = [assistantController webpageIdentifier];
      [mEMORY[0x1E69C8EB0] donateBrowsingAssistantUserInteractionDetectedWithWebPageID:webpageIdentifier componentType:2 componentIdentifier:&unk_1F5023278 tableOfContentsArrayLength:0 tableOfContentsTextIndex:0 readerSectionExpanded:0];
    }

    [browserContentController toggleShowingReaderForUserAction];
  }
}

- (void)_hideReader
{
  viewController = [(_SFPageFormatMenuController *)self viewController];
  [viewController dismissViewControllerAnimated:1 completion:0];

  browserContentController = [(_SFPageFormatMenuController *)self browserContentController];
  if ([browserContentController isShowingReader])
  {
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] didToggleReaderSBA];

    [browserContentController toggleShowingReaderForUserAction];
  }
}

- (void)_invokeListenToPage
{
  viewController = [(_SFPageFormatMenuController *)self viewController];
  [viewController dismissViewControllerAnimated:1 completion:0];

  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  [WeakRetained siriReadThisMenuInvocation];
}

- (void)_donateSummaryPresentationStartedIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  assistantController = [activeDocument assistantController];

  summary = [assistantController summary];
  if ([summary length] && !self->_didDonateVisualPresentationSummaryToBiome)
  {
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] didShowSummaryCardSBA];

    mEMORY[0x1E69C8EB0] = [MEMORY[0x1E69C8EB0] sharedManager];
    webpageIdentifier = [assistantController webpageIdentifier];
    [mEMORY[0x1E69C8EB0] donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:webpageIdentifier componentType:2 componentIdentifier:&unk_1F5023278 tableOfContentsArrayLength:0];

    self->_didDonateVisualPresentationSummaryToBiome = 1;
  }
}

- (id)_readerCard
{
  objc_initWeak(location, self);
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader])
  {
    v4 = 0;
    goto LABEL_24;
  }

  cachedReaderCard = self->_cachedReaderCard;
  if (cachedReaderCard)
  {
    v4 = cachedReaderCard;
    goto LABEL_24;
  }

  activeDocument = [WeakRetained activeDocument];
  readerContext = [activeDocument readerContext];
  isReaderAvailable = [readerContext isReaderAvailable];
  assistantController = [activeDocument assistantController];
  if ([MEMORY[0x1E69C8EC8] hasUserConsent] && objc_msgSend(assistantController, "isSummaryAvailable"))
  {
    summary = [assistantController summary];
    v11 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    [(_SFPageFormatMenuController *)self _donateSummaryPresentationStartedIfNeeded];
    if (summary)
    {
LABEL_11:
      cachedReaderArticleTitle = [assistantController cachedReaderArticleTitle];
      v13 = cachedReaderArticleTitle;
      if (cachedReaderArticleTitle)
      {
        title = cachedReaderArticleTitle;
      }

      else
      {
        webView = [activeDocument webView];
        title = [webView title];
      }

      v26 = v11;

      _listenToPageActionStateForActiveTab = [(_SFPageFormatMenuController *)self _listenToPageActionStateForActiveTab];
      result = [assistantController result];
      disclaimerText = [result disclaimerText];

      v18 = MEMORY[0x1E69B1AE0];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __42___SFPageFormatMenuController__readerCard__block_invoke;
      v37[3] = &unk_1E848F8F0;
      objc_copyWeak(&v38, location);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __42___SFPageFormatMenuController__readerCard__block_invoke_2;
      v34[3] = &unk_1E8490298;
      objc_copyWeak(&v36, location);
      v35 = WeakRetained;
      v19 = [v18 readerCardWithReaderContext:readerContext title:title summary:summary disclaimer:disclaimerText contextMenuInteraction:v26 showReaderHandler:v37 listenToPageHandler:v34 listenToPageActionState:_listenToPageActionStateForActiveTab];
      v20 = self->_cachedReaderCard;
      self->_cachedReaderCard = v19;

      if (_listenToPageActionStateForActiveTab)
      {
        v21 = isReaderAvailable;
      }

      else
      {
        v21 = 0;
      }

      if (v21 == 1)
      {
        mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
        v23 = MEMORY[0x1E69E96A0];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __42___SFPageFormatMenuController__readerCard__block_invoke_3;
        v32[3] = &unk_1E8494188;
        objc_copyWeak(&v33, location);
        [mEMORY[0x1E69B1B90] updateContentIdentifierOnQueue:MEMORY[0x1E69E96A0] completion:v32];

        objc_destroyWeak(&v33);
      }

      if (isReaderAvailable)
      {
        cachedReaderArticleTitle2 = [assistantController cachedReaderArticleTitle];

        if (!cachedReaderArticleTitle2)
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __42___SFPageFormatMenuController__readerCard__block_invoke_4;
          v28[3] = &unk_1E84941B0;
          objc_copyWeak(&v31, location);
          v29 = assistantController;
          v30 = title;
          [readerContext getReaderArticleTitleWithCompletion:v28];

          objc_destroyWeak(&v31);
        }
      }

      v4 = self->_cachedReaderCard;

      objc_destroyWeak(&v36);
      objc_destroyWeak(&v38);

      v11 = v26;
      goto LABEL_23;
    }
  }

  else
  {
    v11 = 0;
    summary = 0;
    v4 = 0;
    if ((isReaderAvailable & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  summary = 0;
  v4 = 0;
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_23:

LABEL_24:
  objc_destroyWeak(location);

  return v4;
}

- (void)updateReaderCardWithSummaryIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  assistantController = [activeDocument assistantController];

  hasUserConsent = [MEMORY[0x1E69C8EC8] hasUserConsent];
  v6 = assistantController;
  if (hasUserConsent)
  {
    isSummaryAvailable = [assistantController isSummaryAvailable];
    v6 = assistantController;
    if (isSummaryAvailable)
    {
      if (self->_cachedReaderCard)
      {
        summary = [assistantController summary];
        v9 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
        bodyText = [(SFBrowsingAssistantCardItem *)self->_cachedReaderCard bodyText];
        v11 = [summary isEqualToString:bodyText];

        if ((v11 & 1) == 0)
        {
          [(SFBrowsingAssistantCardItem *)self->_cachedReaderCard setBodyText:summary];
          [(SFBrowsingAssistantCardItem *)self->_cachedReaderCard setContextMenuInteraction:v9];
          [(SFBrowsingAssistantCardItem *)self->_cachedReaderCard notifyObserverCardDidUpdate];
          [(_SFPageFormatMenuController *)self _donateSummaryPresentationStartedIfNeeded];
        }

        v6 = assistantController;
      }
    }
  }
}

- (void)_updateListenToPageIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  _listenToPageActionStateForActiveTab = [(_SFPageFormatMenuController *)self _listenToPageActionStateForActiveTab];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58___SFPageFormatMenuController__updateListenToPageIfNeeded__block_invoke;
  v6[3] = &unk_1E8494160;
  objc_copyWeak(v8, &location);
  v8[1] = _listenToPageActionStateForActiveTab;
  v5 = WeakRetained;
  v7 = v5;
  [(_SFPageFormatMenuController *)self _updateSiriReaderPlaybackStateAndIdentifierWithCompletion:v6];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (id)_listenToPageCard
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained supportsSiriReadThis] && ((objc_msgSend(MEMORY[0x1E69B1B90], "sharedPlaybackController"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "currentPlaybackState"), v4, -[_SFPageFormatMenuController _updateListenToPageIfNeeded](self, "_updateListenToPageIfNeeded"), v5) ? (v6 = v5 == 3) : (v6 = 1), !v6 && (v9 = objc_msgSend(WeakRetained, "siriReaderPlaybackStateForActiveTab"), v5 != 1 ? (v10 = v9 == v5) : (v10 = 1), v10)))
  {
    cachedListenToPageCard = self->_cachedListenToPageCard;
    if (!cachedListenToPageCard)
    {
      listenToPageCard = [MEMORY[0x1E69B1AE0] listenToPageCard];
      v13 = self->_cachedListenToPageCard;
      self->_cachedListenToPageCard = listenToPageCard;

      cachedListenToPageCard = self->_cachedListenToPageCard;
    }

    v7 = cachedListenToPageCard;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_consentCard
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader] & 1) != 0 || !objc_msgSend(MEMORY[0x1E69C8EC8], "shouldShowConsentCard") || (objc_msgSend(WeakRetained, "activeDocument"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isPrivateBrowsingEnabled"), v4, (v5) || (v6 = MEMORY[0x1E69C8EC0], objc_msgSend(WeakRetained, "activeDocument"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "translationContext"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "webpageLocale"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v6, "assistantEnabledForLocale:", v9), v9, v8, v7, !v6))
  {
    v11 = 0;
  }

  else
  {
    cachedConsentCard = self->_cachedConsentCard;
    if (cachedConsentCard)
    {
      v11 = cachedConsentCard;
    }

    else
    {
      objc_initWeak(&location, self);
      v13 = MEMORY[0x1E69B1AE0];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __43___SFPageFormatMenuController__consentCard__block_invoke;
      v18[3] = &unk_1E848F8F0;
      objc_copyWeak(&v19, &location);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __43___SFPageFormatMenuController__consentCard__block_invoke_2;
      v16[3] = &unk_1E848F8F0;
      objc_copyWeak(&v17, &location);
      v14 = [v13 consentCardWithNotNowHandler:v18 continueHandler:v16];
      v15 = self->_cachedConsentCard;
      self->_cachedConsentCard = v14;

      v11 = self->_cachedConsentCard;
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  return v11;
}

- (void)configureMainHeaderFooter:(id)footer
{
  footerCopy = footer;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  isShowingReader = [WeakRetained isShowingReader];
  v7 = isShowingReader;
  if (isShowingReader)
  {
    v8 = [SFReaderTextSizeStepperController alloc];
    activeDocument = [WeakRetained activeDocument];
    readerContext = [activeDocument readerContext];
    v11 = [(SFReaderTextSizeStepperController *)v8 initWithReaderContext:readerContext];
  }

  else
  {
    v12 = [SFPageZoomStepperController alloc];
    activeDocument = [WeakRetained activeDocument];
    readerContext = [WeakRetained pageZoomManager];
    v11 = [(SFPageZoomStepperController *)v12 initWithDocument:activeDocument preferenceManager:readerContext];
  }

  v13 = v11;

  if (v13)
  {
    stepper = [footerCopy stepper];

    if (!stepper)
    {
      v15 = objc_alloc_init(MEMORY[0x1E69B1BA8]);
      [footerCopy setStepper:v15];
    }

    stepper2 = [footerCopy stepper];
    [v13 prepareStepper:stepper2];
    if ((v7 & 1) == 0 && [(_SFPageFormatMenuController *)self _isShowingImmersiveContent])
    {
      [stepper2 setUserInteractionEnabled:0];
    }

    objc_initWeak(&from, stepper2);
    if (objc_opt_respondsToSelector())
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __57___SFPageFormatMenuController_configureMainHeaderFooter___block_invoke;
      v28[3] = &unk_1E84941D8;
      objc_copyWeak(&v29, &from);
      [v13 setDidSetValueHandler:v28];
      objc_destroyWeak(&v29);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __57___SFPageFormatMenuController_configureMainHeaderFooter___block_invoke_2;
    v24[3] = &unk_1E8494200;
    objc_copyWeak(&v26, &from);
    v17 = v13;
    v25 = v17;
    objc_copyWeak(&v27, &location);
    [stepper2 setDecrementButtonActionHandler:v24];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57___SFPageFormatMenuController_configureMainHeaderFooter___block_invoke_3;
    v20[3] = &unk_1E8494200;
    objc_copyWeak(&v22, &from);
    v21 = v17;
    objc_copyWeak(&v23, &location);
    [stepper2 setIncrementButtonActionHandler:v20];
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&from);
  }

  [footerCopy setLeadingButtonEnabled:{objc_msgSend(WeakRetained, "canFindOnPage")}];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57___SFPageFormatMenuController_configureMainHeaderFooter___block_invoke_4;
  v18[3] = &unk_1E848F8F0;
  objc_copyWeak(&v19, &location);
  [footerCopy setLeadingButtonActionHandler:v18];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)configureReaderButtonFooter:(id)footer
{
  footerCopy = footer;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  [footerCopy setShowingReader:{objc_msgSend(WeakRetained, "isShowingReader")}];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59___SFPageFormatMenuController_configureReaderButtonFooter___block_invoke;
  v8[3] = &unk_1E848F8F0;
  objc_copyWeak(&v9, &location);
  [footerCopy setShowReader:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59___SFPageFormatMenuController_configureReaderButtonFooter___block_invoke_2;
  v6[3] = &unk_1E848F8F0;
  objc_copyWeak(&v7, &location);
  [footerCopy setHideReader:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_didTapFindOnPage
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];

  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] didClickFindInPageSBA];

  viewController = [(_SFPageFormatMenuController *)self viewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48___SFPageFormatMenuController__didTapFindOnPage__block_invoke;
  v8[3] = &unk_1E848F810;
  v9 = activeDocument;
  v7 = activeDocument;
  [viewController dismissViewControllerAnimated:1 completion:v8];
}

- (void)_didTapButtonInStepper:(id)stepper
{
  stepperCopy = stepper;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained setStepperFocused:1];
  if (([WeakRetained _isInPopoverPresentation] & 1) == 0 && (objc_msgSend(WeakRetained, "isBeingDismissed") & 1) == 0)
  {
    presentingViewController = [WeakRetained presentingViewController];

    if (presentingViewController)
    {
      [stepperCopy pulse];
      v7 = objc_loadWeakRetained(&self->_browserContentController);
      viewControllerToPresentFrom = [v7 viewControllerToPresentFrom];
      popoverPresentationController = [WeakRetained popoverPresentationController];
      adaptiveSheetPresentationController = [popoverPresentationController adaptiveSheetPresentationController];
      containerView = [adaptiveSheetPresentationController containerView];

      view = [viewControllerToPresentFrom view];
      view2 = [viewControllerToPresentFrom view];
      [view2 frame];
      [view convertRect:containerView toView:?];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = objc_alloc_init(MEMORY[0x1E69B1BB0]);
      [v22 setFrame:{v15, v17, v19, v21}];
      [containerView addSubview:v22];
      [v22 setStepper:stepperCopy];
      self->_stepperIsInTransitionView = 1;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __54___SFPageFormatMenuController__didTapButtonInStepper___block_invoke;
      v25[3] = &unk_1E848F6B0;
      v25[4] = self;
      v26 = v7;
      v27 = v22;
      v23 = v22;
      v24 = v7;
      [WeakRetained dismissViewControllerAnimated:1 completion:v25];
    }
  }
}

- (void)browsingAssistantWillAppear:(id)appear
{
  appearCopy = appear;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  LODWORD(self) = [appearCopy _isInPopoverPresentation];

  [WeakRetained willPresentBrowsingAssistantInSheet:self ^ 1];
}

- (void)browsingAssistantWillDisappear:(id)disappear
{
  disappearCopy = disappear;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  LODWORD(self) = [disappearCopy _isInPopoverPresentation];

  [WeakRetained willDismissBrowsingAssistantInSheet:self ^ 1];
}

- (id)viewControllerForPresentationForItemController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  viewControllerToPresentFromNavigationBar = [WeakRetained viewControllerToPresentFromNavigationBar];

  return viewControllerToPresentFromNavigationBar;
}

- (void)presentModalViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  [WeakRetained presentModalViewController:controllerCopy completion:completionCopy];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  assistantController = [activeDocument assistantController];
  result = [assistantController result];
  summaryResult = [result summaryResult];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v11 = getSearchUIClass_softClass;
  v22 = getSearchUIClass_softClass;
  if (!getSearchUIClass_softClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getSearchUIClass_block_invoke;
    v18[3] = &unk_1E848F710;
    v18[4] = &v19;
    __getSearchUIClass_block_invoke(v18);
    v11 = v20[3];
  }

  v12 = v11;
  _Block_object_dispose(&v19, 8);
  v13 = [v11 rowViewForResult:summaryResult style:0 feedbackDelegate:self];
  v14 = 0;
  if (objc_opt_respondsToSelector())
  {
    v15 = MEMORY[0x1E69DC8D8];
    contextMenuActionProvider = [v13 contextMenuActionProvider];
    v14 = [v15 configurationWithIdentifier:0 previewProvider:0 actionProvider:contextMenuActionProvider];
  }

  return v14;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E69DCE28];
  interactionCopy = interaction;
  v7 = objc_alloc_init(v5);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:clearColor];

  view = [interactionCopy view];

  [view bounds];
  v10 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:? cornerRadius:?];
  [v7 setVisiblePath:v10];

  v11 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:view parameters:v7];

  return v11;
}

- (void)didReportUserResponseFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [feedbackCopy setReportType:3];
  mEMORY[0x1E69C8EC0] = [MEMORY[0x1E69C8EC0] sharedPARSession];
  [mEMORY[0x1E69C8EC0] didReportUserResponseFeedback:feedbackCopy];
}

- (_SFBrowserContentController)browserContentController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);

  return WeakRetained;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end