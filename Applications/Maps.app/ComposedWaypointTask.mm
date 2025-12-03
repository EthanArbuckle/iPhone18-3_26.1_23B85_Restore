@interface ComposedWaypointTask
- (ComposedWaypointTask)initWithRequest:(id)request;
- (ComposedWaypointTask)initWithRequest:(id)request resolver:(id)resolver;
- (NSString)debugDescription;
- (NSString)description;
- (void)_handleResponseWithHandler:(id)handler result:(id)result;
- (void)_loadWaypointWithAddress:(id)address handler:(id)handler traits:(id)traits networkActivityHandler:(id)activityHandler;
- (void)_loadWaypointWithCorrectedMapItem:(id)item coordinate:(CLLocationCoordinate2D)coordinate handler:(id)handler traits:(id)traits networkActivityHandler:(id)activityHandler;
- (void)_loadWaypointWithMapItem:(id)item handler:(id)handler traits:(id)traits networkActivityHandler:(id)activityHandler;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)_resolveAddressForWaypointType:(int)type completion:(id)completion traits:(id)traits networkActivityHandler:(id)handler;
- (void)_resolveCurrentLocationWithCompletion:(id)completion;
- (void)_resolveItem:(id)item traits:(id)traits completion:(id)completion networkActivityHandler:(id)handler;
- (void)_resolveParkedCarWithCompletion:(id)completion traits:(id)traits networkActivityHandler:(id)handler;
- (void)applyToRAPUserSearch:(id)search correctedSearch:(id)correctedSearch;
- (void)cancel;
- (void)setRequest:(id)request;
- (void)setResult:(id)result;
- (void)submitWithHandler:(id)handler traits:(id)traits networkActivityHandler:(id)activityHandler;
@end

@implementation ComposedWaypointTask

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, @"resolver", self->_resolver);
  (*v4)(blockCopy, @"identifier", self->_identifier);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10063E840;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(ComposedWaypointTask *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ComposedWaypointTask *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:@"\n"];
  v12 = [NSString stringWithFormat:@"%@ {\n%@\n}", v10, v11];

  return v12;
}

- (NSString)description
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10063EA90;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(ComposedWaypointTask *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ComposedWaypointTask *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"%@ (%@)", v10, v11];

  return v12;
}

- (void)_handleResponseWithHandler:(id)handler result:(id)result
{
  handlerCopy = handler;
  resultCopy = result;
  if ([(ComposedWaypointTask *)self isCancelled])
  {
    v8 = sub_100798F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = self->_identifier;
      v10 = 138543362;
      v11 = identifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] Received result, but task was already canceled", &v10, 0xCu);
    }
  }

  else
  {
    [(ComposedWaypointTask *)self setResult:resultCopy];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, resultCopy);
    }
  }
}

- (void)_loadWaypointWithAddress:(id)address handler:(id)handler traits:(id)traits networkActivityHandler:(id)activityHandler
{
  activityHandlerCopy = activityHandler;
  traitsCopy = traits;
  handlerCopy = handler;
  addressCopy = address;
  v14 = [[AddressBookAddressWaypointRequest alloc] initWithAddress:addressCopy];

  [(ComposedWaypointTask *)self setRequest:v14];
  request = [(ComposedWaypointTask *)self request];
  v15 = [request loadComposedWaypointWithTraits:traitsCopy clientResolvedCompletionHandler:0 completionHandler:handlerCopy networkActivityHandler:activityHandlerCopy];

  ticket = self->_ticket;
  self->_ticket = v15;
}

- (void)_loadWaypointWithMapItem:(id)item handler:(id)handler traits:(id)traits networkActivityHandler:(id)activityHandler
{
  activityHandlerCopy = activityHandler;
  traitsCopy = traits;
  handlerCopy = handler;
  itemCopy = item;
  v14 = [[MapItemWaypointRequest alloc] initWithMapItem:itemCopy];

  [(ComposedWaypointTask *)self setRequest:v14];
  request = [(ComposedWaypointTask *)self request];
  v15 = [request loadComposedWaypointWithTraits:traitsCopy clientResolvedCompletionHandler:0 completionHandler:handlerCopy networkActivityHandler:activityHandlerCopy];

  ticket = self->_ticket;
  self->_ticket = v15;
}

- (void)_loadWaypointWithCorrectedMapItem:(id)item coordinate:(CLLocationCoordinate2D)coordinate handler:(id)handler traits:(id)traits networkActivityHandler:(id)activityHandler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  activityHandlerCopy = activityHandler;
  traitsCopy = traits;
  handlerCopy = handler;
  itemCopy = item;
  longitude = [[CorrectedLocationMapItemWaypointRequest alloc] initWithCorrectedCoordinate:itemCopy mapItem:latitude, longitude];

  [(ComposedWaypointTask *)self setRequest:longitude];
  request = [(ComposedWaypointTask *)self request];
  v18 = [request loadComposedWaypointWithTraits:traitsCopy clientResolvedCompletionHandler:0 completionHandler:handlerCopy networkActivityHandler:activityHandlerCopy];

  ticket = self->_ticket;
  self->_ticket = v18;
}

