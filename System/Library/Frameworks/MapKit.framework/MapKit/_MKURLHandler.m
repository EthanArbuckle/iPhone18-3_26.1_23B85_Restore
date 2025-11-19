@interface _MKURLHandler
+ (unsigned)_MKGetURLSchemeTypeFor:(id)a3;
- (BOOL)_handleMapItemHandlesURL:(id)a3 sourceApplication:(id)a4 context:(id)a5;
- (BOOL)_handleMapItemURL:(id)a3 sourceApplication:(id)a4 context:(id)a5;
- (BOOL)_handleMapItems:(id)a3 withOptions:(id)a4 url:(id)a5 sourceApplication:(id)a6 context:(id)a7;
- (BOOL)_handleMapsURL:(id)a3 sourceApplication:(id)a4 context:(id)a5;
- (BOOL)_handleSharedMapURL:(id)a3 sourceApplication:(id)a4 context:(id)a5;
- (BOOL)_handleShortURL:(id)a3 sourceApplication:(id)a4 context:(id)a5;
- (BOOL)_treatAllCuratedCollectionsFrom:(id)a3;
- (BOOL)_treatCarDestinationsFrom:(id)a3;
- (BOOL)_treatCollectionFrom:(id)a3;
- (BOOL)_treatContentProvider:(id)a3;
- (BOOL)_treatCuratedCollectionFrom:(id)a3;
- (BOOL)_treatExploreGuidesFrom:(id)a3;
- (BOOL)_treatFavoritesFrom:(id)a3;
- (BOOL)_treatMuninViewStateFrom:(id)a3;
- (BOOL)_treatNavigationDirectionsFrom:(id)a3;
- (BOOL)_treatOfflineDownloadFrom:(id)a3;
- (BOOL)_treatPinPositionFrom:(id)a3;
- (BOOL)_treatPublisherFrom:(id)a3;
- (BOOL)_treatRegionFrom:(id)a3;
- (BOOL)_treatReportAProblemFrom:(id)a3;
- (BOOL)_treatReportAnIncidentFrom:(id)a3;
- (BOOL)_treatSearchFrom:(id)a3;
- (BOOL)_treatSearchRegionFrom:(id)a3;
- (BOOL)_treatShowMyLocationCardFrom:(id)a3;
- (BOOL)_treatShowParkedCarFrom:(id)a3;
- (BOOL)_treatTesterFrom:(id)a3;
- (BOOL)_treatTransitLineFrom:(id)a3;
- (BOOL)handleURL:(id)a3 sourceApplication:(id)a4 context:(id)a5;
- (_MKURLHandlerDelegate)delegate;
- (id)_createMKURLHandlerError:(id)a3;
- (void)_treatGenericOptionsFrom:(id)a3;
- (void)_treatMapTypeFrom:(id)a3;
- (void)_treatTrackingModeFrom:(id)a3;
- (void)adjustOptionsForRAP:(id)a3 options:(id *)a4;
@end

@implementation _MKURLHandler

