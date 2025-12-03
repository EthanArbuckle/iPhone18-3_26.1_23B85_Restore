@interface MKDirections
- (BOOL)isCalculating;
- (MKDirections)initWithRequest:(MKDirectionsRequest *)request;
- (void)_calculateDirectionsWithTraits:(id)traits completionHandler:(id)handler;
- (void)_calculateETAWithTraits:(id)traits completionHandler:(id)handler;
- (void)_cleanupLocationOperation;
- (void)_establishCurrentLocationAndThen:(id)then;
- (void)_issueDirectionsRequestForOrigin:(id)origin destination:(id)destination traits:(id)traits completionHandler:(id)handler;
- (void)_issueETARequestForOrigin:(id)origin destination:(id)destination completionHandler:(id)handler;
- (void)_performWithValidCurrentLocationAndWaypointsForQuickETA:(BOOL)a traits:(id)traits handler:(id)handler;
- (void)calculateDirectionsWithCompletionHandler:(MKDirectionsHandler)completionHandler;
- (void)calculateETAWithCompletionHandler:(MKETAHandler)completionHandler;
- (void)cancel;
- (void)dealloc;
@end

@implementation MKDirections

- (void)calculateETAWithCompletionHandler:(MKETAHandler)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v5 = +[MKMapService sharedService];
    v6 = [v5 defaultTraitsWithTransportType:{-[MKDirectionsRequest transportType](self->_request, "transportType")}];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MKDirections_calculateETAWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E76CCA20;
    v7[4] = self;
    v8 = v4;
    [(MKDirections *)self _calculateETAWithTraits:v6 completionHandler:v7];
  }
}

void __50__MKDirections_calculateETAWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8)
{
  v35 = a2;
  v14 = a3;
  v15 = a7;
  if (a8)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

  v16 = a4;
  v17 = [[MKETAResponse alloc] initWithSource:v35 destination:v14 expectedTravelTime:v15 distance:a4 sortedETAs:a6];
  v18 = [(MKETAResponse *)v17 expectedDepartureDate];
  if (!v18 || (v19 = v18, [(MKETAResponse *)v17 expectedArrivalDate], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    v21 = [*(*(a1 + 32) + 8) departureDate];

    v22 = *(*(a1 + 32) + 8);
    if (v21)
    {
      v23 = [v22 departureDate];
      [(MKETAResponse *)v17 setExpectedDepartureDate:v23];

      v24 = MEMORY[0x1E695DF00];
      [(MKETAResponse *)v17 expectedTravelTime];
      v16 = v25;
      v26 = [*(*(a1 + 32) + 8) departureDate];
    }

    else
    {
      v29 = [v22 arrivalDate];

      if (v29)
      {
        v30 = [*(*(a1 + 32) + 8) arrivalDate];
        [(MKETAResponse *)v17 setExpectedArrivalDate:v30];

        v31 = MEMORY[0x1E695DF00];
        [(MKETAResponse *)v17 expectedTravelTime];
        v33 = -v32;
        v27 = [*(*(a1 + 32) + 8) arrivalDate];
        v28 = [v31 dateWithTimeInterval:v27 sinceDate:v33];
        [(MKETAResponse *)v17 setExpectedDepartureDate:v28];
        goto LABEL_10;
      }

      v34 = [MEMORY[0x1E695DF00] date];
      [(MKETAResponse *)v17 setExpectedDepartureDate:v34];

      v24 = MEMORY[0x1E695DF00];
      v26 = [(MKETAResponse *)v17 expectedDepartureDate];
    }

    v27 = v26;
    v28 = [v24 dateWithTimeInterval:v26 sinceDate:v16];
    [(MKETAResponse *)v17 setExpectedArrivalDate:v28];
LABEL_10:
  }

  (*(*(a1 + 40) + 16))();

LABEL_12:
}

- (void)_issueETARequestForOrigin:(id)origin destination:(id)destination completionHandler:(id)handler
{
  originCopy = origin;
  destinationCopy = destination;
  handlerCopy = handler;
  routeAttributes = self->_routeAttributes;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__MKDirections__issueETARequestForOrigin_destination_completionHandler___block_invoke;
  v15[3] = &unk_1E76CC9F8;
  v15[4] = self;
  v16 = originCopy;
  v17 = destinationCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = destinationCopy;
  v14 = originCopy;
  [(GEORouteAttributes *)routeAttributes buildRouteAttributes:MEMORY[0x1E69E96A0] result:v15];
}

void __72__MKDirections__issueETARequestForOrigin_destination_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 32);
  v4 = a2;
  [v3 cancel];
  v5 = objc_alloc(MEMORY[0x1E69A23D0]);
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(a1 + 48);
  v9 = [v4 automobileOptions];

  v10 = [v5 initWithDirectionsRequest:v7 origin:v6 destination:v8 automobileOptions:v9];
  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  *(v11 + 24) = v10;

  v13 = [objc_alloc(MEMORY[0x1E69A23D8]) initWithRequest:*(*(a1 + 32) + 24)];
  v14 = *(a1 + 32);
  v15 = *(v14 + 32);
  *(v14 + 32) = v13;

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__MKDirections__issueETARequestForOrigin_destination_completionHandler___block_invoke_2;
  v22[3] = &unk_1E76CC9D0;
  v21 = *(a1 + 32);
  v16 = *(v21 + 32);
  v17 = *(&v21 + 1);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *&v20 = v18;
  *(&v20 + 1) = v19;
  v23 = v21;
  v24 = v20;
  [v16 calculateETAFromAPI:1 WithResponseHandler:v22];
}

