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
- (BOOL)_presentBrowsingAssistantFromViewController:(id)a3 withSourceInfo:(id)a4 fromSafariViewController:(BOOL)a5;
- (BOOL)_shouldEnableDownloadsAlert;
- (BOOL)_shouldShowItemForAction:(id)a3;
- (BOOL)_shouldShowUnviewedFinishedDownloadsIndicator;
- (BOOL)isReaderModeAvailable;
- (BOOL)presentMenuFromViewController:(id)a3 withSourceInfo:(id)a4 fromSafariViewController:(BOOL)a5;
- (NSArray)cardItems;
- (SFBrowsingAssistantMenuSection)settingsSection;
- (UIViewController)viewController;
- (_SFBrowserContentController)browserContentController;
- (_SFPageFormatMenuController)initWithBrowserContentController:(id)a3;
- (id)_advancedPrivateBrowsingPrivacyProtectionsAlertItem;
- (id)_clearEditsAlertItem;
- (id)_consentCard;
- (id)_contentBlockerManager;
- (id)_contentBlockersToggleAlertItem;
- (id)_desktopMobileToggleAlertItemWithOrientation:(int64_t)a3;
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
- (id)_itemForAction:(id)a3;
- (id)_listenToPageCard;
- (id)_listeningControlsAlertItem;
- (id)_localizedStringOfRunningDownloads;
- (id)_makeItemForAction:(id)a3;
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
- (id)_reportWebCompatibilityIssueItemWithAction:(int64_t)a3;
- (id)_scribbleAlertItem;
- (id)_siriReaderAlertItem;
- (id)_siriReaderAlertItemWithState:(int64_t)a3 identifier:(id)a4;
- (id)_titleForPlaybackState:(int64_t)a3;
- (id)_translateAlertItemForLocaleIdentifier:(id)a3;
- (id)_userFeedbackAutofillAlertItem;
- (id)_userFeedbackTranslationAlertItem;
- (id)_viewSecurityInformationAlertItem;
- (id)_webExtensionsController;
- (id)_websiteSettingsAlertItem;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)menuForOrientation:(int64_t)a3 sourceInfo:(id)a4;
- (id)moreMenuSectionsForEditMode:(BOOL)a3;
- (id)primaryMenuSectionsForEditMode:(BOOL)a3 inFirstLevelMenu:(BOOL)a4;
- (id)viewControllerForPresentationForItemController:(id)a3;
- (int64_t)_deviceOrientation;
- (unint64_t)_listenToPageActionStateForActiveTab;
- (void)_anchorInWindowCoordinatesForAlert:(id)a3;
- (void)_buildTranslationAlertItemsWithSourceInfo:(id)a3;
- (void)_clearCachedCardItems;
- (void)_clearCachedItems;
- (void)_constructMenuForAlert:(id)a3 orientation:(int64_t)a4;
- (void)_didTapButtonInStepper:(id)a3;
- (void)_didTapFindOnPage;
- (void)_donateSummaryPresentationStartedIfNeeded;
- (void)_hideReader;
- (void)_invokeListenToPage;
- (void)_presentSecurityInformation;
- (void)_readerAvailabilityDidChange:(id)a3;
- (void)_showReader;
- (void)_translationAvailabilityDidChange:(id)a3;
- (void)_updateDownloadsAlertItem:(id)a3;
- (void)_updateListenToPageButtonAvailabilityForCard:(id)a3;
- (void)_updateListenToPageIfNeeded;
- (void)_updateSiriReaderPlaybackStateAndIdentifierWithCompletion:(id)a3;
- (void)browsingAssistantWillAppear:(id)a3;
- (void)browsingAssistantWillDisappear:(id)a3;
- (void)configureMainHeaderFooter:(id)a3;
- (void)configureReaderButtonFooter:(id)a3;
- (void)didReportUserResponseFeedback:(id)a3;
- (void)dismissMenu;
- (void)presentModalViewController:(id)a3 completion:(id)a4;
- (void)reloadAlert;
- (void)reloadBrowsingAssistantIfNeeded;
- (void)updateReaderCardWithSummaryIfNeeded;
- (void)updateShouldShowListeningControls:(BOOL)a3;
@end

@implementation _SFPageFormatMenuController

- (void)_updateSiriReaderPlaybackStateAndIdentifierWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89___SFPageFormatMenuController__updateSiriReaderPlaybackStateAndIdentifierWithCompletion___block_invoke;
  v7[3] = &unk_1E8490818;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [v6 updatePlaybackStateWithCompletion:v7];
}

- (_SFPageFormatMenuController)initWithBrowserContentController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPageFormatMenuController;
  v5 = [(_SFPageFormatMenuController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserContentController, v4);
    v7 = objc_alloc_init(MEMORY[0x1E69E3098]);
    featureManager = v6->_featureManager;
    v6->_featureManager = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v6 selector:sel__readerAvailabilityDidChange_ name:@"readerAvailabilityDidChange" object:0];
    [v9 addObserver:v6 selector:sel__translationAvailabilityDidChange_ name:*MEMORY[0x1E69C9A10] object:0];
    [v9 addObserver:v6 selector:sel__totalProgressDidChange_ name:@"_SFDownloadManagerTotalProgressDidChangeNotification" object:0];
    [v9 addObserver:v6 selector:sel__didFinishLastDownload_ name:@"_SFDownloadManagerDidFinishLastDownloadNotification" object:0];
    [v9 addObserver:v6 selector:sel__hasUnviewedDownloadsDidChange_ name:@"_SFDownloadManagerHasUnviewedDownloadsDidChangeNotification" object:0];
    v10 = v6;
  }

  return v6;
}

- (id)_webExtensionsController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained activeDocument];
  v4 = [v3 webExtensionsController];

  return v4;
}

- (id)_contentBlockerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained activeDocument];
  v4 = [v3 contentBlockerManager];

  return v4;
}

- (BOOL)_presentBrowsingAssistantFromViewController:(id)a3 withSourceInfo:(id)a4 fromSafariViewController:(BOOL)a5
{
  v42[1] = *MEMORY[0x1E69E9840];
  v32 = a3;
  v33 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v7 = objc_loadWeakRetained(&self->_viewController);
  v8 = [v7 presentingViewController];

  if (v8)
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
    v10 = [WeakRetained activeDocument];
    v11 = [v9 initWithShowingOnStartPage:{objc_msgSend(v10, "isShowingSystemStartPage")}];

    [v11 setDataSource:self];
    [v11 setDelegate:self];
    [v11 setModalPresentationStyle:7];
    objc_storeWeak(&self->_viewController, v11);
    v12 = [v11 popoverPresentationController];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v33 permittedArrowDirections];
    }

    else
    {
      v13 = 1;
    }

    [v12 setPermittedArrowDirections:v13];
    v14 = [[_SFPopoverPresentationDelegate alloc] initWithSourceInfo:v33];
    [(_SFPopoverPresentationDelegate *)v14 setNestsAdaptiveSheetPresentationInNavigationController:0];
    v29 = v14;
    [(_SFPopoverPresentationDelegate *)v14 attachToPopoverPresentationController:v12];
    v15 = [v32 view];
    v16 = [v15 window];
    v17 = [v16 windowScene];
    v18 = _SFContextInfoWithComment();
    location[1] = MEMORY[0x1E69E9820];
    location[2] = 3221225472;
    location[3] = __115___SFPageFormatMenuController__presentBrowsingAssistantFromViewController_withSourceInfo_fromSafariViewController___block_invoke;
    location[4] = &unk_1E8493EF0;
    v19 = v33;
    v40 = v19;
    v30 = v12;
    v41 = v30;
    _SFPopoverSourceInfoUnwrap();

    v20 = [v30 adaptiveSheetPresentationController];
    objc_initWeak(location, v11);
    v21 = MEMORY[0x1E69DCF58];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __115___SFPageFormatMenuController__presentBrowsingAssistantFromViewController_withSourceInfo_fromSafariViewController___block_invoke_4;
    v36[3] = &unk_1E8493F38;
    objc_copyWeak(&v38, location);
    v22 = v32;
    v37 = v22;
    v23 = [v21 customDetentWithIdentifier:0 resolver:v36];
    v42[0] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [v20 setDetents:v24];

    [v20 setPrefersGrabberVisible:1];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [v20 setPrefersGrabberVisible:0];
      [v30 _setShouldHideArrow:{objc_msgSend(v19, "shouldHideArrow")}];
      v25 = [v19 zoomTransitionSourceView];

      if (v25)
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

  return v8 == 0;
}

- (BOOL)presentMenuFromViewController:(id)a3 withSourceInfo:(id)a4 fromSafariViewController:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x1E69C8880] isBrowsingAssistantEnabled])
  {
    v10 = [(_SFPageFormatMenuController *)self _presentBrowsingAssistantFromViewController:v8 withSourceInfo:v9 fromSafariViewController:v5];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v12 = [WeakRetained presentingViewController];

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_viewController);
      v14 = [v13 focusedItem];

      if (v14)
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
      v15 = [v8 view];
      v16 = [v15 window];
      v17 = [v16 windowScene];
      v18 = -[_SFPageFormatMenuController menuForOrientation:sourceInfo:](self, "menuForOrientation:sourceInfo:", [v17 interfaceOrientation], v9);

      [v18 setUsesReverseOrder:{objc_msgSend(v9, "permittedArrowDirections") == 2}];
      [v18 setProvenance:{objc_msgSend(v9, "provenance")}];
      [v18 setModalPresentationStyle:7];
      v19 = [v18 view];
      [v19 setAccessibilityIdentifier:@"PageFormatMenu"];

      v20 = [[_SFPopoverPresentationDelegate alloc] initWithSourceInfo:v9];
      [(_SFPopoverPresentationDelegate *)v20 setPopoverUsesAdaptivePresentationInCompact:0];
      v21 = [v18 popoverPresentationController];
      v32 = v20;
      [(_SFPopoverPresentationDelegate *)v20 attachToPopoverPresentationController:v21];
      [v21 _setShouldHideArrow:{objc_msgSend(v9, "shouldHideArrow")}];
      if ([v9 shouldPassthroughSuperview])
      {
        [v21 _setPreferredHorizontalAlignment:1];
      }

      if (objc_opt_respondsToSelector())
      {
        v22 = [v9 permittedArrowDirections];
      }

      else
      {
        v22 = 1;
      }

      [v21 setPermittedArrowDirections:v22];
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = [v8 view];
      v25 = [v24 window];
      v26 = [v25 windowScene];
      v27 = _SFContextInfoWithComment();
      v33 = v23;
      v34 = v9;
      v35 = v18;
      v28 = v18;
      v29 = v23;
      _SFPopoverSourceInfoUnwrap();

      v10 = 1;
      [v8 presentViewController:v28 animated:1 completion:0];
      v30 = objc_loadWeakRetained(&self->_browserContentController);
      [v30 clearBadgeOnPageFormatMenu];

      objc_storeWeak(&self->_viewController, v28);
    }
  }

  return v10;
}

