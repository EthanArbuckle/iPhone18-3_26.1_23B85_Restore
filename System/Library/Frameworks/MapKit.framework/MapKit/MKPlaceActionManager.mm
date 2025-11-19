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
- (MKPlaceActionManager)initWithDataProvider:(id)a3;
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
- (id)actionItemForButtonItem:(id)a3;
- (id)actionItemForButtonType:(int)a3;
- (id)addToFavoritesGuideActionItem;
- (id)addToHomeItem;
- (id)contact;
- (id)createContactActions;
- (id)createCustomRouteActionItem;
- (id)createFooterActions;
- (id)createMenuActions;
- (id)createRowActionsWithStyle:(unint64_t)a3;
- (id)createSearchAlongRouteActions;
- (id)delegate;
- (id)developerPlaceCardGetDirectionsFooterAction;
- (id)developerPlaceCardOpenInMapsFooterAction;
- (id)favoriteItemForFooter;
- (id)mapItem;
- (id)placeCardDelegate;
- (id)placeIDForAppearance:(id)a3;
- (id)placeItem;
- (id)rateActionItem;
- (id)shortPlacecardFooterActions;
- (unint64_t)options;
- (unint64_t)placeMUIDForAppearance:(id)a3;
- (void)_addInternalOnlyActions:(id)a3;
- (void)_canMakeCalls:(id)a3;
- (void)_launchMaps;
- (void)addLayoutInfoIfNeeded:(id)a3;
- (void)performAction:(id)a3 options:(id)a4 completion:(id)a5;
- (void)setPlaceHasNote:(unint64_t)a3;
- (void)setPlaceHasRating:(BOOL)a3;
- (void)setPlaceInBookmarks:(BOOL)a3;
- (void)setPlaceInCollections:(BOOL)a3;
- (void)setPlaceInFavoritesGuide:(BOOL)a3;
- (void)setPlaceInLibrary:(unint64_t)a3;
- (void)setPlaceInShortcuts:(BOOL)a3;
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
  v4 = [v3 userInterfaceIdiom];

  v5 = [MKPlaceCardActionItem actionItemWithType:19 actionDataProvider:self enabled:1];
  if (v4 != 2)
  {
    v6 = [MEMORY[0x1E69DC888] systemRedColor];
    [v5 setGlyphColor:v6];
  }

  return v5;
}