void __72__MKDirections__issueETARequestForOrigin_destination_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v35 = a2;
  v5 = a3;
  v6 = a1[4];
  v7 = v6;
  if (v5 && (v9 = v6[8], v8 = v6 + 8, !v9) && (objc_storeStrong(v8, a3), v10 = [*(a1[4] + 56) shouldRetryForError:v5], v7 = a1[4], v10))
  {
    [v7 _issueETARequestForOrigin:a1[5] destination:a1[6] completionHandler:a1[7]];
  }

  else
  {
    v11 = [v7[1] source];
    if ([v11 isCurrentLocation])
    {
      v12 = [v35 sourceLocation];
      v34 = [v12 latLng];

      v13 = objc_alloc(MEMORY[0x1E6985C40]);
      [v34 lat];
      v15 = v14;
      [v34 lng];
      v17 = [v13 initWithLatitude:v15 longitude:v16];
      v18 = [[MKMapItem alloc] initWithCLLocation:v17];

      v19 = a1[7];
      v20 = [*(a1[4] + 8) destination];
      v21 = [v35 responseETASeconds];
      v22 = [v35 responseETASeconds];
      [v35 distance];
      v24 = v23;
      v25 = [v35 sortedETAs];
      v26 = [v5 _mapkit_errorWithDirectionsError:0];
      v27 = v24;
      v28 = v34;
      (*(v19 + 16))(v19, v18, v20, v21, v22, v27, v25, v26);

      v11 = v18;
    }

    else
    {
      v29 = a1[7];
      v28 = [*(a1[4] + 8) source];
      v17 = [*(a1[4] + 8) destination];
      v30 = [v35 responseETASeconds];
      v31 = [v35 responseETASeconds];
      [v35 distance];
      v33 = v32;
      v20 = [v35 sortedETAs];
      v25 = [v5 _mapkit_errorWithDirectionsError:0];
      (*(v29 + 16))(v29, v28, v17, v30, v31, v33, v20, v25);
    }
  }
}

- (void)_calculateETAWithTraits:(id)traits completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__MKDirections__calculateETAWithTraits_completionHandler___block_invoke;
    v8[3] = &unk_1E76CC9A8;
    v8[4] = self;
    v9 = handlerCopy;
    [(MKDirections *)self _performWithValidCurrentLocationAndWaypointsForQuickETA:1 traits:traits handler:v8];
  }
}