- (_MKURLHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_handleMapItems:(id)a3 withOptions:(id)a4 url:(id)a5 sourceApplication:(id)a6 context:(id)a7
{
  v150[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v112 = v16;
    v147 = v13;
    [(_MKURLHandler *)self adjustOptionsForRAP:v14 options:&v147];
    v18 = v147;

    if (![v15 length])
    {
      v19 = [v18 objectForKey:@"MKLaunchOptionsReferralIdentifierKey"];

      v15 = v19;
    }

    v20 = [v18 objectForKey:@"MKLaunchOptionsFromTimeToLeaveNotificationKey"];
    v21 = [v20 BOOLValue];

    if (v21)
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
    v25 = [v14 scheme];
    [v24 URLHandler:self setSchemeForCapture:v25 sourceApplication:v15 isLaunchedFromTTL:v21 ttlEventTime:v113];

    v114 = [v18 objectForKey:@"MKLaunchOptionsMapType"];
    if (v114)
    {
      v26 = [v114 unsignedIntegerValue];
      v27 = objc_loadWeakRetained(&self->_delegate);
      [v27 URLHandler:self setMapType:v26];
    }

    v28 = [v18 objectForKey:@"MKLaunchOptionsShowsTraffic"];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 BOOLValue];
      v31 = objc_loadWeakRetained(&self->_delegate);
      [v31 URLHandler:self setShowTraffic:v30];
    }

    if ([v12 indexOfObjectPassingTest:&__block_literal_global_4863] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v12 count])
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
          [v12 enumerateObjectsUsingBlock:v139];
          v40 = objc_loadWeakRetained(&self->_delegate);
          v41 = objc_opt_respondsToSelector();

          if (v41)
          {
            v42 = objc_loadWeakRetained(&self->_delegate);
            v43 = [v42 URLHandlerShouldPerformRefinementRequest:self];

            if ((v43 & 1) == 0)
            {
              v47 = objc_loadWeakRetained(&self->_delegate);
              v23 = [v47 URLHandler:self launchIntoDirectionsWithMapItems:v12 options:v18 context:v112];
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
              v46 = [v142[5] _addressFormattedAsSinglelineAddress];
              v47 = [v45 ticketForForwardGeocodeString:v46 traits:0];

              v133[0] = MEMORY[0x1E69E9820];
              v133[1] = 3221225472;
              v133[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_2;
              v133[3] = &unk_1E76C7060;
              v138 = v140;
              v134 = v12;
              v135 = self;
              v136 = v18;
              v137 = v112;
              [v47 submitWithHandler:v133 networkActivity:0];

              v23 = 1;
              v48 = v134;
LABEL_66:

              goto LABEL_67;
            }

            v50 = [v142[5] _geoAddress];
            v51 = [v50 structuredAddress];
            if (v51)
            {
            }

            else
            {
              v65 = [v142[5] _geoAddress];
              v66 = [v65 formattedAddressLinesCount] == 0;

              if (!v66)
              {
                v67 = +[MKMapService sharedService];
                v47 = [v67 ticketForMapItemToRefine:v142[5] traits:0];

                v127[0] = MEMORY[0x1E69E9820];
                v127[1] = 3221225472;
                v127[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_3;
                v127[3] = &unk_1E76C7060;
                v132 = v140;
                v128 = v12;
                v129 = self;
                v130 = v18;
                v131 = v112;
                [v47 submitWithHandler:v127 networkActivity:0];

                v23 = 1;
                v48 = v128;
                goto LABEL_66;
              }
            }
          }

          if ([v12 count] > 1)
          {
            [v12 firstObject];
          }

          else
          {
            +[MKMapItem mapItemForCurrentLocation];
          }
          v47 = ;
          v48 = [v12 lastObject];
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

          if ([v48 isCurrentLocation])
          {
            v56 = 0;
          }

          else
          {
            [v48 _coordinate];
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
            v64 = [v47 _addressFormattedAsSinglelineAddress];
            v59 = [v63 initWithQueryItemValue:v64];

            if (([v59 isValid] & 1) == 0)
            {
LABEL_54:
              if ([v48 isCurrentLocation])
              {
                v109 = 0;
              }

              else
              {
                v110 = objc_alloc(MEMORY[0x1E69A26D8]);
                v68 = [v48 _addressFormattedAsSinglelineAddress];
                v109 = [v110 initWithQueryItemValue:v68];

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
            v23 = [v59 URLHandler:self launchIntoDirectionsWithMapItems:v12 options:v18 context:v112];
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
          v62 = [v12 firstObject];
          v23 = [v61 URLHandler:self launchIntoRAPForMapItem:v62 options:v18 context:v112];

          goto LABEL_68;
        }

        v70 = [v18 objectForKey:@"MKLaunchOptionsLaunchIntoPhotoThumbnailGalleryKey"];

        if (v70)
        {
          v71 = [v18 objectForKeyedSubscript:@"MKLaunchOptionsPhotoThumbnailGalleryAlbumIndex"];
          v72 = v71 == 0;

          if (v72)
          {
            v74 = 0;
          }

          else
          {
            v73 = [v18 objectForKeyedSubscript:@"MKLaunchOptionsPhotoThumbnailGalleryAlbumIndex"];
            v74 = [v73 unsignedIntegerValue];
          }

          v79 = objc_loadWeakRetained(&self->_delegate);
          v80 = [v12 firstObject];
          v23 = [v79 URLHandler:self launchIntoPhotoThumbnailGalleryForMapItem:v80 albumIndex:v74 options:v18 context:v112];

          goto LABEL_68;
        }

        v76 = [v18 objectForKey:@"MKLaunchOptionsLaunchIntoTableBookingKey"];

        if (v76)
        {
          v77 = objc_loadWeakRetained(&self->_delegate);
          v78 = [v12 firstObject];
          v23 = [v77 URLHandler:self launchIntoTableBookingForMapItem:v78 options:v18 context:v112];

          goto LABEL_68;
        }

        if ([v12 count] != 1)
        {
          v89 = objc_loadWeakRetained(&self->_delegate);
          v23 = [v89 URLHandler:self launchIntoSearchWithMapItems:v12 options:v18 context:v112];

          goto LABEL_68;
        }

        v111 = [v12 firstObject];
        [v111 _coordinate];
        if (fabs(v82) > 180.0 || fabs(v81) > 90.0)
        {
          v90 = [v111 _addressFormattedAsSinglelineAddress];
          if ([v90 length])
          {
            v91 = objc_loadWeakRetained(&self->_delegate);
            v92 = [v111 name];
            if ([v92 length])
            {
              v93 = [v111 name];
              v23 = [v91 URLHandler:self showAddress:v90 label:v93];
            }

            else
            {
              v23 = [v91 URLHandler:self showAddress:v90 label:v90];
            }
          }

          else
          {
            v23 = 0;
          }

          goto LABEL_100;
        }

        if ([v111 _hasResolvablePartialInformation])
        {
          v83 = objc_loadWeakRetained(&self->_delegate);
          v84 = objc_opt_respondsToSelector();

          if ((v84 & 1) != 0 && (v85 = objc_loadWeakRetained(&self->_delegate), v86 = [v85 URLHandlerShouldPerformForwardGeocoding:self], v85, (v86 & 1) == 0))
          {
            v90 = objc_loadWeakRetained(&self->_delegate);
            v150[0] = v111;
            v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:1];
            v23 = [v90 URLHandler:self launchIntoSearchWithMapItems:v104 options:v18 context:v112];
          }

          else
          {
            v121[0] = MEMORY[0x1E69E9820];
            v121[1] = 3221225472;
            v121[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_4;
            v121[3] = &unk_1E76C9D60;
            v122 = v111;
            v123 = self;
            v124 = v18;
            v125 = v112;
            v126 = v12;
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
            v90 = v122;
          }

          goto LABEL_100;
        }

        v94 = [v111 _geoAddress];
        v95 = [v94 structuredAddress];
        if (v95)
        {
        }

        else
        {
          v97 = [v111 _geoAddress];
          v98 = [v97 formattedAddressLinesCount] == 0;

          if (!v98)
          {
            v99 = objc_loadWeakRetained(&self->_delegate);
            v100 = objc_opt_respondsToSelector();

            if ((v100 & 1) != 0 && (v101 = objc_loadWeakRetained(&self->_delegate), v102 = [v101 URLHandlerShouldPerformRefinementRequest:self], v101, (v102 & 1) == 0))
            {
              v90 = objc_loadWeakRetained(&self->_delegate);
              v149 = v111;
              v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
              v23 = [v90 URLHandler:self launchIntoSearchWithMapItems:v108 options:v18 context:v112];
            }

            else
            {
              v103 = +[MKMapService sharedService];
              v90 = [v103 ticketForMapItemToRefine:v111 traits:0];

              v115[0] = MEMORY[0x1E69E9820];
              v115[1] = 3221225472;
              v115[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_7;
              v115[3] = &unk_1E76C7088;
              v115[4] = self;
              v116 = v18;
              v117 = v112;
              v118 = v12;
              [v90 submitWithHandler:v115 networkActivity:0];

              v23 = 1;
            }

            goto LABEL_100;
          }
        }

        v90 = objc_loadWeakRetained(&self->_delegate);
        v148 = v111;
        v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
        v23 = [v90 URLHandler:self launchIntoShowMapItems:v96 options:v18 context:v112];

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
    v23 = [v33 URLHandler:self launchIntoDirectionsWithMapItems:v12 options:v18 context:v112];

LABEL_68:
    v13 = v18;
    v16 = v112;
    goto LABEL_69;
  }

  v23 = 0;
LABEL_69:

  return v23;
}

- (BOOL)_handleMapItemHandlesURL:(id)a3 sourceApplication:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v19 = v8;
  v20 = self;
  v21 = v9;
  v22 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [MKMapItem _mapItemsFromHandleURL:v16 completionHandler:v18];

  return 1;
}

- (void)adjustOptionsForRAP:(id)a3 options:(id *)a4
{
  v9 = a3;
  v5 = *a4;
  if (!*a4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF20]);
    *a4 = v5;
  }

  v6 = [v5 mutableCopy];
  v7 = [v9 absoluteString];
  [v6 setObject:v7 forKey:@"MKLaunchOptionsURLKey"];

  v8 = v6;
  *a4 = v6;
}