- (void)performAction:(id)a3 options:(id)a4 completion:(id)a5
{
  v191[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[MKPlaceActionEnvironment alloc] initWithOptions:v9];
  v190 = [(MKPlaceActionEnvironment *)v11 analyticsModuleMetadata];
  v12 = [(MKPlaceActionEnvironment *)v11 isQuickAction];
  v13 = [(MKPlaceActionEnvironment *)v11 isActionBar];
  v14 = v13;
  v15 = 201;
  if (v12)
  {
    v16 = !v13;
    v17 = [(MKPlaceActionEnvironment *)v11 isActionBar];
    if (v14)
    {
      v15 = 201;
    }

    else
    {
      v15 = 30;
    }

    v14 = v17;
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
    v20 = [(MKPlaceActionEnvironment *)v11 isActionBar];
    v19 = @"PRIMARY";
    if (!v20)
    {
      v19 = 0;
    }
  }

  v21 = v19;
  switch([v8 type])
  {
    case 1:
      v101 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v101 infoCardAnalyticsDidSelectAction:5013 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:62 actionRichProviderId:0 classification:v21];

      v22 = [v9 objectForKeyedSubscript:@"MKPlaceActionManagerSourceViewKey"];
      v79 = [(MKPlaceActionManager *)self delegate];
      [v79 placeCardActionControllerDidSelectReportAProblem:0 fromView:v22 isQuickAction:v16];
      goto LABEL_87;
    case 2:
      v81 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v81 infoCardAnalyticsDidSelectAction:222 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:62 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectReportAProblemAddNewPlace:0 isQuickAction:v16];
      goto LABEL_81;
    case 3:
      v103 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v103 infoCardAnalyticsDidSelectAction:290 target:v18 eventValue:@"Unresolved" moduleMetadata:v190 feedbackDelegateSelector:62 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectReportAProblemViewReport:0];
      goto LABEL_81;
    case 4:
      v80 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v80 infoCardAnalyticsDidSelectAction:6016 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:5 actionRichProviderId:0 classification:v21];

      v22 = [(MKPlaceActionManager *)self delegate];
      [v22 placeActionManager:self didSelectAddToContactsUsingEnvironment:v11];
      goto LABEL_88;
    case 7:
      v93 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v93 infoCardAnalyticsDidSelectAction:0 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      [(MKPlaceActionManager *)self openURL:v8];
      goto LABEL_89;
    case 8:
      v77 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v77 infoCardAnalyticsDidSelectAction:6023 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectViewAllPhotos:0 presentingViewController:0];
      goto LABEL_81;
    case 9:
      v78 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v78 infoCardAnalyticsDidSelectAction:6025 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:174 actionRichProviderId:0 classification:v21];

      v22 = [v9 objectForKeyedSubscript:@"MKPlaceActionManagerSourceViewKey"];
      v79 = [(MKPlaceActionManager *)self delegate];
      [v79 placeCardActionControllerDidSelectAddPhoto:0 presentingViewController:0 sourceView:v22];
      goto LABEL_87;
    case 10:
      v58 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v58 infoCardAnalyticsDidSelectAction:6009 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:2 actionRichProviderId:0 classification:v21];

      v59 = [MEMORY[0x1E69A2208] sharedService];
      v60 = [(MKPlaceActionManager *)self mapItem];
      v61 = [v60 _geoMapItem];
      [v59 trackMapItem:v61];

      if (self->_callProvider)
      {
        v62 = [v9 objectForKeyedSubscript:@"CNLabeledValue"];
        v63 = v62;
        if (v62)
        {
          v64 = v62;
        }

        else
        {
          v151 = [(MKPlaceActionManager *)self contact];
          v152 = [v151 phoneNumbers];
          v64 = [v152 objectAtIndexedSubscript:0];
        }

        v187 = v64;

        v153 = [v64 value];
        v181 = [objc_alloc(getTUDialRequestClass()) initWithProvider:self->_callProvider];
        v154 = objc_alloc(getTUHandleClass());
        v155 = [v153 stringValue];
        v156 = mk_TUConvertDestinationIDToLatinNumbers(v155);
        v157 = [v154 initWithType:2 value:v156];

        [v181 setHandle:v157];
        [v181 setShowUIPrompt:1];
        v158 = [(MKPlaceActionManager *)self contact];
        v159 = [v158 identifier];
        [v181 setContactIdentifier:v159];

        v160 = +[MKSystemController sharedInstance];
        [v160 placeDialRequest:v181 completionHandler:0];
      }

      goto LABEL_89;
    case 11:
      v72 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v72 infoCardAnalyticsDidSelectAction:6045 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v73 = [(MKPlaceActionManager *)self mapItem];
      v74 = [v73 _messageURLString];

      if (!v74)
      {
        goto LABEL_89;
      }

      v45 = [(MKPlaceActionManager *)self mapItem];
      v75 = [v45 _messageURLString];
      v191[0] = v75;
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:1];
      [MKAppLaunchController launchAttributionURLs:v76 withAttribution:0 completionHandler:0];

      goto LABEL_81;
    case 12:
      [v9 objectForKeyedSubscript:@"CNLabeledValue"];
      v46 = v185 = v21;
      v47 = MEMORY[0x1E695DFF8];
      v48 = MEMORY[0x1E696AEC0];
      v49 = [v46 value];
      v50 = [v48 stringWithFormat:@"mailto:%@", v49];
      v51 = [v47 URLWithString:v50];

      v52 = v49;
      v39 = v46;
      v21 = v185;
      goto LABEL_108;
    case 13:
      v65 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v65 infoCardAnalyticsDidSelectAction:6010 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:3 actionRichProviderId:0 classification:v21];

      v66 = [v9 objectForKeyedSubscript:@"CNLabeledValue"];
      v67 = v66;
      if (v66)
      {
        v39 = v66;
      }

      else
      {
        v142 = [(MKPlaceActionManager *)self contact];
        v143 = [v142 urlAddresses];
        v39 = [v143 objectAtIndexedSubscript:0];
      }

      v144 = [(MKPlaceActionManager *)self delegate];
      v145 = [v144 placeViewControllerDelegate];
      v146 = objc_opt_respondsToSelector();

      if (v146)
      {
        v147 = [(MKPlaceActionManager *)self delegate];
        v148 = [v147 placeViewControllerDelegate];
        v149 = [(MKPlaceActionManager *)self delegate];
        v186 = [v148 placeViewController:v149 shouldOpenHomePage:v39];

        if ((v186 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v150 = MEMORY[0x1E695DFF8];
      v52 = [v39 value];
      v51 = [v150 URLWithString:v52];
      goto LABEL_108;
    case 14:
      v97 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v97 infoCardAnalyticsDidSelectAction:6008 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:201 actionRichProviderId:0 classification:v21];

      v98 = [(MKPlaceActionManager *)self delegate];
      v99 = [v98 placeViewControllerDelegate];
      v100 = objc_opt_respondsToSelector();

      if (v100)
      {
        v22 = [(MKPlaceActionManager *)self delegate];
        v56 = [v22 placeViewControllerDelegate];
        v57 = [(MKPlaceActionManager *)self delegate];
        [v56 placeViewControllerDidSelectDisplayedAddress:v57];
LABEL_71:

LABEL_88:
      }

      else
      {
        v138 = [(MKPlaceActionManager *)self mapItem];
        v139 = [v138 _isEmptyContactMapItem];

        if (v139)
        {
          v140 = [v9 objectForKeyedSubscript:@"CNLabeledValue"];
          v141 = v140;
          if (v140)
          {
            v39 = v140;
          }

          else
          {
            v162 = [(MKPlaceActionManager *)self contact];
            v163 = [v162 urlAddresses];
            v39 = [v163 objectAtIndexedSubscript:0];
          }

          v52 = [v39 value];
          v188 = MEMORY[0x1E695CE08];
          v164 = [(MKPlaceActionManager *)self contact];
          v182 = *MEMORY[0x1E695CC20];
          v165 = [v39 identifier];
          v189 = [v188 contactPropertyWithContactNoCopy:v164 propertyKey:v182 identifier:v165];

          v166 = [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:v52 addCountryName:0];
          v167 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
          v183 = [v166 stringByAddingPercentEncodingWithAllowedCharacters:v167];

          v177 = MEMORY[0x1E695DFF8];
          v175 = MEMORY[0x1E696AEC0];
          v179 = [(MKPlaceActionManager *)self contact];
          v173 = [v179 iOSLegacyIdentifier];
          v168 = [v189 multiValueIdentifier];
          v176 = [(MKPlaceActionManager *)self contact];
          v174 = [v176 identifier];
          v172 = [v39 identifier];
          v169 = [v175 stringWithFormat:@"maps:?address=%@&abPersonID=%d&abAddressID=%d&cncontactidentifier=%@&cnaddressidentifier=%@", v183, v173, v168, v174, v172];
          v51 = [v177 URLWithString:v169];

LABEL_108:
          if (v51)
          {
            v170 = [v9 objectForKeyedSubscript:@"MKPlaceActionManagerSourceViewKey"];
            v171 = [(MKPlaceActionManager *)self placeCardDelegate];
            [v171 placeCardActionController:0 openURL:v51 fromView:v170];
          }
        }

        else
        {
LABEL_95:
          [(MKPlaceActionManager *)self _launchMaps];
        }
      }

LABEL_89:
      if (v10)
      {
        v10[2](v10);
      }

      return;
    case 15:
      v94 = [(MKPlaceActionManager *)self mapItem];
      v95 = [v94 _isEmptyContactMapItem];

      if ((v95 & 1) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_89;
    case 16:
      v114 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v114 infoCardAnalyticsDidSelectAction:6013 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:6 actionRichProviderId:0 classification:v21];

      goto LABEL_69;
    case 17:
      v115 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v115 infoCardAnalyticsDidSelectAction:6004 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:127 actionRichProviderId:0 classification:v21];

      v22 = [(MKPlaceActionManager *)self delegate];
      v56 = [v22 placeViewControllerDelegate];
      v57 = [(MKPlaceActionManager *)self delegate];
      [v56 placeViewControllerDidSelectFlyover:v57];
      goto LABEL_71;
    case 18:
      v125 = [(MKPlaceActionManager *)self delegate];
      v126 = objc_opt_respondsToSelector();

      if ((v126 & 1) == 0)
      {
        goto LABEL_89;
      }

      v127 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v127 infoCardAnalyticsDidSelectAction:6016 target:v18 eventValue:@"Add to Existing Contact" moduleMetadata:v190 feedbackDelegateSelector:124 actionRichProviderId:0 classification:v21];

      v22 = [(MKPlaceActionManager *)self delegate];
      [v22 placeActionManager:self didSelectAddToExistingContactWithEnvironment:v11];
      goto LABEL_88;
    case 19:
      v120 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v120 infoCardAnalyticsDidSelectAction:6005 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectRemoveMarker:0];
      goto LABEL_81;
    case 20:
      v44 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v44 infoCardAnalyticsDidSelectAction:6046 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self mapItem];
      [v45 _launchActivityForBrandItem];
      goto LABEL_81;
    case 21:
      v96 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v96 infoCardAnalyticsDidSelectAction:0 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v22 = [(MKPlaceActionManager *)self delegate];
      [v22 placeActionManager:self didSelectAddToGuidesWithEnvironment:v11];
      goto LABEL_88;
    case 22:
      v128 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v128 infoCardAnalyticsDidSelectAction:2059 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v129 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v129 infoCardAnalyticsDidSelectAction:17099 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectAddToMapsHome:0];
      goto LABEL_81;
    case 23:
      v53 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v53 infoCardAnalyticsDidSelectAction:2060 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v54 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v54 infoCardAnalyticsDidSelectAction:17099 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectRemoveFromMapsHome:0];
      goto LABEL_81;
    case 24:
      v92 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v92 infoCardAnalyticsDidSelectAction:2063 target:253 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectRefineLocation:0];
      goto LABEL_81;
    case 25:
      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectChangeAddress:0];
      goto LABEL_81;
    case 27:
      v104 = MEMORY[0x1E696AEC0];
      v105 = [(MKPlaceActionManager *)self mapItem];
      [v105 _coordinate];
      v107 = v106;
      v108 = [(MKPlaceActionManager *)self mapItem];
      [v108 _coordinate];
      v22 = [v104 stringWithFormat:@"%.6lf, %.6lf", v107, v109];

      v79 = [MEMORY[0x1E69DCD50] generalPasteboard];
      [v79 setString:v22];
      goto LABEL_87;
    case 28:
      v55 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v55 infoCardAnalyticsDidSelectAction:1030 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v22 = [(MKPlaceActionManager *)self delegate];
      v56 = [v22 placeViewControllerDelegate];
      v57 = [(MKPlaceActionManager *)self delegate];
      [v56 placeViewControllerDidSelectDropPin:v57];
      goto LABEL_71;
    case 30:
      v22 = [(MKPlaceActionManager *)self delegate];
      [v22 placeActionManager:self didSelectDirectionsWithEnvironment:v11];
      goto LABEL_88;
    case 31:
      v130 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v130 infoCardAnalyticsDidSelectAction:288 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v131 = [(MKPlaceActionManager *)self mapItem];
      v132 = [v131 _poiClaim];
      v45 = [v132 claimURL];

      if (v45)
      {
        v133 = +[MKSystemController sharedInstance];
        [v133 openURL:v45 completionHandler:0];
      }

      goto LABEL_81;
    case 32:
      v68 = [(MKPlaceActionManager *)self analyticsDelegate];
      v69 = MEMORY[0x1E696AEC0];
      v70 = [(MKPlaceActionManager *)self mapItem];
      v71 = [v69 stringWithFormat:@"%llu", objc_msgSend(v70, "_muid")];
      [v68 infoCardAnalyticsDidSelectAction:282 target:v18 eventValue:v71 moduleMetadata:v190 feedbackDelegateSelector:62 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectPlaceEnrichementReportAProblem];
      goto LABEL_81;
    case 33:
