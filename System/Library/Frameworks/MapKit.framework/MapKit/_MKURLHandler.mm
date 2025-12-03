@interface _MKURLHandler
+ (unsigned)_MKGetURLSchemeTypeFor:(id)for;
- (BOOL)_handleMapItemHandlesURL:(id)l sourceApplication:(id)application context:(id)context;
- (BOOL)_handleMapItemURL:(id)l sourceApplication:(id)application context:(id)context;
- (BOOL)_handleMapItems:(id)items withOptions:(id)options url:(id)url sourceApplication:(id)application context:(id)context;
- (BOOL)_handleMapsURL:(id)l sourceApplication:(id)application context:(id)context;
- (BOOL)_handleSharedMapURL:(id)l sourceApplication:(id)application context:(id)context;
- (BOOL)_handleShortURL:(id)l sourceApplication:(id)application context:(id)context;
- (BOOL)_treatAllCuratedCollectionsFrom:(id)from;
- (BOOL)_treatCarDestinationsFrom:(id)from;
- (BOOL)_treatCollectionFrom:(id)from;
- (BOOL)_treatContentProvider:(id)provider;
- (BOOL)_treatCuratedCollectionFrom:(id)from;
- (BOOL)_treatExploreGuidesFrom:(id)from;
- (BOOL)_treatFavoritesFrom:(id)from;
- (BOOL)_treatMuninViewStateFrom:(id)from;
- (BOOL)_treatNavigationDirectionsFrom:(id)from;
- (BOOL)_treatOfflineDownloadFrom:(id)from;
- (BOOL)_treatPinPositionFrom:(id)from;
- (BOOL)_treatPublisherFrom:(id)from;
- (BOOL)_treatRegionFrom:(id)from;
- (BOOL)_treatReportAProblemFrom:(id)from;
- (BOOL)_treatReportAnIncidentFrom:(id)from;
- (BOOL)_treatSearchFrom:(id)from;
- (BOOL)_treatSearchRegionFrom:(id)from;
- (BOOL)_treatShowMyLocationCardFrom:(id)from;
- (BOOL)_treatShowParkedCarFrom:(id)from;
- (BOOL)_treatTesterFrom:(id)from;
- (BOOL)_treatTransitLineFrom:(id)from;
- (BOOL)handleURL:(id)l sourceApplication:(id)application context:(id)context;
- (_MKURLHandlerDelegate)delegate;
- (id)_createMKURLHandlerError:(id)error;
- (void)_treatGenericOptionsFrom:(id)from;
- (void)_treatMapTypeFrom:(id)from;
- (void)_treatTrackingModeFrom:(id)from;
- (void)adjustOptionsForRAP:(id)p options:(id *)options;
@end

@implementation _MKURLHandler