- (BOOL)_handleMapItemURL:(id)a3 sourceApplication:(id)a4 context:(id)a5
{
  v14 = 0;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [MKMapItem mapItemsFromURL:v10 options:&v14];
  v12 = v14;
  LOBYTE(self) = [(_MKURLHandler *)self _handleMapItems:v11 withOptions:v12 url:v10 sourceApplication:v9 context:v8];

  return self;
}

- (BOOL)_handleSharedMapURL:(id)a3 sourceApplication:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(MKURLSerializer);
  v15 = 0;
  v12 = [(MKURLSerializer *)v11 mapItemsFromUrl:v10 options:&v15];
  v13 = v15;
  LOBYTE(self) = [(_MKURLHandler *)self _handleMapItems:v12 withOptions:v13 url:v10 sourceApplication:v9 context:v8];

  return self;
}

- (BOOL)_handleMapsURL:(id)a3 sourceApplication:(id)a4 context:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [v8 scheme];
  [WeakRetained URLHandler:self setSchemeForCapture:v11 sourceApplication:v9 isLaunchedFromTTL:0 ttlEventTime:0];

  if ([_MKURLParser isValidMapURL:v8])
  {
    v12 = [[_MKURLParser alloc] initWithURL:v8];
    [(_MKURLParser *)v12 parseIncludingCustomParameters:1];
    v13 = [(_MKURLParser *)v12 userSessionEntity];

    if (v13)
    {
      v14 = [(_MKURLParser *)v12 userSessionEntity];
      v15 = [MEMORY[0x1E69A2710] sharedInstance];
      [v15 setMapsUserSessionEntity:v14];
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
      v23 = v8;
      _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_ERROR, "%{public}@ thinks this is not a valid URL: %{public}@", &v20, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)_handleShortURL:(id)a3 sourceApplication:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 URLHandlerWillStartAsynchronousHandling:self];
  }

  v14 = _MKPerformShortURLTransformationIfNeeded(v8);

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
  v20 = v9;
  v24 = v20;
  v21 = v10;
  v25 = v21;
  [(MKURLShortener *)v15 lengthenURL:v14 timeout:v18 queue:v23 completion:v17];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return 1;
}