- (id)menuForOrientation:(int64_t)a3 sourceInfo:(id)a4
{
  v6 = objc_alloc_init(_SFSettingsAlertController);
  [(_SFPageFormatMenuController *)self _constructMenuForAlert:v6 orientation:a3];

  return v6;
}

- (void)_constructMenuForAlert:(id)a3 orientation:(int64_t)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v8 = [WeakRetained activeDocument];
  if ([v8 isShowingSystemStartPage])
  {
    v9 = [(_SFPageFormatMenuController *)self _otherTabAudioMediaStateAlertItem];
LABEL_7:
    v15 = v9;
    [v6 addItem:v9];

    goto LABEL_8;
  }

  v10 = [WeakRetained isShowingReader];
  if (self->_shouldShowListeningControls)
  {
    v11 = [(_SFPageFormatMenuController *)self _endListeningToSiriReaderAlertItem];
    [v6 addItem:v11];

    if (![(_SFPageFormatMenuController *)self _isActiveTabPausedOrPlaying])
    {
      v12 = [(_SFPageFormatMenuController *)self _siriReaderAlertItem];
      [v6 addItem:v12];
    }

    [v6 addDivider];
    v13 = [(_SFPageFormatMenuController *)self _playbackStateAndPositionAlertItem];
    [v6 addItem:v13];

    v14 = [(_SFPageFormatMenuController *)self _playbackRateAlertItem];
    [v6 addItem:v14];

    [v6 addDivider];
    v9 = [(_SFPageFormatMenuController *)self _moreControlsAlertItem];
    goto LABEL_7;
  }

  v16 = v10;
  if (v10)
  {
    [(_SFPageFormatMenuController *)self _readerTextSizeAlertItem];
  }

  else
  {
    [(_SFPageFormatMenuController *)self _pageZoomAlertItem];
  }
  v17 = ;
  [v6 addItem:v17];

  v18 = [(_SFPageFormatMenuController *)self _readerAlertItem];
  readerAlertItem = self->_readerAlertItem;
  self->_readerAlertItem = v18;

  if (v16)
  {
    v20 = 1;
  }

  else
  {
    v21 = [v8 readerContext];
    v20 = [v21 isReaderAvailable];
  }

  [(_SFSettingsAlertItem *)self->_readerAlertItem setEnabled:v20];
  [v6 addItem:self->_readerAlertItem];
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
    [v6 addItem:v22];
  }

  if ((v16 & 1) == 0)
  {
    v59 = v20;
    if (([WeakRetained hasDedicatedMediaStateButton] & 1) != 0 || !objc_msgSend(v8, "mediaStateIcon"))
    {
      v24 = 0;
    }

    else
    {
      [v6 addDivider];
      v23 = [(_SFPageFormatMenuController *)self _mediaStateAlertItem];
      [v6 addItem:v23];

      v24 = 1;
    }

    v25 = [WeakRetained activeDocument];
    v26 = [v25 atLeastOneOtherTabPlayingAudio];

    if (v26)
    {
      if ((v24 & 1) == 0)
      {
        [v6 addDivider];
      }

      v27 = [(_SFPageFormatMenuController *)self _otherTabAudioMediaStateAlertItem];
      [v6 addItem:v27];
    }

    if (([WeakRetained hasDedicatedDownloadsToolbarItem] & 1) == 0 && -[_SFPageFormatMenuController _shouldEnableDownloadsAlert](self, "_shouldEnableDownloadsAlert"))
    {
      [v6 addDivider];
      v28 = [(_SFPageFormatMenuController *)self _downloadsAlertItem];
      downloadsAlertItem = self->_downloadsAlertItem;
      self->_downloadsAlertItem = v28;

      [v6 addItem:self->_downloadsAlertItem];
    }

    [v6 addDivider];
    v30 = [v6 safari_popoverSourceInfo];
    [(_SFPageFormatMenuController *)self _buildTranslationAlertItemsWithSourceInfo:v30];

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

          [v6 addItem:*(*(&v64 + 1) + 8 * i)];
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v33);
    }

    LOBYTE(v20) = v59;
  }

  if (-[_SFPageFormatMenuController _canShowWebsiteSettings](self, "_canShowWebsiteSettings") && [MEMORY[0x1E69C8880] isInternalInstall])
  {
    [v6 addDivider];
    v36 = [(_SFPageFormatMenuController *)self _userFeedbackAutofillAlertItem];
    [v6 addItem:v36];
  }

  [v6 addDivider];
  if ((v20 & 1) == 0)
  {
    v37 = [v8 readerContext];
    [v37 checkReaderAvailability];
  }

  if (v16)
  {
    v38 = [(_SFPageFormatMenuController *)self _readerFontAlertItem];
    [v6 addItem:v38];

    v39 = [(_SFPageFormatMenuController *)self _readerThemeAlertItem];
LABEL_58:
    v44 = v39;
    [v6 addItem:v39];

    goto LABEL_59;
  }

  if ([(_SFPageFormatMenuController *)self _canHideToolbar])
  {
    v40 = [(_SFPageFormatMenuController *)self _fullScreenAlertItem];
    [v6 addItem:v40];
  }

  if ([(_SFPageFormatMenuController *)self _canToggleBetweenDesktopAndMobileSite])
  {
    v41 = [(_SFPageFormatMenuController *)self _desktopMobileToggleAlertItemWithOrientation:a4];
    [v6 addItem:v41];
  }

  if ([(_SFPageFormatMenuController *)self _canToggleContentBlockers])
  {
    v42 = [(_SFPageFormatMenuController *)self _contentBlockersToggleAlertItem];
    [v6 addItem:v42];
  }

  if ([(_SFPageFormatMenuController *)self _canToggleAdvancedPrivateBrowsingPrivacyProtections])
  {
    v43 = [(_SFPageFormatMenuController *)self _advancedPrivateBrowsingPrivacyProtectionsAlertItem];
    [v6 addItem:v43];
  }

  if ([(_SFPageFormatMenuController *)self _canTogglePrivateRelay])
  {
    v39 = [(_SFPageFormatMenuController *)self _privateRelayToggleAlertItem];
    goto LABEL_58;
  }

LABEL_59:
  [v6 addDivider];
  if ([(_SFPageFormatMenuController *)self _canShowWebsiteSettings])
  {
    v45 = [(_SFPageFormatMenuController *)self _websiteSettingsAlertItem];
    [v6 addItem:v45];
  }

  if (!(v16 & 1 | (([WeakRetained supportsPrivacyReport] & 1) == 0)))
  {
    v46 = [_SFPageFormatMenuPrivacyReportController alloc];
    v47 = [WeakRetained activeDocument];
    v48 = [(_SFPageFormatMenuPrivacyReportController *)v46 initWithDocument:v47];

    [(_SFPageFormatMenuPrivacyReportController *)v48 setDelegate:self];
    v49 = [(_SFPageFormatMenuPrivacyReportController *)v48 alertItem];
    [v6 addItem:v49];
  }

  if ((v16 & 1) == 0)
  {
    if (([WeakRetained hasDedicatedExtensionsButton] & 1) == 0)
    {
      v50 = [(_SFPageFormatMenuController *)self _hasExtensionsAvailableToShowInManageExtensionsView];
      if (v50)
      {
        [v6 addDivider];
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v51 = [(_SFPageFormatMenuController *)self _extensionItems];
      v52 = [v51 countByEnumeratingWithState:&v60 objects:v68 count:16];
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
              objc_enumerationMutation(v51);
            }

            [v6 addItem:*(*(&v60 + 1) + 8 * j)];
          }

          v53 = [v51 countByEnumeratingWithState:&v60 objects:v68 count:16];
        }

        while (v53);
      }

      if (v50)
      {
        v56 = [(_SFPageFormatMenuController *)self _manageExtensionsAlertItem];
        [v6 addItem:v56];
      }
    }

    if (WBSAXShouldShowAnimatedImageControls() && [MEMORY[0x1E69853A0] instancesRespondToSelector:sel__pauseAllAnimationsWithCompletionHandler_])
    {
      [v6 addDivider];
      v57 = [v8 activeWebView];
      v58 = [v57 _allowsAnyAnimationToPlay];

      if (v58)
      {
        [(_SFPageFormatMenuController *)self _pauseAllAnimationsAlertItem];
      }

      else
      {
        [(_SFPageFormatMenuController *)self _playAllAnimationsAlertItem];
      }
      v9 = ;
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (BOOL)_hasExtensionsAvailableToShowInManageExtensionsView
{
  v3 = [(_SFPageFormatMenuController *)self _webExtensionsController];
  if ([v3 loadEnabledExtensionsWasCalled])
  {
    v4 = [(_SFPageFormatMenuController *)self _contentBlockerManager];
    v5 = [v3 extensions];
    if ([v5 count])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v4 extensions];
      v6 = [v7 count] != 0;
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
  v4 = [(_SFPageFormatMenuController *)self _webExtensionsController];
  v5 = [WeakRetained activeDocument];
  v6 = [v5 isPrivateBrowsingEnabled];

  v7 = [v4 enabledExtensionsWithPrivateBrowsingEnabled:v6];
  v8 = [WeakRetained activeTabForExtensions];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46___SFPageFormatMenuController__extensionItems__block_invoke;
  v13[3] = &unk_1E8493FB0;
  v14 = v4;
  v15 = v8;
  v9 = v8;
  v10 = v4;
  v11 = [v7 safari_mapAndFilterObjectsUsingBlock:v13];

  return v11;
}

- (id)_siriReaderAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v26 = [WeakRetained activeDocument];
  v4 = [v26 readerContext];
  v5 = [MEMORY[0x1E69B1B98] sharedVoiceUtilities];
  v6 = [v5 activeSiriReaderSessionIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x1E69B1B98] sharedVoiceUtilities];
    v9 = [v8 activeSiriReaderSessionURL];
    v10 = v4;
    v11 = [v4 readerURL];
    v12 = [v9 isEqual:v11];

    if (v12)
    {
      v13 = [MEMORY[0x1E69B1B98] sharedVoiceUtilities];
      v14 = [v13 activeSiriReaderSessionIdentifier];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = v4;
  }

  v13 = [MEMORY[0x1E696AFB0] UUID];
  v14 = [v13 UUIDString];