- (_MKURLHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_handleMapItems:(id)items withOptions:(id)options url:(id)url sourceApplication:(id)application context:(id)context
{
  v150[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  optionsCopy = options;
  urlCopy = url;
  applicationCopy = application;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v112 = contextCopy;
    v147 = optionsCopy;
    [(_MKURLHandler *)self adjustOptionsForRAP:urlCopy options:&v147];
    v18 = v147;

    if (![applicationCopy length])
    {
      v19 = [v18 objectForKey:@"MKLaunchOptionsReferralIdentifierKey"];

      applicationCopy = v19;
    }

    v20 = [v18 objectForKey:@"MKLaunchOptionsFromTimeToLeaveNotificationKey"];
    bOOLValue = [v20 BOOLValue];

    if (bOOLValue)
    {
      v22 = [v18 objectForKey:@"_MKLaunchOptionsRoutingArrivalDateKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v113 = v22;
      }

      else
      {
        v113 = 0;
      }
    }

    else
    {
      v113 = 0;
    }

    v24 = objc_loadWeakRetained(&self->_delegate);
    scheme = [urlCopy scheme];
    [v24 URLHandler:self setSchemeForCapture:scheme sourceApplication:applicationCopy isLaunchedFromTTL:bOOLValue ttlEventTime:v113];

    v114 = [v18 objectForKey:@"MKLaunchOptionsMapType"];
    if (v114)
    {
      unsignedIntegerValue = [v114 unsignedIntegerValue];
      v27 = objc_loadWeakRetained(&self->_delegate);
      [v27 URLHandler:self setMapType:unsignedIntegerValue];
    }

    v28 = [v18 objectForKey:@"MKLaunchOptionsShowsTraffic"];
    v29 = v28;
    if (v28)
    {
      bOOLValue2 = [v28 BOOLValue];
      v31 = objc_loadWeakRetained(&self->_delegate);
      [v31 URLHandler:self setShowTraffic:bOOLValue2];
    }

    if ([itemsCopy indexOfObjectPassingTest:&__block_literal_global_4863] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([itemsCopy count])
      {
        v32 = [v18 objectForKey:@"MKLaunchOptionsDirectionsMode"];
        if (v32)
        {

LABEL_24:
          v141 = 0;
          v142 = &v141;
          v143 = 0x3032000000;
          v144 = __Block_byref_object_copy__4864;
          v145 = __Block_byref_object_dispose__4865;
          v146 = 0;
          v140[0] = 0;
          v140[1] = v140;
          v140[2] = 0x2020000000;
          v140[3] = 0;
          v139[0] = MEMORY[0x1E69E9820];
          v139[1] = 3221225472;
          v139[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_45;
          v139[3] = &unk_1E76C7038;
          v139[4] = &v141;
          v139[5] = v140;
          [itemsCopy enumerateObjectsUsingBlock:v139];
          v40 = objc_loadWeakRetained(&self->_delegate);
          v41 = objc_opt_respondsToSelector();

          if (v41)
          {
            v42 = objc_loadWeakRetained(&self->_delegate);
            v43 = [v42 URLHandlerShouldPerformRefinementRequest:self];

            if ((v43 & 1) == 0)
            {
              v47 = objc_loadWeakRetained(&self->_delegate);
              v23 = [v47 URLHandler:self launchIntoDirectionsWithMapItems:itemsCopy options:v18 context:v112];
LABEL_67:

              _Block_object_dispose(v140, 8);
              _Block_object_dispose(&v141, 8);

              goto LABEL_68;
            }
          }

          v44 = v142[5];
          if (v44)
          {
            if ([v44 _hasResolvablePartialInformation])
            {
              v45 = +[MKMapService sharedService];
              _addressFormattedAsSinglelineAddress = [v142[5] _addressFormattedAsSinglelineAddress];
              v47 = [v45 ticketForForwardGeocodeString:_addressFormattedAsSinglelineAddress traits:0];

              v133[0] = MEMORY[0x1E69E9820];
              v133[1] = 3221225472;
              v133[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_2;
              v133[3] = &unk_1E76C7060;
              v138 = v140;
              v134 = itemsCopy;
              selfCopy = self;
              v136 = v18;
              v137 = v112;
              [v47 submitWithHandler:v133 networkActivity:0];

              v23 = 1;
              lastObject = v134;
LABEL_66:

              goto LABEL_67;
            }

            _geoAddress = [v142[5] _geoAddress];
            structuredAddress = [_geoAddress structuredAddress];
            if (structuredAddress)
            {
            }

            else
            {
              _geoAddress2 = [v142[5] _geoAddress];
              v66 = [_geoAddress2 formattedAddressLinesCount] == 0;

              if (!v66)
              {
                v67 = +[MKMapService sharedService];
                v47 = [v67 ticketForMapItemToRefine:v142[5] traits:0];

                v127[0] = MEMORY[0x1E69E9820];
                v127[1] = 3221225472;
                v127[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_3;
                v127[3] = &unk_1E76C7060;
                v132 = v140;
                v128 = itemsCopy;
                selfCopy2 = self;
                v130 = v18;
                v131 = v112;
                [v47 submitWithHandler:v127 networkActivity:0];

                v23 = 1;
                lastObject = v128;
                goto LABEL_66;
              }
            }
          }

          if ([itemsCopy count] > 1)
          {
            [itemsCopy firstObject];
          }

          else
          {
            +[MKMapItem mapItemForCurrentLocation];
          }
          v47 = ;
          lastObject = [itemsCopy lastObject];
          if ([v47 isCurrentLocation])
          {
            v52 = 0;
          }

          else
          {
            [v47 _coordinate];
            v54 = fabs(v53) > 180.0;
            v52 = fabs(v55) > 90.0 || v54;
          }

          if ([lastObject isCurrentLocation])
          {
            v56 = 0;
          }

          else
          {
            [lastObject _coordinate];
            v56 = fabs(v57) > 180.0;
            if (fabs(v58) > 90.0)
            {
              v56 = 1;
            }
          }

          if ((v52 | v56))
          {
            if ([v47 isCurrentLocation])
            {
              v59 = 0;
              goto LABEL_54;
            }

            v63 = objc_alloc(MEMORY[0x1E69A26D8]);
            _addressFormattedAsSinglelineAddress2 = [v47 _addressFormattedAsSinglelineAddress];
            v59 = [v63 initWithQueryItemValue:_addressFormattedAsSinglelineAddress2];

            if (([v59 isValid] & 1) == 0)
            {
LABEL_54:
              if ([lastObject isCurrentLocation])
              {
                v109 = 0;
              }

              else
              {
                v110 = objc_alloc(MEMORY[0x1E69A26D8]);
                _addressFormattedAsSinglelineAddress3 = [lastObject _addressFormattedAsSinglelineAddress];
                v109 = [v110 initWithQueryItemValue:_addressFormattedAsSinglelineAddress3];

                if (([v109 isValid] & 1) == 0)
                {
                  v23 = 0;
                  goto LABEL_64;
                }
              }

              v69 = objc_loadWeakRetained(&self->_delegate);
              v23 = [v69 URLHandler:self showDirectionsFrom:v59 to:v109 using:0xFFFFFFFLL directionsOptions:0];

LABEL_64:
              goto LABEL_65;
            }

            v23 = 0;
          }

          else
          {
            v59 = objc_loadWeakRetained(&self->_delegate);
            v23 = [v59 URLHandler:self launchIntoDirectionsWithMapItems:itemsCopy options:v18 context:v112];
          }

LABEL_65:

          goto LABEL_66;
        }

        v38 = [v18 objectForKey:@"MKLaunchOptionsLaunchIntoRoute"];
        v39 = v38 == 0;

        if (!v39)
        {
          goto LABEL_24;
        }

        v60 = [v18 objectForKey:@"MKLaunchOptionsLaunchIntoRAP"];

        if (v60)
        {
          v61 = objc_loadWeakRetained(&self->_delegate);
          firstObject = [itemsCopy firstObject];
          v23 = [v61 URLHandler:self launchIntoRAPForMapItem:firstObject options:v18 context:v112];

          goto LABEL_68;
        }

        v70 = [v18 objectForKey:@"MKLaunchOptionsLaunchIntoPhotoThumbnailGalleryKey"];

        if (v70)
        {
          v71 = [v18 objectForKeyedSubscript:@"MKLaunchOptionsPhotoThumbnailGalleryAlbumIndex"];
          v72 = v71 == 0;

          if (v72)
          {
            unsignedIntegerValue2 = 0;
          }

          else
          {
            v73 = [v18 objectForKeyedSubscript:@"MKLaunchOptionsPhotoThumbnailGalleryAlbumIndex"];
            unsignedIntegerValue2 = [v73 unsignedIntegerValue];
          }

          v79 = objc_loadWeakRetained(&self->_delegate);
          firstObject2 = [itemsCopy firstObject];
          v23 = [v79 URLHandler:self launchIntoPhotoThumbnailGalleryForMapItem:firstObject2 albumIndex:unsignedIntegerValue2 options:v18 context:v112];

          goto LABEL_68;
        }

        v76 = [v18 objectForKey:@"MKLaunchOptionsLaunchIntoTableBookingKey"];

        if (v76)
        {
          v77 = objc_loadWeakRetained(&self->_delegate);
          firstObject3 = [itemsCopy firstObject];
          v23 = [v77 URLHandler:self launchIntoTableBookingForMapItem:firstObject3 options:v18 context:v112];

          goto LABEL_68;
        }

        if ([itemsCopy count] != 1)
        {
          v89 = objc_loadWeakRetained(&self->_delegate);
          v23 = [v89 URLHandler:self launchIntoSearchWithMapItems:itemsCopy options:v18 context:v112];

          goto LABEL_68;
        }

        firstObject4 = [itemsCopy firstObject];
        [firstObject4 _coordinate];
        if (fabs(v82) > 180.0 || fabs(v81) > 90.0)
        {
          _addressFormattedAsSinglelineAddress4 = [firstObject4 _addressFormattedAsSinglelineAddress];
          if ([_addressFormattedAsSinglelineAddress4 length])
          {
            v91 = objc_loadWeakRetained(&self->_delegate);
            name = [firstObject4 name];
            if ([name length])
            {
              name2 = [firstObject4 name];
              v23 = [v91 URLHandler:self showAddress:_addressFormattedAsSinglelineAddress4 label:name2];
            }

            else
            {
              v23 = [v91 URLHandler:self showAddress:_addressFormattedAsSinglelineAddress4 label:_addressFormattedAsSinglelineAddress4];
            }
          }

          else
          {
            v23 = 0;
          }

          goto LABEL_100;
        }

        if ([firstObject4 _hasResolvablePartialInformation])
        {
          v83 = objc_loadWeakRetained(&self->_delegate);
          v84 = objc_opt_respondsToSelector();

          if ((v84 & 1) != 0 && (v85 = objc_loadWeakRetained(&self->_delegate), v86 = [v85 URLHandlerShouldPerformForwardGeocoding:self], v85, (v86 & 1) == 0))
          {
            _addressFormattedAsSinglelineAddress4 = objc_loadWeakRetained(&self->_delegate);
            v150[0] = firstObject4;
            v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:1];
            v23 = [_addressFormattedAsSinglelineAddress4 URLHandler:self launchIntoSearchWithMapItems:v104 options:v18 context:v112];
          }

          else
          {
            v121[0] = MEMORY[0x1E69E9820];
            v121[1] = 3221225472;
            v121[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_4;
            v121[3] = &unk_1E76C9D60;
            v122 = firstObject4;
            selfCopy3 = self;
            v124 = v18;
            v125 = v112;
            v126 = itemsCopy;
            v87 = MEMORY[0x1A58E9F30](v121);
            v88 = +[MKLocationManager sharedLocationManager];
            if ([v88 isLocationServicesApproved] && (objc_msgSend(v88, "hasLocation") & 1) == 0)
            {
              v105 = +[MKLocationManager sharedLocationManager];
              v106 = *MEMORY[0x1E6985CB8];
              v119[0] = MEMORY[0x1E69E9820];
              v119[1] = 3221225472;
              v119[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_6;
              v119[3] = &unk_1E76C70B0;
              v120 = v87;
              v107 = [v105 singleLocationUpdateWithDesiredAccuracy:v119 handler:v106 timeout:5.0];

              [v107 start];
            }

            else
            {
              v87[2](v87);
            }

            v23 = 1;
            _addressFormattedAsSinglelineAddress4 = v122;
          }

          goto LABEL_100;
        }

        _geoAddress3 = [firstObject4 _geoAddress];
        structuredAddress2 = [_geoAddress3 structuredAddress];
        if (structuredAddress2)
        {
        }

        else
        {
          _geoAddress4 = [firstObject4 _geoAddress];
          v98 = [_geoAddress4 formattedAddressLinesCount] == 0;

          if (!v98)
          {
            v99 = objc_loadWeakRetained(&self->_delegate);
            v100 = objc_opt_respondsToSelector();

            if ((v100 & 1) != 0 && (v101 = objc_loadWeakRetained(&self->_delegate), v102 = [v101 URLHandlerShouldPerformRefinementRequest:self], v101, (v102 & 1) == 0))
            {
              _addressFormattedAsSinglelineAddress4 = objc_loadWeakRetained(&self->_delegate);
              v149 = firstObject4;
              v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
              v23 = [_addressFormattedAsSinglelineAddress4 URLHandler:self launchIntoSearchWithMapItems:v108 options:v18 context:v112];
            }

            else
            {
              v103 = +[MKMapService sharedService];
              _addressFormattedAsSinglelineAddress4 = [v103 ticketForMapItemToRefine:firstObject4 traits:0];

              v115[0] = MEMORY[0x1E69E9820];
              v115[1] = 3221225472;
              v115[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_7;
              v115[3] = &unk_1E76C7088;
              v115[4] = self;
              v116 = v18;
              v117 = v112;
              v118 = itemsCopy;
              [_addressFormattedAsSinglelineAddress4 submitWithHandler:v115 networkActivity:0];

              v23 = 1;
            }

            goto LABEL_100;
          }
        }

        _addressFormattedAsSinglelineAddress4 = objc_loadWeakRetained(&self->_delegate);
        v148 = firstObject4;
        v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
        v23 = [_addressFormattedAsSinglelineAddress4 URLHandler:self launchIntoShowMapItems:v96 options:v18 context:v112];

LABEL_100:
        goto LABEL_68;
      }

      v34 = [v18 objectForKeyedSubscript:@"_MKLaunchOptionsPreserveSearchResultsKey"];
      if ([v34 BOOLValue])
      {
        v35 = [v18 objectForKeyedSubscript:@"MKLaunchOptionsSelectedIndex"];
        v36 = v35 == 0;

        if (!v36)
        {
          v37 = objc_loadWeakRetained(&self->_delegate);
          v23 = [v37 URLHandler:self launchIntoSearchWithMapItems:0 options:v18 context:v112];

          goto LABEL_68;
        }
      }

      else
      {
      }

      v49 = objc_loadWeakRetained(&self->_delegate);
      v23 = [v49 URLHandler:self launchWithOptions:v18];

      goto LABEL_68;
    }

    v33 = objc_loadWeakRetained(&self->_delegate);
    v23 = [v33 URLHandler:self launchIntoDirectionsWithMapItems:itemsCopy options:v18 context:v112];

LABEL_68:
    optionsCopy = v18;
    contextCopy = v112;
    goto LABEL_69;
  }

  v23 = 0;
LABEL_69:

  return v23;
}

- (BOOL)_handleMapItemHandlesURL:(id)l sourceApplication:(id)application context:(id)context
{
  lCopy = l;
  applicationCopy = application;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 URLHandlerWillStartAsynchronousHandling:self];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68___MKURLHandler__handleMapItemHandlesURL_sourceApplication_context___block_invoke;
  v18[3] = &unk_1E76C6FF0;
  v19 = lCopy;
  selfCopy = self;
  v21 = applicationCopy;
  v22 = contextCopy;
  v14 = contextCopy;
  v15 = applicationCopy;
  v16 = lCopy;
  [MKMapItem _mapItemsFromHandleURL:v16 completionHandler:v18];

  return 1;
}

- (void)adjustOptionsForRAP:(id)p options:(id *)options
{
  pCopy = p;
  v5 = *options;
  if (!*options)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF20]);
    *options = v5;
  }

  v6 = [v5 mutableCopy];
  absoluteString = [pCopy absoluteString];
  [v6 setObject:absoluteString forKey:@"MKLaunchOptionsURLKey"];

  v8 = v6;
  *options = v6;
}

- (BOOL)_handleMapItemURL:(id)l sourceApplication:(id)application context:(id)context
{
  v14 = 0;
  contextCopy = context;
  applicationCopy = application;
  lCopy = l;
  v11 = [MKMapItem mapItemsFromURL:lCopy options:&v14];
  v12 = v14;
  LOBYTE(self) = [(_MKURLHandler *)self _handleMapItems:v11 withOptions:v12 url:lCopy sourceApplication:applicationCopy context:contextCopy];

  return self;
}

- (BOOL)_handleSharedMapURL:(id)l sourceApplication:(id)application context:(id)context
{
  contextCopy = context;
  applicationCopy = application;
  lCopy = l;
  v11 = objc_alloc_init(MKURLSerializer);
  v15 = 0;
  v12 = [(MKURLSerializer *)v11 mapItemsFromUrl:lCopy options:&v15];
  v13 = v15;
  LOBYTE(self) = [(_MKURLHandler *)self _handleMapItems:v12 withOptions:v13 url:lCopy sourceApplication:applicationCopy context:contextCopy];

  return self;
}

- (BOOL)_handleMapsURL:(id)l sourceApplication:(id)application context:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  applicationCopy = application;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  scheme = [lCopy scheme];
  [WeakRetained URLHandler:self setSchemeForCapture:scheme sourceApplication:applicationCopy isLaunchedFromTTL:0 ttlEventTime:0];

  if ([_MKURLParser isValidMapURL:lCopy])
  {
    v12 = [[_MKURLParser alloc] initWithURL:lCopy];
    [(_MKURLParser *)v12 parseIncludingCustomParameters:1];
    userSessionEntity = [(_MKURLParser *)v12 userSessionEntity];

    if (userSessionEntity)
    {
      userSessionEntity2 = [(_MKURLParser *)v12 userSessionEntity];
      mEMORY[0x1E69A2710] = [MEMORY[0x1E69A2710] sharedInstance];
      [mEMORY[0x1E69A2710] setMapsUserSessionEntity:userSessionEntity2];
    }

    [(_MKURLHandler *)self _treatGenericOptionsFrom:v12];
    v16 = [(_MKURLHandler *)self _treatMuninViewStateFrom:v12]|| [(_MKURLHandler *)self _treatOfflineDownloadFrom:v12]|| [(_MKURLHandler *)self _treatReportAProblemFrom:v12]|| [(_MKURLHandler *)self _treatReportAnIncidentFrom:v12]|| [(_MKURLHandler *)self _treatCollectionFrom:v12]|| [(_MKURLHandler *)self _treatFavoritesFrom:v12]|| [(_MKURLHandler *)self _treatTransitLineFrom:v12]|| [(_MKURLHandler *)self _treatPinPositionFrom:v12]|| [(_MKURLHandler *)self _treatNavigationDirectionsFrom:v12]|| [(_MKURLHandler *)self _treatSearchFrom:v12]|| [(_MKURLHandler *)self _treatTesterFrom:v12]|| [(_MKURLHandler *)self _treatCarDestinationsFrom:v12]|| [(_MKURLHandler *)self _treatShowParkedCarFrom:v12]|| [(_MKURLHandler *)self _treatShowMyLocationCardFrom:v12]|| [(_MKURLHandler *)self _treatCuratedCollectionFrom:v12]|| [(_MKURLHandler *)self _treatPublisherFrom:v12]|| [(_MKURLHandler *)self _treatAllCuratedCollectionsFrom:v12]|| [(_MKURLHandler *)self _treatExploreGuidesFrom:v12];
  }

  else
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v20 = 138543618;
      v21 = v18;
      v22 = 2114;
      v23 = lCopy;
      _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_ERROR, "%{public}@ thinks this is not a valid URL: %{public}@", &v20, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)_handleShortURL:(id)l sourceApplication:(id)application context:(id)context
{
  lCopy = l;
  applicationCopy = application;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 URLHandlerWillStartAsynchronousHandling:self];
  }

  v14 = _MKPerformShortURLTransformationIfNeeded(lCopy);

  v15 = objc_alloc_init(MKURLShortener);
  objc_initWeak(&location, self);
  GEOConfigGetDouble();
  v17 = v16;
  v18 = MEMORY[0x1E69E96A0];
  v19 = MEMORY[0x1E69E96A0];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59___MKURLHandler__handleShortURL_sourceApplication_context___block_invoke;
  v23[3] = &unk_1E76C6FC8;
  objc_copyWeak(&v26, &location);
  v20 = applicationCopy;
  v24 = v20;
  v21 = contextCopy;
  v25 = v21;
  [(MKURLShortener *)v15 lengthenURL:v14 timeout:v18 queue:v23 completion:v17];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return 1;
}