LABEL_69:
      v22 = [(MKPlaceActionManager *)self delegate];
      [v22 placeActionManager:self didSelectShareWithEnvironment:v11];
      goto LABEL_88;
    case 34:
      v82 = [(MKPlaceActionManager *)self placeItem];
      v83 = [v82 options];

      if ((v83 & 8) != 0)
      {
        v84 = 394;
      }

      else
      {
        v84 = 381;
      }

      v85 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v85 infoCardAnalyticsDidSelectAction:v84 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectDownloadOffline:0 isQuickAction:v16];
      goto LABEL_81;
    case 35:
      v110 = [(MKPlaceActionManager *)self placeItem];
      v111 = [v110 options];

      if ((v111 & 8) != 0)
      {
        v112 = 394;
      }

      else
      {
        v112 = 381;
      }

      v113 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v113 infoCardAnalyticsDidSelectAction:v112 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectPauseOfflineDownload:0];
      goto LABEL_81;
    case 36:
      v86 = [(MKPlaceActionManager *)self placeItem];
      v87 = [v86 options];

      if ((v87 & 8) != 0)
      {
        v88 = 394;
      }

      else
      {
        v88 = 381;
      }

      v89 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v89 infoCardAnalyticsDidSelectAction:v88 target:v18 eventValue:0 moduleMetadata:v190 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v45 = [(MKPlaceActionManager *)self delegate];
      [v45 placeCardActionControllerDidSelectOfflineManagement:0];
      goto LABEL_81;
    case 37:
      v23 = [(MKPlaceActionManager *)self delegate];
      v22 = v23;
      v24 = self;
      v25 = v11;
      v26 = 1;
      goto LABEL_27;
    case 38:
      v23 = [(MKPlaceActionManager *)self delegate];
      v22 = v23;
      v24 = self;
      v25 = v11;
      v26 = 0;