LABEL_6:
  v15 = v14;

  v16 = [(_SFPageFormatMenuController *)self _siriReaderAlertItemWithState:0 identifier:v15];
  cachedSiriReaderAlertItem = self->_cachedSiriReaderAlertItem;
  self->_cachedSiriReaderAlertItem = v16;

  [(_SFSettingsAlertItem *)self->_cachedSiriReaderAlertItem setEnabled:0];
  objc_initWeak(&location, self);
  v18 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
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
  v23 = v26;
  v30 = v23;
  [v18 updateContentIdentifierOnQueue:v19 completion:v27];

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
  v8 = [WeakRetained activeDocument];
  [v6 setEnabled:{objc_msgSend(v8, "isBlockedByScreenTime") ^ 1}];

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
  v6 = [WeakRetained activeDocument];
  [v4 setEnabled:{objc_msgSend(v6, "isBlockedByScreenTime") ^ 1}];

  return v4;
}

- (void)reloadAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v3 = [WeakRetained presentingViewController];

  if (v3)
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
        v5 = [v4 view];
        v6 = [v5 window];
        v7 = [v6 windowScene];
        -[_SFPageFormatMenuController _constructMenuForAlert:orientation:](self, "_constructMenuForAlert:orientation:", v4, [v7 interfaceOrientation]);

        [v4 resizeMenu];
      }
    }
  }
}

- (void)dismissMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v2 = [WeakRetained presentingViewController];

  if (v2)
  {
    v3 = [WeakRetained presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_readerAvailabilityDidChange:(id)a3
{
  v12 = a3;
  v4 = [v12 object];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = [WeakRetained activeDocument];
  v7 = [v6 readerContext];

  v8 = v12;
  if (v4 == v7)
  {
    v9 = [v12 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"isAvailable"];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      [(_SFSettingsAlertItem *)self->_readerAlertItem setEnabled:1];
    }

    v8 = v12;
  }
}

- (id)_readerAlertItem
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v4 = [WeakRetained isShowingReader];

  v5 = _WBSLocalizedString();
  if (v4)
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
  v3 = [WeakRetained siriReaderPlaybackStateForActiveTab];

  return (v3 - 1) < 2;
}

- (BOOL)_isSiriReaderCurrentlyActive
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained siriReaderPlaybackStateForActiveTab];

  v4 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  v5 = [v4 currentPlaybackState];

  return (v5 - 1) < 2 && v3 != 3;
}

- (void)updateShouldShowListeningControls:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([(_SFPageFormatMenuController *)self _isActiveTabPausedOrPlaying])
  {
    if (!v3)
    {
      LOBYTE(v5) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [(_SFPageFormatMenuController *)self _isSiriReaderCurrentlyActive];
    LOBYTE(v5) = 0;
    if (!v6 || !v3)
    {
      goto LABEL_8;
    }
  }

  v5 = [MEMORY[0x1E69C8880] isSiriReadThisEnabled];
  if (v5)
  {
    LOBYTE(v5) = [WeakRetained supportsSiriReadThis];
  }

LABEL_8:
  self->_shouldShowListeningControls = v5;
}

- (id)_titleForPlaybackState:(int64_t)a3
{
  if ((a3 - 2) >= 2 && a3 != 1)
  {
    v3 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
    v4 = [v3 currentPlaybackState];

    if ((v4 - 1) <= 1)
    {
      v5 = [MEMORY[0x1E69B1B98] sharedVoiceUtilities];
      v6 = [v5 activeSiriReaderSessionIdentifier];
      v7 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
      v8 = [v7 nowPlayingContentIdentifier];
      [v6 isEqualToString:v8];
    }
  }

  v9 = _WBSLocalizedString();

  return v9;
}

- (id)_siriReaderAlertItemWithState:(int64_t)a3 identifier:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v7 = [(_SFPageFormatMenuController *)self _titleForPlaybackState:a3];
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
  v4 = [WeakRetained activeDocument];
  [v4 mediaStateIcon];

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
  v11 = [v9 title];
  [v10 setSubtitle:v11];

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

- (void)_updateDownloadsAlertItem:(id)a3
{
  v19 = a3;
  v4 = [v19 isEnabled];
  v5 = [v19 showsIndicatorDot];
  v6 = [v19 badgeText];
  v7 = +[_SFDownloadManager sharedManager];
  v8 = [v7 runningDownloadsCount];

  if (v8)
  {
    v9 = [v19 badgeView];

    if (v9)
    {
      v10 = [v19 badgeView];
      v11 = [(_SFPageFormatMenuController *)self _localizedStringOfRunningDownloads];
      [v10 setBadgeText:v11];
    }

    else
    {
      v12 = [_SFPageFormatMenuBadgeView alloc];
      v13 = [(_SFPageFormatMenuController *)self _localizedStringOfRunningDownloads];
      v14 = [(_SFPageFormatMenuBadgeView *)v12 initWithText:v13];
      [v19 setBadgeView:v14];
    }
  }

  else
  {
    [v19 setShowsIndicatorDot:{-[_SFPageFormatMenuController _shouldShowUnviewedFinishedDownloadsIndicator](self, "_shouldShowUnviewedFinishedDownloadsIndicator")}];
    [v19 setBadgeView:0];
  }

  [v19 setEnabled:{-[_SFPageFormatMenuController _shouldEnableDownloadsAlert](self, "_shouldEnableDownloadsAlert")}];
  v15 = +[_SFDownloadManager sharedManager];
  if ([v15 runningDownloadsCount])
  {
    v16 = [(_SFPageFormatMenuController *)self _localizedStringOfRunningDownloads];
    [v19 setBadgeText:v16];
  }

  else
  {
    [v19 setBadgeText:0];
  }

  if (v4 != [v19 isEnabled] || v5 != objc_msgSend(v19, "showsIndicatorDot") || (objc_msgSend(v19, "badgeText"), v17 = objc_claimAutoreleasedReturnValue(), v18 = WBSIsEqual(), v17, (v18 & 1) == 0))
  {
    [v19 notifyObserversItemDidUpdate];
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
    v4 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
    v4 = [WeakRetained hasUnviewedDownloads];
  }

  return v4;
}

- (id)_desktopMobileToggleAlertItemWithOrientation:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v5 = [WeakRetained activeDocument];

  v6 = [v5 reloadOptionsController];
  v7 = [v5 webView];
  v8 = [v7 URL];
  [v6 setSupportsAdvancedPrivacyProtections:{objc_msgSend(v5, "supportsAdvancedPrivacyProtectionsForURL:", v8)}];

  v9 = [v6 loadedUsingDesktopUserAgent];
  v10 = _WBSLocalizedString();
  v11 = [MEMORY[0x1E69DCAB8] safari_currentDeviceImageNameForOrientation:a3];
  if (v9)
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
  v23 = v9;
  v22 = v6;
  v15 = v6;
  v16 = [_SFSettingsAlertItem buttonWithTitle:v10 textStyle:v14 icon:v13 action:21 handler:&v18];
  [v16 setAccessibilityIdentifier:{@"ToggleDesktopMobileWebsite", v18, v19, v20, v21}];

  return v16;
}

- (id)_pauseAllAnimationsAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pause.circle"];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = [WeakRetained activeDocument];
  v7 = [v6 activeWebView];

  v8 = *MEMORY[0x1E69DDCF8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59___SFPageFormatMenuController__pauseAllAnimationsAlertItem__block_invoke;
  v12[3] = &unk_1E848F9D8;
  v13 = v7;
  v9 = v7;
  v10 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v8 icon:v4 action:33 handler:v12];
  [v10 setAccessibilityIdentifier:@"PauseAllAnimationsAlertItem"];

  return v10;
}

