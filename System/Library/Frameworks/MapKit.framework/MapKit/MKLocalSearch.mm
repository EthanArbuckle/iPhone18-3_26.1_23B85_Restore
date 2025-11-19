@interface MKLocalSearch
- (BOOL)isSearching;
- (MKLocalSearch)initWithPointsOfInterestRequest:(MKLocalPointsOfInterestRequest *)request;
- (MKLocalSearch)initWithRequest:(MKLocalSearchRequest *)request;
- (id)_ticketForSearchRequest:(id)a3;
- (void)_handleMapItems:(id)a3 boundingRegion:(id)a4 error:(id)a5 withCompletionHandler:(id)a6;
- (void)_startPointsOfInterestFetchWithCompletionHandler:(id)a3 queue:(id)a4;
- (void)_startWithCompletionHandler:(id)a3 queue:(id)a4;
- (void)cancel;
- (void)startWithCompletionHandler:(MKLocalSearchCompletionHandler)completionHandler;
@end

@implementation MKLocalSearch

- (void)_handleMapItems:(id)a3 boundingRegion:(id)a4 error:(id)a5 withCompletionHandler:(id)a6
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    if (v10)
    {
      v12 = [v10 _mapkit_error];
    }

    else
    {
      if ([v15 count])
      {
        v13 = [[MKLocalSearchResponse alloc] _initWithMapItems:v15 boundingRegion:v9];
        v11[2](v11, v13, 0);
        goto LABEL_7;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = [v14 initWithDomain:MKErrorDomain code:1 userInfo:0];
    }

    v13 = v12;
    v11[2](v11, 0, v12);
LABEL_7:
  }
}

- (BOOL)isSearching
{
  os_unfair_lock_lock_with_options();
  searching = self->_searching;
  os_unfair_lock_unlock(&self->_stateLock);
  return searching;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_searching && !self->_cancelled)
  {
    self->_cancelled = 1;
    [(MKMapServiceTicket *)self->_ticket cancel];
    [(MKMapServiceSpatialPlaceLookupTicket *)self->_spatialPlaceLookupTicket cancel];
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)_startPointsOfInterestFetchWithCompletionHandler:(id)a3 queue:(id)a4
{
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MKLocalSearch must have valid dispatch_queue"];
      v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
      [v12 raise];
    }

    v13 = [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest pointOfInterestFilter];
    v14 = [v13 _excludesAllCategories];

    if (v14)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MKLocalPointsOfInterestRequest configured to exclude all categories - This request cannot fetch any POIs", buf, 2u);
      }

      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      v16 = MKErrorDomain;
      v46 = *MEMORY[0x1E696A278];
      v47[0] = @"MKLocalPointsOfInterestRequest configured to exclude all categories - This request cannot fetch any POIs";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v18 = [v15 initWithDomain:v16 code:1 userInfo:v17];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__MKLocalSearch__startPointsOfInterestFetchWithCompletionHandler_queue___block_invoke;
      block[3] = &unk_1E76CDA20;
      v43 = v18;
      v44 = v6;
      v19 = v18;
      dispatch_async(v8, block);

      v20 = v44;
    }

    else
    {
      os_unfair_lock_lock(&self->_stateLock);
      if (self->_searching)
      {
        os_unfair_lock_unlock(&self->_stateLock);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot call [MKLocalSearch startWithCompletionHandler:] on a requester which is already searching", buf, 2u);
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = [v21 initWithDomain:MKErrorDomain code:1 userInfo:0];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __72__MKLocalSearch__startPointsOfInterestFetchWithCompletionHandler_queue___block_invoke_27;
        v39[3] = &unk_1E76CDA20;
        v40 = v22;
        v41 = v6;
        v19 = v22;
        dispatch_async(v8, v39);

        v20 = v41;
      }

      else
      {
        self->_searching = 1;
        v23 = [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest _maxResultCount];
        if ([(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest _createdFromRegion])
        {
          v24 = MEMORY[0x1E69A2200];
          [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest region];
          v25 = [v24 _mapkit_mapRegionForCoordinateRegion:?];
          v26 = +[MKMapService sharedService];
          v27 = [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest pointOfInterestFilter];
          v28 = [v26 ticketForSpatialPlaceLookupWithMapRegion:v25 pointOfInterestFilter:v27 maxResultCount:v23];
          spatialPlaceLookupTicket = self->_spatialPlaceLookupTicket;
          self->_spatialPlaceLookupTicket = v28;
        }

        else
        {
          v25 = +[MKMapService sharedService];
          [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest coordinate];
          v31 = v30;
          v33 = v32;
          [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest radius];
          v35 = v34;
          v26 = [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest pointOfInterestFilter];
          v36 = [v25 ticketForSpatialPlaceLookupWithCenterCoordinate:v26 radius:v23 pointOfInterestFilter:v31 maxResultCount:{v33, v35}];
          v27 = self->_spatialPlaceLookupTicket;
          self->_spatialPlaceLookupTicket = v36;
        }

        v19 = self->_spatialPlaceLookupTicket;
        os_unfair_lock_unlock(&self->_stateLock);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __72__MKLocalSearch__startPointsOfInterestFetchWithCompletionHandler_queue___block_invoke_2;
        v37[3] = &unk_1E76CA920;
        v37[4] = self;
        v38 = v6;
        [(MKMapServiceSpatialPlaceLookupTicket *)v19 submitWithHandler:v37 queue:MEMORY[0x1E69E96A0]];
        v20 = v38;
      }
    }
  }
}