LABEL_27:
      [v23 placeActionManager:v24 didSelectAddOrRemoveFromLibraryWithEnvironment:v25 selectedAdd:v26];
      goto LABEL_88;
    case 39:
      v116 = [(MKPlaceActionManager *)self delegate];
      v22 = v116;
      v117 = self;
      v118 = v11;
      v119 = 1;
      goto LABEL_83;
    case 40:
      v116 = [(MKPlaceActionManager *)self delegate];
      v22 = v116;
      v117 = self;
      v118 = v11;
      v119 = 0;
LABEL_83:
      [v116 placeActionManager:v117 didSelectAddOrEditNoteWithEnvironment:v118 selectedAdd:v119];
      goto LABEL_88;
    case 41:
      v27 = [(MKPlaceActionManager *)self delegate];
      v28 = objc_opt_respondsToSelector();

      if ((v28 & 1) == 0)
      {
        goto LABEL_89;
      }

      v29 = [(MKPlaceActionManager *)self analyticsDelegate];
      [v29 infoCardAnalyticsDidSelectAction:465 target:v18 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:v21];

      v30 = [(MKPlaceActionManager *)self mapItem];
      v31 = [v30 _geoMapItem];
      v32 = [v31 _tooltip];
      if (v32)
      {
        v178 = [(MKPlaceActionManager *)self mapItem];
        [v178 _geoMapItem];
        v33 = v184 = v30;
        [v33 _tooltip];
        v34 = v180 = v31;
        v35 = [v34 usesOriginMapItem] ^ 1;

        v31 = v180;
        v30 = v184;
      }

      else
      {
        v35 = 0;
      }

      v161 = [(MKPlaceActionManager *)self delegate];
      v22 = v161;
      if (v35)
      {
        [v161 placeCardActionControllerDidSelectCreateCustomRoute:0 originMapItem:0];
      }

      else
      {
        v79 = [(MKPlaceActionManager *)self mapItem];
        [v22 placeCardActionControllerDidSelectCreateCustomRoute:0 originMapItem:v79];
LABEL_87:
      }

      goto LABEL_88;
    case 42:
    case 43:
      v22 = [(MKPlaceActionManager *)self delegate];
      [v22 placeActionManager:self didSelectRateWithEnvironment:v11];
      goto LABEL_88;
    case 44:
    case 45:
      v22 = [(MKPlaceActionManager *)self delegate];
      [v22 placeActionManager:self didSelectAddToFavoritesGuideWithEnvironment:v11];
      goto LABEL_88;
    case 46:
      v90 = [(MKPlaceActionManager *)self delegate];
      v91 = objc_opt_respondsToSelector();

      if (v91)
      {
        v45 = [(MKPlaceActionManager *)self delegate];
        [v45 placeCardActionControllerDidSelectSimulateLocation:0];
LABEL_81:
      }

      goto LABEL_89;
    case 47:
      v121 = [(MKPlaceActionManager *)self mapItem];
      v122 = [v121 _muid];

      if (!v122)
      {
        goto LABEL_89;
      }

      v22 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v123 = MEMORY[0x1E696AEC0];
      v79 = [(MKPlaceActionManager *)self mapItem];
      v124 = [v123 stringWithFormat:@"%llu", objc_msgSend(v79, "_muid")];
      [v22 setString:v124];
      goto LABEL_86;
    case 48:
      v134 = [(MKPlaceActionManager *)self mapItem];
      v135 = [v134 identifier];
      v136 = [v135 identifierString];

      if (!v136)
      {
        goto LABEL_89;
      }

      v22 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v79 = [(MKPlaceActionManager *)self mapItem];
      v124 = [v79 identifier];
      v137 = [v124 identifierString];
      [v22 setString:v137];

LABEL_86:
      goto LABEL_87;
    case 49:
      v36 = MEMORY[0x1E69A21E0];
      v37 = [(MKPlaceActionManager *)self mapItem];
      v38 = [v37 _geoMapItem];
      v39 = [v36 mapItemStorageForGEOMapItem:v38];

      v40 = [v39 jsonRepresentation];
      v41 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v40 options:1 error:0];
      v42 = NSTemporaryDirectory();
      v43 = [v42 stringByAppendingPathComponent:@"SavedMapItem.json"];

      [v41 writeToFile:v43 options:0 error:0];
LABEL_23:

      goto LABEL_89;
    case 50:
      v102 = NSTemporaryDirectory();
      v22 = [v102 stringByAppendingPathComponent:@"SavedMapItem.json"];

      v79 = [MEMORY[0x1E696AC08] defaultManager];
      [v79 removeItemAtPath:v22 error:0];
      goto LABEL_87;
    default:
      goto LABEL_89;
  }
}