- (void)_resolveAddressForWaypointType:(int)type completion:(id)completion traits:(id)traits networkActivityHandler:(id)handler
{
  v8 = *&type;
  completionCopy = completion;
  traitsCopy = traits;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  resolver = [(ComposedWaypointTask *)self resolver];
  personalizedItemSource = [resolver personalizedItemSource];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10063F170;
  v18[3] = &unk_1016248B8;
  v15 = traitsCopy;
  v19 = v15;
  objc_copyWeak(&v22, &location);
  v16 = completionCopy;
  v20 = v16;
  v17 = handlerCopy;
  v21 = v17;
  [personalizedItemSource addressOrLOIWithType:v8 completion:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_resolveParkedCarWithCompletion:(id)completion traits:(id)traits networkActivityHandler:(id)handler
{
  completionCopy = completion;
  traitsCopy = traits;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  resolver = [(ComposedWaypointTask *)self resolver];
  parkedCarSource = [resolver parkedCarSource];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10063F450;
  v16[3] = &unk_101624890;
  v13 = completionCopy;
  v18 = v13;
  v14 = traitsCopy;
  v17 = v14;
  objc_copyWeak(&v20, &location);
  v15 = handlerCopy;
  v19 = v15;
  [parkedCarSource objectWithCompletion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_resolveCurrentLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    resolver = [(ComposedWaypointTask *)self resolver];
    currentLocationSource = [resolver currentLocationSource];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10063F630;
    v7[3] = &unk_101624868;
    v8 = completionCopy;
    [currentLocationSource objectWithCompletion:v7];
  }
}

- (void)_resolveItem:(id)item traits:(id)traits completion:(id)completion networkActivityHandler:(id)handler
{
  itemCopy = item;
  traitsCopy = traits;
  completionCopy = completion;
  handlerCopy = handler;
  itemType = [itemCopy itemType];
  if (itemType > 3)
  {
    if (itemType == 4)
    {
      [(ComposedWaypointTask *)self _resolveCurrentLocationWithCompletion:completionCopy];
      goto LABEL_12;
    }

    if (itemType == 5)
    {
LABEL_10:
      v14 = GEOErrorDomain();
      v15 = [NSError errorWithDomain:v14 code:-8 userInfo:0];
      v16 = [Result resultWithError:v15];
      completionCopy[2](completionCopy, v16);

      goto LABEL_12;
    }

    if (itemType != 6)
    {
      goto LABEL_12;
    }

LABEL_9:
    -[ComposedWaypointTask _resolveAddressForWaypointType:completion:traits:networkActivityHandler:](self, "_resolveAddressForWaypointType:completion:traits:networkActivityHandler:", [itemCopy itemType], completionCopy, traitsCopy, handlerCopy);
    goto LABEL_12;
  }

  if ((itemType - 1) < 2)
  {
    goto LABEL_9;
  }

  if (!itemType)
  {
    goto LABEL_10;
  }

  if (itemType == 3)
  {
    [(ComposedWaypointTask *)self _resolveParkedCarWithCompletion:completionCopy traits:traitsCopy networkActivityHandler:handlerCopy];
  }

LABEL_12:
}

- (void)setResult:(id)result
{
  resultCopy = result;
  if (self->_result != resultCopy)
  {
    objc_storeStrong(&self->_result, result);
    value = [(Result *)resultCopy value];

    v7 = sub_100798F84();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (value)
    {
      if (v8)
      {
        identifier = self->_identifier;
        value2 = [(Result *)resultCopy value];
        shortDescription = [value2 shortDescription];
        v14 = 138543619;
        v15 = identifier;
        v16 = 2113;
        v17 = shortDescription;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Composed waypoint loaded successfully: %{private}@", &v14, 0x16u);
      }
    }

    else if (v8)
    {
      v12 = self->_identifier;
      error = [(Result *)resultCopy error];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = error;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Composed waypoint loading failed: %@", &v14, 0x16u);
    }
  }
}

- (void)setRequest:(id)request
{
  requestCopy = request;
  p_request = &self->_request;
  if (self->_request != requestCopy)
  {
    objc_storeStrong(&self->_request, request);
    if (*p_request)
    {
      [(WaypointRequest *)*p_request coordinate];
      if (CLLocationCoordinate2DIsValid(v16))
      {
        if (!self->_lprRuleHelper)
        {
          v7 = objc_alloc_init(MNLPRRuleHelper);
          lprRuleHelper = self->_lprRuleHelper;
          self->_lprRuleHelper = v7;
        }

        v9 = [GEOLatLng alloc];
        [(WaypointRequest *)self->_request coordinate];
        v11 = v10;
        [(WaypointRequest *)self->_request coordinate];
        v12 = [v9 initWithLatitude:v11 longitude:?];
        v13 = self->_lprRuleHelper;
        v15 = v12;
        v14 = [NSArray arrayWithObjects:&v15 count:1];
        [(MNLPRRuleHelper *)v13 prefetchRulesForWaypoints:v14];
      }
    }
  }
}

- (void)applyToRAPUserSearch:(id)search correctedSearch:(id)correctedSearch
{
  searchCopy = search;
  correctedSearchCopy = correctedSearch;
  [searchCopy setOrigin:0];
  composedWaypoint = [(ComposedWaypointTask *)self composedWaypoint];

  if (composedWaypoint)
  {
    composedWaypoint2 = [(ComposedWaypointTask *)self composedWaypoint];
    latLng = [composedWaypoint2 latLng];
    [searchCopy setCoordinate:latLng];
  }

  request = [(ComposedWaypointTask *)self request];
  [request recordRAPInformation:searchCopy];

  [(GEOMapServiceCorrectableTicket *)self->_ticket applyToCorrectedSearch:correctedSearchCopy];
}

- (void)cancel
{
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &v5);
  v3 = sub_100798F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 138412546;
    selfCopy = self;
    v8 = 2114;
    v9 = identifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelling task: %@ (%{public}@)", buf, 0x16u);
  }

  [(GEOMapServiceCorrectableTicket *)self->_ticket cancel];
  os_activity_scope_leave(&v5);
}