- (id)_createMKURLHandlerError:(id)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (MKCurrentNetworkConnectionFailureDiagnosis())
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = MKErrorDomain;
    v6 = 101;
LABEL_3:
    v7 = [v4 errorWithDomain:v5 code:v6 userInfo:0];
    goto LABEL_6;
  }

  v8 = MEMORY[0x1E696ABC0];
  v9 = MKErrorDomain;
  if (!errorCopy)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = MKErrorDomain;
    v6 = 100;
    goto LABEL_3;
  }

  v13 = @"MKErrorGEOError";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v7 = [v8 errorWithDomain:v9 code:102 userInfo:v11];

LABEL_6:

  return v7;
}

- (BOOL)_treatExploreGuidesFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (fromCopy)
  {
    if ([fromCopy actionType] == 6)
    {
      exploreGuides = [v6 exploreGuides];
      if (exploreGuides)
      {

LABEL_10:
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        exploreGuides2 = [v6 exploreGuides];
        cityName = [v6 cityName];
        v10 = [WeakRetained URLHandlerShowExploreGuides:self exploreGuides:exploreGuides2 cityName:cityName];

        goto LABEL_11;
      }

      cityName2 = [v6 cityName];

      if (cityName2)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v16 = 138543618;
      v17 = v9;
      v18 = 2082;
      v19 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v16, 0x16u);
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)_treatReportAnIncidentFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v12 = 138543618;
      v13 = v10;
      v14 = 2082;
      v15 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v12, 0x16u);
    }

    goto LABEL_7;
  }

  if (![fromCopy reportedIncidentType])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained URLHandler:self reportAnIncident:{objc_msgSend(v6, "reportedIncidentType")}];