void __58__MKDirections__calculateETAWithTraits_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = _routeAttributesForMKDirectionsRequest(*(*(a1 + 32) + 8));
    if ([*(*(a1 + 32) + 8) _resolveExtraAutomobileOptions])
    {
      v10 = objc_alloc(MEMORY[0x1E69B3750]);
      v15[0] = v7;
      v15[1] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      v12 = [v10 initWithAttributes:v9 waypoints:v11];
      v13 = *(a1 + 32);
      v14 = *(v13 + 56);
      *(v13 + 56) = v12;
    }

    else
    {
      objc_storeStrong((*(a1 + 32) + 56), v9);
    }

    [*(a1 + 32) _issueETARequestForOrigin:v7 destination:v8 completionHandler:*(a1 + 40)];
  }
}

- (void)_issueDirectionsRequestForOrigin:(id)origin destination:(id)destination traits:(id)traits completionHandler:(id)handler
{
  originCopy = origin;
  destinationCopy = destination;
  traitsCopy = traits;
  handlerCopy = handler;
  routeAttributes = self->_routeAttributes;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__MKDirections__issueDirectionsRequestForOrigin_destination_traits_completionHandler___block_invoke;
  v19[3] = &unk_1E76CC980;
  v22 = traitsCopy;
  v23 = handlerCopy;
  v19[4] = self;
  v20 = originCopy;
  v21 = destinationCopy;
  v15 = traitsCopy;
  v16 = destinationCopy;
  v17 = originCopy;
  v18 = handlerCopy;
  [(GEORouteAttributes *)routeAttributes buildRouteAttributes:MEMORY[0x1E69E96A0] result:v19];
}

void __86__MKDirections__issueDirectionsRequestForOrigin_destination_traits_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 16) setRouteAttributes:a2];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __86__MKDirections__issueDirectionsRequestForOrigin_destination_traits_completionHandler___block_invoke_2;
    v21[3] = &unk_1E76CC930;
    v3 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v3;
    v23 = *(a1 + 48);
    v24 = *(a1 + 64);
    v4 = MEMORY[0x1A58E9F30](v21);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__MKDirections__issueDirectionsRequestForOrigin_destination_traits_completionHandler___block_invoke_3;
    v17[3] = &unk_1E76CC958;
    v16 = *(a1 + 32);
    v5 = *(&v16 + 1);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v18 = v16;
    v19 = v8;
    v20 = *(a1 + 64);
    v9 = MEMORY[0x1A58E9F30](v17);
    v10 = [MEMORY[0x1E69A1D08] sharedRequester];
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    v13 = *(v11 + 16);
    v14 = [*(v11 + 8) _useBackgroundURL];
    [v10 startRequest:v13 traits:v12 auditToken:0 useBackgroundURL:v14 callbackQueue:MEMORY[0x1E69E96A0] finished:v4 networkActivity:0 error:v9];
  }

  else
  {
    v15 = *(*(a1 + 64) + 16);

    v15();
  }
}

void __86__MKDirections__issueDirectionsRequestForOrigin_destination_traits_completionHandler___block_invoke_2(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = a1[4];
    v3 = a1[5];
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    v7 = a1[6];
    v14 = 0;
    v8 = [MKDirectionsResponse _responseWithGEODirectionsRouteResponse:a2 routeRequest:v5 request:v6 origin:v3 destination:v7 error:&v14];
    v9 = v14;
    (*(a1[7] + 16))();
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v10 initWithDomain:MKErrorDomain code:1 userInfo:0];
    (*(a1[7] + 16))();
  }

  v12 = a1[4];
  v13 = *(v12 + 16);
  *(v12 + 16) = 0;
}