- (id)_playAllAnimationsAlertItem
{
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.circle"];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = [WeakRetained activeDocument];
  v7 = [v6 activeWebView];

  v8 = *MEMORY[0x1E69DDCF8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58___SFPageFormatMenuController__playAllAnimationsAlertItem__block_invoke;
  v12[3] = &unk_1E848F9D8;
  v13 = v7;
  v9 = v7;
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

- (void)_anchorInWindowCoordinatesForAlert:(id)a3
{
  v13 = [a3 popoverPresentationController];
  v3 = [v13 sourceView];
  [v13 sourceRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 window];
  [v13 setSourceView:v12];
  [v12 convertRect:v3 fromView:{v5, v7, v9, v11}];
  [v13 setSourceRect:?];
}

- (void)_buildTranslationAlertItemsWithSourceInfo:(id)a3
{
  v4 = a3;
  p_translationAlertItems = &self->_translationAlertItems;
  translationAlertItems = self->_translationAlertItems;
  self->_translationAlertItems = 0;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(_SFPageFormatMenuController *)self _userFeedbackTranslationAlertItem];
  [v7 addObject:v8];
  if ([(_SFPageFormatMenuController *)self _hasStartedTranslation])
  {
    v9 = [(_SFPageFormatMenuController *)self _exitTranslationAlertItem];
    [v7 insertObject:v9 atIndex:0];

    v10 = [(_SFPageFormatMenuController *)self _internalTapToRadarTranslationAlertItem];
    [v7 safari_addObjectUnlessNil:v10];

    objc_storeStrong(&self->_translationAlertItems, v7);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
    v12 = [WeakRetained activeDocument];
    v13 = [v12 translationContext];

    v14 = [v13 availableTargetLocaleIdentifiers];
    if ([v14 count])
    {
      [v8 setEnabled:0];
      if ([v14 count] == 1)
      {
        v15 = [v14 firstObject];
        v16 = [(_SFPageFormatMenuController *)self _translateAlertItemForLocaleIdentifier:v15];
        [v7 insertObject:v16 atIndex:0];

        objc_storeStrong(p_translationAlertItems, v7);
      }

      else if ([v14 count] >= 2)
      {
        v17 = _WBSLocalizedString();
        objc_initWeak(&location, v4);
        v18 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
        v21 = *MEMORY[0x1E69DDCF8];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __73___SFPageFormatMenuController__buildTranslationAlertItemsWithSourceInfo___block_invoke;
        v27[3] = &unk_1E8494070;
        objc_copyWeak(&v29, &location);
        v19 = v13;
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

- (id)_translateAlertItemForLocaleIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = [WeakRetained activeDocument];
  v7 = [v6 translationContext];

  v8 = [MEMORY[0x1E695DF58] safari_displayNameForLocaleIdentifier:v4];
  v9 = MEMORY[0x1E696AEC0];
  v10 = _WBSLocalizedString();
  v11 = [v9 stringWithFormat:v10, v8];

  v12 = *MEMORY[0x1E69DDCF8];
  v13 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70___SFPageFormatMenuController__translateAlertItemForLocaleIdentifier___block_invoke;
  v22[3] = &unk_1E8493BD8;
  v23 = v7;
  v24 = v4;
  v14 = v4;
  v15 = v7;
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
  v3 = [WeakRetained activeDocument];
  v4 = [v3 translationContext];

  v5 = _WBSLocalizedString();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56___SFPageFormatMenuController__exitTranslationAlertItem__block_invoke;
  v11[3] = &unk_1E848F9D8;
  v12 = v4;
  v8 = v4;
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

- (void)_translationAvailabilityDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___SFPageFormatMenuController__translationAvailabilityDidChange___block_invoke;
  v6[3] = &unk_1E848F548;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)_userFeedbackAutofillAlertItem
{
  v3 = [MEMORY[0x1E69C8E90] titleText];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___SFPageFormatMenuController__userFeedbackAutofillAlertItem__block_invoke;
  v8[3] = &unk_1E848F9D8;
  v8[4] = self;
  v6 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v4 icon:v5 action:32 handler:v8];

  return v6;
}

- (id)_pageZoomAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [SFPageZoomStepperController alloc];
  v4 = [WeakRetained activeDocument];
  v5 = [WeakRetained pageZoomManager];
  v6 = [(SFPageZoomStepperController *)v3 initWithDocument:v4 preferenceManager:v5];
  v7 = [_SFSettingsAlertItem stepperWithController:v6 action:3 handler:&__block_literal_global_279_0];

  return v7;
}

- (id)_readerTextSizeAlertItem
{
  v3 = [SFReaderTextSizeStepperController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v5 = [WeakRetained activeDocument];
  v6 = [v5 readerContext];
  v7 = [(SFReaderTextSizeStepperController *)v3 initWithReaderContext:v6];
  v8 = [_SFSettingsAlertItem stepperWithController:v7 action:4 handler:&__block_literal_global_282];

  return v8;
}

- (id)_readerThemeAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v4 = [WeakRetained activeDocument];

  v5 = [v4 readerContext];
  v6 = objc_loadWeakRetained(&self->_viewController);
  v7 = [v6 provenance];

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __52___SFPageFormatMenuController__readerThemeAlertItem__block_invoke;
  v16 = &unk_1E84940C0;
  v17 = v5;
  v18 = v7;
  v8 = v5;
  v9 = [SFReaderAppearanceThemeSelector themeSelectorWithBlock:&v13];
  v10 = [v8 configurationManager];
  [v9 setSelectedTheme:{objc_msgSend(v10, "themeForAppearance:", objc_msgSend(v8, "currentAppearance"))}];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [_SFSettingsAlertItem paletteWithAction:0 controller:v9];
  [v11 setAccessibilityIdentifier:@"ThemeSelector"];

  return v11;
}

- (id)_readerFontAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained activeDocument];
  v4 = [v3 readerContext];

  v5 = _WBSLocalizedString();
  v6 = [[_SFReaderFontOptionsGroupController alloc] initWithReaderContext:v4];
  v7 = [_SFSettingsAlertItem optionsGroupWithTitle:v5 action:6 subItemAction:7 controller:v6];

  [v7 setAccessibilityIdentifier:@"ReaderFont"];

  return v7;
}

- (BOOL)_canToggleContentBlockers
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader] & 1) != 0 || (objc_msgSend(WeakRetained, "activeDocument"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "webView"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "URL"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "safari_isSafariWebExtensionURL"), v5, v4, v3, (v6))
  {
    v7 = 0;
  }

  else
  {
    v8 = [WeakRetained perSitePreferencesVendor];
    v9 = [v8 contentBlockersPreferenceManager];
    v7 = [v9 hasEnabledContentBlockers];
  }

  return v7;
}

- (BOOL)_canHideToolbar
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained activeDocument];
  if ([v3 canHideToolbar])
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
    v4 = [WeakRetained activeDocument];
    v5 = [v4 webView];
    v6 = [v5 URL];

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
  v3 = [WeakRetained activeDocument];
  v4 = [v3 webView];
  v5 = [v4 URL];
  v6 = [v5 safari_isSafariWebExtensionURL];

  return v6 ^ 1;
}

- (BOOL)_canShowReportWebsiteIssueInMainMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained activeDocument];
  v4 = [v3 isPageReloaded];

  return v4;
}

- (BOOL)_canShowScribble
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader])
  {
    v3 = 0;
  }

  else
  {
    v4 = [WeakRetained activeDocument];
    v5 = [v4 sfScribbleController];
    v3 = [v5 canEnableScribble];
  }

  return v3;
}

- (BOOL)_canTogglePrivateRelay
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if ([WeakRetained isShowingReader])
  {
    v3 = 0;
  }

  else
  {
    v4 = [WeakRetained activeDocument];
    if ([v4 isNavigatingViaReloadWithoutPrivateRelay])
    {
      v3 = 1;
    }

    else
    {
      v5 = [v4 webView];
      if (objc_opt_respondsToSelector())
      {
        v6 = [v4 webView];
        v3 = [v6 _wasPrivateRelayed];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (id)_privateRelayToggleAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained activeDocument];
  v4 = [v3 wasLoadedWithPrivateRelay];
  if (v4)
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
  v17 = v4;
  v15 = v3;
  v16 = WeakRetained;
  v10 = WeakRetained;
  v11 = v3;
  v12 = [_SFSettingsAlertItem buttonWithTitle:v7 textStyle:v9 icon:v8 action:v6 handler:v14];
  [v12 setAccessibilityIdentifier:@"TogglePrivateRelay"];

  return v12;
}

- (BOOL)_canViewSecurityInformation
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained activeDocument];
  v4 = [v3 webView];
  v5 = [v4 serverTrust] != 0;

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
  v6 = [WeakRetained activeDocument];
  v7 = [v6 webView];
  v8 = [v5 initWithTrust:{objc_msgSend(v7, "serverTrust")}];

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
    v13 = [WeakRetained viewControllerToPresentFromNavigationBar];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58___SFPageFormatMenuController__presentSecurityInformation__block_invoke;
    v15[3] = &unk_1E848F548;
    v16 = v13;
    v17 = v12;
    v14 = v13;
    [v14 dismissViewControllerAnimated:1 completion:v15];
  }
}

- (BOOL)_hasStartedTranslation
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained activeDocument];
  v4 = [v3 translationContext];
  v5 = [v4 hasStartedTranslating];

  return v5;
}

- (id)_contentBlockersToggleAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained activeDocument];

  v4 = [v3 wasLoadedWithContentBlockersEnabled];
  if (v4)
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
  v16 = v3;
  v17 = v4;
  v9 = v3;
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
    v4 = [WeakRetained activeDocument];
    v5 = [v4 webView];
    v6 = [v5 URL];
    v7 = [v6 safari_isSafariWebExtensionURL];

    if (v7)
    {
      v3 = 0;
    }

    else
    {
      v8 = [v4 isPrivateBrowsingEnabled];
      v9 = [MEMORY[0x1E695E000] safari_browserDefaults];
      v3 = [v9 safari_enableAdvancedPrivacyProtections:v8];
    }
  }

  return v3;
}

- (id)_advancedPrivateBrowsingPrivacyProtectionsAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v4 = [WeakRetained activeDocument];
  v5 = [v4 wasLoadedWithAdvancedPrivateBrowsingPrivacyProtections];
  v6 = v5;
  if (v5)
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
  v18 = v4;
  v19 = v6;
  v11 = v4;
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
  v3 = [WeakRetained activeDocument];

  v4 = [v3 sfScribbleController];
  v5 = [v4 userInitiatedScribblingDisabled];

  if (v5)
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
    v12 = v3;
    v6 = [_SFSettingsAlertItem buttonWithTitle:v7 textStyle:v8 icon:v9 action:49 handler:v11];

    [v6 setAccessibilityIdentifier:@"Scribble"];
  }

  return v6;
}

- (id)_clearEditsAlertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v3 = [WeakRetained activeDocument];

  v4 = _WBSLocalizedString();
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.backward"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51___SFPageFormatMenuController__clearEditsAlertItem__block_invoke;
  v10[3] = &unk_1E848F9D8;
  v11 = v3;
  v7 = v3;
  v8 = [_SFSettingsAlertItem buttonWithTitle:v4 textStyle:v5 icon:v6 action:50 handler:v10];

  [v8 setAccessibilityIdentifier:@"ClearEdits"];

  return v8;
}

