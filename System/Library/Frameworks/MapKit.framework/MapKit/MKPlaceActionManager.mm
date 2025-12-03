@interface MKPlaceActionManager
- (BOOL)_canShowAddOrEditNoteAction;
- (BOOL)_canShowClaimThisBusiness;
- (BOOL)_canShowCreateCustomRouteAction;
- (BOOL)_canShowLibraryAction;
- (BOOL)_isCurrentLocationOrDroppedPin;
- (BOOL)_showAddPlaceFooterAction;
- (BOOL)_showCollectionItem;
- (BOOL)_showHomeShortcutItem;
- (BOOL)_showMapItemIdentifier;
- (BOOL)_showPlaceID;
- (BOOL)_showReportAProblem;
- (BOOL)_showReportAProblemFooterAction;
- (BOOL)_showWebsite;
- (MKPlaceActionManager)initWithDataProvider:(id)provider;
- (MKPlaceCardActionItem)callActionItem;
- (MKPlaceCardActionItem)collectionActionItem;
- (MKPlaceCardActionItem)favoriteActionItem;
- (MKPlaceCardActionItem)flyoverActionItem;
- (MKPlaceCardActionItem)homeActionItem;
- (MKPlaceCardActionItem)libraryActionItem;
- (MKPlaceCardActionItem)messageActionItem;
- (MKPlaceCardActionItem)noteActionItem;
- (MKPlaceCardActionItem)removeMarkerItem;
- (MKPlaceCardActionItem)reportAProblemAddPlaceFooterAction;
- (MKPlaceCardActionItem)reportAProblemFooterAction;
- (MKPlaceCardActionItem)websiteActionItem;
- (_MKInfoCardAnalyticsDelegate)analyticsDelegate;
- (id)actionItemForButtonItem:(id)item;
- (id)actionItemForButtonType:(int)type;
- (id)addToFavoritesGuideActionItem;
- (id)addToHomeItem;
- (id)contact;
- (id)createContactActions;
- (id)createCustomRouteActionItem;
- (id)createFooterActions;
- (id)createMenuActions;
- (id)createRowActionsWithStyle:(unint64_t)style;
- (id)createSearchAlongRouteActions;
- (id)delegate;
- (id)developerPlaceCardGetDirectionsFooterAction;
- (id)developerPlaceCardOpenInMapsFooterAction;
- (id)favoriteItemForFooter;
- (id)mapItem;
- (id)placeCardDelegate;
- (id)placeIDForAppearance:(id)appearance;
- (id)placeItem;
- (id)rateActionItem;
- (id)shortPlacecardFooterActions;
- (unint64_t)options;
- (unint64_t)placeMUIDForAppearance:(id)appearance;
- (void)_addInternalOnlyActions:(id)actions;
- (void)_canMakeCalls:(id)calls;
- (void)_launchMaps;
- (void)addLayoutInfoIfNeeded:(id)needed;
- (void)performAction:(id)action options:(id)options completion:(id)completion;
- (void)setPlaceHasNote:(unint64_t)note;
- (void)setPlaceHasRating:(BOOL)rating;
- (void)setPlaceInBookmarks:(BOOL)bookmarks;
- (void)setPlaceInCollections:(BOOL)collections;
- (void)setPlaceInFavoritesGuide:(BOOL)guide;
- (void)setPlaceInLibrary:(unint64_t)library;
- (void)setPlaceInShortcuts:(BOOL)shortcuts;
@end

@implementation MKPlaceActionManager

- (_MKInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (id)placeCardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);

  return WeakRetained;
}

- (MKPlaceCardActionItem)removeMarkerItem
{
  v3 = +[MKSystemController sharedInstance];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  v5 = [MKPlaceCardActionItem actionItemWithType:19 actionDataProvider:self enabled:1];
  if (userInterfaceIdiom != 2)
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [v5 setGlyphColor:systemRedColor];
  }

  return v5;
}