- (id)_createMKURLHandlerError:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
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
  if (!v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = MKErrorDomain;
    v6 = 100;
    goto LABEL_3;
  }

  v13 = @"MKErrorGEOError";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "code")}];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v7 = [v8 errorWithDomain:v9 code:102 userInfo:v11];

LABEL_6:

  return v7;
}

- (BOOL)_treatExploreGuidesFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 actionType] == 6)
    {
      v7 = [v6 exploreGuides];
      if (v7)
      {

LABEL_10:
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = [v6 exploreGuides];
        v14 = [v6 cityName];
        v10 = [WeakRetained URLHandlerShowExploreGuides:self exploreGuides:v13 cityName:v14];

        goto LABEL_11;
      }

      v11 = [v6 cityName];

      if (v11)
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

- (BOOL)_treatReportAnIncidentFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  if (![v5 reportedIncidentType])
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

- (BOOL)_treatReportAProblemFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 actionType] == 7)
    {
      if ([v6 showReports])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v8 = [WeakRetained URLHandlerShowReports:self];
LABEL_11:

        goto LABEL_12;
      }

      v11 = [v6 locationQueryItem];

      if (v11)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v12 = [v6 locationQueryItem];
        v8 = [WeakRetained URLHandler:self showReportAProblemWithLocationQuery:v12];

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

- (BOOL)_treatAllCuratedCollectionsFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  if (![v5 showAllCuratedCollections])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(_MKURLHandler *)self delegate];
  v8 = [v7 URLHandlerShowAllCuratedCollections:self];

LABEL_8:
  return v8;
}

- (BOOL)_treatPublisherFrom:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  v7 = [v5 publisherMUID];
  v8 = [v6 searchProviderID];
  if (!v7)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [(_MKURLHandler *)self delegate];
  v11 = [v10 URLHandler:self showPublisherWithID:v7 resultProviderID:v9];

LABEL_8:
  return v11;
}

- (BOOL)_treatCuratedCollectionFrom:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  v7 = [v5 curatedCollectionMUID];
  v8 = [v6 searchProviderID];
  if (!v7)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [(_MKURLHandler *)self delegate];
  v11 = [v10 URLHandler:self showCuratedCollectionWithID:v7 resultProviderID:v9];

LABEL_8:
  return v11;
}

- (BOOL)_treatShowMyLocationCardFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  if (![v5 showMyLocationCard])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(_MKURLHandler *)self delegate];
  v8 = [v7 URLHandlerShowMyLocationCard:self];