- (id)_reportScribbleIssueItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v4 = [WeakRetained activeDocument];

  v5 = _WBSLocalizedString();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __55___SFPageFormatMenuController__reportScribbleIssueItem__block_invoke;
  v14 = &unk_1E8493BD8;
  v15 = self;
  v16 = v4;
  v8 = v4;
  v9 = [_SFSettingsAlertItem buttonWithTitle:v5 textStyle:v6 icon:v7 action:51 handler:&v11];

  [v9 setAccessibilityIdentifier:{@"ReportScribbleIssue", v11, v12, v13, v14, v15}];

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

- (id)_reportWebCompatibilityIssueItemWithAction:(int64_t)a3
{
  v5 = _WBSLocalizedString();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74___SFPageFormatMenuController__reportWebCompatibilityIssueItemWithAction___block_invoke;
  v10[3] = &unk_1E848F9D8;
  v10[4] = self;
  v8 = [_SFSettingsAlertItem buttonWithTitle:v5 textStyle:v6 icon:v7 action:a3 handler:v10];

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
  v8 = [WeakRetained activeDocument];
  LOBYTE(v5) = [v8 isPrivateBrowsingEnabled];

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
    v3 = [WeakRetained presentingViewController];

    if (v3)
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
    v3 = 0;
  }

  else
  {
    v24 = [WeakRetained activeDocument];
    v3 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = [v24 assistantController];
    v5 = [v4 result];
    obj = [v5 entityResults];

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
          v9 = [v7 identifier];
          v10 = [(NSMutableDictionary *)cachedEntityCards objectForKeyedSubscript:v9];

          if (v10)
          {
            if (([v3 containsObject:v10] & 1) == 0)
            {
              [v3 addObject:v10];
            }
          }

          else
          {
            v11 = [v24 assistantController];
            v12 = [v11 webpageIdentifier];

            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count") + 3}];
            objc_initWeak(&location, self);
            v14 = MEMORY[0x1E69B1AE0];
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __43___SFPageFormatMenuController__entityItems__block_invoke;
            v28[3] = &unk_1E8494138;
            objc_copyWeak(&v29, &location);
            v15 = [v14 entityCardWithSearchResult:v7 webpageIdentifier:v12 componentIdentifier:v13 actionHandler:v28];
            if (!self->_didDonateVisualPresentationEntityToBiome)
            {
              v16 = [MEMORY[0x1E69C8810] sharedLogger];
              [v16 didShowEntityCardSBA];

              v17 = [MEMORY[0x1E69C8EB0] sharedManager];
              [v17 donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:v12 componentType:objc_msgSend(MEMORY[0x1E69C8EB0] componentIdentifier:"entityComponentTypeFromResult:" tableOfContentsArrayLength:{v7), v13, 0}];
            }

            v18 = self->_cachedEntityCards;
            if (!v18)
            {
              v19 = [MEMORY[0x1E695DF90] dictionary];
              v20 = self->_cachedEntityCards;
              self->_cachedEntityCards = v19;

              v18 = self->_cachedEntityCards;
            }

            v21 = [v7 identifier];
            [(NSMutableDictionary *)v18 setObject:v15 forKeyedSubscript:v21];

            if (([v3 containsObject:0] & 1) == 0)
            {
              [v3 addObject:v15];
            }

            objc_destroyWeak(&v29);
            objc_destroyWeak(&location);
          }
        }

        v27 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v27);
    }

    if ([v3 count])
    {
      self->_didDonateVisualPresentationEntityToBiome = 1;
    }
  }

  return v3;
}

- (BOOL)_shouldShowItemForAction:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = [WeakRetained activeDocument];
  if (![v4 isEqualToString:*MEMORY[0x1E69B1D60]])
  {
    if ([v6 isShowingSystemStartPage])
    {
LABEL_5:
      LOBYTE(v8) = 0;
      goto LABEL_13;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69B1CD0]])
    {
      goto LABEL_9;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69B1D68]])
    {
      v9 = [WeakRetained canTogglePinningTab];
      goto LABEL_12;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69B1CC8]])
    {
LABEL_9:
      v9 = [WeakRetained canAddToBookmarks];
    }

    else
    {
      if ([v4 isEqualToString:*MEMORY[0x1E69B1CE0]])
      {
        v9 = [WeakRetained canAddToReadingList];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1CD8]])
      {
        v9 = [WeakRetained canAddToQuickNote];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D00]])
      {
        v9 = [WeakRetained canMoveToTabGroup];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D10]])
      {
        v9 = [WeakRetained supportsPrivacyReport];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D08]])
      {
        v9 = [WeakRetained canPrintCurrentTab];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D38]])
      {
        v9 = [(_SFPageFormatMenuController *)self _canShowScribble];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D28]])
      {
        v9 = [(_SFPageFormatMenuController *)self _canShowReportWebsiteIssueInMainMenu];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D20]])
      {
        v11 = [(_SFPageFormatMenuController *)self _canShowReportWebsiteIssueInMainMenu];
        goto LABEL_31;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1CF0]])
      {
        v9 = [(_SFPageFormatMenuController *)self _canHideToolbar];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D30]])
      {
        v9 = [(_SFPageFormatMenuController *)self _canToggleBetweenDesktopAndMobileSite];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D50]])
      {
        v9 = [(_SFPageFormatMenuController *)self _canToggleContentBlockers];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D40]])
      {
        v9 = [(_SFPageFormatMenuController *)self _canToggleAdvancedPrivateBrowsingPrivacyProtections];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D70]])
      {
        v9 = [(_SFPageFormatMenuController *)self _canTogglePrivateRelay];
        goto LABEL_12;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E69B1D18]])
      {
        if (![(_SFPageFormatMenuController *)self _canShowWebsiteSettings])
        {
          goto LABEL_5;
        }

        v9 = [MEMORY[0x1E69C8880] isAutoFillInternalFeedbackUIEnabled];
      }

      else
      {
        if ([v4 isEqualToString:*MEMORY[0x1E69B1D58]])
        {
          if (([WeakRetained hasDedicatedMediaStateButton] & 1) != 0 || !objc_msgSend(v6, "mediaStateIcon"))
          {
            goto LABEL_5;
          }

          v11 = [WeakRetained isShowingReader];
LABEL_31:
          LOBYTE(v8) = v11 ^ 1;
          goto LABEL_13;
        }

        if ([v4 isEqualToString:*MEMORY[0x1E69B1D48]])
        {
          if (!WBSAXShouldShowAnimatedImageControls())
          {
            goto LABEL_5;
          }

          v9 = [MEMORY[0x1E69853A0] instancesRespondToSelector:sel__pauseAllAnimationsWithCompletionHandler_];
        }

        else if ([v4 isEqualToString:*MEMORY[0x1E69B1D98]])
        {
          v9 = [(_SFPageFormatMenuController *)self _canViewSecurityInformation];
        }

        else
        {
          if ([v4 isEqualToString:*MEMORY[0x1E69B1CE8]] && objc_msgSend(MEMORY[0x1E69C8880], "isSolariumEnabled") && (objc_opt_respondsToSelector() & 1) != 0)
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }

          if (![v4 isEqualToString:*MEMORY[0x1E69B1CF8]])
          {
            goto LABEL_5;
          }

          v9 = [(_SFPageFormatMenuController *)self _canShowListenToPageMenuAction];
        }
      }
    }

LABEL_12:
    LOBYTE(v8) = v9;
    goto LABEL_13;
  }

  v7 = [WeakRetained activeDocument];
  if ([v7 atLeastOneOtherTabPlayingAudio])
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

- (id)_itemForAction:(id)a3
{
  v4 = a3;
  cachedMenuItems = self->_cachedMenuItems;
  if (!cachedMenuItems)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_cachedMenuItems;
    self->_cachedMenuItems = v6;

    cachedMenuItems = self->_cachedMenuItems;
  }

  v8 = [(NSMutableDictionary *)cachedMenuItems objectForKeyedSubscript:v4];

  if (!v8)
  {
    v9 = [(_SFPageFormatMenuController *)self _makeItemForAction:v4];
    [(NSMutableDictionary *)self->_cachedMenuItems setObject:v9 forKeyedSubscript:v4];
  }

  v10 = [(NSMutableDictionary *)self->_cachedMenuItems objectForKeyedSubscript:v4];

  return v10;
}