- (BOOL)_isCurrentLocationOrDroppedPin
{
  v3 = [(MKPlaceActionManager *)self placeItem];
  if (([v3 options] & 2) != 0)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v4 = [(MKPlaceActionManager *)self placeItem];
    v5 = [v4 options] & 1;
  }

  return v5;
}

- (void)_canMakeCalls:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__MKPlaceActionManager__canMakeCalls___block_invoke;
    block[3] = &unk_1E76CD4D0;
    v6 = v3;
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
  v2 = [(MKPlaceActionManager *)self mapItem];
  [v2 openInMapsWithLaunchOptions:0 completionHandler:&__block_literal_global_13764];
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
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [(MKPlaceActionManager *)self reportAProblemFooterAction];
    [v3 addObject:v4];

    [(MKPlaceActionManager *)self addLayoutInfoIfNeeded:v3];
    v5 = [v3 copy];
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
      v7 = [MEMORY[0x1E69DC888] systemRedColor];
      [v6 setGlyphColor:v7];

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
    v4 = [(MKPlaceActionManager *)self favoriteItemForFooter];
    v5 = self->_favoriteActionItem;
    self->_favoriteActionItem = v4;

    favoriteActionItem = self->_favoriteActionItem;
  }

  return favoriteActionItem;
}

- (MKPlaceCardActionItem)homeActionItem
{
  homeActionItem = self->_homeActionItem;
  if (!homeActionItem)
  {
    v4 = [(MKPlaceActionManager *)self addToHomeItem];
    v5 = self->_homeActionItem;
    self->_homeActionItem = v4;

    homeActionItem = self->_homeActionItem;
  }

  return homeActionItem;
}

- (void)_addInternalOnlyActions:(id)a3
{
  v9 = a3;
  if (([(MKPlaceActionManager *)self options]& 0x2000) != 0)
  {
    v4 = [MKPlaceCardActionItem actionItemWithType:46 actionDataProvider:self enabled:1];
    [v9 addObject:v4];
  }

  [(MKPlaceActionManager *)self addLayoutInfoIfNeeded:v9];
  if ([(MKPlaceActionManager *)self _showMapItemIdentifier])
  {
    v5 = [MKPlaceCardActionItem actionItemWithType:47 actionDataProvider:self enabled:1];
    [v9 addObject:v5];
  }

  if ([(MKPlaceActionManager *)self _showPlaceID])
  {
    v6 = [MKPlaceCardActionItem actionItemWithType:48 actionDataProvider:self enabled:1];
    [v9 addObject:v6];
  }

  if (GEOConfigGetBOOL())
  {
    v7 = [MKPlaceCardActionItem actionItemWithType:49 actionDataProvider:self enabled:1];
    [v9 addObject:v7];
    v8 = [MKPlaceCardActionItem actionItemWithType:50 actionDataProvider:self enabled:1];
    [v9 addObject:v8];
  }
}

- (BOOL)_canShowClaimThisBusiness
{
  if (([(MKPlaceActionManager *)self options]& 0x1000000000000) != 0)
  {
    return 0;
  }

  v3 = [(MKPlaceActionManager *)self mapItem];
  v4 = [v3 _canBeClaimed];

  return v4;
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
  v3 = [(MKPlaceActionManager *)self placeItem];
  v4 = [v3 mapItem];
  v5 = [v4 _flyover];

  if (v5 && ([(MKPlaceActionManager *)self options]& 0x20000000) != 0)
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
  v3 = [(MKPlaceActionManager *)self mapItem];
  v4 = [v3 _placeDisplayStyle];

  if (v4 == 2)
  {
    v5 = [(MKPlaceActionManager *)self shortPlacecardFooterActions];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:6];
    if (!self->_isCurrentLocation)
    {
      if ([(MKPlaceActionManager *)self _showHomeShortcutItem])
      {
        v14 = [(MKPlaceActionManager *)self homeActionItem];
        [v6 addObject:v14];
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

      v17 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
      v18 = [v17 countryCode];
      v19 = [v18 isEqualToString:@"KR"];

      if ((([(MKPlaceActionManager *)self options]& 0x80000) != 0 || ([(MKPlaceActionManager *)self options]& 0x40000) != 0) && !(v19 & 1 | ((_MKRAPIsAvailable() & 1) == 0)))
      {
        v20 = [(MKPlaceActionManager *)self reportAProblemFooterAction];
        [v6 addObject:v20];
      }
    }

    v7 = [(MKPlaceActionManager *)self createContactActions];
    if ([v7 count])
    {
      [v6 addObjectsFromArray:v7];
    }

    if ([(MKPlaceActionManager *)self _showAddPlaceFooterAction])
    {
      v8 = [(MKPlaceActionManager *)self reportAProblemAddPlaceFooterAction];
      [v6 addObject:v8];
    }

    if ([(MKPlaceActionManager *)self _canShowCreateCustomRouteAction])
    {
      v9 = [(MKPlaceActionManager *)self createCustomRouteActionItem];

      if (v9)
      {
        v10 = [(MKPlaceActionManager *)self createCustomRouteActionItem];
        [v6 addObject:v10];
      }
    }

    if ([(MKPlaceActionManager *)self _showReportAProblemFooterAction])
    {
      v11 = [(MKPlaceActionManager *)self reportAProblemFooterAction];
      [v6 addObject:v11];
    }

    if ([(MKPlaceActionManager *)self _canShowClaimThisBusiness])
    {
      v12 = [(MKPlaceActionManager *)self claimBusinessActionItem];
      [v6 addObject:v12];
    }

    [(MKPlaceActionManager *)self _addInternalOnlyActions:v6];
    v5 = [v6 copy];
  }

  return v5;
}