LABEL_8:
  return v8;
}

- (BOOL)_treatShowParkedCarFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  if (![v5 showParkedCar])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(_MKURLHandler *)self delegate];
  v8 = [v7 URLHandlerShowParkedCar:self];

LABEL_8:
  return v8;
}

- (BOOL)_treatCarDestinationsFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  if (![v5 showCarDestinations])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(_MKURLHandler *)self delegate];
  v8 = [v7 URLHandlerShowCarDestinations:self];

LABEL_8:
  return v8;
}

- (BOOL)_treatCollectionFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  v7 = [v5 collectionStorage];

  if (!v7)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [v6 collectionStorage];
  [WeakRetained URLHandler:self showCollection:v9];

  v10 = 1;
LABEL_8:

  return v10;
}

- (BOOL)_treatOfflineDownloadFrom:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  v7 = [v5 offlineDownloadRegion];

  if (!v7)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [v6 offlineDownloadRegion];
  v10 = [v6 label];
  v11 = [WeakRetained URLHandler:self initiateOfflineDownloadForRegion:v9 displayName:v10];

LABEL_8:
  return v11;
}

- (BOOL)_treatMuninViewStateFrom:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  v7 = [v5 muninViewState];

  if (!v7)
  {
    if ([v6 actionType] == 5)
    {
      v13 = [v6 locationQueryItem];

      if (v13)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v15 = [v6 locationQueryItem];
        v10 = [WeakRetained URLHandler:self enterLookAroundWithLocationQueryItem:v15];

        goto LABEL_11;
      }
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = [v6 muninViewState];
  [v8 URLHandler:self enterLookAroundWithViewState:v9];

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)_treatTesterFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  if (![v5 tester] || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v8 = objc_opt_respondsToSelector(), WeakRetained, (v8 & 1) == 0))
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

- (BOOL)_treatTransitLineFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    [(_MKURLHandler *)self _treatRegionFrom:v5];
    v6 = [v5 lineMUID];
    v7 = [v5 lineName];
    v8 = v7;
    if (v6 && [v7 length])
    {
      v9 = [(_MKURLHandler *)self delegate];
      v10 = [v9 URLHandler:self showLineWithID:v6 name:v8];
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

- (BOOL)_treatFavoritesFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
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

  if (([v5 favoritesType] - 1) > 1)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(_MKURLHandler *)self delegate];
  v8 = [v7 URLHandler:self showFavoritesType:{objc_msgSend(v6, "favoritesType")}];

LABEL_8:
  return v8;
}

- (void)_treatGenericOptionsFrom:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    [(_MKURLHandler *)self _treatMapTypeFrom:v5];
    [(_MKURLHandler *)self _treatTrackingModeFrom:v5];
    [(_MKURLHandler *)self _treatContentProvider:v5];
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

- (BOOL)_treatContentProvider:(id)a3
{
  v4 = [a3 contentProvider];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained URLHandler:self setContentProvider:v4];

  return self;
}

- (BOOL)_treatSearchFrom:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
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

  v7 = [v5 searchQuery];
  [v5 searchCoordinate];
  if (v7)
  {
    v10 = v8;
    v11 = v9;
    [(_MKURLHandler *)self _treatSearchRegionFrom:v5];
    v12 = objc_loadWeakRetained(&self->_delegate);
    v13 = [v12 URLHandler:self search:v7 at:{v10, v11}];
  }

  else
  {
    v13 = 0;
  }

LABEL_11:
  return v13;
}