- (id)_makeItemForAction:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = [WeakRetained activeDocument];
  if ([v4 isEqualToString:*MEMORY[0x1E69B1CD0]])
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star"];
    v8 = _WBSLocalizedString();
    v9 = *MEMORY[0x1E69DDCF8];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke;
    v47[3] = &unk_1E848F9D8;
    v48 = WeakRetained;
    v10 = [_SFSettingsAlertItem buttonWithTitle:v8 textStyle:v9 icon:v7 action:42 handler:v47];
    v11 = v48;
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D68]])
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
    v10 = [_SFSettingsAlertItem buttonWithTitle:v8 textStyle:v14 icon:v7 action:48 handler:v45];
    v11 = v46;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1CC8]])
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"book"];
    v8 = _WBSLocalizedString();
    v13 = *MEMORY[0x1E69DDCF8];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_4;
    v43[3] = &unk_1E848F9D8;
    v44 = WeakRetained;
    v10 = [_SFSettingsAlertItem buttonWithTitle:v8 textStyle:v13 icon:v7 action:43 handler:v43];
    v11 = v44;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1CE0]])
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eyeglasses"];
    v16 = _WBSLocalizedString();
    v17 = *MEMORY[0x1E69DDCF8];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_6;
    v41[3] = &unk_1E848F9D8;
    v42 = WeakRetained;
    v10 = [_SFSettingsAlertItem buttonWithTitle:v16 textStyle:v17 icon:v7 action:45 handler:v41];

    [v10 setAccessibilityIdentifier:@"AddToReadingList"];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1CD8]])
  {
    v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"quicknote"];
    v8 = _WBSLocalizedString();
    v18 = *MEMORY[0x1E69DDCF8];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_8;
    v39[3] = &unk_1E848F9D8;
    v40 = WeakRetained;
    v10 = [_SFSettingsAlertItem buttonWithTitle:v8 textStyle:v18 icon:v7 action:44 handler:v39];
    v11 = v40;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D00]])
  {
    v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.forward.app"];
    v20 = _WBSLocalizedString();
    v10 = [_SFSettingsAlertItem buttonWithTitle:v20 textStyle:*MEMORY[0x1E69DDCF8] icon:v19 action:46 handler:&__block_literal_global_507];

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
    [v10 setPopUpMenu:v21];

    v22 = &v37;
LABEL_22:
    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D10]])
  {
    v23 = [_SFPageFormatMenuPrivacyReportController alloc];
    v24 = [WeakRetained activeDocument];
    v25 = [(_SFPageFormatMenuPrivacyReportController *)v23 initWithDocument:v24];

    [(_SFPageFormatMenuPrivacyReportController *)v25 setDelegate:self];
    v10 = [(_SFPageFormatMenuPrivacyReportController *)v25 alertItem];

    goto LABEL_12;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D08]])
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"printer"];
    v8 = _WBSLocalizedString();
    v26 = *MEMORY[0x1E69DDCF8];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_12;
    v34[3] = &unk_1E848F9D8;
    v35 = WeakRetained;
    v10 = [_SFSettingsAlertItem buttonWithTitle:v8 textStyle:v26 icon:v7 action:47 handler:v34];
    v11 = v35;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D38]])
  {
    v27 = [(_SFPageFormatMenuController *)self _scribbleAlertItem];
LABEL_50:
    v10 = v27;
    goto LABEL_12;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D28]])
  {
    v27 = [(_SFPageFormatMenuController *)self _reportWebCompatibilityIssueItemMainMenu];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D20]])
  {
    v27 = [(_SFPageFormatMenuController *)self _reportWebCompatibilityIssueItemMoreMenu];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1CF0]])
  {
    v27 = [(_SFPageFormatMenuController *)self _fullScreenAlertItem];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D30]])
  {
    v27 = [(_SFPageFormatMenuController *)self _desktopMobileToggleAlertItemWithOrientation:[(_SFPageFormatMenuController *)self _deviceOrientation]];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D50]])
  {
    v27 = [(_SFPageFormatMenuController *)self _contentBlockersToggleAlertItem];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D40]])
  {
    v27 = [(_SFPageFormatMenuController *)self _advancedPrivateBrowsingPrivacyProtectionsAlertItem];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D70]])
  {
    v27 = [(_SFPageFormatMenuController *)self _privateRelayToggleAlertItem];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D18]])
  {
    v27 = [(_SFPageFormatMenuController *)self _userFeedbackAutofillAlertItem];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D58]])
  {
    v27 = [(_SFPageFormatMenuController *)self _mediaStateAlertItem];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D60]])
  {
    v27 = [(_SFPageFormatMenuController *)self _otherTabAudioMediaStateAlertItem];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D48]])
  {
    v19 = [v6 activeWebView];
    if ([v19 _allowsAnyAnimationToPlay])
    {
      [(_SFPageFormatMenuController *)self _pauseAllAnimationsAlertItem];
    }

    else
    {
      [(_SFPageFormatMenuController *)self _playAllAnimationsAlertItem];
    }
    v10 = ;
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1D98]])
  {
    v27 = [(_SFPageFormatMenuController *)self _viewSecurityInformationAlertItem];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1CE8]])
  {
    v27 = [(_SFPageFormatMenuController *)self _editToolbarAlertItem];
    goto LABEL_50;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69B1CF8]])
  {
    v10 = [(_SFPageFormatMenuController *)self _siriReaderAlertItem];
    v28 = objc_loadWeakRetained(&self->_browserContentController);
    v29 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
    v30 = [v29 currentPlaybackState];

    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_14;
    v31[3] = &unk_1E8494160;
    objc_copyWeak(v33, &location);
    v33[1] = v30;
    v19 = v28;
    v32 = v19;
    [(_SFPageFormatMenuController *)self _updateSiriReaderPlaybackStateAndIdentifierWithCompletion:v31];

    v22 = v33;
    goto LABEL_22;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)primaryMenuSectionsForEditMode:(BOOL)a3 inFirstLevelMenu:(BOOL)a4
{
  v55 = a4;
  v80 = *MEMORY[0x1E69E9840];
  v57 = [MEMORY[0x1E695DF70] array];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = 0x1E69B1000uLL;
  v62 = [MEMORY[0x1E69B1AE8] favoritesSection];
  v7 = [MEMORY[0x1E695DF70] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v8 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v9 = [v8 browsingAssistant_favoritedMenuActions];

  v10 = [v9 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v74;
    v13 = *MEMORY[0x1E69B1D38];
    v58 = *MEMORY[0x1E69B1D88];
    v60 = *MEMORY[0x1E69B1D38];
    v63 = a3;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v73 + 1) + 8 * i);
        if ([(_SFPageFormatMenuController *)self _shouldShowItemForAction:v15])
        {
          if (a3 || ![v15 isEqualToString:v13])
          {
            v16 = [(_SFPageFormatMenuController *)self _itemForAction:v15];
            [v7 safari_addObjectUnlessNil:v16];
          }

          else
          {
            v16 = [(_SFPageFormatMenuController *)self _effectiveScribbleItems];
            if ([v16 count] > 1)
            {
              v18 = v7;
              if ([v7 count])
              {
                v19 = v62;
                [v62 setItems:v18];
                [v57 addObject:v62];
                v20 = [objc_alloc(*(v6 + 2792)) initWithIdentifier:v58];
                [v20 setItems:v16];
                [v57 addObject:v20];

                v6 = 0x1E69B1000;
              }

              else
              {
                v19 = v62;
                [v62 setItems:v16];
                [v57 addObject:v62];
              }

              v21 = [objc_alloc(*(v6 + 2792)) initWithIdentifier:@"otherFavorites"];

              v7 = [MEMORY[0x1E695DF70] array];
              v17 = v18;
              v62 = v21;
              a3 = v63;
              v13 = v60;
            }

            else
            {
              v17 = [v16 firstObject];
              [v7 safari_addObjectUnlessNil:v17];
            }

            v6 = 0x1E69B1000;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v11);
  }

  v22 = WeakRetained;
  v23 = [WeakRetained isShowingReader];
  if (!v55 || v23)
  {
    if (!(a3 | ![(_SFPageFormatMenuController *)self _canShowListenToPageMenuAction]| ((v23 & 1) == 0) | !v55))
    {
      v45 = [(_SFPageFormatMenuController *)self _siriReaderAlertItem];
      [v7 addObject:v45];
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
          [v7 safari_addObjectUnlessNil:v30];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v26);
  }

  if ([(_SFPageFormatMenuController *)self _isShowingImmersiveContent])
  {
LABEL_55:
    v33 = v62;
    [v62 setItems:v7];
    v32 = v57;
    [v57 addObject:v62];
    v46 = [v57 copy];
    goto LABEL_64;
  }

  translationAlertItems = self->_translationAlertItems;
  v32 = v57;
  v33 = v62;
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
      v40 = [v39 actionType];
      if (v40 > 17)
      {
        if (v40 == 18)
        {
          v41 = v61;
          v42 = v36;
          v61 = v39;
        }

        else
        {
          if (v40 != 19)
          {
            continue;
          }

          v41 = v59;
          v42 = v36;
          v59 = v39;
        }

        goto LABEL_48;
      }

      if ((v40 - 14) < 2)
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
      if (v40 == 17)
      {
        goto LABEL_48;
      }
    }

    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v65 objects:v77 count:16];
  }

  while (v35);

  if (v64)
  {
    [v7 addObject:?];
    v33 = v62;
    [v62 setItems:v7];
    v32 = v57;
    [v57 addObject:v62];
    v22 = WeakRetained;
    v35 = v59;
    v44 = v61;
    goto LABEL_61;
  }

  v22 = WeakRetained;
  v32 = v57;
  v44 = v61;
  v33 = v62;
  v35 = v59;
  if (v36)
  {
    [v62 setItems:v7];
    [v57 addObject:v62];
    v47 = objc_alloc(MEMORY[0x1E69B1AE8]);
    v48 = [v47 initWithIdentifier:*MEMORY[0x1E69B1D90]];
    v49 = [MEMORY[0x1E695DF70] array];
    [v49 safari_addObjectUnlessNil:v36];
    [v49 safari_addObjectUnlessNil:v61];
    [v49 safari_addObjectUnlessNil:v59];
    [v48 setItems:v49];
    [v57 addObject:v48];

    goto LABEL_60;
  }

LABEL_57:
  [v33 setItems:v7];
  [v32 addObject:v33];
  v36 = 0;
LABEL_60:
  v64 = 0;