- (void)performAction:(id)action options:(id)options completion:(id)completion
{
  v191[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  optionsCopy = options;
  completionCopy = completion;
  v11 = [[MKPlaceActionEnvironment alloc] initWithOptions:optionsCopy];
  analyticsModuleMetadata = [(MKPlaceActionEnvironment *)v11 analyticsModuleMetadata];
  isQuickAction = [(MKPlaceActionEnvironment *)v11 isQuickAction];
  isActionBar = [(MKPlaceActionEnvironment *)v11 isActionBar];
  v14 = isActionBar;
  v15 = 201;
  if (isQuickAction)
  {
    v16 = !isActionBar;
    isActionBar2 = [(MKPlaceActionEnvironment *)v11 isActionBar];
    if (v14)
    {
      v15 = 201;
    }

    else
    {
      v15 = 30;
    }

    v14 = isActionBar2;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v18 = 203;
  }

  else
  {
    v18 = v15;
  }

  if ([(MKPlaceActionEnvironment *)v11 isActionBarMoreMenu])
  {
    v19 = @"SECONDARY";
  }

  else
  {
    isActionBar3 = [(MKPlaceActionEnvironment *)v11 isActionBar];
    v19 = @"PRIMARY";
    if (!isActionBar3)
    {
      v19 = 0;
    }
  }

  v21 = v19;
  switch([actionCopy type])
  {
    case 1:
      analyticsDelegate = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate infoCardAnalyticsDidSelectAction:5013 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:62 actionRichProviderId:0 classification:v21];

      delegate3 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerSourceViewKey"];
      delegate = [(MKPlaceActionManager *)self delegate];
      [delegate placeCardActionControllerDidSelectReportAProblem:0 fromView:delegate3 isQuickAction:v16];
      goto LABEL_87;
    case 2:
      analyticsDelegate2 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate2 infoCardAnalyticsDidSelectAction:222 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:62 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectReportAProblemAddNewPlace:0 isQuickAction:v16];
      goto LABEL_81;
    case 3:
      analyticsDelegate3 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate3 infoCardAnalyticsDidSelectAction:290 target:v18 eventValue:@"Unresolved" moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:62 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectReportAProblemViewReport:0];
      goto LABEL_81;
    case 4:
      analyticsDelegate4 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate4 infoCardAnalyticsDidSelectAction:6016 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:5 actionRichProviderId:0 classification:v21];

      delegate3 = [(MKPlaceActionManager *)self delegate];
      [delegate3 placeActionManager:self didSelectAddToContactsUsingEnvironment:v11];
      goto LABEL_88;
    case 7:
      analyticsDelegate5 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate5 infoCardAnalyticsDidSelectAction:0 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      [(MKPlaceActionManager *)self openURL:actionCopy];
      goto LABEL_89;
    case 8:
      analyticsDelegate6 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate6 infoCardAnalyticsDidSelectAction:6023 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectViewAllPhotos:0 presentingViewController:0];
      goto LABEL_81;
    case 9:
      analyticsDelegate7 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate7 infoCardAnalyticsDidSelectAction:6025 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:174 actionRichProviderId:0 classification:v21];

      delegate3 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerSourceViewKey"];
      delegate = [(MKPlaceActionManager *)self delegate];
      [delegate placeCardActionControllerDidSelectAddPhoto:0 presentingViewController:0 sourceView:delegate3];
      goto LABEL_87;
    case 10:
      analyticsDelegate8 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate8 infoCardAnalyticsDidSelectAction:6009 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:2 actionRichProviderId:0 classification:v21];

      mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
      mapItem = [(MKPlaceActionManager *)self mapItem];
      _geoMapItem = [mapItem _geoMapItem];
      [mEMORY[0x1E69A2208] trackMapItem:_geoMapItem];

      if (self->_callProvider)
      {
        v62 = [optionsCopy objectForKeyedSubscript:@"CNLabeledValue"];
        v63 = v62;
        if (v62)
        {
          v64 = v62;
        }

        else
        {
          contact = [(MKPlaceActionManager *)self contact];
          phoneNumbers = [contact phoneNumbers];
          v64 = [phoneNumbers objectAtIndexedSubscript:0];
        }

        v187 = v64;

        value = [v64 value];
        v181 = [objc_alloc(getTUDialRequestClass()) initWithProvider:self->_callProvider];
        v154 = objc_alloc(getTUHandleClass());
        stringValue = [value stringValue];
        v156 = mk_TUConvertDestinationIDToLatinNumbers(stringValue);
        v157 = [v154 initWithType:2 value:v156];

        [v181 setHandle:v157];
        [v181 setShowUIPrompt:1];
        contact2 = [(MKPlaceActionManager *)self contact];
        identifier = [contact2 identifier];
        [v181 setContactIdentifier:identifier];

        v160 = +[MKSystemController sharedInstance];
        [v160 placeDialRequest:v181 completionHandler:0];
      }

      goto LABEL_89;
    case 11:
      analyticsDelegate9 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate9 infoCardAnalyticsDidSelectAction:6045 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      mapItem2 = [(MKPlaceActionManager *)self mapItem];
      _messageURLString = [mapItem2 _messageURLString];

      if (!_messageURLString)
      {
        goto LABEL_89;
      }

      delegate2 = [(MKPlaceActionManager *)self mapItem];
      _messageURLString2 = [delegate2 _messageURLString];
      v191[0] = _messageURLString2;
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:1];
      [MKAppLaunchController launchAttributionURLs:v76 withAttribution:0 completionHandler:0];

      goto LABEL_81;
    case 12:
      [optionsCopy objectForKeyedSubscript:@"CNLabeledValue"];
      v46 = v185 = v21;
      v47 = MEMORY[0x1E695DFF8];
      v48 = MEMORY[0x1E696AEC0];
      value2 = [v46 value];
      v50 = [v48 stringWithFormat:@"mailto:%@", value2];
      v51 = [v47 URLWithString:v50];

      value3 = value2;
      v39 = v46;
      v21 = v185;
      goto LABEL_108;
    case 13:
      analyticsDelegate10 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate10 infoCardAnalyticsDidSelectAction:6010 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:3 actionRichProviderId:0 classification:v21];

      v66 = [optionsCopy objectForKeyedSubscript:@"CNLabeledValue"];
      v67 = v66;
      if (v66)
      {
        v39 = v66;
      }

      else
      {
        contact3 = [(MKPlaceActionManager *)self contact];
        urlAddresses = [contact3 urlAddresses];
        v39 = [urlAddresses objectAtIndexedSubscript:0];
      }

      delegate4 = [(MKPlaceActionManager *)self delegate];
      placeViewControllerDelegate = [delegate4 placeViewControllerDelegate];
      v146 = objc_opt_respondsToSelector();

      if (v146)
      {
        delegate5 = [(MKPlaceActionManager *)self delegate];
        placeViewControllerDelegate2 = [delegate5 placeViewControllerDelegate];
        delegate6 = [(MKPlaceActionManager *)self delegate];
        v186 = [placeViewControllerDelegate2 placeViewController:delegate6 shouldOpenHomePage:v39];

        if ((v186 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v150 = MEMORY[0x1E695DFF8];
      value3 = [v39 value];
      v51 = [v150 URLWithString:value3];
      goto LABEL_108;
    case 14:
      analyticsDelegate11 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate11 infoCardAnalyticsDidSelectAction:6008 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:201 actionRichProviderId:0 classification:v21];

      delegate7 = [(MKPlaceActionManager *)self delegate];
      placeViewControllerDelegate3 = [delegate7 placeViewControllerDelegate];
      v100 = objc_opt_respondsToSelector();

      if (v100)
      {
        delegate3 = [(MKPlaceActionManager *)self delegate];
        placeViewControllerDelegate4 = [delegate3 placeViewControllerDelegate];
        delegate8 = [(MKPlaceActionManager *)self delegate];
        [placeViewControllerDelegate4 placeViewControllerDidSelectDisplayedAddress:delegate8];
LABEL_71:

LABEL_88:
      }

      else
      {
        mapItem3 = [(MKPlaceActionManager *)self mapItem];
        _isEmptyContactMapItem = [mapItem3 _isEmptyContactMapItem];

        if (_isEmptyContactMapItem)
        {
          v140 = [optionsCopy objectForKeyedSubscript:@"CNLabeledValue"];
          v141 = v140;
          if (v140)
          {
            v39 = v140;
          }

          else
          {
            contact4 = [(MKPlaceActionManager *)self contact];
            urlAddresses2 = [contact4 urlAddresses];
            v39 = [urlAddresses2 objectAtIndexedSubscript:0];
          }

          value3 = [v39 value];
          v188 = MEMORY[0x1E695CE08];
          contact5 = [(MKPlaceActionManager *)self contact];
          v182 = *MEMORY[0x1E695CC20];
          identifier2 = [v39 identifier];
          v189 = [v188 contactPropertyWithContactNoCopy:contact5 propertyKey:v182 identifier:identifier2];

          v166 = [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:value3 addCountryName:0];
          uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
          v183 = [v166 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

          v177 = MEMORY[0x1E695DFF8];
          v175 = MEMORY[0x1E696AEC0];
          contact6 = [(MKPlaceActionManager *)self contact];
          iOSLegacyIdentifier = [contact6 iOSLegacyIdentifier];
          multiValueIdentifier = [v189 multiValueIdentifier];
          contact7 = [(MKPlaceActionManager *)self contact];
          identifier3 = [contact7 identifier];
          identifier4 = [v39 identifier];
          v172 = [v175 stringWithFormat:@"maps:?address=%@&abPersonID=%d&abAddressID=%d&cncontactidentifier=%@&cnaddressidentifier=%@", v183, iOSLegacyIdentifier, multiValueIdentifier, identifier3, identifier4];
          v51 = [v177 URLWithString:v172];

LABEL_108:
          if (v51)
          {
            v170 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerSourceViewKey"];
            placeCardDelegate = [(MKPlaceActionManager *)self placeCardDelegate];
            [placeCardDelegate placeCardActionController:0 openURL:v51 fromView:v170];
          }
        }

        else
        {
LABEL_95:
          [(MKPlaceActionManager *)self _launchMaps];
        }
      }

LABEL_89:
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }

      return;
    case 15:
      mapItem4 = [(MKPlaceActionManager *)self mapItem];
      _isEmptyContactMapItem2 = [mapItem4 _isEmptyContactMapItem];

      if ((_isEmptyContactMapItem2 & 1) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_89;
    case 16:
      analyticsDelegate12 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate12 infoCardAnalyticsDidSelectAction:6013 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:6 actionRichProviderId:0 classification:v21];

      goto LABEL_69;
    case 17:
      analyticsDelegate13 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate13 infoCardAnalyticsDidSelectAction:6004 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:127 actionRichProviderId:0 classification:v21];

      delegate3 = [(MKPlaceActionManager *)self delegate];
      placeViewControllerDelegate4 = [delegate3 placeViewControllerDelegate];
      delegate8 = [(MKPlaceActionManager *)self delegate];
      [placeViewControllerDelegate4 placeViewControllerDidSelectFlyover:delegate8];
      goto LABEL_71;
    case 18:
      delegate9 = [(MKPlaceActionManager *)self delegate];
      v126 = objc_opt_respondsToSelector();

      if ((v126 & 1) == 0)
      {
        goto LABEL_89;
      }

      analyticsDelegate14 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate14 infoCardAnalyticsDidSelectAction:6016 target:v18 eventValue:@"Add to Existing Contact" moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:124 actionRichProviderId:0 classification:v21];

      delegate3 = [(MKPlaceActionManager *)self delegate];
      [delegate3 placeActionManager:self didSelectAddToExistingContactWithEnvironment:v11];
      goto LABEL_88;
    case 19:
      analyticsDelegate15 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate15 infoCardAnalyticsDidSelectAction:6005 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectRemoveMarker:0];
      goto LABEL_81;
    case 20:
      analyticsDelegate16 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate16 infoCardAnalyticsDidSelectAction:6046 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self mapItem];
      [delegate2 _launchActivityForBrandItem];
      goto LABEL_81;
    case 21:
      analyticsDelegate17 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate17 infoCardAnalyticsDidSelectAction:0 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate3 = [(MKPlaceActionManager *)self delegate];
      [delegate3 placeActionManager:self didSelectAddToGuidesWithEnvironment:v11];
      goto LABEL_88;
    case 22:
      analyticsDelegate18 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate18 infoCardAnalyticsDidSelectAction:2059 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      analyticsDelegate19 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate19 infoCardAnalyticsDidSelectAction:17099 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectAddToMapsHome:0];
      goto LABEL_81;
    case 23:
      analyticsDelegate20 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate20 infoCardAnalyticsDidSelectAction:2060 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      analyticsDelegate21 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate21 infoCardAnalyticsDidSelectAction:17099 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectRemoveFromMapsHome:0];
      goto LABEL_81;
    case 24:
      analyticsDelegate22 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate22 infoCardAnalyticsDidSelectAction:2063 target:253 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectRefineLocation:0];
      goto LABEL_81;
    case 25:
      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectChangeAddress:0];
      goto LABEL_81;
    case 27:
      v104 = MEMORY[0x1E696AEC0];
      mapItem5 = [(MKPlaceActionManager *)self mapItem];
      [mapItem5 _coordinate];
      v107 = v106;
      mapItem6 = [(MKPlaceActionManager *)self mapItem];
      [mapItem6 _coordinate];
      delegate3 = [v104 stringWithFormat:@"%.6lf, %.6lf", v107, v109];

      delegate = [MEMORY[0x1E69DCD50] generalPasteboard];
      [delegate setString:delegate3];
      goto LABEL_87;
    case 28:
      analyticsDelegate23 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate23 infoCardAnalyticsDidSelectAction:1030 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate3 = [(MKPlaceActionManager *)self delegate];
      placeViewControllerDelegate4 = [delegate3 placeViewControllerDelegate];
      delegate8 = [(MKPlaceActionManager *)self delegate];
      [placeViewControllerDelegate4 placeViewControllerDidSelectDropPin:delegate8];
      goto LABEL_71;
    case 30:
      delegate3 = [(MKPlaceActionManager *)self delegate];
      [delegate3 placeActionManager:self didSelectDirectionsWithEnvironment:v11];
      goto LABEL_88;
    case 31:
      analyticsDelegate24 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate24 infoCardAnalyticsDidSelectAction:288 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      mapItem7 = [(MKPlaceActionManager *)self mapItem];
      _poiClaim = [mapItem7 _poiClaim];
      delegate2 = [_poiClaim claimURL];

      if (delegate2)
      {
        v133 = +[MKSystemController sharedInstance];
        [v133 openURL:delegate2 completionHandler:0];
      }

      goto LABEL_81;
    case 32:
      analyticsDelegate25 = [(MKPlaceActionManager *)self analyticsDelegate];
      v69 = MEMORY[0x1E696AEC0];
      mapItem8 = [(MKPlaceActionManager *)self mapItem];
      v71 = [v69 stringWithFormat:@"%llu", objc_msgSend(mapItem8, "_muid")];
      [analyticsDelegate25 infoCardAnalyticsDidSelectAction:282 target:v18 eventValue:v71 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:62 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectPlaceEnrichementReportAProblem];
      goto LABEL_81;
    case 33:
