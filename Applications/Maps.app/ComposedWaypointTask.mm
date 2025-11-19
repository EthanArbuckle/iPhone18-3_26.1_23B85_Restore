@interface ComposedWaypointTask
- (ComposedWaypointTask)initWithRequest:(id)a3;
- (ComposedWaypointTask)initWithRequest:(id)a3 resolver:(id)a4;
- (NSString)debugDescription;
- (NSString)description;
- (void)_handleResponseWithHandler:(id)a3 result:(id)a4;
- (void)_loadWaypointWithAddress:(id)a3 handler:(id)a4 traits:(id)a5 networkActivityHandler:(id)a6;
- (void)_loadWaypointWithCorrectedMapItem:(id)a3 coordinate:(CLLocationCoordinate2D)a4 handler:(id)a5 traits:(id)a6 networkActivityHandler:(id)a7;
- (void)_loadWaypointWithMapItem:(id)a3 handler:(id)a4 traits:(id)a5 networkActivityHandler:(id)a6;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)_resolveAddressForWaypointType:(int)a3 completion:(id)a4 traits:(id)a5 networkActivityHandler:(id)a6;
- (void)_resolveCurrentLocationWithCompletion:(id)a3;
- (void)_resolveItem:(id)a3 traits:(id)a4 completion:(id)a5 networkActivityHandler:(id)a6;
- (void)_resolveParkedCarWithCompletion:(id)a3 traits:(id)a4 networkActivityHandler:(id)a5;
- (void)applyToRAPUserSearch:(id)a3 correctedSearch:(id)a4;
- (void)cancel;
- (void)setRequest:(id)a3;
- (void)setResult:(id)a3;
- (void)submitWithHandler:(id)a3 traits:(id)a4 networkActivityHandler:(id)a5;
@end

@implementation ComposedWaypointTask

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, @"resolver", self->_resolver);
  (*v4)(v6, @"identifier", self->_identifier);
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10063E840;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(ComposedWaypointTask *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10063EA90;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(ComposedWaypointTask *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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

- (void)_handleResponseWithHandler:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    [(ComposedWaypointTask *)self setResult:v7];
    if (v6)
    {
      v6[2](v6, v7);
    }
  }
}

- (void)_loadWaypointWithAddress:(id)a3 handler:(id)a4 traits:(id)a5 networkActivityHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[AddressBookAddressWaypointRequest alloc] initWithAddress:v13];

  [(ComposedWaypointTask *)self setRequest:v14];
  v17 = [(ComposedWaypointTask *)self request];
  v15 = [v17 loadComposedWaypointWithTraits:v11 clientResolvedCompletionHandler:0 completionHandler:v12 networkActivityHandler:v10];

  ticket = self->_ticket;
  self->_ticket = v15;
}

- (void)_loadWaypointWithMapItem:(id)a3 handler:(id)a4 traits:(id)a5 networkActivityHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[MapItemWaypointRequest alloc] initWithMapItem:v13];

  [(ComposedWaypointTask *)self setRequest:v14];
  v17 = [(ComposedWaypointTask *)self request];
  v15 = [v17 loadComposedWaypointWithTraits:v11 clientResolvedCompletionHandler:0 completionHandler:v12 networkActivityHandler:v10];

  ticket = self->_ticket;
  self->_ticket = v15;
}

- (void)_loadWaypointWithCorrectedMapItem:(id)a3 coordinate:(CLLocationCoordinate2D)a4 handler:(id)a5 traits:(id)a6 networkActivityHandler:(id)a7
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = [[CorrectedLocationMapItemWaypointRequest alloc] initWithCorrectedCoordinate:v16 mapItem:latitude, longitude];

  [(ComposedWaypointTask *)self setRequest:v17];
  v20 = [(ComposedWaypointTask *)self request];
  v18 = [v20 loadComposedWaypointWithTraits:v14 clientResolvedCompletionHandler:0 completionHandler:v15 networkActivityHandler:v13];

  ticket = self->_ticket;
  self->_ticket = v18;
}

- (void)_resolveAddressForWaypointType:(int)a3 completion:(id)a4 traits:(id)a5 networkActivityHandler:(id)a6
{
  v8 = *&a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [(ComposedWaypointTask *)self resolver];
  v14 = [v13 personalizedItemSource];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10063F170;
  v18[3] = &unk_1016248B8;
  v15 = v11;
  v19 = v15;
  objc_copyWeak(&v22, &location);
  v16 = v10;
  v20 = v16;
  v17 = v12;
  v21 = v17;
  [v14 addressOrLOIWithType:v8 completion:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_resolveParkedCarWithCompletion:(id)a3 traits:(id)a4 networkActivityHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(ComposedWaypointTask *)self resolver];
  v12 = [v11 parkedCarSource];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10063F450;
  v16[3] = &unk_101624890;
  v13 = v8;
  v18 = v13;
  v14 = v9;
  v17 = v14;
  objc_copyWeak(&v20, &location);
  v15 = v10;
  v19 = v15;
  [v12 objectWithCompletion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_resolveCurrentLocationWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ComposedWaypointTask *)self resolver];
    v6 = [v5 currentLocationSource];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10063F630;
    v7[3] = &unk_101624868;
    v8 = v4;
    [v6 objectWithCompletion:v7];
  }
}