- (void)submitWithHandler:(id)handler traits:(id)traits networkActivityHandler:(id)activityHandler
{
  handlerCopy = handler;
  traitsCopy = traits;
  activityHandlerCopy = activityHandler;
  v11 = self->_activity;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (!handlerCopy)
  {
    v15 = sub_100798F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      identifier = self->_identifier;
      *buf = 138543362;
      v50 = identifier;
      v17 = "[%{public}@] A handler is required.";
      v18 = v15;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_11:
      v21 = 12;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v21);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!self->_result)
  {
    if ([(ComposedWaypointTask *)self isCancelled])
    {
      v15 = sub_100798F84();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = self->_identifier;
        *buf = 138543362;
        v50 = v20;
        v17 = "[%{public}@] Task was previously cancelled";
        v18 = v15;
        v19 = OS_LOG_TYPE_DEBUG;
        goto LABEL_11;
      }
    }

    else
    {
      if (!self->_ticket)
      {
        if (([traitsCopy hasSource] & 1) == 0)
        {
          [traitsCopy setSource:18];
        }

        v24 = self->_identifier;
        objc_initWeak(buf, self);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1006401EC;
        v43[3] = &unk_101624818;
        v25 = v11;
        v44 = v25;
        objc_copyWeak(&v47, buf);
        v26 = v24;
        v45 = v26;
        v46 = handlerCopy;
        v27 = objc_retainBlock(v43);
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100640304;
        v36[3] = &unk_101624840;
        v37 = v25;
        objc_copyWeak(&v42, buf);
        v15 = v26;
        v38 = v15;
        v28 = traitsCopy;
        v39 = v28;
        v35 = v27;
        v40 = v35;
        v29 = activityHandlerCopy;
        v41 = v29;
        v30 = objc_retainBlock(v36);
        if ([v28 navigating])
        {
          v31 = 2;
        }

        else
        {
          v31 = 1;
        }

        [v28 setSearchOriginationType:v31];
        request = [(ComposedWaypointTask *)self request];
        v33 = [request loadComposedWaypointWithTraits:v28 clientResolvedCompletionHandler:v30 completionHandler:v35 networkActivityHandler:v29];
        ticket = self->_ticket;
        self->_ticket = v33;

        objc_destroyWeak(&v42);
        objc_destroyWeak(&v47);

        objc_destroyWeak(buf);
        goto LABEL_13;
      }

      v15 = sub_100798F84();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v22 = self->_identifier;
        v23 = self->_ticket;
        *buf = 138543618;
        v50 = v22;
        v51 = 2112;
        v52 = v23;
        v17 = "[%{public}@] Task is in flight: %@";
        v18 = v15;
        v19 = OS_LOG_TYPE_DEBUG;
        v21 = 22;
        goto LABEL_12;
      }
    }

    goto LABEL_13;
  }

  v12 = sub_100798F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = self->_identifier;
    result = self->_result;
    *buf = 138543618;
    v50 = v13;
    v51 = 2112;
    v52 = result;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Already have a response: %@", buf, 0x16u);
  }

  (*(handlerCopy + 2))(handlerCopy, self->_result);
LABEL_14:
  os_activity_scope_leave(&state);
}

- (ComposedWaypointTask)initWithRequest:(id)request resolver:(id)resolver
{
  requestCopy = request;
  resolverCopy = resolver;
  v16.receiver = self;
  v16.super_class = ComposedWaypointTask;
  v8 = [(ComposedWaypointTask *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(ComposedWaypointTask *)v8 setRequest:requestCopy];
    objc_storeStrong(&v9->_resolver, resolver);
    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];
    identifier = v9->_identifier;
    v9->_identifier = uUIDString;

    v13 = _os_activity_create(&_mh_execute_header, "Resolve waypoint", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    activity = v9->_activity;
    v9->_activity = v13;
  }

  return v9;
}

- (ComposedWaypointTask)initWithRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(ClientTypeResolver);
  v6 = [(ComposedWaypointTask *)self initWithRequest:requestCopy resolver:v5];

  return v6;
}

@end