LABEL_8:
  return v8;
}

- (BOOL)_treatReportAProblemFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (fromCopy)
  {
    if ([fromCopy actionType] == 7)
    {
      if ([v6 showReports])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v8 = [WeakRetained URLHandlerShowReports:self];
LABEL_11:

        goto LABEL_12;
      }

      locationQueryItem = [v6 locationQueryItem];

      if (locationQueryItem)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        locationQueryItem2 = [v6 locationQueryItem];
        v8 = [WeakRetained URLHandler:self showReportAProblemWithLocationQuery:locationQueryItem2];

        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v14 = 138543618;
      v15 = v10;
      v16 = 2082;
      v17 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v14, 0x16u);
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (BOOL)_treatAllCuratedCollectionsFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v12 = 138543618;
      v13 = v10;
      v14 = 2082;
      v15 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v12, 0x16u);
    }

    goto LABEL_7;
  }

  if (![fromCopy showAllCuratedCollections])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  delegate = [(_MKURLHandler *)self delegate];
  v8 = [delegate URLHandlerShowAllCuratedCollections:self];

LABEL_8:
  return v8;
}

- (BOOL)_treatPublisherFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v13;
      v17 = 2082;
      v18 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v15, 0x16u);
    }

    goto LABEL_7;
  }

  publisherMUID = [fromCopy publisherMUID];
  searchProviderID = [v6 searchProviderID];
  if (!publisherMUID)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = searchProviderID;
  delegate = [(_MKURLHandler *)self delegate];
  v11 = [delegate URLHandler:self showPublisherWithID:publisherMUID resultProviderID:v9];