void __72__MKLocalSearch__startPointsOfInterestFetchWithCompletionHandler_queue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  os_unfair_lock_lock_with_options();
  v9 = [*(*(a1 + 32) + 32) boundingRegion];
  *(*(a1 + 32) + 44) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  [*(a1 + 32) _handleMapItems:v6 boundingRegion:v9 error:v5 withCompletionHandler:*(a1 + 40)];
}

- (void)startWithCompletionHandler:(MKLocalSearchCompletionHandler)completionHandler
{
  if (self->_request)
  {
    [(MKLocalSearch *)self _startWithCompletionHandler:completionHandler queue:MEMORY[0x1E69E96A0]];
  }

  else
  {
    [(MKLocalSearch *)self _startPointsOfInterestFetchWithCompletionHandler:completionHandler queue:MEMORY[0x1E69E96A0]];
  }
}

- (id)_ticketForSearchRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 _merchantParameters];

  if (v4)
  {
    v5 = [v3 _merchantParameters];
    v6 = [v5 transactionLocation];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E69A1E70]);
      v8 = [v3 _merchantParameters];
      v9 = [v8 transactionLocation];
      v10 = [v7 initWithCLLocation:v9];
    }

    else
    {
      v10 = 0;
    }

    v18 = [v3 _deviceLocation];

    v87 = v10;
    if (v18)
    {
      v19 = +[MKMapService sharedService];
      v20 = [v19 defaultTraits];

      v21 = objc_alloc(MEMORY[0x1E69A1E70]);
      v22 = [v3 _deviceLocation];
      v23 = [v21 initWithCLLocation:v22];
      [v20 setDeviceLocation:v23];
    }

    else
    {
      v20 = 0;
    }

    v83 = v20;
    v88 = +[MKMapService sharedService];
    v86 = [v3 _merchantParameters];
    v81 = [v86 merchantCode];
    v85 = [v3 _merchantParameters];
    v24 = [v85 rawMerchantCode];
    v84 = [v3 _merchantParameters];
    v25 = [v84 industryCategory];
    v82 = [v3 _merchantParameters];
    v26 = [v82 industryCode];
    v27 = [v3 _merchantParameters];
    v28 = [v27 paymentNetwork];
    v29 = [v3 _merchantParameters];
    v30 = [v29 transactionDate];
    v80 = v20;
    v17 = v87;
    v31 = v24;
    v32 = [v88 ticketForMerchantCode:v81 rawMerchantCode:v24 industryCategory:v25 industryCode:v26 paymentNetwork:v28 transactionDate:v30 transactionLocation:v87 traits:v80];

    v33 = v83;
    goto LABEL_20;
  }

  v11 = [v3 _externalTransitLookupParameters];

  if (v11)
  {
    v12 = [v3 _externalTransitLookupParameters];
    v13 = [v12 transactionLocation];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E69A1E70]);
      v15 = [v3 _externalTransitLookupParameters];
      v16 = [v15 transactionLocation];
      v17 = [v14 initWithCLLocation:v16];
    }

    else
    {
      v17 = 0;
    }

    v37 = [v3 _deviceLocation];

    if (v37)
    {
      v38 = +[MKMapService sharedService];
      v39 = [v38 defaultTraits];

      v40 = objc_alloc(MEMORY[0x1E69A1E70]);
      v41 = [v3 _deviceLocation];
      v42 = [v40 initWithCLLocation:v41];
      [v39 setDeviceLocation:v42];
    }

    else
    {
      v39 = 0;
    }

    v89 = +[MKMapService sharedService];
    v43 = [v3 _externalTransitLookupParameters];
    v44 = [v43 stationCodes];
    v45 = [v3 _externalTransitLookupParameters];
    v46 = [v45 sourceIdentifier];
    v47 = [v3 _externalTransitLookupParameters];
    v48 = [v47 transactionDate];
    [v89 ticketForExternalTransitStationCodes:v44 sourceID:v46 transactionDate:v48 transactionLocation:v17 traits:v39];
    v32 = v49 = v39;

    v33 = v49;
    goto LABEL_20;
  }

  v34 = [v3 _phoneNumbers];
  v35 = [v34 count];

  if (v35)
  {
    v17 = +[MKMapService sharedService];
    v33 = [v3 _phoneNumbers];
    v36 = [v17 ticketForPhoneNumbers:v33 allowCellularDataForLookup:objc_msgSend(v3 traits:{"_allowPhoneNumberLookupUsingCellular"), 0}];
LABEL_14:
    v32 = v36;
    goto LABEL_20;
  }

  v51 = [v3 _muids];
  v52 = [v51 count];

  if (v52)
  {
    if ([v3 _hasRegion])
    {
      v53 = +[MKMapService sharedService];
      v17 = [v53 defaultTraits];

      v54 = MEMORY[0x1E69A2200];
      [v3 region];
      v55 = [v54 _mapkit_mapRegionForCoordinateRegion:?];
      [v17 setMapRegion:v55];
    }

    else
    {
      v17 = 0;
    }

    v33 = +[MKMapService sharedService];
    v60 = [v3 _muids];
    v32 = [v33 ticketForMUIDs:v60 resultProviderID:objc_msgSend(v3 contentProvider:"_resultProviderID") traits:{0, v17}];
  }

  else
  {
    v56 = [v3 _canonicalSearchString];
    if (v56)
    {
      v57 = v56;
      v58 = [v3 _canonicalSearchString];
      v59 = [v58 length];

      if (v59)
      {
        v17 = +[MKMapService sharedService];
        v33 = [v3 _canonicalSearchString];
        v36 = [v17 ticketForCanonicalLocationSearchQueryString:v33 traits:0];
        goto LABEL_14;
      }
    }

    v61 = +[MKMapService sharedService];
    v17 = [v61 defaultTraits];

    if ([v3 _hasRegion])
    {
      v62 = MEMORY[0x1E69A2200];
      [v3 region];
      v63 = [v62 _mapkit_mapRegionForCoordinateRegion:?];
      [v17 setMapRegion:v63];
    }

    v64 = [v3 geoCompletionItem];
    if (v64)
    {
      v65 = v64;
      v66 = [v3 hasSentFeedbackForCompletion];

      if ((v66 & 1) == 0)
      {
        [v3 setHasSentFeedbackForCompletion:1];
        v67 = [v3 geoCompletionItem];
        [v67 sendFeedback];
      }
    }

    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v68 = [v3 pointOfInterestFilter];
    v69 = [v68 _geoPOICategoryFilter];

    if (v69)
    {
      [v33 addObject:v69];
    }

    v70 = [v3 addressFilter];

    if (v70)
    {
      v71 = [v3 addressFilter];
      v72 = [v71 _geoAddressFilter];

      if (v72)
      {
        [v33 addObject:v72];
      }
    }

    if ([v3 resultTypes])
    {
      v73 = [v3 resultTypes];
      v74 = _MKLinkedOnOrAfterReleaseSet(3852);
      if ((v73 & 2) != 0 && !v74)
      {
        v73 |= 4uLL;
      }

      v76 = [objc_alloc(MEMORY[0x1E69A2498]) initWithResultTypes:v73];
      [v33 addObject:v76];
    }

    if ([v3 regionPriority] == 1)
    {
      v77 = objc_alloc_init(MEMORY[0x1E69A25D0]);
      [v33 addObject:v77];
    }

    v60 = +[MKMapService sharedService];
    v78 = [v3 naturalLanguageQuery];
    v79 = [v3 geoCompletionItem];
    v32 = [v60 _mk_ticketForSearchQuery:v78 completionItem:v79 traits:v17 filters:v33];
  }