void __86__MKDirections__issueDirectionsRequestForOrigin_destination_traits_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v6 && (v8 = *(a1 + 32), v10 = *(v8 + 64), v9 = (v8 + 64), !v10) && (objc_storeStrong(v9, a2), [*(*(a1 + 32) + 56) shouldRetryForError:v6]))
  {
    [*(a1 + 32) _issueDirectionsRequestForOrigin:*(a1 + 40) destination:*(a1 + 48) traits:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  else
  {
    if ([v6 code] != -2 || (objc_msgSend(v6, "domain"), v11 = objc_claimAutoreleasedReturnValue(), GEOErrorDomain(), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, (v13 & 1) == 0))
    {
      if (*(a1 + 40) && (v14 = *(a1 + 48)) != 0)
      {
        v15 = MEMORY[0x1E695DF20];
        v21[0] = *(a1 + 40);
        v21[1] = v14;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
        v17 = [v15 _navigation_stringTokensForDirectionsError:v7 waypoints:v16];
      }

      else
      {
        v17 = 0;
      }

      v18 = [v6 _mapkit_errorWithDirectionsError:v7 stringTokens:v17];
      (*(*(a1 + 64) + 16))();
    }

    v19 = *(a1 + 32);
    v20 = *(v19 + 16);
    *(v19 + 16) = 0;
  }
}

- (void)_calculateDirectionsWithTraits:(id)traits completionHandler:(id)handler
{
  traitsCopy = traits;
  handlerCopy = handler;
  if ([(MKDirectionsRequest *)self->_request transportType]== 4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__MKDirections__calculateDirectionsWithTraits_completionHandler___block_invoke;
    block[3] = &unk_1E76CD4D0;
    v8 = &v15;
    v15 = handlerCopy;
    v9 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__MKDirections__calculateDirectionsWithTraits_completionHandler___block_invoke_2;
    v11[3] = &unk_1E76CC908;
    v8 = &v13;
    v13 = handlerCopy;
    v11[4] = self;
    v12 = traitsCopy;
    v10 = handlerCopy;
    [(MKDirections *)self _performWithValidCurrentLocationAndWaypointsForQuickETA:0 traits:v12 handler:v11];
  }
}

void __65__MKDirections__calculateDirectionsWithTraits_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:MKErrorDomain code:5 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __65__MKDirections__calculateDirectionsWithTraits_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E69A1D00]);
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v9 initWithPurpose:4 andSource:4 andIdentifier:v11];

    v13 = [objc_alloc(MEMORY[0x1E69A1CF8]) initWithDirectionsRequest:*(*(a1 + 32) + 8) origin:v7 destination:v8 withFeedback:v12];
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    *(v14 + 16) = v13;

    [*(*(a1 + 32) + 16) setIsFromAPI:1];
    if ([*(*(a1 + 32) + 8) _resolveExtraAutomobileOptions])
    {
      v16 = objc_alloc(MEMORY[0x1E69B3750]);
      v17 = [*(*(a1 + 32) + 16) routeAttributes];
      v25[0] = v7;
      v25[1] = v8;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      v19 = [v16 initWithAttributes:v17 waypoints:v18];
      v20 = *(a1 + 32);
      v21 = *(v20 + 56);
      *(v20 + 56) = v19;
    }

    else
    {
      v22 = [*(*(a1 + 32) + 16) routeAttributes];
      v23 = *(a1 + 32);
      v24 = *(v23 + 56);
      *(v23 + 56) = v22;
    }

    [*(a1 + 32) _issueDirectionsRequestForOrigin:v7 destination:v8 traits:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

- (void)calculateDirectionsWithCompletionHandler:(MKDirectionsHandler)completionHandler
{
  v4 = completionHandler;
  v5 = +[MKMapService sharedService];
  v6 = [v5 defaultTraitsWithTransportType:{-[MKDirectionsRequest transportType](self->_request, "transportType")}];

  [(MKDirections *)self _calculateDirectionsWithTraits:v6 completionHandler:v4];
}

- (void)_performWithValidCurrentLocationAndWaypointsForQuickETA:(BOOL)a traits:(id)traits handler:(id)handler
{
  traitsCopy = traits;
  handlerCopy = handler;
  if ([(MKDirections *)self isCalculating])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot calculate directions on a MKDirections that is already calculating", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v10 initWithDomain:MKErrorDomain code:1 userInfo:0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__MKDirections__performWithValidCurrentLocationAndWaypointsForQuickETA_traits_handler___block_invoke;
    block[3] = &unk_1E76CDA20;
    v19 = v11;
    v20 = handlerCopy;
    v12 = handlerCopy;
    v13 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__MKDirections__performWithValidCurrentLocationAndWaypointsForQuickETA_traits_handler___block_invoke_2;
    v14[3] = &unk_1E76CC8E0;
    v16 = handlerCopy;
    v14[4] = self;
    aCopy = a;
    v15 = traitsCopy;
    v13 = handlerCopy;
    [(MKDirections *)self _establishCurrentLocationAndThen:v14];

    v12 = v16;
  }
}