- (BOOL)_treatSearchRegionFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
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

  [v5 searchRegion];
  if (fabs(v10) > 180.0 || fabs(v7) > 90.0 || v8 < 0.0 || v8 > 180.0 || v9 < 0.0 || v9 > 360.0 || (v11 = objc_loadWeakRetained(&self->_delegate), [v5 searchRegion], v12 = objc_msgSend(v11, "URLHandler:setRegion:", self), v11, (v12 & 1) == 0))
  {
    [v5 searchCoordinate];
    if (fabs(v14) > 180.0 || fabs(v13) > 90.0 || (v15 = objc_loadWeakRetained(&self->_delegate), [v5 searchCoordinate], v16 = objc_msgSend(v15, "URLHandler:setRegionWithCenter:", self), v15, (v16 & 1) == 0))
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

- (BOOL)_treatRegionFrom:(id)a3
{
  v82 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
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

  if (v7 && ([v5 trackingModeSpecified] & 1) == 0)
  {
    [v5 centerCoordinate];
    if (fabs(v9) <= 180.0 && fabs(v8) <= 90.0)
    {
      [v5 cameraCenterBasedAltitude];
      if (v10 > 0.0)
      {
        [v5 rotation];
        if (v11 <= 0.01)
        {
          [v5 rotation];
          if (v12 >= -0.01)
          {
            [v5 tilt];
            if (v13 <= 0.01)
            {
              [v5 tilt];
              if (v14 >= -0.01)
              {
                v15 = objc_loadWeakRetained(&self->_delegate);
                [v5 centerCoordinate];
                v53 = v52;
                v55 = v54;
                [v5 cameraCenterBasedAltitude];
                v38 = [v15 URLHandler:self setRegionWithCenter:v53 altitude:{v55, v56}];
                goto LABEL_35;
              }
            }
          }
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        [v5 centerCoordinate];
        v17 = v16;
        v19 = v18;
        [v5 cameraCenterBasedAltitude];
        goto LABEL_29;
      }

      [v5 zoomLevel];
      if (v26 >= 0.0)
      {
        [v5 rotation];
        if (v39 > 0.01 || ([v5 rotation], v40 < -0.01) || (objc_msgSend(v5, "tilt"), v41 > 0.01) || (objc_msgSend(v5, "tilt"), v42 < -0.01))
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          [v5 centerCoordinate];
          v44 = v43;
          v46 = v45;
          [v5 zoomLevel];
          v48 = v47;
          [v5 tilt];
          v50 = v49;
          [v5 rotation];
          v38 = [v15 URLHandler:self setRegionWithCenterAndCamera:v44 zoomLevel:v46 pitch:v48 yaw:{v50, v51}];
          goto LABEL_35;
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        [v5 centerCoordinate];
        v58 = v57;
        v60 = v59;
        [v5 zoomLevel];
        v62 = v61;
        v63 = v15;
        v64 = self;
        v65 = v58;
        v66 = v60;
      }

      else
      {
        [v5 altitude];
        if (v27 > 0.01 || ([v5 rotation], v28 > 0.01) || (objc_msgSend(v5, "rotation"), v29 < -0.01) || (objc_msgSend(v5, "tilt"), v30 > 0.01) || (objc_msgSend(v5, "tilt"), v31 < -0.01))
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          [v5 centerCoordinate];
          v17 = v32;
          v19 = v33;
          [v5 altitude];
LABEL_29:
          v34 = v20;
          [v5 tilt];
          v36 = v35;
          [v5 rotation];
          v38 = [v15 URLHandler:self setRegionWithCenterAndCamera:v17 altitude:v19 pitch:v34 yaw:{v36, v37}];
LABEL_35:
          v23 = v38;

          goto LABEL_20;
        }

        [v5 span];
        if (v67 >= 0.0 && v67 <= 180.0 && v68 >= 0.0 && v68 <= 360.0)
        {
          [v5 span];
          if (v69 > 0.0)
          {
            [v5 centerCoordinate];
            v71 = v70;
            v73 = v72;
            [v5 span];
            v75 = v74;
            v77 = v76;
            v15 = objc_loadWeakRetained(&self->_delegate);
            v38 = [v15 URLHandler:self setRegion:{v71, v73, v75, v77}];
            goto LABEL_35;
          }
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        [v5 centerCoordinate];
        v62 = *&_MKURLHandlerDefaultZoomLevel;
        v63 = v15;
        v64 = self;
      }

      v38 = [v63 URLHandler:v64 setRegionWithCenter:v65 zoomLevel:{v66, v62}];
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

- (BOOL)_treatNavigationDirectionsFrom:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      *buf = 138543618;
      v65 = v34;
      v66 = 2082;
      v67 = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    LOBYTE(WeakRetained) = 0;
    goto LABEL_37;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = [v5 sourceLocationQueryItem];
    v8 = [v5 directionsLocationQueryItems];
    v9 = v8;
    if (v7 || [v8 count])
    {
      v10 = [v5 transportType];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0xFFFFFFFLL;
      }

      v12 = [v5 label];
      v13 = [v5 searchUID];
      v14 = objc_loadWeakRetained(&self->_delegate);
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v51 = v13;
        v52 = v11;
        v54 = v7;
        v55 = v5;
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
                v28 = [v21 mapItemIdentifier];
                v29 = [v27 numberWithInt:{objc_msgSend(v28, "resultProviderID")}];
                [v22 setObject:v29 forKeyedSubscript:@"providerID"];

                v19 = v24;
                v17 = v56;
              }

              v30 = [v21 resolvedLocation];
              [v22 setObject:v30 forKeyedSubscript:v19];

              v31 = [v21 name];
              [v22 setObject:v31 forKeyedSubscript:@"label"];

              [v58 addObject:v22];
              ++v20;
            }

            while (v17 != v20);
            v17 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
          }

          while (v17);
        }

        v7 = v54;
        v5 = v55;
        if (v51)
        {
          v32 = [v58 count];
          if (v32)
          {
            v33 = [v58 lastObject];
          }

          else
          {
            v33 = objc_opt_new();
          }

          v41 = v33;
          v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v51];
          [v41 setObject:v42 forKeyedSubscript:@"muid"];

          v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v55, "searchProviderID")}];
          [v41 setObject:v43 forKeyedSubscript:@"providerID"];

          if ([v12 length])
          {
            [v41 setObject:v12 forKeyedSubscript:@"label"];
          }

          if (!v32)
          {
            [v58 addObject:v41];
          }
        }

        v44 = objc_loadWeakRetained(&self->_delegate);
        v45 = [v58 copy];
        v46 = [v55 directionsOptions];
        LOBYTE(WeakRetained) = [v44 URLHandler:self showDirectionsFrom:v54 toDestinationItems:v45 using:v52 directionsOptions:v46];

        v9 = v53;
      }

      else if (v13 || [v12 length])
      {
        v35 = [v5 searchProviderID];
        v36 = objc_loadWeakRetained(&self->_delegate);
        [v9 lastObject];
        v37 = WeakRetained = v13;
        v38 = [v5 directionsOptions];
        v39 = v11;
        v40 = v38;
        LOBYTE(WeakRetained) = [v36 URLHandler:self showDirectionsFrom:v7 to:v37 using:v39 muid:WeakRetained providerId:v35 showLabel:v12 directionsOptions:v38];
      }

      else
      {
        v48 = objc_loadWeakRetained(&self->_delegate);
        v49 = [v9 lastObject];
        v50 = [v5 directionsOptions];
        LOBYTE(WeakRetained) = [v48 URLHandler:self showDirectionsFrom:v7 to:v49 using:v11 directionsOptions:v50];
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

- (void)_treatTrackingModeFrom:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained && [v5 trackingModeSpecified])
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 URLHandler:self setUserTrackingMode:{objc_msgSend(v5, "trackingMode")}];
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

