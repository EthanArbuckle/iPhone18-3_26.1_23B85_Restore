@interface MapsSuggestionsRidesharingSource
+ (BOOL)isEnabled;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (void)rideStatusMapDidChange:(id)change;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsRidesharingSource

+ (BOOL)isEnabled
{
  v2 = sub_100016C50();
  if (v2)
  {

    LOBYTE(v2) = GEOConfigGetBOOL();
  }

  return v2;
}

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "start", v5, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MapsSuggestionsRidesharingSource *)selfCopy setSuspended:0];
  objc_sync_exit(selfCopy);
}

- (void)rideStatusMapDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MapsSuggestionsRidesharingSource *)selfCopy suspended])
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Returning from %@ because we are suspended", buf, 0xCu);
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(MapsSuggestionsRidesharingSource *)selfCopy uniqueName];
      *buf = 138412546;
      v17 = uniqueName;
      v18 = 2080;
      v19 = "_updateRideBookingRideStatuses";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateRideBookingRideStatuses", "", buf, 2u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    objc_initWeak(buf, selfCopy);
    queue = selfCopy->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100CD5808;
    v13[3] = &unk_101661340;
    objc_copyWeak(&v15, buf);
    v14 = changeCopy;
    dispatch_async(queue, v13);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "updateSuggestionEntriesWithHandler", buf, 2u);
  }

  objc_initWeak(buf, self);
  if ((+[MapsSuggestionsSiri isEnabled]& 1) == 0)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "User turned off Siri: we're not using our suggestions", v27, 2u);
    }

    queue = self->_queue;
    v8 = v24;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100CD640C;
    v24[3] = &unk_101660648;
    objc_copyWeak(&v26, buf);
    v25 = handlerCopy;
    dispatch_async(queue, v24);
    v9 = v25;
    goto LABEL_11;
  }

  if (MapsSuggestionsIsInCoarseLocation())
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Maps is in Coarse Location", v27, 2u);
    }

    v7 = self->_queue;
    v8 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CD6628;
    block[3] = &unk_101660648;
    objc_copyWeak(&v23, buf);
    v22 = handlerCopy;
    dispatch_async(v7, block);
    v9 = v22;
LABEL_11:

    objc_destroyWeak(v8 + 5);
    goto LABEL_12;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(MapsSuggestionsRidesharingSource *)selfCopy suspended])
  {
    objc_sync_exit(selfCopy);

    v16 = selfCopy->_queue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100CD6844;
    v18[3] = &unk_101660648;
    objc_copyWeak(&v20, buf);
    v19 = handlerCopy;
    dispatch_async(v16, v18);
    GEOConfigGetDouble();
    v12 = v17;

    objc_destroyWeak(&v20);
    goto LABEL_13;
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Suspended, so no need to update", v27, 2u);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  objc_sync_exit(selfCopy);

LABEL_12:
  v12 = 0.0;
LABEL_13:
  objc_destroyWeak(buf);

  return v12;
}

- (void)stop
{
  [(MapsSuggestionsAppGuardian *)self->_guardian unregisterAllBundleIDsForSource:self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MapsSuggestionsRidesharingSource *)selfCopy setSuspended:1];
  objc_sync_exit(selfCopy);

  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "stop", v5, 2u);
  }
}

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  depotCopy = depot;
  nameCopy = name;
  if (!depotCopy)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRidesharingSource.m";
      v30 = 1024;
      v31 = 56;
      v32 = 2082;
      v33 = "[MapsSuggestionsRidesharingSource initFromResourceDepot:name:]";
      v34 = 2082;
      v35 = "nil == (resourceDepot)";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!", location, 0x26u);
    }

    goto LABEL_11;
  }

  oneSourceDelegate = [depotCopy oneSourceDelegate];

  if (!oneSourceDelegate)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRidesharingSource.m";
      v30 = 1024;
      v31 = 57;
      v32 = 2082;
      v33 = "[MapsSuggestionsRidesharingSource initFromResourceDepot:name:]";
      v34 = 2082;
      v35 = "nil == (resourceDepot.oneSourceDelegate)";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!", location, 0x26u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  oneSourceDelegate2 = [depotCopy oneSourceDelegate];
  v28.receiver = self;
  v28.super_class = MapsSuggestionsRidesharingSource;
  v10 = [(MapsSuggestionsRidesharingSource *)&v28 initWithDelegate:oneSourceDelegate2 name:nameCopy];

  if (v10)
  {
    uniqueName = [(MapsSuggestionsRidesharingSource *)v10 uniqueName];
    v12 = uniqueName;
    v13 = [uniqueName cStringUsingEncoding:4];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    queue = v10->_queue;
    v10->_queue = v15;

    oneShotCallbackBlock = v10->_oneShotCallbackBlock;
    v10->_oneShotCallbackBlock = 0;

    oneAppGuardian = [depotCopy oneAppGuardian];
    guardian = v10->_guardian;
    v10->_guardian = oneAppGuardian;

    objc_initWeak(location, v10);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CD6E4C;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v27, location);
    dispatch_async(&_dispatch_main_q, block);
    v20 = v10->_queue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100CD6F74;
    v24[3] = &unk_101658C08;
    objc_copyWeak(&v25, location);
    notify_register_dispatch("MapsSuggestionsRidesharingSourceShouldRefresh", &v10->_token, v20, v24);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  self = v10;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

@end