void __87__MKDirections__performWithValidCurrentLocationAndWaypointsForQuickETA_traits_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = dispatch_group_create();
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__37655;
    v28[4] = __Block_byref_object_dispose__37656;
    v29 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = __Block_byref_object_copy__37655;
    v26[4] = __Block_byref_object_dispose__37656;
    v27 = 0;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__37655;
    v24[4] = __Block_byref_object_dispose__37656;
    v25 = 0;
    dispatch_group_enter(*(*(a1 + 32) + 48));
    v7 = MEMORY[0x1E69A1CC8];
    v8 = [*(*(a1 + 32) + 8) source];
    v9 = *(a1 + 56);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __87__MKDirections__performWithValidCurrentLocationAndWaypointsForQuickETA_traits_handler___block_invoke_26;
    v23[3] = &unk_1E76CC890;
    v23[5] = v26;
    v23[6] = v28;
    v10 = *(a1 + 40);
    v23[4] = *(a1 + 32);
    [v7 composedWaypointForMapItem:v8 useAsLocation:0 forQuickETA:v9 traits:v10 completionHandler:v23 networkActivityHandler:0];

    dispatch_group_enter(*(*(a1 + 32) + 48));
    v11 = MEMORY[0x1E69A1CC8];
    v12 = [*(*(a1 + 32) + 8) destination];
    v13 = *(a1 + 56);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __87__MKDirections__performWithValidCurrentLocationAndWaypointsForQuickETA_traits_handler___block_invoke_2_28;
    v22[3] = &unk_1E76CC890;
    v22[5] = v24;
    v22[6] = v28;
    v14 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    [v11 composedWaypointForMapItem:v12 useAsLocation:0 forQuickETA:v13 traits:v14 completionHandler:v22 networkActivityHandler:0];

    v15 = *(a1 + 32);
    v16 = *(v15 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__MKDirections__performWithValidCurrentLocationAndWaypointsForQuickETA_traits_handler___block_invoke_3;
    block[3] = &unk_1E76CC8B8;
    block[4] = v15;
    v18 = *(a1 + 48);
    v19 = v26;
    v20 = v24;
    v21 = v28;
    dispatch_group_notify(v16, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v26, 8);

    _Block_object_dispose(v28, 8);
  }
}

void __87__MKDirections__performWithValidCurrentLocationAndWaypointsForQuickETA_traits_handler___block_invoke_26(void *a1, void *a2, void *a3)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v6 = a2;
  v7 = a3;
  v12 = v7;
  v8 = *(a1[6] + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v7 = v10;
  }

  objc_storeStrong(v9, v7);
  dispatch_group_leave(*(a1[4] + 48));
}