LABEL_20:

  return v32;
}

- (void)_startWithCompletionHandler:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_13;
  }

  if (!v7)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MKLocalSearch must have valid dispatch_queue"];
    v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
    [v12 raise];
  }

  os_unfair_lock_lock_with_options();
  if (!self->_searching)
  {
    self->_searching = 1;
    os_unfair_lock_unlock(&self->_stateLock);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v16 = __51__MKLocalSearch__startWithCompletionHandler_queue___block_invoke_2;
    v21 = __51__MKLocalSearch__startWithCompletionHandler_queue___block_invoke_2;
    v22 = &unk_1E76CAA70;
    v23 = self;
    v25 = v6;
    v24 = v8;
    v17 = v24;
    v18 = v20;
    if (v17 == MEMORY[0x1E69E96A0])
    {
      if (![MEMORY[0x1E696AF00] isMainThread])
      {
        v19 = MEMORY[0x1E69E96A0];
        dispatch_async(MEMORY[0x1E69E96A0], v18);

        goto LABEL_12;
      }

      v16 = v21;
    }

    v16(v18);
LABEL_12:

    goto LABEL_13;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot call [MKLocalSearch startWithCompletionHandler:] on a requester which is already searching", buf, 2u);
  }

  v13 = objc_alloc(MEMORY[0x1E696ABC0]);
  v14 = [v13 initWithDomain:MKErrorDomain code:1 userInfo:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MKLocalSearch__startWithCompletionHandler_queue___block_invoke;
  block[3] = &unk_1E76CDA20;
  v27 = v14;
  v28 = v6;
  v15 = v14;
  dispatch_async(v8, block);

LABEL_13:
}