LABEL_8:
  return v11;
}

- (BOOL)_treatCuratedCollectionFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v13;
      v17 = 2082;
      v18 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v15, 0x16u);
    }

    goto LABEL_7;
  }

  curatedCollectionMUID = [fromCopy curatedCollectionMUID];
  searchProviderID = [v6 searchProviderID];
  if (!curatedCollectionMUID)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = searchProviderID;
  delegate = [(_MKURLHandler *)self delegate];
  v11 = [delegate URLHandler:self showCuratedCollectionWithID:curatedCollectionMUID resultProviderID:v9];

LABEL_8:
  return v11;
}

- (BOOL)_treatShowMyLocationCardFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v12 = 138543618;
      v13 = v10;
      v14 = 2082;
      v15 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v12, 0x16u);
    }

    goto LABEL_7;
  }

  if (![fromCopy showMyLocationCard])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  delegate = [(_MKURLHandler *)self delegate];
  v8 = [delegate URLHandlerShowMyLocationCard:self];

LABEL_8:
  return v8;
}

- (BOOL)_treatShowParkedCarFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v12 = 138543618;
      v13 = v10;
      v14 = 2082;
      v15 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v12, 0x16u);
    }

    goto LABEL_7;
  }

  if (![fromCopy showParkedCar])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  delegate = [(_MKURLHandler *)self delegate];
  v8 = [delegate URLHandlerShowParkedCar:self];

LABEL_8:
  return v8;
}

- (BOOL)_treatCarDestinationsFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v12 = 138543618;
      v13 = v10;
      v14 = 2082;
      v15 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v12, 0x16u);
    }

    goto LABEL_7;
  }

  if (![fromCopy showCarDestinations])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  delegate = [(_MKURLHandler *)self delegate];
  v8 = [delegate URLHandlerShowCarDestinations:self];

LABEL_8:
  return v8;
}

- (BOOL)_treatCollectionFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v14 = 138543618;
      v15 = v12;
      v16 = 2082;
      v17 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v14, 0x16u);
    }

    goto LABEL_7;
  }

  collectionStorage = [fromCopy collectionStorage];

  if (!collectionStorage)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  collectionStorage2 = [v6 collectionStorage];
  [WeakRetained URLHandler:self showCollection:collectionStorage2];

  v10 = 1;
LABEL_8:

  return v10;
}

- (BOOL)_treatOfflineDownloadFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v13;
      v17 = 2082;
      v18 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v15, 0x16u);
    }

    goto LABEL_7;
  }

  offlineDownloadRegion = [fromCopy offlineDownloadRegion];

  if (!offlineDownloadRegion)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  offlineDownloadRegion2 = [v6 offlineDownloadRegion];
  label = [v6 label];
  v11 = [WeakRetained URLHandler:self initiateOfflineDownloadForRegion:offlineDownloadRegion2 displayName:label];

LABEL_8:
  return v11;
}

- (BOOL)_treatMuninViewStateFrom:(id)from
{
  v21 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v17 = 138543618;
      v18 = v12;
      v19 = 2082;
      v20 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v17, 0x16u);
    }

    goto LABEL_10;
  }

  muninViewState = [fromCopy muninViewState];

  if (!muninViewState)
  {
    if ([v6 actionType] == 5)
    {
      locationQueryItem = [v6 locationQueryItem];

      if (locationQueryItem)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        locationQueryItem2 = [v6 locationQueryItem];
        v10 = [WeakRetained URLHandler:self enterLookAroundWithLocationQueryItem:locationQueryItem2];

        goto LABEL_11;
      }
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  muninViewState2 = [v6 muninViewState];
  [v8 URLHandler:self enterLookAroundWithViewState:muninViewState2];

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)_treatTesterFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v14 = 138543618;
      v15 = v12;
      v16 = 2082;
      v17 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v14, 0x16u);
    }

    goto LABEL_8;
  }

  if (![fromCopy tester] || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v8 = objc_opt_respondsToSelector(), WeakRetained, (v8 & 1) == 0))
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  [v9 URLHandler:self launchIntoTesterWithParam:0];

  v10 = 1;
LABEL_9:

  return v10;
}

- (BOOL)_treatTransitLineFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (fromCopy)
  {
    [(_MKURLHandler *)self _treatRegionFrom:fromCopy];
    lineMUID = [fromCopy lineMUID];
    lineName = [fromCopy lineName];
    v8 = lineName;
    if (lineMUID && [lineName length])
    {
      delegate = [(_MKURLHandler *)self delegate];
      v10 = [delegate URLHandler:self showLineWithID:lineMUID name:v8];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v14 = 138543618;
      v15 = v12;
      v16 = 2082;
      v17 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v14, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)_treatFavoritesFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = fromCopy;
  if (!fromCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v12 = 138543618;
      v13 = v10;
      v14 = 2082;
      v15 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v12, 0x16u);
    }

    goto LABEL_7;
  }

  if (([fromCopy favoritesType] - 1) > 1)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  delegate = [(_MKURLHandler *)self delegate];
  v8 = [delegate URLHandler:self showFavoritesType:{objc_msgSend(v6, "favoritesType")}];

LABEL_8:
  return v8;
}

- (void)_treatGenericOptionsFrom:(id)from
{
  v12 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (fromCopy)
  {
    [(_MKURLHandler *)self _treatMapTypeFrom:fromCopy];
    [(_MKURLHandler *)self _treatTrackingModeFrom:fromCopy];
    [(_MKURLHandler *)self _treatContentProvider:fromCopy];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = 138543618;
      v9 = v7;
      v10 = 2082;
      v11 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v8, 0x16u);
    }
  }
}

- (BOOL)_treatContentProvider:(id)provider
{
  contentProvider = [provider contentProvider];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained URLHandler:self setContentProvider:contentProvider];

  return self;
}

- (BOOL)_treatSearchFrom:(id)from
{
  v21 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (!fromCopy)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v17 = 138543618;
      v18 = v15;
      v19 = 2082;
      v20 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v17, 0x16u);
    }

    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_11;
  }

  searchQuery = [fromCopy searchQuery];
  [fromCopy searchCoordinate];
  if (searchQuery)
  {
    v10 = v8;
    v11 = v9;
    [(_MKURLHandler *)self _treatSearchRegionFrom:fromCopy];
    v12 = objc_loadWeakRetained(&self->_delegate);
    v13 = [v12 URLHandler:self search:searchQuery at:{v10, v11}];
  }

  else
  {
    v13 = 0;
  }

LABEL_11:
  return v13;
}

- (BOOL)_treatSearchRegionFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (!fromCopy)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v22 = 138543618;
      v23 = v19;
      v24 = 2082;
      v25 = "nil == parsed";