LABEL_69:
      delegate3 = [(MKPlaceActionManager *)self delegate];
      [delegate3 placeActionManager:self didSelectShareWithEnvironment:v11];
      goto LABEL_88;
    case 34:
      placeItem = [(MKPlaceActionManager *)self placeItem];
      options = [placeItem options];

      if ((options & 8) != 0)
      {
        v84 = 394;
      }

      else
      {
        v84 = 381;
      }

      analyticsDelegate26 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate26 infoCardAnalyticsDidSelectAction:v84 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectDownloadOffline:0 isQuickAction:v16];
      goto LABEL_81;
    case 35:
      placeItem2 = [(MKPlaceActionManager *)self placeItem];
      options2 = [placeItem2 options];

      if ((options2 & 8) != 0)
      {
        v112 = 394;
      }

      else
      {
        v112 = 381;
      }

      analyticsDelegate27 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate27 infoCardAnalyticsDidSelectAction:v112 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectPauseOfflineDownload:0];
      goto LABEL_81;
    case 36:
      placeItem3 = [(MKPlaceActionManager *)self placeItem];
      options3 = [placeItem3 options];

      if ((options3 & 8) != 0)
      {
        v88 = 394;
      }

      else
      {
        v88 = 381;
      }

      analyticsDelegate28 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate28 infoCardAnalyticsDidSelectAction:v88 target:v18 eventValue:0 moduleMetadata:analyticsModuleMetadata feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      delegate2 = [(MKPlaceActionManager *)self delegate];
      [delegate2 placeCardActionControllerDidSelectOfflineManagement:0];
      goto LABEL_81;
    case 37:
      delegate10 = [(MKPlaceActionManager *)self delegate];
      delegate3 = delegate10;
      selfCopy2 = self;
      v25 = v11;
      v26 = 1;
      goto LABEL_27;
    case 38:
      delegate10 = [(MKPlaceActionManager *)self delegate];
      delegate3 = delegate10;
      selfCopy2 = self;
      v25 = v11;
      v26 = 0;
LABEL_27:
      [delegate10 placeActionManager:selfCopy2 didSelectAddOrRemoveFromLibraryWithEnvironment:v25 selectedAdd:v26];
      goto LABEL_88;
    case 39:
      delegate11 = [(MKPlaceActionManager *)self delegate];
      delegate3 = delegate11;
      selfCopy4 = self;
      v118 = v11;
      v119 = 1;
      goto LABEL_83;
    case 40:
      delegate11 = [(MKPlaceActionManager *)self delegate];
      delegate3 = delegate11;
      selfCopy4 = self;
      v118 = v11;
      v119 = 0;