- (void)addLayoutInfoIfNeeded:(id)a3
{
  v12 = a3;
  if (GEOConfigGetBOOL())
  {
    if (GEOConfigGetBOOL())
    {
      v4 = [(MKPlaceActionManager *)self mapItem];
      v5 = [v4 _placecardLayout];

      if (v5)
      {
        v6 = [MKPlaceCardActionItem alloc];
        v7 = [(MKPlaceActionManager *)self mapItem];
        v8 = [v7 _placecardLayout];
        v9 = [v8 debugName];
        v10 = [(MKPlaceCardActionItem *)v6 initWithType:0 displayString:v9 glyph:0 enabled:0];

        v11 = [MEMORY[0x1E69DC888] lightGrayColor];
        [(MKPlaceCardActionItem *)v10 setGlyphColor:v11];

        [v12 addObject:v10];
      }
    }
  }
}

- (id)createSearchAlongRouteActions
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(MKPlaceActionManager *)self _canShowCallAction]&& ([(MKPlaceActionManager *)self callActionItem], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(MKPlaceActionManager *)self callActionItem];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)createRowActionsWithStyle:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v5 = +[MKSystemController sharedInstance];
  v6 = [v5 userInterfaceIdiom];

  v7 = [(MKPlaceActionManager *)self mapItem];
  if (([v7 _isMapItemTypeBrand] & 1) == 0)
  {
    v8 = [(MKPlaceActionManager *)self placeItem];
    v9 = [v8 options];

    if ((v9 & 2) == 0)
    {
      goto LABEL_5;
    }

    v7 = [(MKPlaceActionManager *)self removeMarkerItem];
    [v4 addObject:v7];
  }

LABEL_5:
  v10 = [(MKPlaceActionManager *)self dataProvider];
  v11 = [v10 supportsMessagesForBusiness];

  if (v11)
  {
    v12 = [(MKPlaceActionManager *)self messageActionItem];
    [v4 addObject:v12];
  }

  if ([(MKPlaceActionManager *)self _canShowCallAction])
  {
    v13 = [(MKPlaceActionManager *)self callActionItem];

    if (v13)
    {
      v14 = [(MKPlaceActionManager *)self callActionItem];
      [v4 addObject:v14];
    }
  }

  if ([(MKPlaceActionManager *)self _showWebsite])
  {
    v15 = [(MKPlaceActionManager *)self websiteActionItem];

    if (v15)
    {
      v16 = [(MKPlaceActionManager *)self websiteActionItem];
      [v4 addObject:v16];
    }
  }

  if ([(MKPlaceActionManager *)self _canShowLibraryAction])
  {
    v17 = [(MKPlaceActionManager *)self libraryActionItem];

    if (v17)
    {
      v18 = [(MKPlaceActionManager *)self libraryActionItem];
      [v4 addObject:v18];
    }
  }

  if ([(MKPlaceActionManager *)self _canShowAddOrEditNoteAction])
  {
    v19 = [(MKPlaceActionManager *)self noteActionItem];

    if (v19)
    {
      v20 = [(MKPlaceActionManager *)self noteActionItem];
      [v4 addObject:v20];
    }
  }

  if ([(MKPlaceActionManager *)self _showCollectionItem])
  {
    v21 = [(MKPlaceActionManager *)self collectionActionItem];

    if (v21)
    {
      v22 = [(MKPlaceActionManager *)self collectionActionItem];
      [v4 addObject:v22];
    }
  }

  v23 = [(MKPlaceActionManager *)self addToFavoritesGuideActionItem];
  v24 = v23;
  if (v23 && [v23 enabled])
  {
    [v4 addObject:v24];
  }

  v25 = v6 != 2 && self->_isCurrentLocation;
  v26 = [(MKPlaceActionManager *)self mapItem];
  v27 = [v26 _isMapItemTypeBrand];
  if (v25 || (v27 & 1) != 0)
  {
    goto LABEL_32;
  }

  v28 = [(MKPlaceActionManager *)self options];

  if ((v28 & 0x200000) == 0)
  {
    v26 = [(MKPlaceActionManager *)self shareActionItem];
    [v4 addObject:v26];
LABEL_32:
  }

  if (v6 == 2 && self->_isCurrentLocation)
  {
    v29 = [MKPlaceCardActionItem actionItemWithType:28 actionDataProvider:self enabled:1];
    [v4 addObject:v29];
  }

  v30 = [(MKPlaceActionManager *)self mapItem];
  if ([v30 _isMapItemTypeBrand])
  {
    v31 = [(MKPlaceActionManager *)self mapItem];
    v32 = [v31 _isStandAloneBrand];

    if ((v32 & 1) == 0)
    {
      brandStoreActionItem = self->_brandStoreActionItem;
      if (!brandStoreActionItem)
      {
        v34 = [MKPlaceCardActionItem actionItemWithType:20 actionDataProvider:self enabled:0];
        v35 = [MEMORY[0x1E696AD88] defaultCenter];
        [v35 addObserver:self selector:sel__enableStoreAction name:@"MKPlaceActionManagerBrandStoresEnableNotification" object:0];

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

  if (v6 == 2)
  {
    v37 = [MKPlaceCardActionItem actionItemWithType:29 actionDataProvider:self enabled:1];
    [v4 addObject:v37];
    v38 = MEMORY[0x1E69A1E80];
    v39 = [(MKPlaceActionManager *)self mapItem];
    v40 = [v39 _geoMapItem];
    [v40 coordinate];
    if ([v38 isLocationShiftRequiredForCoordinate:?])
    {
      v41 = 0;
    }

    else
    {
      v42 = [(MKPlaceActionManager *)self mapItem];
      v43 = [v42 _geoMapItem];
      v41 = [v43 referenceFrame] != 2;
    }

    v44 = [(MKPlaceActionManager *)self mapItem];
    [v44 _coordinate];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MKPlaceActionManager *)self createRowActionsWithStyle:0];
  [v3 addObjectsFromArray:v4];

  v5 = [(MKPlaceActionManager *)self createFooterActions];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];

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
    v6 = [(MKPlaceActionManager *)self delegate];
    -[MKPlaceCardActionItem setSelected:](v4, "setSelected:", [v6 placeHasRating]);

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
    v5 = [(MKPlaceActionManager *)self delegate];
    [v4 setSelected:{objc_msgSend(v5, "placeInShortcuts")}];
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
  v4 = [MEMORY[0x1E69DC888] systemRedColor];
  [v3 setGlyphColor:v4];

  v5 = [MKPlaceCardActionItem actionItemWithType:5 actionDataProvider:self enabled:1];
  [v5 setSelectedItem:v3];
  v6 = [(MKPlaceActionManager *)self delegate];
  [v5 setSelected:{objc_msgSend(v6, "placeInBookmarks")}];

  return v5;
}