void __87__MKDirections__performWithValidCurrentLocationAndWaypointsForQuickETA_traits_handler___block_invoke_2_28(void *a1, void *a2, void *a3)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v6 = a2;
  v7 = a3;
  v12 = v7;
  v8 = *(a1[6] + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v7 = v10;
  }

  objc_storeStrong(v9, v7);
  dispatch_group_leave(*(a1[4] + 48));
}

void __87__MKDirections__performWithValidCurrentLocationAndWaypointsForQuickETA_traits_handler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = a1[5];
  v5 = *(*(a1[6] + 8) + 40);
  v6 = a1[8];
  v7 = *(*(a1[7] + 8) + 40);
  v8 = [*(*(v6 + 8) + 40) _mapkit_errorWithDirectionsError:0];
  (*(v4 + 16))(v4, v5, v7, v8);
}

- (void)_establishCurrentLocationAndThen:(id)then
{
  thenCopy = then;
  v7 = MEMORY[0x1E69E9820];
  v8 = __49__MKDirections__establishCurrentLocationAndThen___block_invoke;
  v9 = &unk_1E76CDA20;
  selfCopy = self;
  v11 = thenCopy;
  v5 = MEMORY[0x1E696AF00];
  v6 = thenCopy;
  if ([v5 isMainThread])
  {
    v8(&v7);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v7);
  }
}

void __49__MKDirections__establishCurrentLocationAndThen___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) source];
  if ([v2 isCurrentLocation])
  {

LABEL_4:
    [*(a1 + 32) _cleanupLocationOperation];
    v5 = +[MKLocationManager sharedLocationManager];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __49__MKDirections__establishCurrentLocationAndThen___block_invoke_2;
    v14 = &unk_1E76CC868;
    v6 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = v6;
    v7 = [v5 singleLocationUpdateWithHandler:&v11];
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(a1 + 32) + 40) start];
    return;
  }

  v3 = [*(*(a1 + 32) + 8) destination];
  v4 = [v3 isCurrentLocation];

  if (v4)
  {
    goto LABEL_4;
  }

  v10 = *(*(a1 + 40) + 16);

  v10();
}

void __49__MKDirections__establishCurrentLocationAndThen___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!(a2 | v5))
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:MKErrorDomain code:1 userInfo:0];
  }

  v8 = v5;
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  (*(*(a1 + 40) + 16))();
}

- (BOOL)isCalculating
{
  if (self->_geoRequest || self->_locationOperation || self->_waypointsDispatchGroup)
  {
    return 1;
  }

  if (self->_etaRequester)
  {
    return self->_etaRequest != 0;
  }

  return 0;
}

- (void)cancel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v3 = __22__MKDirections_cancel__block_invoke;
  v4 = &unk_1E76CDB38;
  selfCopy = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void *__22__MKDirections_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanupLocationOperation];
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = [MEMORY[0x1E69A1D08] sharedRequester];
    [v3 cancelRequest:*(*(a1 + 32) + 16)];

    v2 = *(a1 + 32);
  }

  result = *(v2 + 32);
  if (result)
  {

    return [result cancel];
  }

  return result;
}

- (void)dealloc
{
  [(MKDirections *)self _cleanupLocationOperation];
  v3.receiver = self;
  v3.super_class = MKDirections;
  [(MKDirections *)&v3 dealloc];
}

- (void)_cleanupLocationOperation
{
  [(MKLocationManagerOperation *)self->_locationOperation cancel];
  locationOperation = self->_locationOperation;
  self->_locationOperation = 0;
}

- (MKDirections)initWithRequest:(MKDirectionsRequest *)request
{
  v4 = request;
  v15.receiver = self;
  v15.super_class = MKDirections;
  v5 = [(MKDirections *)&v15 init];
  if (v5)
  {
    if (!v4)
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot initialize %@ with nil request", objc_opt_class()];
      v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
      v14 = v13;

      objc_exception_throw(v13);
    }

    v6 = [(MKDirectionsRequest *)v4 copy];
    v7 = v5->_request;
    v5->_request = v6;

    v8 = v5;
  }

  return v5;
}

@end