LABEL_83:
      [delegate11 placeActionManager:selfCopy4 didSelectAddOrEditNoteWithEnvironment:v118 selectedAdd:v119];
      goto LABEL_88;
    case 41:
      delegate12 = [(MKPlaceActionManager *)self delegate];
      v28 = objc_opt_respondsToSelector();

      if ((v28 & 1) == 0)
      {
        goto LABEL_89;
      }

      analyticsDelegate29 = [(MKPlaceActionManager *)self analyticsDelegate];
      [analyticsDelegate29 infoCardAnalyticsDidSelectAction:465 target:v18 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      mapItem9 = [(MKPlaceActionManager *)self mapItem];
      _geoMapItem2 = [mapItem9 _geoMapItem];
      _tooltip = [_geoMapItem2 _tooltip];
      if (_tooltip)
      {
        mapItem10 = [(MKPlaceActionManager *)self mapItem];
        [mapItem10 _geoMapItem];
        v33 = v184 = mapItem9;
        [v33 _tooltip];
        v34 = v180 = _geoMapItem2;
        v35 = [v34 usesOriginMapItem] ^ 1;

        _geoMapItem2 = v180;
        mapItem9 = v184;
      }

      else
      {
        v35 = 0;
      }

      delegate13 = [(MKPlaceActionManager *)self delegate];
      delegate3 = delegate13;
      if (v35)
      {
        [delegate13 placeCardActionControllerDidSelectCreateCustomRoute:0 originMapItem:0];
      }

      else
      {
        delegate = [(MKPlaceActionManager *)self mapItem];
        [delegate3 placeCardActionControllerDidSelectCreateCustomRoute:0 originMapItem:delegate];
LABEL_87:
      }

      goto LABEL_88;
    case 42:
    case 43:
      delegate3 = [(MKPlaceActionManager *)self delegate];
      [delegate3 placeActionManager:self didSelectRateWithEnvironment:v11];
      goto LABEL_88;
    case 44:
    case 45:
      delegate3 = [(MKPlaceActionManager *)self delegate];
      [delegate3 placeActionManager:self didSelectAddToFavoritesGuideWithEnvironment:v11];
      goto LABEL_88;
    case 46:
      delegate14 = [(MKPlaceActionManager *)self delegate];
      v91 = objc_opt_respondsToSelector();

      if (v91)
      {
        delegate2 = [(MKPlaceActionManager *)self delegate];
        [delegate2 placeCardActionControllerDidSelectSimulateLocation:0];
LABEL_81:
      }

      goto LABEL_89;
    case 47:
      mapItem11 = [(MKPlaceActionManager *)self mapItem];
      _muid = [mapItem11 _muid];

      if (!_muid)
      {
        goto LABEL_89;
      }

      delegate3 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v123 = MEMORY[0x1E696AEC0];
      delegate = [(MKPlaceActionManager *)self mapItem];
      identifier6 = [v123 stringWithFormat:@"%llu", objc_msgSend(delegate, "_muid")];
      [delegate3 setString:identifier6];
      goto LABEL_86;
    case 48:
      mapItem12 = [(MKPlaceActionManager *)self mapItem];
      identifier5 = [mapItem12 identifier];
      identifierString = [identifier5 identifierString];

      if (!identifierString)
      {
        goto LABEL_89;
      }

      delegate3 = [MEMORY[0x1E69DCD50] generalPasteboard];
      delegate = [(MKPlaceActionManager *)self mapItem];
      identifier6 = [delegate identifier];
      identifierString2 = [identifier6 identifierString];
      [delegate3 setString:identifierString2];

LABEL_86:
      goto LABEL_87;
    case 49:
      v36 = MEMORY[0x1E69A21E0];
      mapItem13 = [(MKPlaceActionManager *)self mapItem];
      _geoMapItem3 = [mapItem13 _geoMapItem];
      v39 = [v36 mapItemStorageForGEOMapItem:_geoMapItem3];

      jsonRepresentation = [v39 jsonRepresentation];
      v41 = [MEMORY[0x1E696ACB0] dataWithJSONObject:jsonRepresentation options:1 error:0];
      v42 = NSTemporaryDirectory();
      v43 = [v42 stringByAppendingPathComponent:@"SavedMapItem.json"];

      [v41 writeToFile:v43 options:0 error:0];
LABEL_23:

      goto LABEL_89;
    case 50:
      v102 = NSTemporaryDirectory();
      delegate3 = [v102 stringByAppendingPathComponent:@"SavedMapItem.json"];

      delegate = [MEMORY[0x1E696AC08] defaultManager];
      [delegate removeItemAtPath:delegate3 error:0];
      goto LABEL_87;
    default:
      goto LABEL_89;
  }
}

- (BOOL)_isCurrentLocationOrDroppedPin
{
  placeItem = [(MKPlaceActionManager *)self placeItem];
  if (([placeItem options] & 2) != 0)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    placeItem2 = [(MKPlaceActionManager *)self placeItem];
    v5 = [placeItem2 options] & 1;
  }

  return v5;
}

- (void)_canMakeCalls:(id)calls
{
  callsCopy = calls;
  if (callsCopy)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__MKPlaceActionManager__canMakeCalls___block_invoke;
    block[3] = &unk_1E76CD4D0;
    v6 = callsCopy;
    dispatch_async(v4, block);
  }
}

void __38__MKPlaceActionManager__canMakeCalls___block_invoke(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v2 = getTUCallCapabilitiesClass_softClass;
  v21 = getTUCallCapabilitiesClass_softClass;
  if (!getTUCallCapabilitiesClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getTUCallCapabilitiesClass_block_invoke;
    v16 = &unk_1E76CD7B0;
    v17 = &v18;
    __getTUCallCapabilitiesClass_block_invoke(&v13);
    v2 = v19[3];
  }

  v3 = v2;
  _Block_object_dispose(&v18, 8);
  if ([v3 supportsTelephonyCalls])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v4 = getTUCallProviderManagerClass_softClass;
    v21 = getTUCallProviderManagerClass_softClass;
    if (!getTUCallProviderManagerClass_softClass)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __getTUCallProviderManagerClass_block_invoke;
      v16 = &unk_1E76CD7B0;
      v17 = &v18;
      __getTUCallProviderManagerClass_block_invoke(&v13);
      v4 = v19[3];
    }

    v5 = v4;
    _Block_object_dispose(&v18, 8);
    v6 = objc_alloc_init(v5);
    v7 = [v6 defaultProvider];
  }

  else
  {
    v7 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MKPlaceActionManager__canMakeCalls___block_invoke_2;
  block[3] = &unk_1E76CDA20;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_launchMaps
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  [mapItem openInMapsWithLaunchOptions:0 completionHandler:&__block_literal_global_13764];
}

void __35__MKPlaceActionManager__launchMaps__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v4 bundleIdentifier];
    NSLog(&cfstr_CouldnTLaunchM.isa, v3);
  }
}

- (id)developerPlaceCardOpenInMapsFooterAction
{
  v2 = _MKLocalizedStringFromThisBundle(@"[Developer Place Card] Open in Apple Maps");
  v3 = [[MKPlaceCardActionItem alloc] initWithType:15 displayString:v2 glyph:@"map.fill" enabled:1];

  return v3;
}

- (id)developerPlaceCardGetDirectionsFooterAction
{
  v2 = _MKLocalizedStringFromThisBundle(@"[Developer Place Card] Get Directions");
  v3 = [[MKPlaceCardActionItem alloc] initWithType:30 displayString:v2 glyph:@"arrow.triangle.turn.up.right.circle.fill" enabled:1];

  return v3;
}

- (MKPlaceCardActionItem)reportAProblemAddPlaceFooterAction
{
  v3 = _MKRAPIsAvailable();

  return [MKPlaceCardActionItem actionItemWithType:2 actionDataProvider:self enabled:v3];
}

- (MKPlaceCardActionItem)reportAProblemFooterAction
{
  v3 = _MKRAPIsAvailable();

  return [MKPlaceCardActionItem actionItemWithType:1 actionDataProvider:self enabled:v3];
}