- (BOOL)_treatPinPositionFrom:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2082;
      *&buf[14] = "nil == parsed";
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_53;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    if (![(_MKURLHandler *)self _treatRegionFrom:v5])
    {
      [(_MKURLHandler *)self _treatSearchRegionFrom:v5];
    }

    v7 = [v5 contentProvider];
    v8 = [v5 contentProviderID];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = [v10 URLHandler:self showExternalBusinessID:v9 ofContentProvider:v7];

LABEL_52:
LABEL_53:

      goto LABEL_54;
    }

    v13 = [v5 searchUID];
    v14 = [v5 searchProviderID];
    if (v13)
    {
      v15 = v14;
      v16 = [v5 directionsDestinationAddressString];
      v17 = [v16 length];

      if (!v17)
      {
        v47 = objc_loadWeakRetained(&self->_delegate);
        [v5 centerCoordinate];
        v49 = v48;
        v51 = v50;
        v52 = [v5 searchQuery];
        v11 = [v47 URLHandler:self showMUID:v13 resultProviderID:v15 coordinate:v52 query:{v49, v51}];

        goto LABEL_52;
      }
    }

    v18 = [v5 cnContactIdentifier];
    v19 = [v5 cnAddressIdentifier];
    v81 = v18;
    if ([v18 length])
    {
      if ([v19 length])
      {
        v20 = objc_loadWeakRetained(&self->_delegate);
        v21 = [v20 URLHandler:self showAddressByCNContactIdentifier:v18 addressIdentifier:v19];

        if (v21)
        {
          v11 = 1;
LABEL_51:

          goto LABEL_52;
        }
      }
    }

    v22 = [v5 abRecordID];
    v23 = [v5 abAddressID];
    v24 = v23;
    v80 = v22;
    if (v22)
    {
      if (v23)
      {
        v25 = objc_loadWeakRetained(&self->_delegate);
        v26 = [v25 URLHandler:self showAddressByRecordID:v22 addressID:v24];

        if (v26)
        {
          v11 = 1;
LABEL_50:

          goto LABEL_51;
        }
      }
    }

    v79 = v24;
    [v5 centerCoordinate];
    v28 = v27;
    v30 = v29;
    *buf = v27;
    *&buf[8] = v29;
    v31 = fabs(v29) <= 180.0;
    v32 = fabs(v27) <= 90.0 && v31;
    v33 = [v5 addressString];
    v34 = [v33 length];

    v35 = [v5 searchQuery];
    v36 = [v35 length];

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
            v45 = [v5 addressString];
            v46 = [v5 searchQuery];
            v11 = [v44 URLHandler:self showAddress:v45 label:v46 at:{v28, v30}];