- (BOOL)_showHomeShortcutItem
{
  v3 = [(MKPlaceActionManager *)self mapItem];
  v4 = [v3 _isMapItemTypeBrand];

  return (v4 & 1) == 0 && ([(MKPlaceActionManager *)self options]& 0x10000000) != 0 && !self->_isCurrentLocation;
}

- (BOOL)_canShowCreateCustomRouteAction
{
  v3 = [(MKPlaceActionManager *)self dataProvider];
  v4 = [v3 isInSupportedCustomRouteRegion];

  if (v4)
  {
    if ([(MKPlaceActionManager *)self _isCurrentLocationOrDroppedPin])
    {
      v5 = 1;
    }

    else
    {
      v7 = [(MKPlaceActionManager *)self placeItem];
      v8 = [v7 mapItem];
      v5 = [v8 _isMapItemTypeAddress];
    }

    v9 = [(MKPlaceActionManager *)self mapItem];
    v10 = [v9 _geoMapItem];
    v11 = [v10 _tooltip];
    v6 = (v11 != 0) | v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_canShowAddOrEditNoteAction
{
  v3 = [(MKPlaceActionManager *)self mapItem];
  v4 = [v3 _isMapItemTypeBrand];

  return (v4 & 1) == 0 && ([(MKPlaceActionManager *)self options]& 0x20000000000) != 0 && !self->_isCurrentLocation;
}

- (BOOL)_canShowLibraryAction
{
  v3 = [(MKPlaceActionManager *)self mapItem];
  v4 = [v3 _isMapItemTypeBrand];

  return (v4 & 1) == 0 && ([(MKPlaceActionManager *)self options]& 0x10000000000) != 0 && !self->_isCurrentLocation;
}

- (BOOL)_showCollectionItem
{
  v3 = [(MKPlaceActionManager *)self mapItem];
  v4 = [v3 _isMapItemTypeBrand];

  return (v4 & 1) == 0 && ([(MKPlaceActionManager *)self options]& 0x8000) != 0 && !self->_isCurrentLocation;
}

- (BOOL)_showWebsite
{
  v3 = +[MKSystemController sharedInstance];
  if ([v3 userInterfaceIdiom] == 2)
  {
    v4 = [(MKPlaceActionManager *)self contact];
    v5 = [v4 urlAddresses];
    if ([v5 count])
    {
      v6 = [(MKPlaceActionManager *)self placeItem];
      v7 = ([v6 options] & 8) == 0;
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
    v3 = [(MKPlaceActionManager *)self placeItem];
    v4 = [v3 options];

    v5 = [(MKPlaceActionManager *)self placeItem];
    if (([v5 options] & 8) != 0)
    {
      v9 = 1;
    }

    else
    {
      v6 = [(MKPlaceActionManager *)self placeItem];
      if (([v6 options] & 4) != 0)
      {
        v9 = 1;
      }

      else
      {
        v7 = [(MKPlaceActionManager *)self placeItem];
        v8 = [v7 contact];
        v9 = v8 != 0;
      }
    }

    v11 = [(MKPlaceActionManager *)self mapItem];
    v12 = ((v4 & 2) == 0) & ~[v11 _isMapItemTypeAddress];

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
  v3 = [(MKPlaceActionManager *)self _showReportAProblem];
  if (v3)
  {
    LOBYTE(v3) = ![(MKPlaceActionManager *)self _isCurrentLocationOrDroppedPin];
  }

  return v3;
}

- (BOOL)_showReportAProblem
{
  if (_MKRAPIsAvailable())
  {
    v3 = [(MKPlaceActionManager *)self placeItem];
    if (([v3 options] & 4) != 0)
    {
      goto LABEL_8;
    }

    v4 = [(MKPlaceActionManager *)self placeItem];
    v5 = [v4 options];

    if ((v5 & 8) == 0)
    {
      v3 = [(MKPlaceActionManager *)self mapItem];
      if (v3)
      {
        if (([(MKPlaceActionManager *)self options]& 0x40) != 0)
        {
          v8 = [(MKPlaceActionManager *)self placeItem];
          v6 = [v8 hasContactOnly];
        }

        else
        {
          v6 = 1;
        }

        goto LABEL_9;
      }

LABEL_8:
      v6 = 0;
LABEL_9:

      return v6;
    }
  }

  return 0;
}

- (BOOL)_showPlaceID
{
  v3 = [(MKPlaceActionManager *)self mapItem];
  v4 = [v3 identifier];
  v5 = [v4 identifierString];
  if (v5)
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
  v3 = [(MKPlaceActionManager *)self mapItem];
  if ([v3 _muid])
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
  v2 = [(MKPlaceActionManager *)self delegate];
  v3 = [v2 options];

  return v3;
}

- (id)placeItem
{
  v2 = [(MKPlaceActionManager *)self delegate];
  v3 = [v2 placeItem];

  return v3;
}

- (id)mapItem
{
  v2 = [(MKPlaceActionManager *)self delegate];
  v3 = [v2 mapItem];

  return v3;
}

- (id)contact
{
  v2 = [(MKPlaceActionManager *)self delegate];
  v3 = [v2 contact];

  return v3;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);

  return WeakRetained;
}

- (void)setPlaceInFavoritesGuide:(BOOL)a3
{
  self->_placeInFavoritesGuide = a3;
  [(MKPlaceCardActionItem *)self->_addToFavoritesGuideActionItem setSelected:?];
  addToFavoritesGuideActionItem = self->_addToFavoritesGuideActionItem;

  [(MKPlaceCardActionItem *)addToFavoritesGuideActionItem setEnabled:1];
}

- (void)setPlaceHasRating:(BOOL)a3
{
  self->_placeHasRating = a3;
  [(MKPlaceCardActionItem *)self->_rateActionItem setSelected:?];
  rateActionItem = self->_rateActionItem;

  [(MKPlaceCardActionItem *)rateActionItem setEnabled:1];
}

- (void)setPlaceHasNote:(unint64_t)a3
{
  self->_placeHasNote = a3;
  v3 = [(MKPlaceActionManager *)self noteActionItem];
  [v3 setEnabled:1];
}

- (void)setPlaceInLibrary:(unint64_t)a3
{
  self->_placeInLibrary = a3;
  v3 = [(MKPlaceActionManager *)self libraryActionItem];
  [v3 setEnabled:1];
}

- (void)setPlaceInShortcuts:(BOOL)a3
{
  v3 = a3;
  self->_placeInShortcuts = a3;
  v5 = [(MKPlaceActionManager *)self homeActionItem];
  [v5 setSelected:v3];

  v6 = [(MKPlaceActionManager *)self homeActionItem];
  [v6 setEnabled:1];
}

- (void)setPlaceInCollections:(BOOL)a3
{
  self->_placeInCollections = a3;
  [(MKPlaceCardActionItem *)self->_collectionActionItem setSelected:?];
  collectionActionItem = self->_collectionActionItem;

  [(MKPlaceCardActionItem *)collectionActionItem setEnabled:1];
}

- (void)setPlaceInBookmarks:(BOOL)a3
{
  self->_placeInBookmarks = a3;
  [(MKPlaceCardActionItem *)self->_favoriteActionItem setSelected:?];
  favoriteActionItem = self->_favoriteActionItem;

  [(MKPlaceCardActionItem *)favoriteActionItem setEnabled:1];
}

- (id)placeIDForAppearance:(id)a3
{
  v3 = [(MKPlaceActionManager *)self mapItem];
  v4 = [v3 identifier];
  v5 = [v4 identifierString];

  return v5;
}

- (unint64_t)placeMUIDForAppearance:(id)a3
{
  v3 = [(MKPlaceActionManager *)self mapItem];
  v4 = [v3 _muid];

  return v4;
}

- (id)actionItemForButtonItem:(id)a3
{
  v4 = a3;
  v5 = [(MKPlaceActionManager *)self createRowActionsWithStyle:0];
  v6 = [v4 buttonType];

  return [(MKPlaceActionManager *)self actionItemForButtonType:v6];
}

- (id)actionItemForButtonType:(int)a3
{
  switch(a3)
  {
    case 0:
    case 7:
    case 8:
    case 15:
      v5 = [(MKPlaceActionManager *)self rateActionItem];
      goto LABEL_23;
    case 1:
      v5 = [(MKPlaceActionManager *)self collectionActionItem];
      goto LABEL_23;
    case 2:
      v5 = [(MKPlaceActionManager *)self reportAProblemFooterAction];
      goto LABEL_23;
    case 3:
      v5 = [(MKPlaceActionManager *)self shareActionItem];
      goto LABEL_23;
    case 4:
      v5 = [(MKPlaceActionManager *)self callActionItem];
      goto LABEL_23;
    case 5:
      v5 = [(MKPlaceActionManager *)self messageActionItem];
      goto LABEL_23;
    case 6:
      v5 = [(MKPlaceActionManager *)self websiteActionItem];
      goto LABEL_23;
    case 9:
      v5 = [(MKPlaceActionManager *)self flyoverActionItem];
      goto LABEL_23;
    case 10:
      if (!GEOSupportsOfflineMaps() || ([(MKPlaceActionManager *)self options]& 0x1000000000) != 0)
      {
        goto LABEL_14;
      }

      v5 = [MKPlaceCardActionItem actionItemWithType:34];
      goto LABEL_23;
    case 11:
      v6 = [(MKPlaceActionManager *)self dataProvider];
      v7 = [v6 supportsAddingPhotos];

      if (v7)
      {
        v5 = [MKPlaceCardActionItem actionItemWithType:9 actionDataProvider:self enabled:1];
      }

      else
      {
LABEL_14:
        v5 = 0;
      }

      goto LABEL_23;
    case 12:
      v5 = [(MKPlaceActionManager *)self homeActionItem];
      goto LABEL_23;
    case 13:
      v5 = [(MKPlaceActionManager *)self libraryActionItem];
      goto LABEL_23;
    case 14:
      v5 = [(MKPlaceActionManager *)self noteActionItem];
      goto LABEL_23;
    case 16:
      v5 = [(MKPlaceActionManager *)self addToFavoritesGuideActionItem];
LABEL_23:

      break;
    default:
      v5 = 0;

      break;
  }

  return v5;
}

- (MKPlaceActionManager)initWithDataProvider:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MKPlaceActionManager;
  v6 = [(MKPlaceActionManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataProvider, a3);
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