- (id)shortPlacecardFooterActions
{
  if ([(MKPlaceActionManager *)self _showReportAProblemFooterAction])
  {
    array = [MEMORY[0x1E695DF70] array];
    reportAProblemFooterAction = [(MKPlaceActionManager *)self reportAProblemFooterAction];
    [array addObject:reportAProblemFooterAction];

    [(MKPlaceActionManager *)self addLayoutInfoIfNeeded:array];
    v5 = [array copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createCustomRouteActionItem
{
  if ([(MKPlaceActionManager *)self _canShowCreateCustomRouteAction])
  {
    createCustomRouteActionItem = self->_createCustomRouteActionItem;
    if (!createCustomRouteActionItem)
    {
      v4 = [MKPlaceCardActionItem actionItemWithType:41];
      v5 = self->_createCustomRouteActionItem;
      self->_createCustomRouteActionItem = v4;

      createCustomRouteActionItem = self->_createCustomRouteActionItem;
    }

    v6 = createCustomRouteActionItem;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MKPlaceCardActionItem)noteActionItem
{
  if ([(MKPlaceActionManager *)self _canShowAddOrEditNoteAction])
  {
    noteActionItem = self->_noteActionItem;
    if (!noteActionItem)
    {
      v4 = [MKPlaceCardActionItem actionItemWithType:40 actionDataProvider:self enabled:1];
      v5 = [MKPlaceCardActionItem actionItemWithType:39 actionDataProvider:self enabled:1];
      [(MKPlaceCardActionItem *)v5 setSelectedItem:v4];
      v6 = self->_noteActionItem;
      self->_noteActionItem = v5;

      noteActionItem = self->_noteActionItem;
    }

    [(MKPlaceCardActionItem *)noteActionItem setSelected:self->_placeHasNote == 1];
    v7 = self->_noteActionItem;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MKPlaceCardActionItem)libraryActionItem
{
  if ([(MKPlaceActionManager *)self _canShowLibraryAction])
  {
    libraryActionItem = self->_libraryActionItem;
    if (!libraryActionItem)
    {
      v4 = [MKPlaceCardActionItem actionItemWithType:37 actionDataProvider:self enabled:1];
      v5 = self->_libraryActionItem;
      self->_libraryActionItem = v4;

      v6 = [MKPlaceCardActionItem actionItemWithType:38 actionDataProvider:self enabled:1];
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      [v6 setGlyphColor:systemRedColor];

      [(MKPlaceCardActionItem *)self->_libraryActionItem setSelectedItem:v6];
      libraryActionItem = self->_libraryActionItem;
    }

    [(MKPlaceCardActionItem *)libraryActionItem setSelected:self->_placeInLibrary == 1];
    v8 = self->_libraryActionItem;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MKPlaceCardActionItem)favoriteActionItem
{
  favoriteActionItem = self->_favoriteActionItem;
  if (!favoriteActionItem)
  {
    favoriteItemForFooter = [(MKPlaceActionManager *)self favoriteItemForFooter];
    v5 = self->_favoriteActionItem;
    self->_favoriteActionItem = favoriteItemForFooter;

    favoriteActionItem = self->_favoriteActionItem;
  }

  return favoriteActionItem;
}

- (MKPlaceCardActionItem)homeActionItem
{
  homeActionItem = self->_homeActionItem;
  if (!homeActionItem)
  {
    addToHomeItem = [(MKPlaceActionManager *)self addToHomeItem];
    v5 = self->_homeActionItem;
    self->_homeActionItem = addToHomeItem;

    homeActionItem = self->_homeActionItem;
  }

  return homeActionItem;
}

- (void)_addInternalOnlyActions:(id)actions
{
  actionsCopy = actions;
  if (([(MKPlaceActionManager *)self options]& 0x2000) != 0)
  {
    v4 = [MKPlaceCardActionItem actionItemWithType:46 actionDataProvider:self enabled:1];
    [actionsCopy addObject:v4];
  }

  [(MKPlaceActionManager *)self addLayoutInfoIfNeeded:actionsCopy];
  if ([(MKPlaceActionManager *)self _showMapItemIdentifier])
  {
    v5 = [MKPlaceCardActionItem actionItemWithType:47 actionDataProvider:self enabled:1];
    [actionsCopy addObject:v5];
  }

  if ([(MKPlaceActionManager *)self _showPlaceID])
  {
    v6 = [MKPlaceCardActionItem actionItemWithType:48 actionDataProvider:self enabled:1];
    [actionsCopy addObject:v6];
  }

  if (GEOConfigGetBOOL())
  {
    v7 = [MKPlaceCardActionItem actionItemWithType:49 actionDataProvider:self enabled:1];
    [actionsCopy addObject:v7];
    v8 = [MKPlaceCardActionItem actionItemWithType:50 actionDataProvider:self enabled:1];
    [actionsCopy addObject:v8];
  }
}

- (BOOL)_canShowClaimThisBusiness
{
  if (([(MKPlaceActionManager *)self options]& 0x1000000000000) != 0)
  {
    return 0;
  }

  mapItem = [(MKPlaceActionManager *)self mapItem];
  _canBeClaimed = [mapItem _canBeClaimed];

  return _canBeClaimed;
}

- (MKPlaceCardActionItem)collectionActionItem
{
  if ([(MKPlaceActionManager *)self _showCollectionItem])
  {
    collectionActionItem = self->_collectionActionItem;
    if (!collectionActionItem)
    {
      v4 = [MKPlaceCardActionItem actionItemWithType:21 actionDataProvider:self enabled:1];
      v5 = self->_collectionActionItem;
      self->_collectionActionItem = v4;

      [(MKPlaceCardActionItem *)self->_collectionActionItem setSelected:self->_placeInCollections];
      collectionActionItem = self->_collectionActionItem;
    }

    v6 = collectionActionItem;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MKPlaceCardActionItem)messageActionItem
{
  if ([(MKPlaceActionDataProvider *)self->_dataProvider supportsMessagesForBusiness])
  {
    v3 = [MKPlaceCardActionItem actionItemWithType:11 actionDataProvider:self enabled:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MKPlaceCardActionItem)flyoverActionItem
{
  placeItem = [(MKPlaceActionManager *)self placeItem];
  mapItem = [placeItem mapItem];
  _flyover = [mapItem _flyover];

  if (_flyover && ([(MKPlaceActionManager *)self options]& 0x20000000) != 0)
  {
    v6 = [MKPlaceCardActionItem actionItemWithType:17 actionDataProvider:self enabled:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createContactActions
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  if ([(MKPlaceActionManager *)self showContactActions])
  {
    v4 = [MKPlaceCardActionItem actionItemWithType:4 actionDataProvider:self enabled:1];
    [v3 addObject:v4];
    v5 = [MKPlaceCardActionItem actionItemWithType:18 actionDataProvider:self enabled:1];
    [v3 addObject:v5];
  }

  v6 = [v3 copy];

  return v6;
}

- (id)createFooterActions
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  _placeDisplayStyle = [mapItem _placeDisplayStyle];

  if (_placeDisplayStyle == 2)
  {
    shortPlacecardFooterActions = [(MKPlaceActionManager *)self shortPlacecardFooterActions];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:6];
    if (!self->_isCurrentLocation)
    {
      if ([(MKPlaceActionManager *)self _showHomeShortcutItem])
      {
        homeActionItem = [(MKPlaceActionManager *)self homeActionItem];
        [v6 addObject:homeActionItem];
      }

      if (([(MKPlaceActionManager *)self options]& 0x80000) != 0)
      {
        v15 = [MKPlaceCardActionItem actionItemWithType:25 actionDataProvider:self enabled:1];
        [v6 addObject:v15];
      }

      if (([(MKPlaceActionManager *)self options]& 0x40000) != 0)
      {
        v16 = [MKPlaceCardActionItem actionItemWithType:24 actionDataProvider:self enabled:1];
        [v6 addObject:v16];
      }

      mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
      countryCode = [mEMORY[0x1E69A1CD8] countryCode];
      v19 = [countryCode isEqualToString:@"KR"];

      if ((([(MKPlaceActionManager *)self options]& 0x80000) != 0 || ([(MKPlaceActionManager *)self options]& 0x40000) != 0) && !(v19 & 1 | ((_MKRAPIsAvailable() & 1) == 0)))
      {
        reportAProblemFooterAction = [(MKPlaceActionManager *)self reportAProblemFooterAction];
        [v6 addObject:reportAProblemFooterAction];
      }
    }

    createContactActions = [(MKPlaceActionManager *)self createContactActions];
    if ([createContactActions count])
    {
      [v6 addObjectsFromArray:createContactActions];
    }

    if ([(MKPlaceActionManager *)self _showAddPlaceFooterAction])
    {
      reportAProblemAddPlaceFooterAction = [(MKPlaceActionManager *)self reportAProblemAddPlaceFooterAction];
      [v6 addObject:reportAProblemAddPlaceFooterAction];
    }

    if ([(MKPlaceActionManager *)self _canShowCreateCustomRouteAction])
    {
      createCustomRouteActionItem = [(MKPlaceActionManager *)self createCustomRouteActionItem];

      if (createCustomRouteActionItem)
      {
        createCustomRouteActionItem2 = [(MKPlaceActionManager *)self createCustomRouteActionItem];
        [v6 addObject:createCustomRouteActionItem2];
      }
    }

    if ([(MKPlaceActionManager *)self _showReportAProblemFooterAction])
    {
      reportAProblemFooterAction2 = [(MKPlaceActionManager *)self reportAProblemFooterAction];
      [v6 addObject:reportAProblemFooterAction2];
    }

    if ([(MKPlaceActionManager *)self _canShowClaimThisBusiness])
    {
      claimBusinessActionItem = [(MKPlaceActionManager *)self claimBusinessActionItem];
      [v6 addObject:claimBusinessActionItem];
    }

    [(MKPlaceActionManager *)self _addInternalOnlyActions:v6];
    shortPlacecardFooterActions = [v6 copy];
  }

  return shortPlacecardFooterActions;
}

- (void)addLayoutInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  if (GEOConfigGetBOOL())
  {
    if (GEOConfigGetBOOL())
    {
      mapItem = [(MKPlaceActionManager *)self mapItem];
      _placecardLayout = [mapItem _placecardLayout];

      if (_placecardLayout)
      {
        v6 = [MKPlaceCardActionItem alloc];
        mapItem2 = [(MKPlaceActionManager *)self mapItem];
        _placecardLayout2 = [mapItem2 _placecardLayout];
        debugName = [_placecardLayout2 debugName];
        v10 = [(MKPlaceCardActionItem *)v6 initWithType:0 displayString:debugName glyph:0 enabled:0];

        lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
        [(MKPlaceCardActionItem *)v10 setGlyphColor:lightGrayColor];

        [neededCopy addObject:v10];
      }
    }
  }
}

- (id)createSearchAlongRouteActions
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(MKPlaceActionManager *)self _canShowCallAction]&& ([(MKPlaceActionManager *)self callActionItem], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    callActionItem = [(MKPlaceActionManager *)self callActionItem];
    v7[0] = callActionItem;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)createRowActionsWithStyle:(unint64_t)style
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v5 = +[MKSystemController sharedInstance];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  mapItem = [(MKPlaceActionManager *)self mapItem];
  if (([mapItem _isMapItemTypeBrand] & 1) == 0)
  {
    placeItem = [(MKPlaceActionManager *)self placeItem];
    options = [placeItem options];

    if ((options & 2) == 0)
    {
      goto LABEL_5;
    }

    mapItem = [(MKPlaceActionManager *)self removeMarkerItem];
    [v4 addObject:mapItem];
  }

LABEL_5:
  dataProvider = [(MKPlaceActionManager *)self dataProvider];
  supportsMessagesForBusiness = [dataProvider supportsMessagesForBusiness];

  if (supportsMessagesForBusiness)
  {
    messageActionItem = [(MKPlaceActionManager *)self messageActionItem];
    [v4 addObject:messageActionItem];
  }

  if ([(MKPlaceActionManager *)self _canShowCallAction])
  {
    callActionItem = [(MKPlaceActionManager *)self callActionItem];

    if (callActionItem)
    {
      callActionItem2 = [(MKPlaceActionManager *)self callActionItem];
      [v4 addObject:callActionItem2];
    }
  }

  if ([(MKPlaceActionManager *)self _showWebsite])
  {
    websiteActionItem = [(MKPlaceActionManager *)self websiteActionItem];

    if (websiteActionItem)
    {
      websiteActionItem2 = [(MKPlaceActionManager *)self websiteActionItem];
      [v4 addObject:websiteActionItem2];
    }
  }

  if ([(MKPlaceActionManager *)self _canShowLibraryAction])
  {
    libraryActionItem = [(MKPlaceActionManager *)self libraryActionItem];

    if (libraryActionItem)
    {
      libraryActionItem2 = [(MKPlaceActionManager *)self libraryActionItem];
      [v4 addObject:libraryActionItem2];
    }
  }

  if ([(MKPlaceActionManager *)self _canShowAddOrEditNoteAction])
  {
    noteActionItem = [(MKPlaceActionManager *)self noteActionItem];

    if (noteActionItem)
    {
      noteActionItem2 = [(MKPlaceActionManager *)self noteActionItem];
      [v4 addObject:noteActionItem2];
    }
  }

  if ([(MKPlaceActionManager *)self _showCollectionItem])
  {
    collectionActionItem = [(MKPlaceActionManager *)self collectionActionItem];

    if (collectionActionItem)
    {
      collectionActionItem2 = [(MKPlaceActionManager *)self collectionActionItem];
      [v4 addObject:collectionActionItem2];
    }
  }

  addToFavoritesGuideActionItem = [(MKPlaceActionManager *)self addToFavoritesGuideActionItem];
  v24 = addToFavoritesGuideActionItem;
  if (addToFavoritesGuideActionItem && [addToFavoritesGuideActionItem enabled])
  {
    [v4 addObject:v24];
  }

  v25 = userInterfaceIdiom != 2 && self->_isCurrentLocation;
  mapItem2 = [(MKPlaceActionManager *)self mapItem];
  _isMapItemTypeBrand = [mapItem2 _isMapItemTypeBrand];
  if (v25 || (_isMapItemTypeBrand & 1) != 0)
  {
    goto LABEL_32;
  }

  options2 = [(MKPlaceActionManager *)self options];

  if ((options2 & 0x200000) == 0)
  {
    mapItem2 = [(MKPlaceActionManager *)self shareActionItem];
    [v4 addObject:mapItem2];
LABEL_32:
  }

  if (userInterfaceIdiom == 2 && self->_isCurrentLocation)
  {
    v29 = [MKPlaceCardActionItem actionItemWithType:28 actionDataProvider:self enabled:1];
    [v4 addObject:v29];
  }

  mapItem3 = [(MKPlaceActionManager *)self mapItem];
  if ([mapItem3 _isMapItemTypeBrand])
  {
    mapItem4 = [(MKPlaceActionManager *)self mapItem];
    _isStandAloneBrand = [mapItem4 _isStandAloneBrand];

    if ((_isStandAloneBrand & 1) == 0)
    {
      brandStoreActionItem = self->_brandStoreActionItem;
      if (!brandStoreActionItem)
      {
        v34 = [MKPlaceCardActionItem actionItemWithType:20 actionDataProvider:self enabled:0];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel__enableStoreAction name:@"MKPlaceActionManagerBrandStoresEnableNotification" object:0];

        v36 = self->_brandStoreActionItem;
        self->_brandStoreActionItem = v34;

        brandStoreActionItem = self->_brandStoreActionItem;
      }

      [v4 addObject:brandStoreActionItem];
    }
  }

  else
  {
  }

  if (userInterfaceIdiom == 2)
  {
    v37 = [MKPlaceCardActionItem actionItemWithType:29 actionDataProvider:self enabled:1];
    [v4 addObject:v37];
    v38 = MEMORY[0x1E69A1E80];
    mapItem5 = [(MKPlaceActionManager *)self mapItem];
    _geoMapItem = [mapItem5 _geoMapItem];
    [_geoMapItem coordinate];
    if ([v38 isLocationShiftRequiredForCoordinate:?])
    {
      v41 = 0;
    }

    else
    {
      mapItem6 = [(MKPlaceActionManager *)self mapItem];
      _geoMapItem2 = [mapItem6 _geoMapItem];
      v41 = [_geoMapItem2 referenceFrame] != 2;
    }

    mapItem7 = [(MKPlaceActionManager *)self mapItem];
    [mapItem7 _coordinate];
    v46 = v45;
    v48 = fabs(v47);

    if (v48 <= 180.0 && fabs(v46) <= 90.0 && v41)
    {
      v49 = [MKPlaceCardActionItem actionItemWithType:27 actionDataProvider:self enabled:1];
      [v4 addObject:v49];
    }
  }

  v50 = [v4 copy];

  return v50;
}

- (id)createMenuActions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(MKPlaceActionManager *)self createRowActionsWithStyle:0];
  [array addObjectsFromArray:v4];

  createFooterActions = [(MKPlaceActionManager *)self createFooterActions];
  [array addObjectsFromArray:createFooterActions];

  v6 = [array copy];

  return v6;
}

- (id)rateActionItem
{
  rateActionItem = self->_rateActionItem;
  if (!rateActionItem)
  {
    v4 = [MKPlaceCardActionItem actionItemWithType:42 actionDataProvider:self enabled:1];
    v5 = [MKPlaceCardActionItem actionItemWithType:43 actionDataProvider:self enabled:1];
    [(MKPlaceCardActionItem *)v4 setSelectedItem:v5];
    delegate = [(MKPlaceActionManager *)self delegate];
    -[MKPlaceCardActionItem setSelected:](v4, "setSelected:", [delegate placeHasRating]);

    v7 = self->_rateActionItem;
    self->_rateActionItem = v4;

    rateActionItem = self->_rateActionItem;
  }

  return rateActionItem;
}

- (id)addToFavoritesGuideActionItem
{
  addToFavoritesGuideActionItem = self->_addToFavoritesGuideActionItem;
  if (!addToFavoritesGuideActionItem)
  {
    v4 = [MKPlaceCardActionItem actionItemWithType:44 actionDataProvider:self enabled:1];
    v5 = [MKPlaceCardActionItem actionItemWithType:45 actionDataProvider:self enabled:1];
    [(MKPlaceCardActionItem *)v4 setSelectedItem:v5];
    [(MKPlaceCardActionItem *)v4 setSelected:self->_placeInFavoritesGuide];
    v6 = self->_addToFavoritesGuideActionItem;
    self->_addToFavoritesGuideActionItem = v4;

    addToFavoritesGuideActionItem = self->_addToFavoritesGuideActionItem;
  }

  return addToFavoritesGuideActionItem;
}

- (MKPlaceCardActionItem)websiteActionItem
{
  if ([(MKPlaceActionManager *)self _showWebsite])
  {
    websiteActionItem = self->_websiteActionItem;
    if (!websiteActionItem)
    {
      v4 = [MKPlaceCardActionItem actionItemWithType:13 actionDataProvider:self enabled:1];
      v5 = self->_websiteActionItem;
      self->_websiteActionItem = v4;

      websiteActionItem = self->_websiteActionItem;
    }

    v6 = websiteActionItem;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MKPlaceCardActionItem)callActionItem
{
  if ([(MKPlaceActionManager *)self _canShowCallAction])
  {
    callActionItem = self->_callActionItem;
    if (!callActionItem)
    {
      v4 = [MKPlaceCardActionItem actionItemWithType:10 actionDataProvider:self enabled:0];
      v5 = self->_callActionItem;
      self->_callActionItem = v4;

      callActionItem = self->_callActionItem;
    }

    [(MKPlaceCardActionItem *)callActionItem setEnabled:self->_callProvider != 0];
    v6 = self->_callActionItem;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)addToHomeItem
{
  if ([(MKPlaceActionManager *)self _showHomeShortcutItem])
  {
    v3 = [MKPlaceCardActionItem actionItemWithType:23 actionDataProvider:self enabled:1];
    v4 = [MKPlaceCardActionItem actionItemWithType:22 actionDataProvider:self enabled:1];
    [v4 setSelectedItem:v3];
    delegate = [(MKPlaceActionManager *)self delegate];
    [v4 setSelected:{objc_msgSend(delegate, "placeInShortcuts")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)favoriteItemForFooter
{
  v3 = [MKPlaceCardActionItem actionItemWithType:6 actionDataProvider:self enabled:1];
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  [v3 setGlyphColor:systemRedColor];

  v5 = [MKPlaceCardActionItem actionItemWithType:5 actionDataProvider:self enabled:1];
  [v5 setSelectedItem:v3];
  delegate = [(MKPlaceActionManager *)self delegate];
  [v5 setSelected:{objc_msgSend(delegate, "placeInBookmarks")}];

  return v5;
}

- (BOOL)_showHomeShortcutItem
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  _isMapItemTypeBrand = [mapItem _isMapItemTypeBrand];

  return (_isMapItemTypeBrand & 1) == 0 && ([(MKPlaceActionManager *)self options]& 0x10000000) != 0 && !self->_isCurrentLocation;
}

- (BOOL)_canShowCreateCustomRouteAction
{
  dataProvider = [(MKPlaceActionManager *)self dataProvider];
  isInSupportedCustomRouteRegion = [dataProvider isInSupportedCustomRouteRegion];

  if (isInSupportedCustomRouteRegion)
  {
    if ([(MKPlaceActionManager *)self _isCurrentLocationOrDroppedPin])
    {
      _isMapItemTypeAddress = 1;
    }

    else
    {
      placeItem = [(MKPlaceActionManager *)self placeItem];
      mapItem = [placeItem mapItem];
      _isMapItemTypeAddress = [mapItem _isMapItemTypeAddress];
    }

    mapItem2 = [(MKPlaceActionManager *)self mapItem];
    _geoMapItem = [mapItem2 _geoMapItem];
    _tooltip = [_geoMapItem _tooltip];
    v6 = (_tooltip != 0) | _isMapItemTypeAddress;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_canShowAddOrEditNoteAction
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  _isMapItemTypeBrand = [mapItem _isMapItemTypeBrand];

  return (_isMapItemTypeBrand & 1) == 0 && ([(MKPlaceActionManager *)self options]& 0x20000000000) != 0 && !self->_isCurrentLocation;
}

- (BOOL)_canShowLibraryAction
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  _isMapItemTypeBrand = [mapItem _isMapItemTypeBrand];

  return (_isMapItemTypeBrand & 1) == 0 && ([(MKPlaceActionManager *)self options]& 0x10000000000) != 0 && !self->_isCurrentLocation;
}

- (BOOL)_showCollectionItem
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  _isMapItemTypeBrand = [mapItem _isMapItemTypeBrand];

  return (_isMapItemTypeBrand & 1) == 0 && ([(MKPlaceActionManager *)self options]& 0x8000) != 0 && !self->_isCurrentLocation;
}

- (BOOL)_showWebsite
{
  v3 = +[MKSystemController sharedInstance];
  if ([v3 userInterfaceIdiom] == 2)
  {
    contact = [(MKPlaceActionManager *)self contact];
    urlAddresses = [contact urlAddresses];
    if ([urlAddresses count])
    {
      placeItem = [(MKPlaceActionManager *)self placeItem];
      v7 = ([placeItem options] & 8) == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_showAddPlaceFooterAction
{
  if ([(MKPlaceActionManager *)self _showReportAProblem])
  {
    placeItem = [(MKPlaceActionManager *)self placeItem];
    options = [placeItem options];

    placeItem2 = [(MKPlaceActionManager *)self placeItem];
    if (([placeItem2 options] & 8) != 0)
    {
      v9 = 1;
    }

    else
    {
      placeItem3 = [(MKPlaceActionManager *)self placeItem];
      if (([placeItem3 options] & 4) != 0)
      {
        v9 = 1;
      }

      else
      {
        placeItem4 = [(MKPlaceActionManager *)self placeItem];
        contact = [placeItem4 contact];
        v9 = contact != 0;
      }
    }

    mapItem = [(MKPlaceActionManager *)self mapItem];
    v12 = ((options & 2) == 0) & ~[mapItem _isMapItemTypeAddress];

    v10 = (v12 | v9) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)_showReportAProblemFooterAction
{
  _showReportAProblem = [(MKPlaceActionManager *)self _showReportAProblem];
  if (_showReportAProblem)
  {
    LOBYTE(_showReportAProblem) = ![(MKPlaceActionManager *)self _isCurrentLocationOrDroppedPin];
  }

  return _showReportAProblem;
}

- (BOOL)_showReportAProblem
{
  if (_MKRAPIsAvailable())
  {
    placeItem = [(MKPlaceActionManager *)self placeItem];
    if (([placeItem options] & 4) != 0)
    {
      goto LABEL_8;
    }

    placeItem2 = [(MKPlaceActionManager *)self placeItem];
    options = [placeItem2 options];

    if ((options & 8) == 0)
    {
      placeItem = [(MKPlaceActionManager *)self mapItem];
      if (placeItem)
      {
        if (([(MKPlaceActionManager *)self options]& 0x40) != 0)
        {
          placeItem3 = [(MKPlaceActionManager *)self placeItem];
          hasContactOnly = [placeItem3 hasContactOnly];
        }

        else
        {
          hasContactOnly = 1;
        }

        goto LABEL_9;
      }

LABEL_8:
      hasContactOnly = 0;
LABEL_9:

      return hasContactOnly;
    }
  }

  return 0;
}

- (BOOL)_showPlaceID
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  identifier = [mapItem identifier];
  identifierString = [identifier identifierString];
  if (identifierString)
  {
    v6 = ([(MKPlaceActionManager *)self options]>> 50) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_showMapItemIdentifier
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  if ([mapItem _muid])
  {
    v4 = ([(MKPlaceActionManager *)self options]>> 24) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (unint64_t)options
{
  delegate = [(MKPlaceActionManager *)self delegate];
  options = [delegate options];

  return options;
}

- (id)placeItem
{
  delegate = [(MKPlaceActionManager *)self delegate];
  placeItem = [delegate placeItem];

  return placeItem;
}

- (id)mapItem
{
  delegate = [(MKPlaceActionManager *)self delegate];
  mapItem = [delegate mapItem];

  return mapItem;
}

- (id)contact
{
  delegate = [(MKPlaceActionManager *)self delegate];
  contact = [delegate contact];

  return contact;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);

  return WeakRetained;
}

- (void)setPlaceInFavoritesGuide:(BOOL)guide
{
  self->_placeInFavoritesGuide = guide;
  [(MKPlaceCardActionItem *)self->_addToFavoritesGuideActionItem setSelected:?];
  addToFavoritesGuideActionItem = self->_addToFavoritesGuideActionItem;

  [(MKPlaceCardActionItem *)addToFavoritesGuideActionItem setEnabled:1];
}

- (void)setPlaceHasRating:(BOOL)rating
{
  self->_placeHasRating = rating;
  [(MKPlaceCardActionItem *)self->_rateActionItem setSelected:?];
  rateActionItem = self->_rateActionItem;

  [(MKPlaceCardActionItem *)rateActionItem setEnabled:1];
}

- (void)setPlaceHasNote:(unint64_t)note
{
  self->_placeHasNote = note;
  noteActionItem = [(MKPlaceActionManager *)self noteActionItem];
  [noteActionItem setEnabled:1];
}

- (void)setPlaceInLibrary:(unint64_t)library
{
  self->_placeInLibrary = library;
  libraryActionItem = [(MKPlaceActionManager *)self libraryActionItem];
  [libraryActionItem setEnabled:1];
}

- (void)setPlaceInShortcuts:(BOOL)shortcuts
{
  shortcutsCopy = shortcuts;
  self->_placeInShortcuts = shortcuts;
  homeActionItem = [(MKPlaceActionManager *)self homeActionItem];
  [homeActionItem setSelected:shortcutsCopy];

  homeActionItem2 = [(MKPlaceActionManager *)self homeActionItem];
  [homeActionItem2 setEnabled:1];
}

- (void)setPlaceInCollections:(BOOL)collections
{
  self->_placeInCollections = collections;
  [(MKPlaceCardActionItem *)self->_collectionActionItem setSelected:?];
  collectionActionItem = self->_collectionActionItem;

  [(MKPlaceCardActionItem *)collectionActionItem setEnabled:1];
}

- (void)setPlaceInBookmarks:(BOOL)bookmarks
{
  self->_placeInBookmarks = bookmarks;
  [(MKPlaceCardActionItem *)self->_favoriteActionItem setSelected:?];
  favoriteActionItem = self->_favoriteActionItem;

  [(MKPlaceCardActionItem *)favoriteActionItem setEnabled:1];
}

- (id)placeIDForAppearance:(id)appearance
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  identifier = [mapItem identifier];
  identifierString = [identifier identifierString];

  return identifierString;
}

- (unint64_t)placeMUIDForAppearance:(id)appearance
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  _muid = [mapItem _muid];

  return _muid;
}

- (id)actionItemForButtonItem:(id)item
{
  itemCopy = item;
  v5 = [(MKPlaceActionManager *)self createRowActionsWithStyle:0];
  buttonType = [itemCopy buttonType];

  return [(MKPlaceActionManager *)self actionItemForButtonType:buttonType];
}

- (id)actionItemForButtonType:(int)type
{
  switch(type)
  {
    case 0:
    case 7:
    case 8:
    case 15:
      rateActionItem = [(MKPlaceActionManager *)self rateActionItem];
      goto LABEL_23;
    case 1:
      rateActionItem = [(MKPlaceActionManager *)self collectionActionItem];
      goto LABEL_23;
    case 2:
      rateActionItem = [(MKPlaceActionManager *)self reportAProblemFooterAction];
      goto LABEL_23;
    case 3:
      rateActionItem = [(MKPlaceActionManager *)self shareActionItem];
      goto LABEL_23;
    case 4:
      rateActionItem = [(MKPlaceActionManager *)self callActionItem];
      goto LABEL_23;
    case 5:
      rateActionItem = [(MKPlaceActionManager *)self messageActionItem];
      goto LABEL_23;
    case 6:
      rateActionItem = [(MKPlaceActionManager *)self websiteActionItem];
      goto LABEL_23;
    case 9:
      rateActionItem = [(MKPlaceActionManager *)self flyoverActionItem];
      goto LABEL_23;
    case 10:
      if (!GEOSupportsOfflineMaps() || ([(MKPlaceActionManager *)self options]& 0x1000000000) != 0)
      {
        goto LABEL_14;
      }

      rateActionItem = [MKPlaceCardActionItem actionItemWithType:34];
      goto LABEL_23;
    case 11:
      dataProvider = [(MKPlaceActionManager *)self dataProvider];
      supportsAddingPhotos = [dataProvider supportsAddingPhotos];

      if (supportsAddingPhotos)
      {
        rateActionItem = [MKPlaceCardActionItem actionItemWithType:9 actionDataProvider:self enabled:1];
      }

      else
      {
LABEL_14:
        rateActionItem = 0;
      }

      goto LABEL_23;
    case 12:
      rateActionItem = [(MKPlaceActionManager *)self homeActionItem];
      goto LABEL_23;
    case 13:
      rateActionItem = [(MKPlaceActionManager *)self libraryActionItem];
      goto LABEL_23;
    case 14:
      rateActionItem = [(MKPlaceActionManager *)self noteActionItem];
      goto LABEL_23;
    case 16:
      rateActionItem = [(MKPlaceActionManager *)self addToFavoritesGuideActionItem];
LABEL_23:

      break;
    default:
      rateActionItem = 0;

      break;
  }

  return rateActionItem;
}

- (MKPlaceActionManager)initWithDataProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = MKPlaceActionManager;
  v6 = [(MKPlaceActionManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataProvider, provider);
    objc_initWeak(&location, v7);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__MKPlaceActionManager_initWithDataProvider___block_invoke;
    v9[3] = &unk_1E76C83F0;
    objc_copyWeak(&v10, &location);
    [(MKPlaceActionManager *)v7 _canMakeCalls:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __45__MKPlaceActionManager_initWithDataProvider___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 12, a2);
    v6 = [v5 callActionItem];
    [v6 setEnabled:v13 != 0];

    v7 = [v5 delegate];
    v8 = [v7 placeViewControllerDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [v5 delegate];
      v11 = [v10 placeViewControllerDelegate];
      v12 = [v5 delegate];
      [v11 placeViewControllerDidUpdateCallProvider:v12];
    }
  }
}

@end