LABEL_61:
  v50 = [v22 activeDocument];
  v51 = [v50 isShowingSystemStartPage];

  if ((v51 & 1) == 0)
  {
    v52 = [(_SFPageFormatMenuController *)self _downloadsSection];
    [v32 safari_addObjectUnlessNil:v52];

    v53 = [(_SFPageFormatMenuController *)self _extensionsSection];
    [v32 safari_addObjectUnlessNil:v53];
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

  v4 = [(_SFPageFormatMenuController *)self _hasExtensionsAvailableToShowInManageExtensionsView];

  if (!v4)
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
    v9 = [(_SFPageFormatMenuController *)self _manageExtensionsAlertItem];
    v25[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v11 = [(_SFPageFormatMenuController *)self _extensionItems];
    v12 = [v10 arrayByAddingObjectsFromArray:v11];
    [(SFBrowsingAssistantMenuSection *)v6 setItems:v12];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [(SFBrowsingAssistantMenuSection *)v6 items];
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          v19 = objc_loadWeakRetained(&self->_viewController);
          [v18 setUpSelectionHandlerIfNeededWithViewController:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

  v4 = [(_SFPageFormatMenuController *)self _shouldEnableDownloadsAlert];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [objc_alloc(MEMORY[0x1E69B1AE8]) initWithIdentifier:@"downloads"];
  downloadsAlertItem = self->_downloadsAlertItem;
  if (!downloadsAlertItem)
  {
    v7 = [(_SFPageFormatMenuController *)self _downloadsAlertItem];
    v8 = self->_downloadsAlertItem;
    self->_downloadsAlertItem = v7;

    downloadsAlertItem = self->_downloadsAlertItem;
  }

  v11[0] = downloadsAlertItem;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v5 setItems:v9];

LABEL_8:

  return v5;
}

- (id)moreMenuSectionsForEditMode:(BOOL)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v35 = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E695DFD8];
  v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v7 = [v6 browsingAssistant_favoritedMenuActions];
  v8 = [v5 setWithArray:v7];

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
    v34 = a3;
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
        v12 = [MEMORY[0x1E695DF70] array];
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
          v18 = v12;
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
                if (a3 || ![v20 isEqualToString:v37])
                {
                  v21 = [(_SFPageFormatMenuController *)self _itemForAction:v20];
                  [v18 safari_addObjectUnlessNil:v21];
                }

                else
                {
                  v21 = [(_SFPageFormatMenuController *)self _effectiveScribbleItems];
                  if ([v21 count] > 1)
                  {
                    if ([v18 count])
                    {
                      [v38 setItems:v18];
                      [v35 addObject:v38];
                      v36 = v18;
                      v25 = [objc_alloc(MEMORY[0x1E69B1AE8]) initWithIdentifier:v33];
                      [v25 setItems:v21];
                      [v35 addObject:v25];

                      v18 = v36;
                    }

                    else
                    {
                      [v38 setItems:v21];
                      [v35 addObject:v38];
                    }

                    v26 = [objc_alloc(MEMORY[0x1E69B1AE8]) initWithIdentifier:@"otherAdvancedActions"];

                    v24 = [MEMORY[0x1E695DF70] array];
                    v38 = v26;
                    a3 = v34;
                  }

                  else
                  {
                    v22 = [v21 firstObject];
                    v23 = v18;
                    v18 = v22;
                    v24 = v23;
                    [v23 safari_addObjectUnlessNil:v22];
                  }

                  v18 = v24;
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v16);
        }

        else
        {
          v18 = v12;
        }

        [v38 setItems:v18];
        [v35 addObject:v38];

        v10 = v32 + 1;
        v9 = 0x1E69B1000;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v31);
  }

  v27 = [v35 copy];

  return v27;
}

- (id)_effectiveScribbleItems
{
  v3 = [(_SFPageFormatMenuController *)self _itemForAction:*MEMORY[0x1E69B1D38]];
  v4 = [MEMORY[0x1E695DF70] array];
  [v4 safari_addObjectUnlessNil:v3];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = [WeakRetained activeDocument];

  v7 = [v6 sfScribbleController];
  v8 = [v7 hiddenElementCount];

  if (v8)
  {
    v9 = [(_SFPageFormatMenuController *)self _clearEditsAlertItem];
    [v4 safari_addObjectUnlessNil:v9];
  }

  else if (![v6 hasEnteredScribbleMode])
  {
    goto LABEL_7;
  }

  v10 = [v6 sfScribbleController];
  v11 = [v10 userInitiatedScribblingDisabled];

  if ((v11 & 1) == 0 && [(_SFPageFormatMenuController *)self _shouldShowScribbleFeedbackButton])
  {
    v12 = [(_SFPageFormatMenuController *)self _reportScribbleIssueItem];
    [v4 safari_addObjectUnlessNil:v12];
  }

LABEL_7:
  v13 = [v4 copy];

  return v13;
}

- (int64_t)_deviceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v3 = [WeakRetained presentingViewController];
  v4 = [v3 view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 interfaceOrientation];

  return v7;
}

- (SFBrowsingAssistantMenuSection)settingsSection
{
  if ([(_SFPageFormatMenuController *)self _canShowWebsiteSettings])
  {
    settingsSection = self->_settingsSection;
    if (!settingsSection)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
      v5 = [WeakRetained activeDocument];
      v6 = [_SFPerSitePreferencesPopoverViewController alloc];
      v7 = [v5 perSitePreferencesVendor];
      v8 = [(_SFPerSitePreferencesPopoverViewController *)v6 initWithBrowserDocument:v5 perSitePreferencesVendor:v7];

      v9 = [(_SFPerSitePreferencesPopoverViewController *)v8 pageMenuSection];
      v10 = self->_settingsSection;
      self->_settingsSection = v9;

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
    v3 = [WeakRetained activeDocument];
    v4 = [v3 readerContext];
    if ([WeakRetained canReadActiveLanguage] && objc_msgSend(v4, "isReaderAvailable") && (objc_msgSend(v3, "isBlockedByScreenTime") & 1) == 0)
    {
      v7 = [WeakRetained siriReaderPlaybackStateForActiveTab];
      if ((v7 - 1) > 2)
      {
        v5 = 1;
      }

      else
      {
        v5 = qword_1D47DE748[v7 - 1];
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
  v3 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if (v3)
  {
    LOBYTE(v3) = [(_SFPageFormatMenuController *)self _listenToPageActionStateForActiveTab]!= 0;
  }

  return v3;
}

- (NSArray)cardItems
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_SFPageFormatMenuController *)self _readerCard];
  v5 = [(_SFPageFormatMenuController *)self _listenToPageCard];
  [v3 safari_addObjectUnlessNil:v5];

  [v3 safari_addObjectUnlessNil:v4];
  v6 = [(_SFPageFormatMenuController *)self _readerOptionsCard];
  [v3 safari_addObjectUnlessNil:v6];

  v7 = [(_SFPageFormatMenuController *)self _consentCard];
  [v3 safari_addObjectUnlessNil:v7];

  v8 = [(_SFPageFormatMenuController *)self _entityItems];
  [v3 safari_addObjectsFromArrayUnlessNil:v8];

  v9 = [v3 copy];

  return v9;
}