LABEL_49:
            v24 = v79;
            goto LABEL_50;
          }
        }
      }

      v60 = +[MKMapService sharedService];
      v61 = [v5 addressString];
      [v5 searchQuery];
      v63 = v62 = v19;
      v64 = [v60 ticketForPlaceRefinementRequestWithCoordinate:buf addressLine:v61 placeName:v63 traits:0];

      v19 = v62;
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __39___MKURLHandler__treatPinPositionFrom___block_invoke;
      v87[3] = &unk_1E76C6FA0;
      v90 = *buf;
      v88 = v5;
      v89 = self;
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
        v65 = v19;
        v66 = objc_loadWeakRetained(&self->_delegate);
        v67 = objc_opt_respondsToSelector();

        if (v67 & 1) != 0 && (v68 = objc_loadWeakRetained(&self->_delegate), v69 = [v68 URLHandlerShouldPerformReverseGeocoding:self], v68, (v69 & 1) == 0) && (v70 = objc_loadWeakRetained(&self->_delegate), v71 = objc_opt_respondsToSelector(), v70, (v71))
        {
          v72 = objc_loadWeakRetained(&self->_delegate);
          v73 = [v5 searchQuery];
          v11 = [v72 URLHandler:self showLabel:v73 at:{v28, v30}];
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
          v83 = v5;
          v84 = self;
          v86 = v32;
          [v75 submitWithHandler:v82 networkActivity:0];

          v11 = 1;
        }

        v19 = v65;
        goto LABEL_49;
      }

      if (!v34 || (v77 = v19, v53 = objc_loadWeakRetained(&self->_delegate), [v5 addressString], v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "searchQuery"), v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v53, "URLHandler:showAddress:label:", self, v54, v55), v55, v54, v53, v19 = v77, (v56 & 1) == 0))
      {
        if (!v32 || (v57 = v19, v58 = objc_loadWeakRetained(&self->_delegate), v59 = [v58 URLHandler:self showMapWithoutPinAt:{v28, v30}], v58, v19 = v57, (v59 & 1) == 0))
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

- (void)_treatMapTypeFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v7 = [v5 mapType];
      if (v7 < 5 || v7 == 108 || v7 == 104)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 URLHandler:self setMapType:{objc_msgSend(v5, "mapType")}];
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

- (BOOL)handleURL:(id)a3 sourceApplication:(id)a4 context:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = GEOFindOrCreateLog();
  v13 = v12;
  if (!v9)
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
    v22 = v9;
    _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_DEBUG, "Handling URL: '%{private}@'", &v21, 0xCu);
  }

  v14 = [_MKURLHandler _MKGetURLSchemeTypeFor:v9];
  v15 = 0;
  if (v14 <= 3)
  {
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v17 = [(_MKURLHandler *)self _handleSharedMapURL:v9 sourceApplication:v10 context:v11];
      }

      else
      {
        v17 = [(_MKURLHandler *)self _handleMapItemURL:v9 sourceApplication:v10 context:v11];
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
      v19 = [v9 scheme];
      v21 = 138543362;
      v22 = v19;
      _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_ERROR, "Scheme '%{public}@' is not supported.", &v21, 0xCu);
    }

    goto LABEL_12;
  }

  if (v14 <= 5)
  {
    if (v14 == 4)
    {
      v17 = [(_MKURLHandler *)self _handleMapItemHandlesURL:v9 sourceApplication:v10 context:v11];
      goto LABEL_27;
    }

LABEL_20:
    v17 = [(_MKURLHandler *)self _handleMapsURL:v9 sourceApplication:v10 context:v11];
LABEL_27:
    v15 = v17;
    goto LABEL_28;
  }

  if (v14 == 6)
  {
    v17 = [(_MKURLHandler *)self _handleShortURL:v9 sourceApplication:v10 context:v11];
    goto LABEL_27;
  }

  if (v14 == 7)
  {
    goto LABEL_20;
  }

LABEL_28:

  return v15;
}

+ (unsigned)_MKGetURLSchemeTypeFor:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {

    return _MKURLGetSchemeType(a3);
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