- (void)_resolveItem:(id)a3 traits:(id)a4 completion:(id)a5 networkActivityHandler:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v17 itemType];
  if (v13 > 3)
  {
    if (v13 == 4)
    {
      [(ComposedWaypointTask *)self _resolveCurrentLocationWithCompletion:v11];
      goto LABEL_12;
    }

    if (v13 == 5)
    {
LABEL_10:
      v14 = GEOErrorDomain();
      v15 = [NSError errorWithDomain:v14 code:-8 userInfo:0];
      v16 = [Result resultWithError:v15];
      v11[2](v11, v16);

      goto LABEL_12;
    }

    if (v13 != 6)
    {
      goto LABEL_12;
    }

LABEL_9:
    -[ComposedWaypointTask _resolveAddressForWaypointType:completion:traits:networkActivityHandler:](self, "_resolveAddressForWaypointType:completion:traits:networkActivityHandler:", [v17 itemType], v11, v10, v12);
    goto LABEL_12;
  }

  if ((v13 - 1) < 2)
  {
    goto LABEL_9;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

  if (v13 == 3)
  {
    [(ComposedWaypointTask *)self _resolveParkedCarWithCompletion:v11 traits:v10 networkActivityHandler:v12];
  }

LABEL_12:
}

- (void)setResult:(id)a3
{
  v5 = a3;
  if (self->_result != v5)
  {
    objc_storeStrong(&self->_result, a3);
    v6 = [(Result *)v5 value];

    v7 = sub_100798F84();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        identifier = self->_identifier;
        v10 = [(Result *)v5 value];
        v11 = [v10 shortDescription];
        v14 = 138543619;
        v15 = identifier;
        v16 = 2113;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Composed waypoint loaded successfully: %{private}@", &v14, 0x16u);
      }
    }

    else if (v8)
    {
      v12 = self->_identifier;
      v13 = [(Result *)v5 error];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Composed waypoint loading failed: %@", &v14, 0x16u);
    }
  }
}

- (void)setRequest:(id)a3
{
  v5 = a3;
  p_request = &self->_request;
  if (self->_request != v5)
  {
    objc_storeStrong(&self->_request, a3);
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

- (void)applyToRAPUserSearch:(id)a3 correctedSearch:(id)a4
{
  v11 = a3;
  v6 = a4;
  [v11 setOrigin:0];
  v7 = [(ComposedWaypointTask *)self composedWaypoint];

  if (v7)
  {
    v8 = [(ComposedWaypointTask *)self composedWaypoint];
    v9 = [v8 latLng];
    [v11 setCoordinate:v9];
  }

  v10 = [(ComposedWaypointTask *)self request];
  [v10 recordRAPInformation:v11];

  [(GEOMapServiceCorrectableTicket *)self->_ticket applyToCorrectedSearch:v6];
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
    v7 = self;
    v8 = 2114;
    v9 = identifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelling task: %@ (%{public}@)", buf, 0x16u);
  }

  [(GEOMapServiceCorrectableTicket *)self->_ticket cancel];
  os_activity_scope_leave(&v5);
}

- (void)submitWithHandler:(id)a3 traits:(id)a4 networkActivityHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_activity;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (!v8)
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
        if (([v9 hasSource] & 1) == 0)
        {
          [v9 setSource:18];
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
        v46 = v8;
        v27 = objc_retainBlock(v43);
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100640304;
        v36[3] = &unk_101624840;
        v37 = v25;
        objc_copyWeak(&v42, buf);
        v15 = v26;
        v38 = v15;
        v28 = v9;
        v39 = v28;
        v35 = v27;
        v40 = v35;
        v29 = v10;
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
        v32 = [(ComposedWaypointTask *)self request];
        v33 = [v32 loadComposedWaypointWithTraits:v28 clientResolvedCompletionHandler:v30 completionHandler:v35 networkActivityHandler:v29];
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

  (*(v8 + 2))(v8, self->_result);
LABEL_14:
  os_activity_scope_leave(&state);
}

- (ComposedWaypointTask)initWithRequest:(id)a3 resolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = ComposedWaypointTask;
  v8 = [(ComposedWaypointTask *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(ComposedWaypointTask *)v8 setRequest:v6];
    objc_storeStrong(&v9->_resolver, a4);
    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];
    identifier = v9->_identifier;
    v9->_identifier = v11;

    v13 = _os_activity_create(&_mh_execute_header, "Resolve waypoint", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    activity = v9->_activity;
    v9->_activity = v13;
  }

  return v9;
}

- (ComposedWaypointTask)initWithRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ClientTypeResolver);
  v6 = [(ComposedWaypointTask *)self initWithRequest:v4 resolver:v5];

  return v6;
}

@end