LABEL_19:
      _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v22, 0x16u);
    }

LABEL_20:

    goto LABEL_21;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v22 = 138543618;
      v23 = v19;
      v24 = 2082;
      v25 = "nil == _delegate";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  [fromCopy searchRegion];
  if (fabs(v10) > 180.0 || fabs(v7) > 90.0 || v8 < 0.0 || v8 > 180.0 || v9 < 0.0 || v9 > 360.0 || (v11 = objc_loadWeakRetained(&self->_delegate), [fromCopy searchRegion], v12 = objc_msgSend(v11, "URLHandler:setRegion:", self), v11, (v12 & 1) == 0))
  {
    [fromCopy searchCoordinate];
    if (fabs(v14) > 180.0 || fabs(v13) > 90.0 || (v15 = objc_loadWeakRetained(&self->_delegate), [fromCopy searchCoordinate], v16 = objc_msgSend(v15, "URLHandler:setRegionWithCenter:", self), v15, (v16 & 1) == 0))
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      [v20 URLHandler:self setRegion:{-180.0, -180.0, NAN, NAN}];

LABEL_21:
      v17 = 0;
      goto LABEL_22;
    }
  }

  v17 = 1;
LABEL_22:

  return v17;
}

- (BOOL)_treatRegionFrom:(id)from
{
  v82 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (!fromCopy)
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v78 = 138543618;
      v79 = v22;
      v80 = 2082;
      v81 = "nil == parsed";
LABEL_17:
      _os_log_impl(&dword_1A2EA0000, v21, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v78, 0x16u);
    }

LABEL_18:

    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v78 = 138543618;
      v79 = v22;
      v80 = 2082;
      v81 = "nil == _delegate";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);

  if (v7 && ([fromCopy trackingModeSpecified] & 1) == 0)
  {
    [fromCopy centerCoordinate];
    if (fabs(v9) <= 180.0 && fabs(v8) <= 90.0)
    {
      [fromCopy cameraCenterBasedAltitude];
      if (v10 > 0.0)
      {
        [fromCopy rotation];
        if (v11 <= 0.01)
        {
          [fromCopy rotation];
          if (v12 >= -0.01)
          {
            [fromCopy tilt];
            if (v13 <= 0.01)
            {
              [fromCopy tilt];
              if (v14 >= -0.01)
              {
                v15 = objc_loadWeakRetained(&self->_delegate);
                [fromCopy centerCoordinate];
                v53 = v52;
                v55 = v54;
                [fromCopy cameraCenterBasedAltitude];
                v38 = [v15 URLHandler:self setRegionWithCenter:v53 altitude:{v55, v56}];
                goto LABEL_35;
              }
            }
          }
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        [fromCopy centerCoordinate];
        v17 = v16;
        v19 = v18;
        [fromCopy cameraCenterBasedAltitude];
        goto LABEL_29;
      }

      [fromCopy zoomLevel];
      if (v26 >= 0.0)
      {
        [fromCopy rotation];
        if (v39 > 0.01 || ([fromCopy rotation], v40 < -0.01) || (objc_msgSend(fromCopy, "tilt"), v41 > 0.01) || (objc_msgSend(fromCopy, "tilt"), v42 < -0.01))
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          [fromCopy centerCoordinate];
          v44 = v43;
          v46 = v45;
          [fromCopy zoomLevel];
          v48 = v47;
          [fromCopy tilt];
          v50 = v49;
          [fromCopy rotation];
          v38 = [v15 URLHandler:self setRegionWithCenterAndCamera:v44 zoomLevel:v46 pitch:v48 yaw:{v50, v51}];
          goto LABEL_35;
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        [fromCopy centerCoordinate];
        v58 = v57;
        v60 = v59;
        [fromCopy zoomLevel];
        v62 = v61;
        v63 = v15;
        selfCopy2 = self;
        v65 = v58;
        v66 = v60;
      }

      else
      {
        [fromCopy altitude];
        if (v27 > 0.01 || ([fromCopy rotation], v28 > 0.01) || (objc_msgSend(fromCopy, "rotation"), v29 < -0.01) || (objc_msgSend(fromCopy, "tilt"), v30 > 0.01) || (objc_msgSend(fromCopy, "tilt"), v31 < -0.01))
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          [fromCopy centerCoordinate];
          v17 = v32;
          v19 = v33;
          [fromCopy altitude];
LABEL_29:
          v34 = v20;
          [fromCopy tilt];
          v36 = v35;
          [fromCopy rotation];
          v38 = [v15 URLHandler:self setRegionWithCenterAndCamera:v17 altitude:v19 pitch:v34 yaw:{v36, v37}];
LABEL_35:
          v23 = v38;

          goto LABEL_20;
        }

        [fromCopy span];
        if (v67 >= 0.0 && v67 <= 180.0 && v68 >= 0.0 && v68 <= 360.0)
        {
          [fromCopy span];
          if (v69 > 0.0)
          {
            [fromCopy centerCoordinate];
            v71 = v70;
            v73 = v72;
            [fromCopy span];
            v75 = v74;
            v77 = v76;
            v15 = objc_loadWeakRetained(&self->_delegate);
            v38 = [v15 URLHandler:self setRegion:{v71, v73, v75, v77}];
            goto LABEL_35;
          }
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        [fromCopy centerCoordinate];
        v62 = *&_MKURLHandlerDefaultZoomLevel;
        v63 = v15;
        selfCopy2 = self;
      }

      v38 = [v63 URLHandler:selfCopy2 setRegionWithCenter:v65 zoomLevel:{v66, v62}];
      goto LABEL_35;
    }

    v25 = objc_loadWeakRetained(&self->_delegate);
    [v25 URLHandler:self setRegion:{-180.0, -180.0, NAN, NAN}];
  }

LABEL_19:
  v23 = 0;
LABEL_20:

  return v23;
}