- (void)_updateListenToPageButtonAvailabilityForCard:(id)a3
{
  v4 = a3;
  v5 = [(_SFPageFormatMenuController *)self _listenToPageActionStateForActiveTab];
  v6 = [v4 secondaryAction];

  if (v5)
  {
    if (!v6)
    {
      objc_initWeak(&location, self);
      v11 = MEMORY[0x1E69B1AE0];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __76___SFPageFormatMenuController__updateListenToPageButtonAvailabilityForCard___block_invoke;
      v17 = &unk_1E848F8F0;
      objc_copyWeak(&v18, &location);
      v12 = [v11 listenToPageActionForHandler:&v14 state:v5];
      [v4 setSecondaryAction:{v12, v14, v15, v16, v17}];

      v13 = [v4 secondaryAction];
      [v13 setAttributes:{objc_msgSend(v13, "attributes") & 0xFFFFFFFFFFFFFFFELL}];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      goto LABEL_8;
    }

    v7 = [v4 secondaryAction];
    v8 = [v7 attributes];

    if (v8)
    {
      v9 = [v4 secondaryAction];
      v10 = [v9 copy];

      [v10 setAttributes:{objc_msgSend(v10, "attributes") & 0xFFFFFFFFFFFFFFFELL}];
      [v4 setSecondaryAction:v10];

LABEL_8:
      [v4 notifyObserverCardDidUpdate];
    }
  }

  else if (v6)
  {
    [v4 setSecondaryAction:0];
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
      v6 = [WeakRetained activeDocument];
      v7 = [v6 readerContext];

      v8 = [(_SFPageFormatMenuController *)self _listenToPageActionStateForActiveTab];
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
      v10 = [v9 readerOptionsCardWithReaderContext:v7 dismissReaderHandler:v20 listenToPageHandler:v18 listenToPageActionState:v8];
      v11 = self->_cachedReaderOptionsCard;
      self->_cachedReaderOptionsCard = v10;

      if (v8)
      {
        v12 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
        v13 = MEMORY[0x1E69E96A0];
        v14 = MEMORY[0x1E69E96A0];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __49___SFPageFormatMenuController__readerOptionsCard__block_invoke_3;
        v16[3] = &unk_1E8494188;
        objc_copyWeak(&v17, &location);
        [v12 updateContentIdentifierOnQueue:v13 completion:v16];

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
  v3 = [WeakRetained activeDocument];
  v4 = [v3 readerContext];
  v5 = [v4 isReaderAvailable];

  return v5;
}

- (void)_showReader
{
  v3 = [(_SFPageFormatMenuController *)self viewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  v12 = [(_SFPageFormatMenuController *)self browserContentController];
  if (([v12 isShowingReader] & 1) == 0)
  {
    v4 = [MEMORY[0x1E69C8810] sharedLogger];
    [v4 didToggleReaderSBA];

    WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
    v6 = [WeakRetained activeDocument];
    v7 = [v6 assistantController];

    v8 = [v7 summary];
    if (v8)
    {
      v9 = [MEMORY[0x1E69C8810] sharedLogger];
      [v9 didClickSummaryCardSBA];

      v10 = [MEMORY[0x1E69C8EB0] sharedManager];
      v11 = [v7 webpageIdentifier];
      [v10 donateBrowsingAssistantUserInteractionDetectedWithWebPageID:v11 componentType:2 componentIdentifier:&unk_1F5023278 tableOfContentsArrayLength:0 tableOfContentsTextIndex:0 readerSectionExpanded:0];
    }

    [v12 toggleShowingReaderForUserAction];
  }
}

- (void)_hideReader
{
  v3 = [(_SFPageFormatMenuController *)self viewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  v5 = [(_SFPageFormatMenuController *)self browserContentController];
  if ([v5 isShowingReader])
  {
    v4 = [MEMORY[0x1E69C8810] sharedLogger];
    [v4 didToggleReaderSBA];

    [v5 toggleShowingReaderForUserAction];
  }
}

- (void)_invokeListenToPage
{
  v3 = [(_SFPageFormatMenuController *)self viewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  [WeakRetained siriReadThisMenuInvocation];
}

- (void)_donateSummaryPresentationStartedIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v4 = [WeakRetained activeDocument];
  v9 = [v4 assistantController];

  v5 = [v9 summary];
  if ([v5 length] && !self->_didDonateVisualPresentationSummaryToBiome)
  {
    v6 = [MEMORY[0x1E69C8810] sharedLogger];
    [v6 didShowSummaryCardSBA];

    v7 = [MEMORY[0x1E69C8EB0] sharedManager];
    v8 = [v9 webpageIdentifier];
    [v7 donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:v8 componentType:2 componentIdentifier:&unk_1F5023278 tableOfContentsArrayLength:0];

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

  v6 = [WeakRetained activeDocument];
  v7 = [v6 readerContext];
  v8 = [v7 isReaderAvailable];
  v9 = [v6 assistantController];
  if ([MEMORY[0x1E69C8EC8] hasUserConsent] && objc_msgSend(v9, "isSummaryAvailable"))
  {
    v10 = [v9 summary];
    v11 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    [(_SFPageFormatMenuController *)self _donateSummaryPresentationStartedIfNeeded];
    if (v10)
    {
LABEL_11:
      v12 = [v9 cachedReaderArticleTitle];
      v13 = v12;
      if (v12)
      {
        v27 = v12;
      }

      else
      {
        v14 = [v6 webView];
        v27 = [v14 title];
      }

      v26 = v11;

      v15 = [(_SFPageFormatMenuController *)self _listenToPageActionStateForActiveTab];
      v16 = [v9 result];
      v17 = [v16 disclaimerText];

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
      v19 = [v18 readerCardWithReaderContext:v7 title:v27 summary:v10 disclaimer:v17 contextMenuInteraction:v26 showReaderHandler:v37 listenToPageHandler:v34 listenToPageActionState:v15];
      v20 = self->_cachedReaderCard;
      self->_cachedReaderCard = v19;

      if (v15)
      {
        v21 = v8;
      }

      else
      {
        v21 = 0;
      }

      if (v21 == 1)
      {
        v22 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
        v23 = MEMORY[0x1E69E96A0];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __42___SFPageFormatMenuController__readerCard__block_invoke_3;
        v32[3] = &unk_1E8494188;
        objc_copyWeak(&v33, location);
        [v22 updateContentIdentifierOnQueue:MEMORY[0x1E69E96A0] completion:v32];

        objc_destroyWeak(&v33);
      }

      if (v8)
      {
        v24 = [v9 cachedReaderArticleTitle];

        if (!v24)
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __42___SFPageFormatMenuController__readerCard__block_invoke_4;
          v28[3] = &unk_1E84941B0;
          objc_copyWeak(&v31, location);
          v29 = v9;
          v30 = v27;
          [v7 getReaderArticleTitleWithCompletion:v28];

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
    v10 = 0;
    v4 = 0;
    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v10 = 0;
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
  v4 = [WeakRetained activeDocument];
  v12 = [v4 assistantController];

  v5 = [MEMORY[0x1E69C8EC8] hasUserConsent];
  v6 = v12;
  if (v5)
  {
    v7 = [v12 isSummaryAvailable];
    v6 = v12;
    if (v7)
    {
      if (self->_cachedReaderCard)
      {
        v8 = [v12 summary];
        v9 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
        v10 = [(SFBrowsingAssistantCardItem *)self->_cachedReaderCard bodyText];
        v11 = [v8 isEqualToString:v10];

        if ((v11 & 1) == 0)
        {
          [(SFBrowsingAssistantCardItem *)self->_cachedReaderCard setBodyText:v8];
          [(SFBrowsingAssistantCardItem *)self->_cachedReaderCard setContextMenuInteraction:v9];
          [(SFBrowsingAssistantCardItem *)self->_cachedReaderCard notifyObserverCardDidUpdate];
          [(_SFPageFormatMenuController *)self _donateSummaryPresentationStartedIfNeeded];
        }

        v6 = v12;
      }
    }
  }
}

- (void)_updateListenToPageIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v4 = [(_SFPageFormatMenuController *)self _listenToPageActionStateForActiveTab];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58___SFPageFormatMenuController__updateListenToPageIfNeeded__block_invoke;
  v6[3] = &unk_1E8494160;
  objc_copyWeak(v8, &location);
  v8[1] = v4;
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
      v12 = [MEMORY[0x1E69B1AE0] listenToPageCard];
      v13 = self->_cachedListenToPageCard;
      self->_cachedListenToPageCard = v12;

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

- (void)configureMainHeaderFooter:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = [WeakRetained isShowingReader];
  v7 = v6;
  if (v6)
  {
    v8 = [SFReaderTextSizeStepperController alloc];
    v9 = [WeakRetained activeDocument];
    v10 = [v9 readerContext];
    v11 = [(SFReaderTextSizeStepperController *)v8 initWithReaderContext:v10];
  }

  else
  {
    v12 = [SFPageZoomStepperController alloc];
    v9 = [WeakRetained activeDocument];
    v10 = [WeakRetained pageZoomManager];
    v11 = [(SFPageZoomStepperController *)v12 initWithDocument:v9 preferenceManager:v10];
  }

  v13 = v11;

  if (v13)
  {
    v14 = [v4 stepper];

    if (!v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E69B1BA8]);
      [v4 setStepper:v15];
    }

    v16 = [v4 stepper];
    [v13 prepareStepper:v16];
    if ((v7 & 1) == 0 && [(_SFPageFormatMenuController *)self _isShowingImmersiveContent])
    {
      [v16 setUserInteractionEnabled:0];
    }

    objc_initWeak(&from, v16);
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
    [v16 setDecrementButtonActionHandler:v24];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57___SFPageFormatMenuController_configureMainHeaderFooter___block_invoke_3;
    v20[3] = &unk_1E8494200;
    objc_copyWeak(&v22, &from);
    v21 = v17;
    objc_copyWeak(&v23, &location);
    [v16 setIncrementButtonActionHandler:v20];
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&from);
  }

  [v4 setLeadingButtonEnabled:{objc_msgSend(WeakRetained, "canFindOnPage")}];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57___SFPageFormatMenuController_configureMainHeaderFooter___block_invoke_4;
  v18[3] = &unk_1E848F8F0;
  objc_copyWeak(&v19, &location);
  [v4 setLeadingButtonActionHandler:v18];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)configureReaderButtonFooter:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  [v4 setShowingReader:{objc_msgSend(WeakRetained, "isShowingReader")}];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59___SFPageFormatMenuController_configureReaderButtonFooter___block_invoke;
  v8[3] = &unk_1E848F8F0;
  objc_copyWeak(&v9, &location);
  [v4 setShowReader:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59___SFPageFormatMenuController_configureReaderButtonFooter___block_invoke_2;
  v6[3] = &unk_1E848F8F0;
  objc_copyWeak(&v7, &location);
  [v4 setHideReader:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_didTapFindOnPage
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v4 = [WeakRetained activeDocument];

  v5 = [MEMORY[0x1E69C8810] sharedLogger];
  [v5 didClickFindInPageSBA];

  v6 = [(_SFPageFormatMenuController *)self viewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48___SFPageFormatMenuController__didTapFindOnPage__block_invoke;
  v8[3] = &unk_1E848F810;
  v9 = v4;
  v7 = v4;
  [v6 dismissViewControllerAnimated:1 completion:v8];
}

- (void)_didTapButtonInStepper:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained setStepperFocused:1];
  if (([WeakRetained _isInPopoverPresentation] & 1) == 0 && (objc_msgSend(WeakRetained, "isBeingDismissed") & 1) == 0)
  {
    v6 = [WeakRetained presentingViewController];

    if (v6)
    {
      [v4 pulse];
      v7 = objc_loadWeakRetained(&self->_browserContentController);
      v8 = [v7 viewControllerToPresentFrom];
      v9 = [WeakRetained popoverPresentationController];
      v10 = [v9 adaptiveSheetPresentationController];
      v11 = [v10 containerView];

      v12 = [v8 view];
      v13 = [v8 view];
      [v13 frame];
      [v12 convertRect:v11 toView:?];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = objc_alloc_init(MEMORY[0x1E69B1BB0]);
      [v22 setFrame:{v15, v17, v19, v21}];
      [v11 addSubview:v22];
      [v22 setStepper:v4];
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

- (void)browsingAssistantWillAppear:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  LODWORD(self) = [v4 _isInPopoverPresentation];

  [WeakRetained willPresentBrowsingAssistantInSheet:self ^ 1];
}

- (void)browsingAssistantWillDisappear:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  LODWORD(self) = [v4 _isInPopoverPresentation];

  [WeakRetained willDismissBrowsingAssistantInSheet:self ^ 1];
}

- (id)viewControllerForPresentationForItemController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v4 = [WeakRetained viewControllerToPresentFromNavigationBar];

  return v4;
}

- (void)presentModalViewController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  [WeakRetained presentModalViewController:v7 completion:v6];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v7 = [WeakRetained activeDocument];
  v8 = [v7 assistantController];
  v9 = [v8 result];
  v10 = [v9 summaryResult];

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
  v13 = [v11 rowViewForResult:v10 style:0 feedbackDelegate:self];
  v14 = 0;
  if (objc_opt_respondsToSelector())
  {
    v15 = MEMORY[0x1E69DC8D8];
    v16 = [v13 contextMenuActionProvider];
    v14 = [v15 configurationWithIdentifier:0 previewProvider:0 actionProvider:v16];
  }

  return v14;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v5 = MEMORY[0x1E69DCE28];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v8];

  v9 = [v6 view];

  [v9 bounds];
  v10 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:? cornerRadius:?];
  [v7 setVisiblePath:v10];

  v11 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v9 parameters:v7];

  return v11;
}

- (void)didReportUserResponseFeedback:(id)a3
{
  v3 = a3;
  [v3 setReportType:3];
  v4 = [MEMORY[0x1E69C8EC0] sharedPARSession];
  [v4 didReportUserResponseFeedback:v3];
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