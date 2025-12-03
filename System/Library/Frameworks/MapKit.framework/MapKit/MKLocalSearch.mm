@interface MKLocalSearch
- (BOOL)isSearching;
- (MKLocalSearch)initWithPointsOfInterestRequest:(MKLocalPointsOfInterestRequest *)request;
- (MKLocalSearch)initWithRequest:(MKLocalSearchRequest *)request;
- (id)_ticketForSearchRequest:(id)request;
- (void)_handleMapItems:(id)items boundingRegion:(id)region error:(id)error withCompletionHandler:(id)handler;
- (void)_startPointsOfInterestFetchWithCompletionHandler:(id)handler queue:(id)queue;
- (void)_startWithCompletionHandler:(id)handler queue:(id)queue;
- (void)cancel;
- (void)startWithCompletionHandler:(MKLocalSearchCompletionHandler)completionHandler;
@end

@implementation MKLocalSearch

- (void)_handleMapItems:(id)items boundingRegion:(id)region error:(id)error withCompletionHandler:(id)handler
{
  itemsCopy = items;
  regionCopy = region;
  errorCopy = error;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (errorCopy)
    {
      _mapkit_error = [errorCopy _mapkit_error];
    }

    else
    {
      if ([itemsCopy count])
      {
        v13 = [[MKLocalSearchResponse alloc] _initWithMapItems:itemsCopy boundingRegion:regionCopy];
        handlerCopy[2](handlerCopy, v13, 0);
        goto LABEL_7;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      _mapkit_error = [v14 initWithDomain:MKErrorDomain code:1 userInfo:0];
    }

    v13 = _mapkit_error;
    handlerCopy[2](handlerCopy, 0, _mapkit_error);
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

- (void)_startPointsOfInterestFetchWithCompletionHandler:(id)handler queue:(id)queue
{
  v47[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  queueCopy = queue;
  v8 = queueCopy;
  if (handlerCopy)
  {
    if (!queueCopy)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MKLocalSearch must have valid dispatch_queue"];
      v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
      [v12 raise];
    }

    pointOfInterestFilter = [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest pointOfInterestFilter];
    _excludesAllCategories = [pointOfInterestFilter _excludesAllCategories];

    if (_excludesAllCategories)
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
      v44 = handlerCopy;
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
        v41 = handlerCopy;
        v19 = v22;
        dispatch_async(v8, v39);

        v20 = v41;
      }

      else
      {
        self->_searching = 1;
        _maxResultCount = [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest _maxResultCount];
        if ([(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest _createdFromRegion])
        {
          v24 = MEMORY[0x1E69A2200];
          [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest region];
          v25 = [v24 _mapkit_mapRegionForCoordinateRegion:?];
          pointOfInterestFilter3 = +[MKMapService sharedService];
          pointOfInterestFilter2 = [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest pointOfInterestFilter];
          v28 = [pointOfInterestFilter3 ticketForSpatialPlaceLookupWithMapRegion:v25 pointOfInterestFilter:pointOfInterestFilter2 maxResultCount:_maxResultCount];
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
          pointOfInterestFilter3 = [(MKLocalPointsOfInterestRequest *)self->_pointsOfInterestRequest pointOfInterestFilter];
          v36 = [v25 ticketForSpatialPlaceLookupWithCenterCoordinate:pointOfInterestFilter3 radius:_maxResultCount pointOfInterestFilter:v31 maxResultCount:{v33, v35}];
          pointOfInterestFilter2 = self->_spatialPlaceLookupTicket;
          self->_spatialPlaceLookupTicket = v36;
        }

        v19 = self->_spatialPlaceLookupTicket;
        os_unfair_lock_unlock(&self->_stateLock);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __72__MKLocalSearch__startPointsOfInterestFetchWithCompletionHandler_queue___block_invoke_2;
        v37[3] = &unk_1E76CA920;
        v37[4] = self;
        v38 = handlerCopy;
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

- (id)_ticketForSearchRequest:(id)request
{
  requestCopy = request;
  _merchantParameters = [requestCopy _merchantParameters];

  if (_merchantParameters)
  {
    _merchantParameters2 = [requestCopy _merchantParameters];
    transactionLocation = [_merchantParameters2 transactionLocation];

    if (transactionLocation)
    {
      v7 = objc_alloc(MEMORY[0x1E69A1E70]);
      _merchantParameters3 = [requestCopy _merchantParameters];
      transactionLocation2 = [_merchantParameters3 transactionLocation];
      v10 = [v7 initWithCLLocation:transactionLocation2];
    }

    else
    {
      v10 = 0;
    }

    _deviceLocation = [requestCopy _deviceLocation];

    v87 = v10;
    if (_deviceLocation)
    {
      v19 = +[MKMapService sharedService];
      defaultTraits = [v19 defaultTraits];

      v21 = objc_alloc(MEMORY[0x1E69A1E70]);
      _deviceLocation2 = [requestCopy _deviceLocation];
      v23 = [v21 initWithCLLocation:_deviceLocation2];
      [defaultTraits setDeviceLocation:v23];
    }

    else
    {
      defaultTraits = 0;
    }

    v83 = defaultTraits;
    v88 = +[MKMapService sharedService];
    _merchantParameters4 = [requestCopy _merchantParameters];
    merchantCode = [_merchantParameters4 merchantCode];
    _merchantParameters5 = [requestCopy _merchantParameters];
    rawMerchantCode = [_merchantParameters5 rawMerchantCode];
    _merchantParameters6 = [requestCopy _merchantParameters];
    industryCategory = [_merchantParameters6 industryCategory];
    _merchantParameters7 = [requestCopy _merchantParameters];
    industryCode = [_merchantParameters7 industryCode];
    _merchantParameters8 = [requestCopy _merchantParameters];
    paymentNetwork = [_merchantParameters8 paymentNetwork];
    _merchantParameters9 = [requestCopy _merchantParameters];
    transactionDate = [_merchantParameters9 transactionDate];
    v80 = defaultTraits;
    defaultTraits3 = v87;
    v31 = rawMerchantCode;
    v32 = [v88 ticketForMerchantCode:merchantCode rawMerchantCode:rawMerchantCode industryCategory:industryCategory industryCode:industryCode paymentNetwork:paymentNetwork transactionDate:transactionDate transactionLocation:v87 traits:v80];

    _phoneNumbers2 = v83;
    goto LABEL_20;
  }

  _externalTransitLookupParameters = [requestCopy _externalTransitLookupParameters];

  if (_externalTransitLookupParameters)
  {
    _externalTransitLookupParameters2 = [requestCopy _externalTransitLookupParameters];
    transactionLocation3 = [_externalTransitLookupParameters2 transactionLocation];

    if (transactionLocation3)
    {
      v14 = objc_alloc(MEMORY[0x1E69A1E70]);
      _externalTransitLookupParameters3 = [requestCopy _externalTransitLookupParameters];
      transactionLocation4 = [_externalTransitLookupParameters3 transactionLocation];
      defaultTraits3 = [v14 initWithCLLocation:transactionLocation4];
    }

    else
    {
      defaultTraits3 = 0;
    }

    _deviceLocation3 = [requestCopy _deviceLocation];

    if (_deviceLocation3)
    {
      v38 = +[MKMapService sharedService];
      defaultTraits2 = [v38 defaultTraits];

      v40 = objc_alloc(MEMORY[0x1E69A1E70]);
      _deviceLocation4 = [requestCopy _deviceLocation];
      v42 = [v40 initWithCLLocation:_deviceLocation4];
      [defaultTraits2 setDeviceLocation:v42];
    }

    else
    {
      defaultTraits2 = 0;
    }

    v89 = +[MKMapService sharedService];
    _externalTransitLookupParameters4 = [requestCopy _externalTransitLookupParameters];
    stationCodes = [_externalTransitLookupParameters4 stationCodes];
    _externalTransitLookupParameters5 = [requestCopy _externalTransitLookupParameters];
    sourceIdentifier = [_externalTransitLookupParameters5 sourceIdentifier];
    _externalTransitLookupParameters6 = [requestCopy _externalTransitLookupParameters];
    transactionDate2 = [_externalTransitLookupParameters6 transactionDate];
    [v89 ticketForExternalTransitStationCodes:stationCodes sourceID:sourceIdentifier transactionDate:transactionDate2 transactionLocation:defaultTraits3 traits:defaultTraits2];
    v32 = v49 = defaultTraits2;

    _phoneNumbers2 = v49;
    goto LABEL_20;
  }

  _phoneNumbers = [requestCopy _phoneNumbers];
  v35 = [_phoneNumbers count];

  if (v35)
  {
    defaultTraits3 = +[MKMapService sharedService];
    _phoneNumbers2 = [requestCopy _phoneNumbers];
    v36 = [defaultTraits3 ticketForPhoneNumbers:_phoneNumbers2 allowCellularDataForLookup:objc_msgSend(requestCopy traits:{"_allowPhoneNumberLookupUsingCellular"), 0}];
LABEL_14:
    v32 = v36;
    goto LABEL_20;
  }

  _muids = [requestCopy _muids];
  v52 = [_muids count];

  if (v52)
  {
    if ([requestCopy _hasRegion])
    {
      v53 = +[MKMapService sharedService];
      defaultTraits3 = [v53 defaultTraits];

      v54 = MEMORY[0x1E69A2200];
      [requestCopy region];
      v55 = [v54 _mapkit_mapRegionForCoordinateRegion:?];
      [defaultTraits3 setMapRegion:v55];
    }

    else
    {
      defaultTraits3 = 0;
    }

    _phoneNumbers2 = +[MKMapService sharedService];
    _muids2 = [requestCopy _muids];
    v32 = [_phoneNumbers2 ticketForMUIDs:_muids2 resultProviderID:objc_msgSend(requestCopy contentProvider:"_resultProviderID") traits:{0, defaultTraits3}];
  }

  else
  {
    _canonicalSearchString = [requestCopy _canonicalSearchString];
    if (_canonicalSearchString)
    {
      v57 = _canonicalSearchString;
      _canonicalSearchString2 = [requestCopy _canonicalSearchString];
      v59 = [_canonicalSearchString2 length];

      if (v59)
      {
        defaultTraits3 = +[MKMapService sharedService];
        _phoneNumbers2 = [requestCopy _canonicalSearchString];
        v36 = [defaultTraits3 ticketForCanonicalLocationSearchQueryString:_phoneNumbers2 traits:0];
        goto LABEL_14;
      }
    }

    v61 = +[MKMapService sharedService];
    defaultTraits3 = [v61 defaultTraits];

    if ([requestCopy _hasRegion])
    {
      v62 = MEMORY[0x1E69A2200];
      [requestCopy region];
      v63 = [v62 _mapkit_mapRegionForCoordinateRegion:?];
      [defaultTraits3 setMapRegion:v63];
    }

    geoCompletionItem = [requestCopy geoCompletionItem];
    if (geoCompletionItem)
    {
      v65 = geoCompletionItem;
      hasSentFeedbackForCompletion = [requestCopy hasSentFeedbackForCompletion];

      if ((hasSentFeedbackForCompletion & 1) == 0)
      {
        [requestCopy setHasSentFeedbackForCompletion:1];
        geoCompletionItem2 = [requestCopy geoCompletionItem];
        [geoCompletionItem2 sendFeedback];
      }
    }

    _phoneNumbers2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    pointOfInterestFilter = [requestCopy pointOfInterestFilter];
    _geoPOICategoryFilter = [pointOfInterestFilter _geoPOICategoryFilter];

    if (_geoPOICategoryFilter)
    {
      [_phoneNumbers2 addObject:_geoPOICategoryFilter];
    }

    addressFilter = [requestCopy addressFilter];

    if (addressFilter)
    {
      addressFilter2 = [requestCopy addressFilter];
      _geoAddressFilter = [addressFilter2 _geoAddressFilter];

      if (_geoAddressFilter)
      {
        [_phoneNumbers2 addObject:_geoAddressFilter];
      }
    }

    if ([requestCopy resultTypes])
    {
      resultTypes = [requestCopy resultTypes];
      v74 = _MKLinkedOnOrAfterReleaseSet(3852);
      if ((resultTypes & 2) != 0 && !v74)
      {
        resultTypes |= 4uLL;
      }

      v76 = [objc_alloc(MEMORY[0x1E69A2498]) initWithResultTypes:resultTypes];
      [_phoneNumbers2 addObject:v76];
    }

    if ([requestCopy regionPriority] == 1)
    {
      v77 = objc_alloc_init(MEMORY[0x1E69A25D0]);
      [_phoneNumbers2 addObject:v77];
    }

    _muids2 = +[MKMapService sharedService];
    naturalLanguageQuery = [requestCopy naturalLanguageQuery];
    geoCompletionItem3 = [requestCopy geoCompletionItem];
    v32 = [_muids2 _mk_ticketForSearchQuery:naturalLanguageQuery completionItem:geoCompletionItem3 traits:defaultTraits3 filters:_phoneNumbers2];
  }

LABEL_20:

  return v32;
}

- (void)_startWithCompletionHandler:(id)handler queue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  v8 = queueCopy;
  if (!handlerCopy)
  {
    goto LABEL_13;
  }

  if (!queueCopy)
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
    selfCopy = self;
    v25 = handlerCopy;
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
  v28 = handlerCopy;
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