- (BOOL)_treatNavigationDirectionsFrom:(id)from
{
  v68 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (!fromCopy)
  {
    sourceLocationQueryItem = GEOFindOrCreateLog();
    if (os_log_type_enabled(sourceLocationQueryItem, OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      *buf = 138543618;
      v65 = v34;
      v66 = 2082;
      v67 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, sourceLocationQueryItem, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    LOBYTE(WeakRetained) = 0;
    goto LABEL_37;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    sourceLocationQueryItem = [fromCopy sourceLocationQueryItem];
    directionsLocationQueryItems = [fromCopy directionsLocationQueryItems];
    v9 = directionsLocationQueryItems;
    if (sourceLocationQueryItem || [directionsLocationQueryItems count])
    {
      transportType = [fromCopy transportType];
      if (transportType)
      {
        v11 = transportType;
      }

      else
      {
        v11 = 0xFFFFFFFLL;
      }

      label = [fromCopy label];
      searchUID = [fromCopy searchUID];
      v14 = objc_loadWeakRetained(&self->_delegate);
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v51 = searchUID;
        v52 = v11;
        v54 = sourceLocationQueryItem;
        v55 = fromCopy;
        v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v53 = v9;
        obj = v9;
        v16 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v60;
          v19 = @"address";
          do
          {
            v20 = 0;
            v56 = v17;
            do
            {
              if (*v60 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v59 + 1) + 8 * v20);
              v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
              if ([v21 hasMapItemIdentifier])
              {
                v23 = MEMORY[0x1E696AD98];
                [v21 mapItemIdentifier];
                v25 = v24 = v19;
                v26 = [v23 numberWithUnsignedLongLong:{objc_msgSend(v25, "muid")}];
                [v22 setObject:v26 forKeyedSubscript:@"muid"];

                v27 = MEMORY[0x1E696AD98];
                mapItemIdentifier = [v21 mapItemIdentifier];
                v29 = [v27 numberWithInt:{objc_msgSend(mapItemIdentifier, "resultProviderID")}];
                [v22 setObject:v29 forKeyedSubscript:@"providerID"];

                v19 = v24;
                v17 = v56;
              }

              resolvedLocation = [v21 resolvedLocation];
              [v22 setObject:resolvedLocation forKeyedSubscript:v19];

              name = [v21 name];
              [v22 setObject:name forKeyedSubscript:@"label"];

              [v58 addObject:v22];
              ++v20;
            }

            while (v17 != v20);
            v17 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
          }

          while (v17);
        }

        sourceLocationQueryItem = v54;
        fromCopy = v55;
        if (v51)
        {
          v32 = [v58 count];
          if (v32)
          {
            lastObject = [v58 lastObject];
          }

          else
          {
            lastObject = objc_opt_new();
          }

          v41 = lastObject;
          v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v51];
          [v41 setObject:v42 forKeyedSubscript:@"muid"];

          v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v55, "searchProviderID")}];
          [v41 setObject:v43 forKeyedSubscript:@"providerID"];

          if ([label length])
          {
            [v41 setObject:label forKeyedSubscript:@"label"];
          }

          if (!v32)
          {
            [v58 addObject:v41];
          }
        }

        v44 = objc_loadWeakRetained(&self->_delegate);
        v45 = [v58 copy];
        directionsOptions = [v55 directionsOptions];
        LOBYTE(WeakRetained) = [v44 URLHandler:self showDirectionsFrom:v54 toDestinationItems:v45 using:v52 directionsOptions:directionsOptions];

        v9 = v53;
      }

      else if (searchUID || [label length])
      {
        searchProviderID = [fromCopy searchProviderID];
        v36 = objc_loadWeakRetained(&self->_delegate);
        [v9 lastObject];
        v37 = WeakRetained = searchUID;
        directionsOptions2 = [fromCopy directionsOptions];
        v39 = v11;
        v40 = directionsOptions2;
        LOBYTE(WeakRetained) = [v36 URLHandler:self showDirectionsFrom:sourceLocationQueryItem to:v37 using:v39 muid:WeakRetained providerId:searchProviderID showLabel:label directionsOptions:directionsOptions2];
      }

      else
      {
        v48 = objc_loadWeakRetained(&self->_delegate);
        lastObject2 = [v9 lastObject];
        directionsOptions3 = [fromCopy directionsOptions];
        LOBYTE(WeakRetained) = [v48 URLHandler:self showDirectionsFrom:sourceLocationQueryItem to:lastObject2 using:v11 directionsOptions:directionsOptions3];
      }
    }

    else
    {
      LOBYTE(WeakRetained) = 0;
    }

LABEL_37:
  }

  return WeakRetained;
}

- (void)_treatTrackingModeFrom:(id)from
{
  v14 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (fromCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained && [fromCopy trackingModeSpecified])
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 URLHandler:self setUserTrackingMode:{objc_msgSend(fromCopy, "trackingMode")}];
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138543618;
      v11 = v9;
      v12 = 2082;
      v13 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v10, 0x16u);
    }
  }
}