void __51__MKLocalSearch__startWithCompletionHandler_queue___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = *(a1 + 32);
  if (*(v2 + 45) == 1)
  {
    v3 = (v2 + 40);

    os_unfair_lock_unlock(v3);
  }

  else
  {
    v4 = [v2 _ticketForSearchRequest:*(v2 + 8)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    os_unfair_lock_unlock((v7 + 40));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__MKLocalSearch__startWithCompletionHandler_queue___block_invoke_3;
    v9[3] = &unk_1E76CA920;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    [v8 submitWithHandler:v9 queue:*(a1 + 40) networkActivity:0];
  }
}

void __51__MKLocalSearch__startWithCompletionHandler_queue___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  os_unfair_lock_lock_with_options();
  v9 = [*(*(a1 + 32) + 16) boundingRegion];
  *(*(a1 + 32) + 44) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  [*(a1 + 32) _handleMapItems:v6 boundingRegion:v9 error:v5 withCompletionHandler:*(a1 + 40)];
}

- (MKLocalSearch)initWithPointsOfInterestRequest:(MKLocalPointsOfInterestRequest *)request
{
  v4 = request;
  v15.receiver = self;
  v15.super_class = MKLocalSearch;
  v5 = [(MKLocalSearch *)&v15 init];
  if (v5)
  {
    if (!v4)
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot initialize MKLocalSearch with nil request"];
      v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
      v14 = v13;

      objc_exception_throw(v13);
    }

    v6 = [(MKLocalPointsOfInterestRequest *)v4 copy];
    pointsOfInterestRequest = v5->_pointsOfInterestRequest;
    v5->_pointsOfInterestRequest = v6;

    v5->_stateLock._os_unfair_lock_opaque = 0;
    v8 = v5;
  }

  return v5;
}

- (MKLocalSearch)initWithRequest:(MKLocalSearchRequest *)request
{
  v4 = request;
  v15.receiver = self;
  v15.super_class = MKLocalSearch;
  v5 = [(MKLocalSearch *)&v15 init];
  if (v5)
  {
    if (!v4)
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot initialize MKLocalSearch with nil request"];
      v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
      v14 = v13;

      objc_exception_throw(v13);
    }

    v6 = [(MKLocalSearchRequest *)v4 copy];
    v7 = v5->_request;
    v5->_request = v6;

    v5->_stateLock._os_unfair_lock_opaque = 0;
    v8 = v5;
  }

  return v5;
}

@end