- (BOOL)_treatPinPositionFrom:(id)from
{
  v93 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (!fromCopy)
  {
    contentProvider = GEOFindOrCreateLog();
    if (os_log_type_enabled(contentProvider, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2082;
      *&buf[14] = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, contentProvider, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_53;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    if (![(_MKURLHandler *)self _treatRegionFrom:fromCopy])
    {
      [(_MKURLHandler *)self _treatSearchRegionFrom:fromCopy];
    }

    contentProvider = [fromCopy contentProvider];
    contentProviderID = [fromCopy contentProviderID];
    v9 = contentProviderID;
    if (contentProvider && contentProviderID)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = [v10 URLHandler:self showExternalBusinessID:v9 ofContentProvider:contentProvider];

LABEL_52:
LABEL_53:

      goto LABEL_54;
    }

    searchUID = [fromCopy searchUID];
    searchProviderID = [fromCopy searchProviderID];
    if (searchUID)
    {
      v15 = searchProviderID;
      directionsDestinationAddressString = [fromCopy directionsDestinationAddressString];
      v17 = [directionsDestinationAddressString length];

      if (!v17)
      {
        v47 = objc_loadWeakRetained(&self->_delegate);
        [fromCopy centerCoordinate];
        v49 = v48;
        v51 = v50;
        searchQuery = [fromCopy searchQuery];
        v11 = [v47 URLHandler:self showMUID:searchUID resultProviderID:v15 coordinate:searchQuery query:{v49, v51}];

        goto LABEL_52;
      }
    }

    cnContactIdentifier = [fromCopy cnContactIdentifier];
    cnAddressIdentifier = [fromCopy cnAddressIdentifier];
    v81 = cnContactIdentifier;
    if ([cnContactIdentifier length])
    {
      if ([cnAddressIdentifier length])
      {
        v20 = objc_loadWeakRetained(&self->_delegate);
        v21 = [v20 URLHandler:self showAddressByCNContactIdentifier:cnContactIdentifier addressIdentifier:cnAddressIdentifier];

        if (v21)
        {
          v11 = 1;
LABEL_51:

          goto LABEL_52;
        }
      }
    }

    abRecordID = [fromCopy abRecordID];
    abAddressID = [fromCopy abAddressID];
    v24 = abAddressID;
    v80 = abRecordID;
    if (abRecordID)
    {
      if (abAddressID)
      {
        v25 = objc_loadWeakRetained(&self->_delegate);
        v26 = [v25 URLHandler:self showAddressByRecordID:abRecordID addressID:v24];

        if (v26)
        {
          v11 = 1;
LABEL_50:

          goto LABEL_51;
        }
      }
    }

    v79 = v24;
    [fromCopy centerCoordinate];
    v28 = v27;
    v30 = v29;
    *buf = v27;
    *&buf[8] = v29;
    v31 = fabs(v29) <= 180.0;
    v32 = fabs(v27) <= 90.0 && v31;
    addressString = [fromCopy addressString];
    v34 = [addressString length];

    searchQuery2 = [fromCopy searchQuery];
    v36 = [searchQuery2 length];

    v78 = v32;
    v37 = !v32;
    if (v32 && v34 && v36)
    {
      v38 = objc_loadWeakRetained(&self->_delegate);
      v39 = objc_opt_respondsToSelector();

      if (v39)
      {
        v40 = objc_loadWeakRetained(&self->_delegate);
        v41 = [v40 URLHandlerShouldPerformRefinementRequest:self];

        if ((v41 & 1) == 0)
        {
          v42 = objc_loadWeakRetained(&self->_delegate);
          v43 = objc_opt_respondsToSelector();

          if (v43)
          {
            v44 = objc_loadWeakRetained(&self->_delegate);
            addressString2 = [fromCopy addressString];
            searchQuery3 = [fromCopy searchQuery];
            v11 = [v44 URLHandler:self showAddress:addressString2 label:searchQuery3 at:{v28, v30}];

LABEL_49:
            v24 = v79;
            goto LABEL_50;
          }
        }
      }

      v60 = +[MKMapService sharedService];
      addressString3 = [fromCopy addressString];
      [fromCopy searchQuery];
      v63 = v62 = cnAddressIdentifier;
      v64 = [v60 ticketForPlaceRefinementRequestWithCoordinate:buf addressLine:addressString3 placeName:v63 traits:0];

      cnAddressIdentifier = v62;
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __39___MKURLHandler__treatPinPositionFrom___block_invoke;
      v87[3] = &unk_1E76C6FA0;
      v90 = *buf;
      v88 = fromCopy;
      selfCopy = self;
      v91 = v78;
      [v64 submitWithHandler:v87 networkActivity:0];
    }

    else
    {
      if (!v36)
      {
        v37 = 1;
      }

      if ((v37 & 1) == 0)
      {
        v65 = cnAddressIdentifier;
        v66 = objc_loadWeakRetained(&self->_delegate);
        v67 = objc_opt_respondsToSelector();

        if (v67 & 1) != 0 && (v68 = objc_loadWeakRetained(&self->_delegate), v69 = [v68 URLHandlerShouldPerformReverseGeocoding:self], v68, (v69 & 1) == 0) && (v70 = objc_loadWeakRetained(&self->_delegate), v71 = objc_opt_respondsToSelector(), v70, (v71))
        {
          v72 = objc_loadWeakRetained(&self->_delegate);
          searchQuery4 = [fromCopy searchQuery];
          v11 = [v72 URLHandler:self showLabel:searchQuery4 at:{v28, v30}];
        }

        else
        {
          v74 = +[MKMapService sharedService];
          v75 = [v74 ticketForReverseGeocodeCoordinate:0 traits:{v28, v30}];

          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __39___MKURLHandler__treatPinPositionFrom___block_invoke_2;
          v82[3] = &unk_1E76C6FA0;
          v85 = *buf;
          v83 = fromCopy;
          selfCopy2 = self;
          v86 = v32;
          [v75 submitWithHandler:v82 networkActivity:0];

          v11 = 1;
        }

        cnAddressIdentifier = v65;
        goto LABEL_49;
      }

      if (!v34 || (v77 = cnAddressIdentifier, v53 = objc_loadWeakRetained(&self->_delegate), [fromCopy addressString], v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(fromCopy, "searchQuery"), v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v53, "URLHandler:showAddress:label:", self, v54, v55), v55, v54, v53, cnAddressIdentifier = v77, (v56 & 1) == 0))
      {
        if (!v32 || (v57 = cnAddressIdentifier, v58 = objc_loadWeakRetained(&self->_delegate), v59 = [v58 URLHandler:self showMapWithoutPinAt:{v28, v30}], v58, cnAddressIdentifier = v57, (v59 & 1) == 0))
        {
          v11 = 0;
          goto LABEL_49;
        }
      }
    }

    v11 = 1;
    goto LABEL_49;
  }

  v11 = 0;
LABEL_54:

  return v11;
}

- (void)_treatMapTypeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (fromCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      mapType = [fromCopy mapType];
      if (mapType < 5 || mapType == 108 || mapType == 104)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 URLHandler:self setMapType:{objc_msgSend(fromCopy, "mapType")}];
      }
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = 138543618;
      v12 = v10;
      v13 = 2082;
      v14 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v11, 0x16u);
    }
  }
}

- (BOOL)handleURL:(id)l sourceApplication:(id)application context:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  applicationCopy = application;
  contextCopy = context;
  v12 = GEOFindOrCreateLog();
  v13 = v12;
  if (!lCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v21 = 138543618;
      v22 = v16;
      v23 = 2082;
      v24 = "nil == url";
      _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v21, 0x16u);
    }

LABEL_12:
    v15 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138477827;
    v22 = lCopy;
    _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_DEBUG, "Handling URL: '%{private}@'", &v21, 0xCu);
  }

  v14 = [_MKURLHandler _MKGetURLSchemeTypeFor:lCopy];
  v15 = 0;
  if (v14 <= 3)
  {
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v17 = [(_MKURLHandler *)self _handleSharedMapURL:lCopy sourceApplication:applicationCopy context:contextCopy];
      }

      else
      {
        v17 = [(_MKURLHandler *)self _handleMapItemURL:lCopy sourceApplication:applicationCopy context:contextCopy];
      }

      goto LABEL_27;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      scheme = [lCopy scheme];
      v21 = 138543362;
      v22 = scheme;
      _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_ERROR, "Scheme '%{public}@' is not supported.", &v21, 0xCu);
    }

    goto LABEL_12;
  }

  if (v14 <= 5)
  {
    if (v14 == 4)
    {
      v17 = [(_MKURLHandler *)self _handleMapItemHandlesURL:lCopy sourceApplication:applicationCopy context:contextCopy];
      goto LABEL_27;
    }

LABEL_20:
    v17 = [(_MKURLHandler *)self _handleMapsURL:lCopy sourceApplication:applicationCopy context:contextCopy];
LABEL_27:
    v15 = v17;
    goto LABEL_28;
  }

  if (v14 == 6)
  {
    v17 = [(_MKURLHandler *)self _handleShortURL:lCopy sourceApplication:applicationCopy context:contextCopy];
    goto LABEL_27;
  }

  if (v14 == 7)
  {
    goto LABEL_20;
  }

LABEL_28:

  return v15;
}

+ (unsigned)_MKGetURLSchemeTypeFor:(id)for
{
  v11 = *MEMORY[0x1E69E9840];
  if (for)
  {

    return _MKURLGetSchemeType(for);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = 138543618;
      v8 = v6;
      v9 = 2082;
      v10 = "nil == url";
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", &v7, 0x16u);
    }

    return 0;
  }
}

@end