@interface EKLocationSearchModel
+ (id)URLsFromSource:(id)a3;
+ (id)_dataDetector;
+ (id)_linksInSource:(id)a3;
+ (id)mapItemForMapKitHandle:(id)a3;
+ (void)initialize;
- (BOOL)removeRecentLocation:(id)a3;
- (BOOL)resultsPending;
- (EKLocationSearchModel)initWithEventStore:(id)a3;
- (EKLocationSearchModelDelegate)delegate;
- (id)_availabilityRequestForConferenceRooms:(id)a3 eventID:(id)a4 source:(id)a5 dateRange:(id)a6 resultsBlock:(id)a7 completionBlock:(id)a8;
- (id)splitEventLocations:(id)a3;
- (unint64_t)dedupeResults;
- (void)_addDiscoveredConferenceRooms:(id)a3;
- (void)_addLocationToRecents:(id)a3 addressString:(id)a4 mapItem:(id)a5;
- (void)_decrementPendingOperationsCountForDomain:(id)a3;
- (void)_handleAvailabilityResults:(id)a3 forOperation:(id)a4;
- (void)_incrementPendingOperationsCountForDomain:(id)a3;
- (void)_processDirectorySearchResultSet:(id)a3 forOperation:(id)a4;
- (void)_updateAllPossibleVirtualConferenceResultsWithRoomTypes:(id)a3;
- (void)_updateContactsSearchWithResults:(id)a3 forToken:(id)a4;
- (void)_updateMapURL:(id)a3;
- (void)_updateVirtualConferenceCustomOptions:(id)a3;
- (void)_updateVirtualConferenceOptions:(id)a3;
- (void)addConferenceRoomToRecents:(id)a3 fromSource:(id)a4;
- (void)beginSearchForTerm:(id)a3;
- (void)cancelSearch;
- (void)completerDidFail:(id)a3 error:(id)a4;
- (void)completerDidUpdateResults:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)getCurrentLocation;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)resetConferenceRoomSearchResults;
- (void)resetContactsSearchResults;
- (void)resetEventsSearchResults;
- (void)resetRecentsSearchResults;
- (void)resetSearchResults:(BOOL)a3;
- (void)searchConferenceRooms:(id)a3;
- (void)searchFrequentLocations:(id)a3;
- (void)selectCurrentLocation;
- (void)selectLocation:(id)a3;
- (void)selectMapSearchCompletion:(id)a3;
- (void)selectVirtualConferenceRoomType:(id)a3;
- (void)stopUpdatingLocation;
- (void)updateConferenceRoomAvailability:(id)a3 duringEvent:(id)a4 completionBlock:(id)a5;
- (void)updateContacts:(id)a3;
- (void)updateEventLocations:(id)a3;
- (void)updateRecents:(id)a3;
- (void)updateVirtualConferenceRoomOptions:(id)a3;
@end

@implementation EKLocationSearchModel

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[EKLocationSearchModel initialize];
  }
}

uint64_t __35__EKLocationSearchModel_initialize__block_invoke()
{
  _mapItemCache = objc_alloc_init(MEMORY[0x1E695DEE0]);

  return MEMORY[0x1EEE66BB8]();
}

- (EKLocationSearchModel)initWithEventStore:(id)a3
{
  v5 = a3;
  v39.receiver = self;
  v39.super_class = EKLocationSearchModel;
  v6 = [(EKLocationSearchModel *)&v39 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventStore, a3);
    v8 = objc_alloc_init(EKWeakLinkClass());
    [v8 setIncludeIncludeManagedAppleIDs:1];
    v9 = [objc_alloc(EKWeakLinkClass()) initWithConfiguration:v8];
    contactStore = v7->_contactStore;
    v7->_contactStore = v9;

    v7->_supportedSearchTypes = 2047;
    v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    whitespaceAndNewlineCharacterSet = v7->_whitespaceAndNewlineCharacterSet;
    v7->_whitespaceAndNewlineCharacterSet = v11;

    v13 = dispatch_queue_create("com.apple.mobilecal.ConferenceRoomProcessing", 0);
    conferenceRoomProcessingQueue = v7->_conferenceRoomProcessingQueue;
    v7->_conferenceRoomProcessingQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    conferenceRoomOperationQueue = v7->_conferenceRoomOperationQueue;
    v7->_conferenceRoomOperationQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableConferenceRoomSearchResults = v7->_mutableConferenceRoomSearchResults;
    v7->_mutableConferenceRoomSearchResults = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    conferenceRoomAddressesToConferenceRooms = v7->_conferenceRoomAddressesToConferenceRooms;
    v7->_conferenceRoomAddressesToConferenceRooms = v19;

    v21 = [MEMORY[0x1E695DF70] array];
    recentsSearchResults = v7->_recentsSearchResults;
    v7->_recentsSearchResults = v21;

    v23 = EKWeakLinkClass();
    v24 = EKWeakLinkSymbol();
    v25 = EKWeakLinkSymbol();
    v26 = v24(*MEMORY[0x1E695E480]);
    if (v26)
    {
      v27 = v26;
      v28 = v25(v26, @"com.apple.locationd.effective_bundle", 0);
      if (v28)
      {
        v29 = v28;
        if (CFBooleanGetValue(v28))
        {
          v30 = [v23 alloc];
          v31 = [v30 initWithEffectiveBundleIdentifier:*MEMORY[0x1E6993168] delegate:v7 onQueue:MEMORY[0x1E69E96A0]];
          locationManager = v7->_locationManager;
          v7->_locationManager = v31;
        }

        CFRelease(v27);
      }

      else
      {
        v29 = v27;
      }

      CFRelease(v29);
    }

    if (!v7->_locationManager)
    {
      v33 = [v23 alloc];
      v34 = [v33 _initWithDelegate:v7 onQueue:MEMORY[0x1E69E96A0]];
      v35 = v7->_locationManager;
      v7->_locationManager = v34;
    }

    v36 = objc_opt_new();
    pendingOperationsCounts = v7->_pendingOperationsCounts;
    v7->_pendingOperationsCounts = v36;

    v7->_pendingOperationsCountsLock._os_unfair_lock_opaque = 0;
    [(CLLocationManager *)v7->_locationManager requestWhenInUseAuthorization];
  }

  return v7;
}

- (void)dealloc
{
  [(EKLocationSearchModel *)self cancelSearch];
  [(EKLocationSearchModel *)self stopUpdatingLocation];
  [(CLLocationManager *)self->_locationManager setDelegate:0];
  locationManager = self->_locationManager;
  self->_locationManager = 0;

  [(MKLocalSearchCompleter *)self->_completer setDelegate:0];
  geocoder = self->_geocoder;
  if (geocoder)
  {
    [(CLGeocoder *)geocoder cancelGeocode];
  }

  localSearch = self->_localSearch;
  if (localSearch)
  {
    [(CalCancelable *)localSearch cancel];
  }

  [(NSOperationQueue *)self->_conferenceRoomOperationQueue cancelAllOperations];
  v6.receiver = self;
  v6.super_class = EKLocationSearchModel;
  [(EKLocationSearchModel *)&v6 dealloc];
}

- (BOOL)resultsPending
{
  os_unfair_lock_lock(&self->_pendingOperationsCountsLock);
  v3 = [(NSCountedSet *)self->_pendingOperationsCounts count]!= 0;
  os_unfair_lock_unlock(&self->_pendingOperationsCountsLock);
  return v3;
}

- (void)_incrementPendingOperationsCountForDomain:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_pendingOperationsCountsLock);
  [(NSCountedSet *)self->_pendingOperationsCounts addObject:v4];

  os_unfair_lock_unlock(&self->_pendingOperationsCountsLock);
}

- (void)_decrementPendingOperationsCountForDomain:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_pendingOperationsCountsLock);
  [(NSCountedSet *)self->_pendingOperationsCounts removeObject:v4];

  os_unfair_lock_unlock(&self->_pendingOperationsCountsLock);
}

- (void)getCurrentLocation
{
  if ((self->_supportedSearchTypes & 4) != 0)
  {
    [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainCurrentLocation"];
    [(EKLocationSearchModel *)self performSelector:sel_stopUpdatingLocation withObject:0 afterDelay:30.0];
    v3 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_INFO, "Started updating current location", v6, 2u);
    }

    [(CLLocationManager *)self->_locationManager startUpdatingLocation];
    v4 = [EKWeakLinkClass() newAssertionForBundleIdentifier:*MEMORY[0x1E6993168] withReason:@"event editor getting current location"];
    locationAssertion = self->_locationAssertion;
    self->_locationAssertion = v4;
  }
}

- (void)stopUpdatingLocation
{
  [(EKLocationSearchModel *)self _decrementPendingOperationsCountForDomain:@"OperationDomainCurrentLocation"];
  v3 = [(EKLocationSearchModel *)self delegate];
  [v3 locationSearchModel:self updatedSearchTypes:1];

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_stopUpdatingLocation object:0];
  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  locationAssertion = self->_locationAssertion;
  self->_locationAssertion = 0;

  v5 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_INFO, "Stopped updating current location", v6, 2u);
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_ERROR, "Updating current location failed with error: %@", &v8, 0xCu);
  }

  [(EKLocationSearchModel *)self stopUpdatingLocation];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a4;
  v7 = [a3 _limitsPrecision];
  v8 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_INFO, "Found current location, shifting...", buf, 2u);
  }

  v9 = [v6 lastObject];

  v10 = objc_alloc_init(EKWeakLinkClass());
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__EKLocationSearchModel_locationManager_didUpdateLocations___block_invoke;
  v11[3] = &unk_1E77FF7C0;
  v12 = v7;
  v11[4] = self;
  [v10 shiftLocation:v9 withCompletionHandler:v11];
  [(EKLocationSearchModel *)self stopUpdatingLocation];
}

void __60__EKLocationSearchModel_locationManager_didUpdateLocations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1)
  {
    v5 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_INFO, "Current location shifting finished. Result is imprecise, so this only affects search result relevancy", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = v4;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = EKUserFriendlyStringForCLLocation(v3);
    v10 = [EKStructuredLocation locationWithTitle:v9];
    v11 = *(a1 + 32);
    v12 = *(v11 + 32);
    *(v11 + 32) = v10;

    [*(*(a1 + 32) + 32) setGeoLocation:v4];
    v13 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A805E000, v13, OS_LOG_TYPE_INFO, "Current location shifting finished", v14, 2u);
    }

    [*(a1 + 32) _decrementPendingOperationsCountForDomain:@"OperationDomainCurrentLocation"];
    v8 = [*(a1 + 32) delegate];
    [v8 locationSearchModel:*(a1 + 32) updatedSearchTypes:1];
  }
}

- (void)resetContactsSearchResults
{
  contactsSearchToken = self->_contactsSearchToken;
  if (contactsSearchToken)
  {
    [(CNCancelable *)contactsSearchToken cancel];
    v4 = self->_contactsSearchToken;
    self->_contactsSearchToken = 0;
  }

  contactsSearchResults = self->_contactsSearchResults;
  if (contactsSearchResults)
  {
    self->_contactsSearchResults = 0;
  }
}

- (void)resetEventsSearchResults
{
  v3 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_INFO, "Resetting event search results", v8, 2u);
  }

  eventsSearch = self->_eventsSearch;
  if (eventsSearch)
  {
    [(EKOccurrenceCacheSearch *)eventsSearch cancel];
    v5 = self->_eventsSearch;
    self->_eventsSearch = 0;
  }

  eventsSearchResults = self->_eventsSearchResults;
  if (eventsSearchResults)
  {
    self->_eventsSearchResults = 0;
  }

  textualSearchResults = self->_textualSearchResults;
  if (textualSearchResults)
  {
    self->_textualSearchResults = 0;
  }
}

- (void)resetConferenceRoomSearchResults
{
  [(NSOperationQueue *)self->_conferenceRoomOperationQueue cancelAllOperations];
  [(NSMutableArray *)self->_mutableConferenceRoomSearchResults removeAllObjects];
  conferenceRoomAddressesToConferenceRooms = self->_conferenceRoomAddressesToConferenceRooms;

  [(NSMutableDictionary *)conferenceRoomAddressesToConferenceRooms removeAllObjects];
}

- (void)resetRecentsSearchResults
{
  currentRecentsSearch = self->_currentRecentsSearch;
  self->_currentRecentsSearch = 0;

  recentsSearchResults = self->_recentsSearchResults;

  [(NSMutableArray *)recentsSearchResults removeAllObjects];
}

- (void)resetSearchResults:(BOOL)a3
{
  v3 = a3;
  v5 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_INFO, "Resetting location search results", v13, 2u);
  }

  if (v3)
  {
    [(CLGeocoder *)self->_geocoder cancelGeocode];
    [(MKLocalSearchCompleter *)self->_completer cancel];
    [(CalCancelable *)self->_localSearch cancel];
    localSearch = self->_localSearch;
    self->_localSearch = 0;
  }

  [(EKLocationSearchModel *)self resetContactsSearchResults];
  [(EKLocationSearchModel *)self resetEventsSearchResults];
  [(EKLocationSearchModel *)self resetConferenceRoomSearchResults];
  [(EKLocationSearchModel *)self resetRecentsSearchResults];
  locationFromMapsURL = self->_locationFromMapsURL;
  self->_locationFromMapsURL = 0;

  mapCompletionSearchResults = self->_mapCompletionSearchResults;
  self->_mapCompletionSearchResults = 0;

  frequentsSearchResults = self->_frequentsSearchResults;
  self->_frequentsSearchResults = 0;

  virtualConferenceRoomSearchResults = self->_virtualConferenceRoomSearchResults;
  self->_virtualConferenceRoomSearchResults = 0;

  virtualConferenceCustomSearchResults = self->_virtualConferenceCustomSearchResults;
  self->_virtualConferenceCustomSearchResults = 0;

  if (v3)
  {
    v12 = [(EKLocationSearchModel *)self delegate];
    [v12 locationSearchModel:self updatedSearchTypes:2047];
  }
}

- (void)cancelSearch
{
  [(EKLocationSearchModel *)self resetSearchResults:1];
  v2 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A805E000, v2, OS_LOG_TYPE_INFO, "Location search cancelled", v3, 2u);
  }
}

- (void)beginSearchForTerm:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainSearch"];
  v5 = ICSRedactString();
  v6 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Location search begins!!", buf, 0xCu);
  }

  [(EKLocationSearchModel *)self resetSearchResults:0];
  [(EKLocationSearchModel *)self getCurrentLocation];
  supportedSearchTypes = self->_supportedSearchTypes;
  if ((supportedSearchTypes & 4) != 0)
  {
    if (!self->_completer)
    {
      v8 = objc_alloc_init(EKWeakLinkClass());
      completer = self->_completer;
      self->_completer = v8;

      [(MKLocalSearchCompleter *)self->_completer setDelegate:self];
      [(MKLocalSearchCompleter *)self->_completer setEntriesType:0];
      currentLocation = self->_currentLocation;
      if (currentLocation)
      {
        v11 = [(EKStructuredLocation *)currentLocation geoLocation];
        [(MKLocalSearchCompleter *)self->_completer setDeviceLocation:v11];
      }

      else if (self->_currentImpreciseLocation)
      {
        [(MKLocalSearchCompleter *)self->_completer setDeviceLocation:?];
      }
    }

    v12 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_1A805E000, v12, OS_LOG_TYPE_INFO, "[%{public}@] >>>> MapKit", buf, 0xCu);
    }

    [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainMapCompletions"];
    [(MKLocalSearchCompleter *)self->_completer setQueryFragment:v4];
    v13 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__EKLocationSearchModel_beginSearchForTerm___block_invoke;
    block[3] = &unk_1E77FD418;
    block[4] = self;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);
    supportedSearchTypes = self->_supportedSearchTypes;
    if ((supportedSearchTypes & 2) == 0)
    {
LABEL_5:
      if ((supportedSearchTypes & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((supportedSearchTypes & 2) == 0)
  {
    goto LABEL_5;
  }

  v14 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_1A805E000, v14, OS_LOG_TYPE_INFO, "[%{public}@] >>>> MapKit from URL", buf, 0xCu);
  }

  [(EKLocationSearchModel *)self _updateMapURL:v4];
  supportedSearchTypes = self->_supportedSearchTypes;
  if ((supportedSearchTypes & 8) == 0)
  {
LABEL_6:
    if ((supportedSearchTypes & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  v15 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_1A805E000, v15, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Contacts", buf, 0xCu);
  }

  [(EKLocationSearchModel *)self updateContacts:v4];
  supportedSearchTypes = self->_supportedSearchTypes;
  if ((supportedSearchTypes & 0x10) == 0)
  {
LABEL_7:
    if ((supportedSearchTypes & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_24:
  v16 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_1A805E000, v16, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Recents", buf, 0xCu);
  }

  [(EKLocationSearchModel *)self updateRecents:v4];
  supportedSearchTypes = self->_supportedSearchTypes;
  if ((supportedSearchTypes & 0x20) == 0)
  {
LABEL_8:
    if ((supportedSearchTypes & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

LABEL_27:
  v17 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_1A805E000, v17, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Frequents", buf, 0xCu);
  }

  [(EKLocationSearchModel *)self searchFrequentLocations:v4];
  supportedSearchTypes = self->_supportedSearchTypes;
  if ((supportedSearchTypes & 0x100) != 0)
  {
LABEL_30:
    v18 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_1A805E000, v18, OS_LOG_TYPE_INFO, "[%{public}@] >>>> ConferenceRooms", buf, 0xCu);
    }

    [(EKLocationSearchModel *)self searchConferenceRooms:v4];
    supportedSearchTypes = self->_supportedSearchTypes;
  }

LABEL_33:
  if ((supportedSearchTypes & 0xC0) != 0)
  {
    v19 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_1A805E000, v19, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Events", buf, 0xCu);
    }

    [(EKLocationSearchModel *)self updateEventLocations:v4];
    supportedSearchTypes = self->_supportedSearchTypes;
  }

  if ((supportedSearchTypes & 0x200) != 0)
  {
    v20 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_1A805E000, v20, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Virtual Conference Rooms", buf, 0xCu);
    }

    [(EKLocationSearchModel *)self updateVirtualConferenceRoomOptions:v4];
    supportedSearchTypes = self->_supportedSearchTypes;
  }

  if ((supportedSearchTypes & 0x400) != 0)
  {
    v21 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_1A805E000, v21, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Virtual Conference Custom", buf, 0xCu);
    }

    [(EKLocationSearchModel *)self _updateVirtualConferenceCustomOptions:v4];
  }

  [(EKLocationSearchModel *)self _decrementPendingOperationsCountForDomain:@"OperationDomainSearch"];

  v22 = *MEMORY[0x1E69E9840];
}

void __44__EKLocationSearchModel_beginSearchForTerm___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.calendaruikit.search" code:0 userInfo:&unk_1F1B6B2D8];
  [*(a1 + 32) completerDidFail:*(*(a1 + 32) + 24) error:v2];
}

- (unint64_t)dedupeResults
{
  v55 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = self->_recentsSearchResults;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v44;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v43 + 1) + 8 * i) recent];
        v10 = [EKRecents locationForRecent:v9];

        frequentsSearchResults = self->_frequentsSearchResults;
        if (frequentsSearchResults && [(NSMutableArray *)frequentsSearchResults count])
        {
          v12 = self->_frequentsSearchResults;
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __38__EKLocationSearchModel_dedupeResults__block_invoke;
          v41[3] = &unk_1E77FF7E8;
          v42 = v10;
          v13 = [(NSMutableArray *)v12 indexesOfObjectsPassingTest:v41];
          v14 = v13;
          if (v13 && [v13 count])
          {
            [(NSMutableArray *)self->_frequentsSearchResults removeObjectsAtIndexes:v14];
            v6 |= 0x20uLL;
          }
        }

        else
        {
          v14 = 0;
        }

        eventsSearchResults = self->_eventsSearchResults;
        if (eventsSearchResults && [(NSMutableArray *)eventsSearchResults count])
        {
          v16 = self->_eventsSearchResults;
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __38__EKLocationSearchModel_dedupeResults__block_invoke_2;
          v39[3] = &unk_1E77FF810;
          v40 = v10;
          v17 = [(NSMutableArray *)v16 indexesOfObjectsPassingTest:v39];

          if (v17 && [v17 count])
          {
            [(NSMutableArray *)self->_eventsSearchResults removeObjectsAtIndexes:v17];
            v6 |= 0x40uLL;
          }
        }

        else
        {
          v17 = v14;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = self->_frequentsSearchResults;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = self->_eventsSearchResults;
        if (v23)
        {
          v24 = *(*(&v35 + 1) + 8 * j);
          if ([(NSMutableArray *)v23 count])
          {
            v25 = self->_eventsSearchResults;
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __38__EKLocationSearchModel_dedupeResults__block_invoke_3;
            v34[3] = &unk_1E77FF810;
            v34[4] = v24;
            v26 = [(NSMutableArray *)v25 indexesOfObjectsPassingTest:v34];
            v27 = v26;
            if (v26 && [v26 count])
            {
              [(NSMutableArray *)self->_eventsSearchResults removeObjectsAtIndexes:v27];
              v6 |= 0x40uLL;
            }
          }
        }
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v53 count:16];
    }

    while (v20);
  }

  v28 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_recentsSearchResults, "count")}];
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_eventsSearchResults, "count")}];
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_frequentsSearchResults, "count")}];
    *buf = 138543874;
    v48 = v29;
    v49 = 2114;
    v50 = v30;
    v51 = 2114;
    v52 = v31;
    _os_log_impl(&dword_1A805E000, v28, OS_LOG_TYPE_INFO, "After de-duping search results, Recents: %{public}@, Events: %{public}@, Frequents: %{public}@", buf, 0x20u);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __38__EKLocationSearchModel_dedupeResults__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 location];
  v4 = [v2 isEqualToLocation:v3];

  return v4;
}

uint64_t __38__EKLocationSearchModel_dedupeResults__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 location];
  v4 = [v2 isEqualToLocation:v3];

  return v4;
}

- (void)completerDidUpdateResults:(id)a3 finished:(BOOL)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(EKLocationSearchModel *)self _decrementPendingOperationsCountForDomain:@"OperationDomainMapCompletions"];
  v6 = [v5 queryFragment];
  v7 = ICSRedactString();

  v8 = [v5 resultsAreCurrent];
  v9 = +[EKLogSubsystem locationSearch];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v11 = MEMORY[0x1E696AD98];
      v12 = [v5 results];
      v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
      *buf = 138543618;
      v32 = v7;
      v33 = 2114;
      v34 = v13;
      _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_INFO, "[%{public}@] <<<< MapKit %{public}@ results", buf, 0x16u);
    }

    v14 = [v5 results];
    v9 = v14;
    if (v14)
    {
      v25 = v7;
      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSObject count](v14, "count")}];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = v9;
      v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [[EKMapSearchCompletion alloc] initWithMapSearchCompletion:*(*(&v26 + 1) + 8 * i)];
            [(NSArray *)v15 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v18);
      }

      v7 = v25;
    }

    else
    {
      v15 = 0;
    }

    mapCompletionSearchResults = self->_mapCompletionSearchResults;
    self->_mapCompletionSearchResults = v15;

    v23 = [(EKLocationSearchModel *)self delegate];
    [v23 locationSearchModel:self updatedSearchTypes:4];
  }

  else if (v10)
  {
    *buf = 138543362;
    v32 = v7;
    _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_INFO, "[%{public}@] <<<< MapKit but results are not current", buf, 0xCu);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)completerDidFail:(id)a3 error:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  [(EKLocationSearchModel *)self _decrementPendingOperationsCountForDomain:@"OperationDomainMapCompletions"];
  v8 = [(EKLocationSearchModel *)self delegate];
  [v8 locationSearchModel:self updatedSearchTypes:4];

  v9 = [v7 queryFragment];

  v10 = ICSRedactString();

  v11 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] MapKit failed with error: %@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateContacts:(id)a3
{
  v4 = a3;
  [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainContacts"];
  v18 = ICSRedactString();
  [(EKLocationSearchModel *)self resetContactsSearchResults];
  v5 = objc_opt_new();
  contactsSearchResults = self->_contactsSearchResults;
  self->_contactsSearchResults = v5;

  v7 = [(EKLocationSearchModel *)self delegate];
  [v7 locationSearchModel:self updatedSearchTypes:8];

  v8 = EKDescriptorForRequiredKeysForLabeledDisplayString();
  v9 = [v8 arrayByAddingObject:*MEMORY[0x1E695C360]];

  v10 = [objc_alloc(EKWeakLinkClass()) initWithKeysToFetch:v9];
  v11 = [MEMORY[0x1E695CD58] predicateForContactsMatchingFullTextSearch:v4 containerIdentifiers:0 groupIdentifiers:0];
  [v10 setPredicate:v11];

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__19;
  v42[4] = __Block_byref_object_dispose__19;
  v43 = objc_opt_new();
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__19;
  v40 = __Block_byref_object_dispose__19;
  v41 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __40__EKLocationSearchModel_updateContacts___block_invoke;
  v31[3] = &unk_1E77FF838;
  v31[4] = v34;
  v12 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v31 block:0.33];
  contactStore = self->_contactStore;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __40__EKLocationSearchModel_updateContacts___block_invoke_2;
  v25[3] = &unk_1E77FF888;
  v28 = v32;
  v29 = v34;
  v27 = v42;
  v25[4] = self;
  v26 = v18;
  v30 = &v36;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __40__EKLocationSearchModel_updateContacts___block_invoke_138;
  v19[3] = &unk_1E77FF8D8;
  v14 = v26;
  v20 = v14;
  v21 = self;
  v23 = v42;
  v24 = &v36;
  v15 = v12;
  v22 = v15;
  v16 = [(CNContactStore *)contactStore executeFetchRequest:v10 progressiveResults:v25 completion:v19];
  contactsSearchToken = self->_contactsSearchToken;
  self->_contactsSearchToken = v16;

  objc_storeStrong(v37 + 5, v16);
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(v42, 8);
}

void __40__EKLocationSearchModel_updateContacts___block_invoke_2(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a2;
  v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v26)
  {
    v25 = *v37;
    do
    {
      v3 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v3;
        v4 = *(*(&v36 + 1) + 8 * v3);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v5 = [v4 postalAddresses];
        v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v33;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v33 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v32 + 1) + 8 * i);
              v11 = MEMORY[0x1E695CF68];
              v12 = [v10 value];
              v13 = [v11 stringFromPostalAddress:v12 style:0];

              v14 = [EKStructuredLocation locationWithTitle:v13];
              v15 = [v10 label];
              v16 = [EKContactDescriptionGenerator EKLabeledDisplayStringForContact:v4 label:v15];
              [v14 setContactLabel:v16];

              [v14 setAddress:v13];
              [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
            }

            v7 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v7);
        }

        v3 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v26);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && [*(*(*(a1 + 48) + 8) + 40) count] >= 0xA)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v17 = *(*(*(a1 + 48) + 8) + 40);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    [*(a1 + 32) _incrementPendingOperationsCountForDomain:@"OperationDomainContacts"];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__EKLocationSearchModel_updateContacts___block_invoke_3;
    block[3] = &unk_1E77FF860;
    v21 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v29 = v21;
    v30 = v17;
    v31 = *(a1 + 72);
    v22 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __40__EKLocationSearchModel_updateContacts___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _decrementPendingOperationsCountForDomain:@"OperationDomainContacts"];
  v2 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "count")}];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1A805E000, v2, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Contacts %{public}@ progressive results", &v7, 0x16u);
  }

  result = [*(a1 + 32) _updateContactsSearchWithResults:*(a1 + 48) forToken:*(*(*(a1 + 56) + 8) + 40)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __40__EKLocationSearchModel_updateContacts___block_invoke_138(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EKLocationSearchModel_updateContacts___block_invoke_2_139;
  block[3] = &unk_1E77FF8B0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = v2;
  v8 = v3;
  v10 = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __40__EKLocationSearchModel_updateContacts___block_invoke_2_139(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1A805E000, v2, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Contacts %{public}@ results", &v8, 0x16u);
  }

  [*(a1 + 40) _decrementPendingOperationsCountForDomain:@"OperationDomainContacts"];
  [*(a1 + 40) _updateContactsSearchWithResults:*(*(*(a1 + 56) + 8) + 40) forToken:*(*(*(a1 + 64) + 8) + 40)];
  [*(a1 + 48) invalidate];
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  if (*(*(*(a1 + 64) + 8) + 40) == v6)
  {
    *(v5 + 80) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateContactsSearchWithResults:(id)a3 forToken:(id)a4
{
  if (self->_contactsSearchToken == a4)
  {
    [(NSMutableArray *)self->_contactsSearchResults addObjectsFromArray:a3];
    v6 = [(EKLocationSearchModel *)self delegate];
    [v6 locationSearchModel:self updatedSearchTypes:8];
  }
}

- (void)updateRecents:(id)a3
{
  v37[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((self->_supportedSearchTypes & 0x10) != 0)
  {
    [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainRecents"];
    if (v4)
    {
      v28 = EKWeakLinkStringConstant();
      v27 = EKWeakLinkStringConstant();
      v26 = EKWeakLinkStringConstant();
      v25 = EKWeakLinkStringConstant();
      v5 = EKWeakLinkClass();
      v36 = v28;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
      v7 = [v5 predicateForKey:v27 inCollection:v6];
      v37[0] = v7;
      v8 = [v5 predicateForKey:v26 matchingText:v4 comparison:1];
      v35[0] = v8;
      v9 = [v5 predicateForKey:v25 matchingText:v4 comparison:1];
      v35[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      v11 = [v5 predicateSatisfyingAnySubpredicate:v10];
      v37[1] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      v13 = [v5 predicateSatisfyingAllSubpredicates:v12];

      v14 = v28;
    }

    else
    {
      v14 = +[EKLogSubsystem locationSearch];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A805E000, v14, OS_LOG_TYPE_INFO, "Recents query is nil, returning all recents", &buf, 2u);
      }

      v13 = 0;
    }

    if (!self->_recentsQueue)
    {
      v15 = dispatch_queue_create("com.apple.mobilecal.recents", 0);
      recentsQueue = self->_recentsQueue;
      self->_recentsQueue = v15;
    }

    objc_initWeak(&buf, self);
    v17 = EKWeakLinkClass();
    v18 = EKWeakLinkClass();
    v19 = objc_alloc_init(v18);
    [v19 setSearchPredicate:v13];
    [v19 setDomains:&unk_1F1B6B200];
    v20 = [(objc_class *)v18 frecencyComparator];
    [v19 setComparator:v20];

    objc_storeStrong(&self->_currentRecentsSearch, v19);
    v21 = [v17 defaultInstance];
    v22 = self->_recentsQueue;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __39__EKLocationSearchModel_updateRecents___block_invoke;
    v29[3] = &unk_1E77FF9A0;
    objc_copyWeak(v33, &buf);
    v23 = v19;
    v30 = v23;
    v31 = self;
    v33[1] = v17;
    v32 = v4;
    [v21 performRecentsSearch:v23 queue:v22 completion:v29];

    objc_destroyWeak(v33);
    objc_destroyWeak(&buf);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __39__EKLocationSearchModel_updateRecents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && [*(a1 + 32) isEqual:WeakRetained[16]])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__EKLocationSearchModel_updateRecents___block_invoke_2;
    v6[3] = &unk_1E77FF978;
    v6[4] = *(a1 + 40);
    v5 = v3;
    v11 = *(a1 + 64);
    v7 = v5;
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __39__EKLocationSearchModel_updateRecents___block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v27 = [v2 sourceForSearchModel:*(a1 + 32)];

  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v29 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  group = dispatch_group_create();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    v25 = v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * i);
        if (![EKRecents recentIsDirectoryLocation:v8, v25])
        {
          goto LABEL_19;
        }

        v9 = objc_alloc_init(EKConferenceRoom);
        v10 = objc_alloc_init(EKDirectoryLocation);
        [(EKConferenceRoom *)v9 setLocation:v10];

        v11 = [v8 displayName];
        v12 = [(EKConferenceRoom *)v9 location];
        [v12 setDisplayName:v11];

        v13 = [*(a1 + 32) delegate];
        v14 = [v13 shouldIncludeConferenceRoom:v9];

        if ([EKRecents recentDirectoryLocation:v8 matchesSource:v27])
        {
          if (v14)
          {
LABEL_19:
            if ([EKRecents recentMissingStyleAttributes:v8])
            {
              v15 = [EKRecents mapKitHandleForRecent:v8];
              if (v15)
              {
                dispatch_group_enter(group);
                MKMapItemClass = getMKMapItemClass();
                v37[0] = MEMORY[0x1E69E9820];
                v37[1] = 3221225472;
                v38[0] = __39__EKLocationSearchModel_updateRecents___block_invoke_3;
                v38[1] = &unk_1E77FF900;
                v39 = v29;
                v40 = v8;
                v43 = *(a1 + 72);
                v15 = v15;
                v41 = v15;
                v42 = group;
                [MKMapItemClass _mapItemFromHandle:v15 completionHandler:v37];
              }
            }

            else
            {
              v15 = [EKRecents mapKitStyleAttributesForRecent:v8];
              os_unfair_lock_lock(&OperationDomainVirtualConferencesCustom_block_invoke_dictionaryLock);
              v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "contactID")}];
              [v29 setObject:v15 forKeyedSubscript:v17];

              os_unfair_lock_unlock(&OperationDomainVirtualConferencesCustom_block_invoke_dictionaryLock);
            }

            [v3 addObject:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v5);
  }

  v18 = *(*(a1 + 48) + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EKLocationSearchModel_updateRecents___block_invoke_163;
  block[3] = &unk_1E77FF950;
  v31 = group;
  v32 = v3;
  v33 = v29;
  v19 = *(a1 + 56);
  v20 = *(a1 + 48);
  v34 = v19;
  v35 = v20;
  v36 = *(a1 + 64);
  v21 = v29;
  v22 = v3;
  v23 = group;
  dispatch_async(v18, block);

  v24 = *MEMORY[0x1E69E9840];
}

void __39__EKLocationSearchModel_updateRecents___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    os_unfair_lock_lock(&OperationDomainVirtualConferencesCustom_block_invoke_dictionaryLock);
    v7 = [v5 _styleAttributes];
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "contactID")}];
    [v8 setObject:v7 forKeyedSubscript:v9];

    os_unfair_lock_unlock(&OperationDomainVirtualConferencesCustom_block_invoke_dictionaryLock);
    v10 = *(a1 + 40);
    v11 = [v5 _styleAttributes];
    v12 = [EKRecents recentEventWithRecentContact:v10 styleAttributes:v11];

    v13 = [*(a1 + 64) defaultInstance];
    v21[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v13 recordContactEvents:v14 recentsDomain:@"com.apple.eventkit.ios" sendingAddress:0 completion:0];
  }

  else
  {
    v12 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 48);
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1A805E000, v12, OS_LOG_TYPE_ERROR, "Failed to get map item from handle when updating recents: %@, %@", &v17, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 56));
  v16 = *MEMORY[0x1E69E9840];
}

void __39__EKLocationSearchModel_updateRecents___block_invoke_163(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v2, v3))
  {
    v4 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_ERROR, "Timed out waiting for all mapItemHandles to resolve to mapItems", buf, 2u);
    }
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = objc_alloc_init(EKRecentContactSearchResult);
        [(EKRecentContactSearchResult *)v11 setRecent:v10];
        os_unfair_lock_lock(&OperationDomainVirtualConferencesCustom_block_invoke_dictionaryLock);
        v12 = *(a1 + 48);
        v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v10, "contactID")}];
        v14 = [v12 objectForKey:v13];

        os_unfair_lock_unlock(&OperationDomainVirtualConferencesCustom_block_invoke_dictionaryLock);
        [(EKRecentContactSearchResult *)v11 setAttributes:v14];
        [v5 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EKLocationSearchModel_updateRecents___block_invoke_165;
  block[3] = &unk_1E77FF928;
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v22 = v15;
  v23 = v16;
  v24 = v5;
  v25 = v17;
  v18 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v19 = *MEMORY[0x1E69E9840];
}

void __39__EKLocationSearchModel_updateRecents___block_invoke_165(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isEqual:*(*(a1 + 40) + 128)];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3[22] removeAllObjects];
    [*(*(a1 + 40) + 176) addObjectsFromArray:*(a1 + 48)];
    if (*(a1 + 56))
    {
      v4 = ICSRedactString();
      v5 = +[EKLogSubsystem locationSearch];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 40) + 176), "count")}];
        v11 = 138543618;
        v12 = v4;
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Recents %{public}@ results", &v11, 0x16u);
      }
    }

    else
    {
      v4 = +[EKLogSubsystem locationSearch];
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
LABEL_11:

        v8 = [*(a1 + 40) dedupeResults];
        [*(a1 + 40) _decrementPendingOperationsCountForDomain:@"OperationDomainRecents"];
        v9 = [*(a1 + 40) delegate];
        [v9 locationSearchModel:*(a1 + 40) updatedSearchTypes:v8 | 0x10];

        v10 = *MEMORY[0x1E69E9840];
        return;
      }

      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 40) + 176), "count")}];
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_INFO, "Returning all Recents %{public}@ results", &v11, 0xCu);
    }

    goto LABEL_11;
  }

  v7 = *MEMORY[0x1E69E9840];

  [v3 _decrementPendingOperationsCountForDomain:@"OperationDomainRecents"];
}

+ (id)mapItemForMapKitHandle:(id)a3
{
  if (a3)
  {
    v4 = [_mapItemCache objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)searchFrequentLocations:(id)a3
{
  v4 = a3;
  [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainFrequents"];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__EKLocationSearchModel_searchFrequentLocations___block_invoke;
  v6[3] = &unk_1E77FF9C8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [EKTravelLookupManager estimateGeolocationFromHistoricDevicePositionAtLocation:v5 withCompletionBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __49__EKLocationSearchModel_searchFrequentLocations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__EKLocationSearchModel_searchFrequentLocations___block_invoke_2;
    v9[3] = &unk_1E77FF928;
    v9[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    v12 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

void __49__EKLocationSearchModel_searchFrequentLocations___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 184);
  if (v2)
  {
    [v2 removeAllObjects];
  }

  else
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = *(a1 + 32);
    v5 = *(v4 + 184);
    *(v4 + 184) = v3;
  }

  if (*(a1 + 40) && !*(a1 + 48))
  {
    v6 = [EKStructuredLocation locationWithTitle:*(a1 + 56)];
    [v6 setGeoLocation:*(a1 + 40)];
    [v6 setAddress:0];
    [*(*(a1 + 32) + 184) addObject:v6];
  }

  v7 = *(a1 + 56);
  v8 = ICSRedactString();
  v9 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [*(a1 + 32) frequentsSearchResults];
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    v16 = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Frequents %{public}@ results", &v16, 0x16u);
  }

  v13 = [*(a1 + 32) dedupeResults];
  [*(a1 + 32) _decrementPendingOperationsCountForDomain:@"OperationDomainFrequents"];
  v14 = [*(a1 + 32) delegate];
  [v14 locationSearchModel:*(a1 + 32) updatedSearchTypes:v13 | 0x20];

  v15 = *MEMORY[0x1E69E9840];
}

- (id)splitEventLocations:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = [v3 structuredLocationWithoutPrediction];
  v4 = [v3 preferredLocationWithoutPrediction];
  v5 = [v4 title];
  v6 = [v5 componentsSeparatedByString:@" "];;

  [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = v21 = v3;
  v25 = [v3 attendees];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = v25;
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
LABEL_8:
          v16 = 0;
          while (1)
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v26 + 1) + 8 * v16) name];
            v18 = [v17 isEqualToString:v11];

            if (v18)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v14)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:

          if (v23)
          {
            [v23 duplicate];
          }

          else
          {
            [EKStructuredLocation locationWithTitle:v11];
          }
          v12 = ;
          [v12 setTitle:v11];
          [v22 addObject:v12];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)updateEventLocations:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToString:&stru_1F1B49D68] & 1) == 0 && self->_eventStore)
  {
    [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainEvents"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = [(EKEventStore *)self->_eventStore readWriteCalendarsForEntityType:0];
    v8 = [v6 setWithArray:v7];

    eventStore = self->_eventStore;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__EKLocationSearchModel_updateEventLocations___block_invoke;
    v18[3] = &unk_1E77FFAB8;
    v19 = v5;
    v20 = self;
    v10 = [(EKOccurrenceCacheSearch *)EKOccurrenceCacheLocationSearch searchWithCalendars:v8 searchTerm:v19 store:eventStore callback:v18];
    eventsSearch = self->_eventsSearch;
    self->_eventsSearch = v10;

    if (!self->_eventsQueue)
    {
      v12 = dispatch_queue_create("com.apple.mobilecal.eventslocation", 0);
      eventsQueue = self->_eventsQueue;
      self->_eventsQueue = v12;
    }

    objc_initWeak(&location, self->_eventsSearch);
    v14 = self->_eventsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__EKLocationSearchModel_updateEventLocations___block_invoke_190;
    block[3] = &unk_1E77FFAE0;
    objc_copyWeak(&v16, &location);
    block[4] = self;
    dispatch_async(v14, block);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __46__EKLocationSearchModel_updateEventLocations___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = ICSRedactString();
  v6 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    *buf = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events %{public}@ match results", buf, 0x16u);
  }

  v8 = v3;
  v9 = *(a1 + 40);
  v10 = *(v9 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EKLocationSearchModel_updateEventLocations___block_invoke_179;
  block[3] = &unk_1E77FDF98;
  block[4] = v9;
  v15 = v5;
  v11 = v8;
  v16 = v11;
  v17 = *(a1 + 32);
  v18 = v11;
  v12 = v5;
  dispatch_async(v10, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __46__EKLocationSearchModel_updateEventLocations___block_invoke_179(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  v1 = [*(*(a1 + 32) + 120) searchTerm];
  v28 = ICSRedactString();

  v2 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "count")}];
    *buf = 138543874;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v83 = v28;
    _os_log_impl(&dword_1A805E000, v2, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events Processing %{public}@ match results, events search text = %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v83 = __Block_byref_object_copy__19;
  v84 = __Block_byref_object_dispose__19;
  v85 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__19;
  v78 = __Block_byref_object_dispose__19;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EKLocationSearchModel_updateEventLocations___block_invoke_180;
  block[3] = &unk_1E77FF9F0;
  v5 = a1;
  block[4] = *(a1 + 32);
  v66 = *(a1 + 56);
  v67 = &v70;
  v68 = buf;
  v69 = &v74;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  if (*(v71 + 24) == 1)
  {
    [*(a1 + 32) _decrementPendingOperationsCountForDomain:@"OperationDomainEvents"];
  }

  else
  {
    group = dispatch_group_create();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = *(a1 + 64);
    v6 = [obj countByEnumeratingWithState:&v61 objects:v81 count:16];
    if (v6)
    {
      v30 = *v62;
      do
      {
        v36 = 0;
        v31 = v6;
        do
        {
          if (*v62 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v61 + 1) + 8 * v36);
          v35 = [v7 objectForKey:{@"objectID", v28}];
          v34 = [v7 objectForKey:@"occurrenceDate"];
          v33 = [*(*(v5 + 32) + 112) eventForObjectID:v35 occurrenceDate:? checkValid:?];
          v8 = [*(v5 + 32) splitEventLocations:?];
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v57 objects:v80 count:16];
          if (v10)
          {
            v11 = *v58;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v58 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v57 + 1) + 8 * i);
                v14 = [v13 geoLocation];

                if (v14)
                {
                  *v53 = 0;
                  v54 = v53;
                  v55 = 0x2020000000;
                  v56 = 1;
                  v15 = *(*&buf[8] + 40);
                  v52[0] = MEMORY[0x1E69E9820];
                  v52[1] = 3221225472;
                  v52[2] = __46__EKLocationSearchModel_updateEventLocations___block_invoke_181;
                  v52[3] = &unk_1E77FFA18;
                  v52[4] = v13;
                  v52[5] = v53;
                  [v15 enumerateObjectsUsingBlock:v52];
                  if (v13 && (v54[24] & 1) != 0)
                  {
                    v16 = [v13 mapKitHandle];
                    if (v16)
                    {
                      v17 = [_mapItemCache objectForKey:v16];
                      v18 = v17 == 0;

                      if (v18)
                      {
                        dispatch_group_enter(group);
                        MKMapItemClass = getMKMapItemClass();
                        v48[0] = MEMORY[0x1E69E9820];
                        v48[1] = 3221225472;
                        v48[2] = __46__EKLocationSearchModel_updateEventLocations___block_invoke_2;
                        v48[3] = &unk_1E77FFA40;
                        v20 = v16;
                        v49 = v20;
                        v50 = v13;
                        v51 = group;
                        [MKMapItemClass _mapItemFromHandle:v20 completionHandler:v48];
                      }
                    }

                    v21 = objc_alloc_init(EKStructuredLocationSearchResult);
                    [(EKStructuredLocationSearchResult *)v21 setLocation:v13];
                    [*(*&buf[8] + 40) addObject:v21];
                  }
                }

                else
                {
                  *v53 = 0;
                  v54 = v53;
                  v55 = 0x2020000000;
                  v56 = 1;
                  v22 = v75[5];
                  v47[0] = MEMORY[0x1E69E9820];
                  v47[1] = 3221225472;
                  v47[2] = __46__EKLocationSearchModel_updateEventLocations___block_invoke_184;
                  v47[3] = &unk_1E77FFA68;
                  v47[4] = v13;
                  v47[5] = v53;
                  [v22 enumerateObjectsUsingBlock:v47];
                  if (v13 && (v54[24] & 1) != 0)
                  {
                    [v75[5] addObject:v13];
                  }
                }

                _Block_object_dispose(v53, 8);
              }

              v10 = [v9 countByEnumeratingWithState:&v57 objects:v80 count:16];
            }

            while (v10);
          }

          v5 = a1;
          ++v36;
        }

        while (v36 != v31);
        v6 = [obj countByEnumeratingWithState:&v61 objects:v81 count:16];
      }

      while (v6);
    }

    v23 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(group, v23))
    {
      v24 = +[EKLogSubsystem locationSearch];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v53 = 0;
        _os_log_impl(&dword_1A805E000, v24, OS_LOG_TYPE_ERROR, "Timed out waiting for all mapItemHandles to resolve to mapItems", v53, 2u);
      }
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __46__EKLocationSearchModel_updateEventLocations___block_invoke_186;
    v42[3] = &unk_1E77FF9F0;
    v42[4] = *(a1 + 32);
    v43 = *(a1 + 56);
    v44 = &v70;
    v45 = buf;
    v46 = &v74;
    v25 = MEMORY[0x1E69E96A0];
    dispatch_sync(MEMORY[0x1E69E96A0], v42);

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __46__EKLocationSearchModel_updateEventLocations___block_invoke_187;
    v38[3] = &unk_1E77FFA90;
    v26 = *(a1 + 32);
    v41 = &v70;
    v38[4] = v26;
    v39 = *(a1 + 56);
    v40 = *(a1 + 48);
    dispatch_async(v25, v38);
  }

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  _Block_object_dispose(buf, 8);
  v27 = *MEMORY[0x1E69E9840];
}

void __46__EKLocationSearchModel_updateEventLocations___block_invoke_180(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 120) searchTerm];
  v3 = [v2 isEqualToString:a1[5]];

  if (v3)
  {
    v4 = *(a1[4] + 192);
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DF70] array];
      v6 = a1[4];
      v7 = *(v6 + 192);
      *(v6 + 192) = v5;

      v4 = *(a1[4] + 192);
    }

    v8 = [MEMORY[0x1E695DF70] arrayWithArray:v4];
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(a1[4] + 256);
    if (!v11)
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v13 = a1[4];
      v14 = *(v13 + 256);
      *(v13 + 256) = v12;

      v11 = *(a1[4] + 256);
    }

    v15 = [MEMORY[0x1E695DF70] arrayWithArray:v11];
    v16 = *(a1[8] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
    v18 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66BB8]();
  }

  else
  {
    v19 = a1[5];
    v20 = ICSRedactString();
    v21 = [*(a1[4] + 120) searchTerm];
    v22 = ICSRedactString();

    v23 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = v22;
      _os_log_impl(&dword_1A805E000, v23, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events Bailing before processing matches because query changed, events search text = %{public}@", &v25, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
    v24 = *MEMORY[0x1E69E9840];
  }
}

void __46__EKLocationSearchModel_updateEventLocations___block_invoke_181(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 location];
  LODWORD(v6) = [v6 isEqualToLocation:v7];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __46__EKLocationSearchModel_updateEventLocations___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [_mapItemCache setObject:a2 forKey:*(a1 + 32)];
  }

  else
  {
    v6 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 40) mapKitHandle];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_ERROR, "Failed to get map item from handle when fetching event locations: %@, %@", &v9, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 48));

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __46__EKLocationSearchModel_updateEventLocations___block_invoke_184(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqualToLocation:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void __46__EKLocationSearchModel_updateEventLocations___block_invoke_186(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 120) searchTerm];
  v3 = [v2 isEqualToString:a1[5]];

  if (v3)
  {
    v4 = [*(*(a1[7] + 8) + 40) mutableCopy];
    v5 = a1[4];
    v6 = *(v5 + 192);
    *(v5 + 192) = v4;

    v7 = [*(*(a1[8] + 8) + 40) mutableCopy];
    v8 = a1[4];
    v9 = *(v8 + 256);
    *(v8 + 256) = v7;
    v10 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66BB8]();
  }

  else
  {
    v11 = a1[5];
    v12 = ICSRedactString();
    v13 = [*(a1[4] + 120) searchTerm];
    v14 = ICSRedactString();

    v15 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_1A805E000, v15, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events Bailing before setting results because query changed, events search text = %{public}@", &v17, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
    v16 = *MEMORY[0x1E69E9840];
  }
}

void __46__EKLocationSearchModel_updateEventLocations___block_invoke_187(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    goto LABEL_4;
  }

  v2 = [*(*(a1 + 32) + 120) searchTerm];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if (v3)
  {
    if (![*(a1 + 48) count])
    {
      v15 = *(a1 + 40);
      v16 = ICSRedactString();
      v17 = +[EKLogSubsystem locationSearch];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 192), "count")}];
        v19 = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = v18;
        _os_log_impl(&dword_1A805E000, v17, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events %{public}@ results", &v19, 0x16u);
      }

      v4 = [*(a1 + 32) dedupeResults] | 0xC0;
      goto LABEL_5;
    }

LABEL_4:
    v4 = 192;
LABEL_5:
    if (![*(a1 + 48) count])
    {
      [*(a1 + 32) _decrementPendingOperationsCountForDomain:@"OperationDomainEvents"];
    }

    v5 = [*(a1 + 32) delegate];
    [v5 locationSearchModel:*(a1 + 32) updatedSearchTypes:v4];
    goto LABEL_11;
  }

  v6 = *(a1 + 40);
  v5 = ICSRedactString();
  v7 = [*(*(a1 + 32) + 120) searchTerm];
  v8 = ICSRedactString();

  v9 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v19 = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events Bailing before updating results because query changed, events search text = %{public}@", &v19, 0x16u);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 192);
  *(v10 + 192) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 256);
  *(v12 + 256) = 0;

  [*(a1 + 32) _decrementPendingOperationsCountForDomain:@"OperationDomainEvents"];
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

void __46__EKLocationSearchModel_updateEventLocations___block_invoke_190(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained run];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__EKLocationSearchModel_updateEventLocations___block_invoke_2_191;
    block[3] = &unk_1E77FD418;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __46__EKLocationSearchModel_updateEventLocations___block_invoke_2_191(uint64_t a1)
{
  [*(a1 + 32) _decrementPendingOperationsCountForDomain:@"OperationDomainEvents"];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 272));
  [WeakRetained locationSearchModel:*(a1 + 32) updatedSearchTypes:64];
}

- (void)searchConferenceRooms:(id)a3
{
  v4 = a3;
  [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainConferenceRooms"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__EKLocationSearchModel_searchConferenceRooms___block_invoke;
  v6[3] = &unk_1E77FD580;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __47__EKLocationSearchModel_searchConferenceRooms___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  v4 = [v3 sourceForSearchModel:*v2];

  v5 = [v4 _constraintsInternal];
  v6 = [v5 supportsLocationDirectorySearches];

  if (v6)
  {
    v7 = [*(a1 + 40) componentsSeparatedByCharactersInSet:*(*(a1 + 32) + 136)];
    v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v7];
    v9 = objc_alloc_init(EKDirectorySearchQuery);
    [(EKDirectorySearchQuery *)v9 setTerms:v8];
    [(EKDirectorySearchQuery *)v9 setFindLocations:1];
    [(EKDirectorySearchQuery *)v9 setResultLimit:50];
    objc_initWeak(&location, *(a1 + 32));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__EKLocationSearchModel_searchConferenceRooms___block_invoke_193;
    aBlock[3] = &unk_1E77FFB08;
    objc_copyWeak(&v26, &location);
    v25 = 0;
    v10 = _Block_copy(aBlock);
    v11 = [[EKDirectorySearchOperation alloc] initWithSource:v4 query:v9 resultsBlock:v10];
    objc_initWeak(&from, v11);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__EKLocationSearchModel_searchConferenceRooms___block_invoke_2;
    v20[3] = &unk_1E77FFB30;
    objc_copyWeak(&v22, &from);
    v20[4] = *(a1 + 32);
    v12 = v9;
    v21 = v12;
    [(EKDirectorySearchOperation *)v11 setCompletionBlock:v20];
    [*(*(a1 + 32) + 152) cancelAllOperations];
    [*(*(a1 + 32) + 160) removeAllObjects];
    [*(*(a1 + 32) + 168) removeAllObjects];
    v13 = *(a1 + 40);
    v14 = ICSRedactString();
    v15 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v8;
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 160), "count")}];
      *buf = 138543618;
      v29 = v14;
      v30 = 2114;
      v31 = v17;
      _os_log_impl(&dword_1A805E000, v15, OS_LOG_TYPE_INFO, "[%{public}@] <<<< ConferenceRooms %{public}@ results", buf, 0x16u);

      v8 = v16;
    }

    v18 = [*(a1 + 32) delegate];
    [v18 locationSearchModel:*(a1 + 32) updatedSearchTypes:256];

    [*(*(a1 + 32) + 152) addOperation:v11];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) _decrementPendingOperationsCountForDomain:@"OperationDomainConferenceRooms"];
    v7 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_DEBUG, "The source for the search model's event does not support location directory searches.  Will not search for conference rooms.", buf, 2u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __47__EKLocationSearchModel_searchConferenceRooms___block_invoke_193(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processDirectorySearchResultSet:v3 forOperation:*(a1 + 32)];
}

void __47__EKLocationSearchModel_searchConferenceRooms___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(*(a1 + 32) + 144);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__EKLocationSearchModel_searchConferenceRooms___block_invoke_196;
    block[3] = &unk_1E77FD7C8;
    v9 = WeakRetained;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v10 = v5;
    v11 = v6;
    dispatch_async(v4, block);

    v7 = v9;
  }

  else
  {
    v7 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_DEBUG, "The directory search operation went away.  Returning early.", buf, 2u);
    }
  }
}

void __47__EKLocationSearchModel_searchConferenceRooms___block_invoke_196(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 32) error];
    if (v2)
    {
      v3 = +[EKLogSubsystem locationSearch];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v2;
        v4 = "Directory search operation completed with error: [%@]";
        v5 = v3;
        v6 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_1A805E000, v5, v6, v4, buf, 0xCu);
      }
    }

    else
    {
      if (![*(a1 + 32) numberOfMatchesExceededLimit])
      {
LABEL_10:

        goto LABEL_11;
      }

      v3 = +[EKLogSubsystem locationSearch];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v7 = [*(a1 + 40) resultLimit];
        *buf = 134217984;
        v11 = v7;
        v4 = "Directory search operation completed.  The number of matches exceeded the original result limit of [%tu]";
        v5 = v3;
        v6 = OS_LOG_TYPE_DEBUG;
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKLocationSearchModel_searchConferenceRooms___block_invoke_197;
  block[3] = &unk_1E77FD418;
  block[4] = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v8 = *MEMORY[0x1E69E9840];
}

void __47__EKLocationSearchModel_searchConferenceRooms___block_invoke_197(uint64_t a1)
{
  [*(a1 + 32) _decrementPendingOperationsCountForDomain:@"OperationDomainConferenceRooms"];
  v2 = [*(a1 + 32) delegate];
  [v2 locationSearchModel:*(a1 + 32) updatedSearchTypes:256];
}

- (void)_processDirectorySearchResultSet:(id)a3 forOperation:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainConferenceRooms"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__EKLocationSearchModel__processDirectorySearchResultSet_forOperation___block_invoke;
  block[3] = &unk_1E77FD7C8;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__EKLocationSearchModel__processDirectorySearchResultSet_forOperation___block_invoke(id *a1)
{
  v2 = [a1[4] isCancelled];
  v3 = a1[5];
  if (v2)
  {

    [v3 _decrementPendingOperationsCountForDomain:@"OperationDomainConferenceRooms"];
  }

  else
  {
    v4 = [v3 delegate];
    v5 = [v4 sourceForSearchModel:a1[5]];

    v6 = [v5 _constraintsInternal];
    v7 = [v6 supportsAvailabilityRequests];

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [a1[6] locations];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__EKLocationSearchModel__processDirectorySearchResultSet_forOperation___block_invoke_2;
    v11[3] = &unk_1E77FFB58;
    v13 = v7;
    v11[4] = a1[5];
    v12 = v8;
    v10 = v8;
    [v9 enumerateObjectsUsingBlock:v11];

    [a1[5] _addDiscoveredConferenceRooms:v10];
  }
}

void __71__EKLocationSearchModel__processDirectorySearchResultSet_forOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_alloc_init(EKConferenceRoom);
  [(EKConferenceRoom *)v5 setLocation:v3];

  [(EKConferenceRoom *)v5 setAvailability:0];
  [(EKConferenceRoom *)v5 setSupportsAvailability:*(a1 + 48)];
  v4 = [*(a1 + 32) delegate];
  LODWORD(v3) = [v4 shouldIncludeConferenceRoom:v5];

  if (v3)
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)_addDiscoveredConferenceRooms:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138543362;
    v39 = v6;
    _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_INFO, "<<<< ConferenceRooms %{public}@ results", buf, 0xCu);
  }

  [(NSMutableArray *)self->_mutableConferenceRoomSearchResults addObjectsFromArray:v4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke;
  aBlock[3] = &__block_descriptor_40_e47_q24__0__EKConferenceRoom_8__EKConferenceRoom_16l;
  aBlock[4] = 193;
  v7 = _Block_copy(aBlock);
  [(NSMutableArray *)self->_mutableConferenceRoomSearchResults sortWithOptions:16 usingComparator:v7];
  v8 = [(EKLocationSearchModel *)self delegate];
  v9 = [v8 eventIDForSearchModel:self];

  v10 = [(EKLocationSearchModel *)self delegate];
  v11 = [v10 sourceForSearchModel:self];

  v12 = [(EKLocationSearchModel *)self delegate];
  v13 = [v12 dateRangeForSearchModel:self];

  v14 = [(EKLocationSearchModel *)self delegate];
  v15 = [v14 shouldIssueAvailabilityRequestForSearchModel:self];

  if (!v15)
  {
    v22 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v23 = "Not issuing availability request per delegate.";
      v24 = v22;
      v25 = 2;
LABEL_10:
      _os_log_impl(&dword_1A805E000, v24, OS_LOG_TYPE_DEBUG, v23, buf, v25);
    }

LABEL_11:

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKLocationSearchModel *)self _decrementPendingOperationsCountForDomain:@"OperationDomainConferenceRooms"];
    goto LABEL_12;
  }

  v16 = [v11 _constraintsInternal];
  v17 = [v16 supportsAvailabilityRequests];

  if ((v17 & 1) == 0)
  {
    v22 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = v11;
      v23 = "Not issuing availability request because the source does not support it: [%@]";
      v24 = v22;
      v25 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_201;
  v34[3] = &unk_1E77FFBA0;
  v19 = v18;
  v35 = v19;
  v36 = self;
  [v4 enumerateObjectsUsingBlock:v34];
  conferenceRoomProcessingQueue = self->_conferenceRoomProcessingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_2;
  block[3] = &unk_1E77FF950;
  block[4] = self;
  v21 = v19;
  v29 = v21;
  v30 = v9;
  v31 = v11;
  v32 = v13;
  v33 = v4;
  dispatch_async(conferenceRoomProcessingQueue, block);

LABEL_12:
  v26 = [(EKLocationSearchModel *)self delegate];
  [v26 locationSearchModel:self updatedSearchTypes:256];

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 location];
  v7 = [v6 displayName];

  v8 = [v5 location];

  v9 = [v8 displayName];

  v10 = [v7 compare:v9 options:*(a1 + 32)];
  return v10;
}

void __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_201(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 location];
  v4 = [v3 preferredAddress];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
    [*(*(a1 + 40) + 168) setObject:v5 forKey:v4];
    [v5 setAvailabilityRequestInProgress:1];
  }
}

void __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_3;
  aBlock[3] = &unk_1E77FDED0;
  objc_copyWeak(&v11, &location);
  v10 = 0;
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 32) _availabilityRequestForConferenceRooms:*(a1 + 40) eventID:*(a1 + 48) source:*(a1 + 56) dateRange:*(a1 + 64) resultsBlock:v2 completionBlock:0];
  objc_initWeak(&from, v3);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_5;
  v4[3] = &unk_1E77FFBE8;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  v5 = *(a1 + 72);
  [v3 setCompletionBlock:v4];
  [*(*(a1 + 32) + 152) addOperation:v3];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[18];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_4;
    block[3] = &unk_1E77FD7C8;
    block[4] = WeakRetained;
    v8 = v3;
    v9 = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_5(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = v3;
  if (!WeakRetained)
  {
    v6 = +[EKLogSubsystem locationSearch];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v7 = "self went away.  Returning early.";
LABEL_8:
    _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_DEBUG, v7, buf, 2u);
    goto LABEL_9;
  }

  if (!v3)
  {
    [WeakRetained _decrementPendingOperationsCountForDomain:@"OperationDomainConferenceRooms"];
    v6 = +[EKLogSubsystem locationSearch];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v7 = "The availability operation went away.  Returning early.";
    goto LABEL_8;
  }

  v5 = WeakRetained[18];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_204;
  block[3] = &unk_1E77FD7C8;
  v9 = v3;
  v10 = a1[4];
  v11 = WeakRetained;
  dispatch_async(v5, block);

  v6 = v9;
LABEL_9:
}

void __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_204(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 32) error];
    if (v2)
    {
      v3 = +[EKLogSubsystem locationSearch];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v2;
        _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Availability operation completed with error: [%@]", buf, 0xCu);
      }
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_205;
  v7[3] = &unk_1E77FD580;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  v6 = *MEMORY[0x1E69E9840];
}

void __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_205(uint64_t a1)
{
  [*(a1 + 32) enumerateObjectsUsingBlock:&__block_literal_global_208];
  [*(a1 + 40) _decrementPendingOperationsCountForDomain:@"OperationDomainConferenceRooms"];
  v2 = [*(a1 + 40) delegate];
  [v2 locationSearchModel:*(a1 + 40) updatedSearchTypes:256];
}

void __55__EKLocationSearchModel__addDiscoveredConferenceRooms___block_invoke_2_206(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 availabilityRequestInProgress])
  {
    [v2 setAvailabilityRequestInProgress:0];
  }
}

- (id)_availabilityRequestForConferenceRooms:(id)a3 eventID:(id)a4 source:(id)a5 dateRange:(id)a6 resultsBlock:(id)a7 completionBlock:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [EKRequestAvailabilityOperation alloc];
  v20 = [v15 startDate];
  v21 = [v15 endDate];

  v22 = [(EKRequestAvailabilityOperation *)v19 initWithSource:v16 startDate:v20 endDate:v21 ignoredEventID:v17 addresses:v18 resultsBlock:v14];
  [(EKRequestAvailabilityOperation *)v22 setCompletionBlock:v13];

  return v22;
}

- (void)updateConferenceRoomAvailability:(id)a3 duringEvent:(id)a4 completionBlock:(id)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__EKLocationSearchModel_updateConferenceRoomAvailability_duringEvent_completionBlock___block_invoke;
  aBlock[3] = &unk_1E77FE278;
  v9 = v7;
  v33 = v9;
  v10 = a5;
  v28 = _Block_copy(aBlock);
  v26 = v9;
  v25 = [v9 location];
  v24 = [v25 preferredAddress];
  v34[0] = v24;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v11 = [v8 isDetached];
  if (v11)
  {
    v23 = [v8 originalItem];
    [v23 uniqueID];
  }

  else
  {
    [v8 uniqueID];
  }
  v12 = ;
  v13 = [v8 calendar];
  v14 = [v13 source];
  v15 = objc_alloc(MEMORY[0x1E6992F70]);
  v16 = [v8 startDate];
  v17 = [v8 endDateUnadjustedForLegacyClients];
  v18 = [v15 initWithStartDate:v16 endDate:v17];
  v19 = [(EKLocationSearchModel *)self _availabilityRequestForConferenceRooms:v27 eventID:v12 source:v14 dateRange:v18 resultsBlock:v28 completionBlock:v10];

  if (v11)
  {

    v12 = v23;
  }

  [v26 setAvailabilityRequestInProgress:1];
  conferenceRoomProcessingQueue = self->_conferenceRoomProcessingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__EKLocationSearchModel_updateConferenceRoomAvailability_duringEvent_completionBlock___block_invoke_2;
  block[3] = &unk_1E77FD580;
  block[4] = self;
  v31 = v19;
  v21 = v19;
  dispatch_async(conferenceRoomProcessingQueue, block);

  v22 = *MEMORY[0x1E69E9840];
}

void __86__EKLocationSearchModel_updateConferenceRoomAvailability_duringEvent_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 location];
  v6 = [v5 preferredAddress];
  v7 = [v4 objectForKey:v6];

  [*(a1 + 32) setAvailability:{+[EKAvailabilityUtilities summarizedAvailabilityTypeForSpans:](EKAvailabilityUtilities, "summarizedAvailabilityTypeForSpans:", v7)}];
  [*(a1 + 32) setAvailabilityRequestInProgress:0];
}

- (void)_handleAvailabilityResults:(id)a3 forOperation:(id)a4
{
  v6 = a3;
  if (([a4 isCancelled] & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__EKLocationSearchModel__handleAvailabilityResults_forOperation___block_invoke;
    v7[3] = &unk_1E77FD580;
    v8 = v6;
    v9 = self;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __65__EKLocationSearchModel__handleAvailabilityResults_forOperation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__EKLocationSearchModel__handleAvailabilityResults_forOperation___block_invoke_2;
  v4[3] = &unk_1E77FF540;
  v4[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  v3 = [*(a1 + 40) delegate];
  [v3 locationSearchModel:*(a1 + 40) updatedSearchTypes:256];
}

void __65__EKLocationSearchModel__handleAvailabilityResults_forOperation___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [EKAvailabilityUtilities summarizedAvailabilityTypeForSpans:a3];
  v7 = [*(*(a1 + 32) + 168) objectForKey:v5];

  [v7 setAvailability:v6];
  [v7 setAvailabilityRequestInProgress:0];
}

- (void)_addLocationToRecents:(id)a3 addressString:(id)a4 mapItem:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 contactLabel];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v7 title];
  }

  v13 = v12;

  if (v8 && v13)
  {
    v14 = EKWeakLinkClass();
    v15 = [EKRecents recentForLocation:v7 withAddressString:v8 andTitle:v13 mapItem:v9];
    v16 = [v14 defaultInstance];
    v23[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v16 recordContactEvents:v17 recentsDomain:@"com.apple.eventkit.ios" sendingAddress:0 completion:0];

LABEL_9:
    goto LABEL_10;
  }

  v15 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = [v7 title];
    v19 = 138412546;
    v20 = v8;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_1A805E000, v15, OS_LOG_TYPE_ERROR, "can't add to recents, missing info: %@ %@", &v19, 0x16u);
    goto LABEL_9;
  }

LABEL_10:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)addConferenceRoomToRecents:(id)a3 fromSource:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = EKWeakLinkClass();
  v8 = [v6 location];

  v9 = [EKRecents recentForDirectoryLocation:v8 onSource:v5];

  v10 = [v7 defaultInstance];
  v13[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v10 recordContactEvents:v11 recentsDomain:@"com.apple.eventkit.ios" sendingAddress:0 completion:0];

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeRecentLocation:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [EKWeakLinkClass() defaultInstance];
  v14[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v7 = [v5 removeRecentContacts:v6 error:0];

  if (v7)
  {
    recentsSearchResults = self->_recentsSearchResults;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__EKLocationSearchModel_removeRecentLocation___block_invoke;
    v12[3] = &unk_1E77FFC10;
    v13 = v4;
    [(NSMutableArray *)self->_recentsSearchResults removeObjectAtIndex:[(NSMutableArray *)recentsSearchResults indexOfObjectPassingTest:v12]];
    v9 = [(EKLocationSearchModel *)self delegate];
    [v9 locationSearchModel:self updatedSearchTypes:16];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __46__EKLocationSearchModel_removeRecentLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recent];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)selectMapSearchCompletion:(id)a3
{
  v4 = a3;
  localSearch = self->_localSearch;
  if (localSearch)
  {
    [(CalCancelable *)localSearch cancel];
    v6 = self->_localSearch;
    self->_localSearch = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__EKLocationSearchModel_selectMapSearchCompletion___block_invoke;
  v10[3] = &unk_1E77FFC38;
  v10[4] = self;
  v7 = [EKMapSearchCompletionResolver resolveMapSearchCompletion:v4 withCompletionHander:v10];
  v8 = self->_localSearch;
  self->_localSearch = v7;

  v9 = [v4 mapSearchCompletion];
  [v9 sendFeedback];
}

void __51__EKLocationSearchModel_selectMapSearchCompletion___block_invoke(uint64_t a1, EKStructuredLocation *a2, void *a3)
{
  v14 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = objc_alloc_init(EKStructuredLocation);
    v6 = [(EKStructuredLocation *)v5 title];
    [(EKStructuredLocation *)a2 setTitle:v6];

    v7 = [(EKStructuredLocation *)v5 address];
    [(EKStructuredLocation *)a2 setAddress:v7];

    v8 = [(EKStructuredLocation *)v5 geoLocation];
    [(EKStructuredLocation *)a2 setGeoLocation:v8];

    [(EKStructuredLocation *)v5 radius];
    [(EKStructuredLocation *)a2 setRadius:?];
    v9 = [(EKStructuredLocation *)v5 mapKitHandle];
    [(EKStructuredLocation *)a2 setMapKitHandle:v9];

    v10 = [(EKStructuredLocation *)v5 mapItem];

    v11 = *(a1 + 32);
    v12 = [(EKStructuredLocation *)a2 address];
    [v11 _addLocationToRecents:a2 addressString:v12 mapItem:v10];
  }

  v13 = [*(a1 + 32) delegate];
  [v13 locationSearchModel:*(a1 + 32) selectedLocation:a2 withError:v14];
}

- (void)selectLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 mapKitHandle];

  if (v5)
  {
    MKMapItemClass = getMKMapItemClass();
    v7 = [v4 mapKitHandle];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__EKLocationSearchModel_selectLocation___block_invoke;
    v18[3] = &unk_1E77FFC60;
    v18[4] = self;
    v19 = v4;
    v8 = v4;
    [MKMapItemClass _mapItemFromHandle:v7 completionHandler:v18];

    v9 = [(EKLocationSearchModel *)self delegate];
    [v9 locationSearchModel:self selectedLocation:v8 withError:0];
  }

  else
  {
    v10 = MEMORY[0x1E6992FD8];
    v11 = [v4 title];
    v12 = [v4 address];
    v8 = [v10 fullDisplayStringWithTitle:v11 address:v12];

    v13 = MEMORY[0x1E6992FB8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__EKLocationSearchModel_selectLocation___block_invoke_218;
    v15[3] = &unk_1E77FFC60;
    v16 = v4;
    v17 = self;
    v14 = v4;
    [v13 geocodeLocationString:v8 withCompletionBlock:v15];
  }
}

void __40__EKLocationSearchModel_selectLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [v7 address];
    [v8 _addLocationToRecents:v7 addressString:v9 mapItem:v5];
  }

  else
  {
    v10 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_ERROR, "Failed to convert mapKitHandle to mapItem in selectLocation: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __40__EKLocationSearchModel_selectLocation___block_invoke_218(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_ERROR, "Location search failed with error: %@", &v13, 0xCu);
    }
  }

  else if (v5)
  {
    [*(a1 + 32) updateFromMapItem:v5];
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = [v9 address];
    [v8 _addLocationToRecents:v9 addressString:v10 mapItem:v5];
  }

  v11 = [*(a1 + 40) delegate];
  [v11 locationSearchModel:*(a1 + 40) selectedLocation:*(a1 + 32) withError:v6];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)selectCurrentLocation
{
  geocoder = self->_geocoder;
  if (!geocoder)
  {
    v4 = objc_alloc_init(EKWeakLinkClass());
    v5 = self->_geocoder;
    self->_geocoder = v4;

    geocoder = self->_geocoder;
  }

  if ([(CLGeocoder *)geocoder isGeocoding])
  {
    [(CLGeocoder *)self->_geocoder cancelGeocode];
  }

  objc_initWeak(&location, self);
  v6 = self->_geocoder;
  v7 = [(EKStructuredLocation *)self->_currentLocation geoLocation];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__EKLocationSearchModel_selectCurrentLocation__block_invoke;
  v8[3] = &unk_1E77FFC88;
  objc_copyWeak(&v9, &location);
  [(CLGeocoder *)v6 reverseGeocodeLocation:v7 completionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__EKLocationSearchModel_selectCurrentLocation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = +[EKLogSubsystem locationSearch];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = v6;
        _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_ERROR, "Current Location search failed with error: %@", &v19, 0xCu);
      }
    }

    else
    {
      if (![v5 count])
      {
LABEL_12:
        v17 = [WeakRetained delegate];
        [v17 locationSearchModel:WeakRetained selectedLocation:WeakRetained[4] withError:0];

        goto LABEL_13;
      }

      v8 = [v5 firstObject];
      v9 = [v8 postalAddress];
      v10 = [v8 name];
      [WeakRetained[4] setTitle:v10];

      if (v9)
      {
        v11 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v9 style:0];
        [WeakRetained[4] setAddress:v11];

        [WeakRetained[4] setRadius:100.0];
        v12 = [WeakRetained[4] title];
        if (!v12 || (v13 = v12, [WeakRetained[4] title], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", &stru_1F1B49D68), v14, v13, v15))
        {
          v16 = [WeakRetained[4] address];
          [WeakRetained[4] setTitle:v16];
        }
      }
    }

    goto LABEL_12;
  }

LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)_dataDetector
{
  if (_dataDetector_onceToken != -1)
  {
    +[EKLocationSearchModel _dataDetector];
  }

  v3 = _dataDetector_dataDetector;

  return v3;
}

void __38__EKLocationSearchModel__dataDetector__block_invoke()
{
  v6 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:2080 error:&v6];
  v1 = v6;
  v2 = _dataDetector_dataDetector;
  _dataDetector_dataDetector = v0;

  if (_dataDetector_dataDetector)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (!v3)
  {
    v4 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_ERROR, "Error initializing the custom virtual conference data detector.", v5, 2u);
    }
  }
}

+ (id)_linksInSource:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _dataDetector];
  v5 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

  return v5;
}

+ (id)URLsFromSource:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a1 _linksInSource:{v4, 0}];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 resultType] == 32)
        {
          v12 = [v11 URL];
        }

        else
        {
          if ([v11 resultType] != 2048)
          {
            v12 = 0;
            if (([0 cal_hasSchemeMailto] & 1) == 0)
            {
              continue;
            }

            goto LABEL_14;
          }

          v13 = [v11 phoneNumber];
          v12 = [v13 phoneURL];
        }

        if (([v12 cal_hasSchemeMailto] & 1) == 0)
        {
          if (!v12)
          {
            continue;
          }

          [v5 addObject:v12];
        }

LABEL_14:
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_updateVirtualConferenceCustomOptions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ((self->_supportedSearchTypes & 0x400) != 0)
  {
    if ([v4 length])
    {
      [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainVirtualConferencesCustom"];
      customConferenceQueue = self->_customConferenceQueue;
      if (!customConferenceQueue)
      {
        v7 = dispatch_queue_create("com.apple.mobilecal.customConference", 0);
        v8 = self->_customConferenceQueue;
        self->_customConferenceQueue = v7;

        customConferenceQueue = self->_customConferenceQueue;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__EKLocationSearchModel__updateVirtualConferenceCustomOptions___block_invoke;
      v15[3] = &unk_1E77FD580;
      v15[4] = self;
      v16 = v5;
      dispatch_async(customConferenceQueue, v15);
    }

    else
    {
      virtualConferenceCustomSearchResults = self->_virtualConferenceCustomSearchResults;
      self->_virtualConferenceCustomSearchResults = 0;

      v10 = ICSRedactString();
      v11 = +[EKLogSubsystem locationSearch];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_virtualConferenceCustomSearchResults, "count")}];
        *buf = 138543618;
        v18 = v10;
        v19 = 2114;
        v20 = v12;
        _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Virtual Conference Custom %{public}@ results", buf, 0x16u);
      }

      v13 = [(EKLocationSearchModel *)self delegate];
      [v13 locationSearchModel:self updatedSearchTypes:1024];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __63__EKLocationSearchModel__updateVirtualConferenceCustomOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() URLsFromSource:*(a1 + 40)];
  v4 = [v3 CalMap:&__block_literal_global_228];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__EKLocationSearchModel__updateVirtualConferenceCustomOptions___block_invoke_3;
  block[3] = &unk_1E77FD7C8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

EKVirtualConference *__63__EKLocationSearchModel__updateVirtualConferenceCustomOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [[EKVirtualConferenceJoinMethod alloc] initWithTitle:0 url:v2];

  v4 = [EKVirtualConference alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EKVirtualConference *)v4 initWithTitle:0 joinMethods:v5 conferenceDetails:0];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __63__EKLocationSearchModel__updateVirtualConferenceCustomOptions___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 264), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = ICSRedactString();
  v4 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 264), "count")}];
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Virtual Conference Custom %{public}@ results", &v8, 0x16u);
  }

  [*(a1 + 32) _decrementPendingOperationsCountForDomain:@"OperationDomainVirtualConferencesCustom"];
  v6 = [*(a1 + 32) delegate];
  [v6 locationSearchModel:*(a1 + 32) updatedSearchTypes:1024];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)selectVirtualConferenceRoomType:(id)a3
{
  v4 = a3;
  v5 = [(EKLocationSearchModel *)self delegate];
  v6 = [v5 sourceForSearchModel:self];

  [EKVirtualConferenceRoomTypeRecents selectRoomType:v4 forSource:v6];
}

- (void)updateVirtualConferenceRoomOptions:(id)a3
{
  v4 = a3;
  if ((self->_supportedSearchTypes & 0x200) != 0)
  {
    [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainVirtualConferences"];
    if (updateVirtualConferenceRoomOptions__onceToken != -1)
    {
      [EKLocationSearchModel updateVirtualConferenceRoomOptions:];
    }

    if (self->_allPossibleVirtualConferenceRooms)
    {
      [(EKLocationSearchModel *)self _updateVirtualConferenceOptions:v4];
    }

    else
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __60__EKLocationSearchModel_updateVirtualConferenceRoomOptions___block_invoke_2;
      v5[3] = &unk_1E77FFAB8;
      v5[4] = self;
      v6 = v4;
      [EKVirtualConferenceRoomType virtualConferenceRoomTypesWithCompletion:v5 queue:MEMORY[0x1E69E96A0]];
    }
  }
}

uint64_t __60__EKLocationSearchModel_updateVirtualConferenceRoomOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = [v3 arrayWithCapacity:10];
  v6 = *(a1 + 32);
  v7 = *(v6 + 208);
  *(v6 + 208) = v5;

  [*(a1 + 32) _updateAllPossibleVirtualConferenceResultsWithRoomTypes:v4];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v8 _updateVirtualConferenceOptions:v9];
}

- (void)_updateAllPossibleVirtualConferenceResultsWithRoomTypes:(id)a3
{
  allPossibleVirtualConferenceRooms = self->_allPossibleVirtualConferenceRooms;
  v5 = a3;
  [(NSMutableArray *)allPossibleVirtualConferenceRooms removeAllObjects];
  v6 = [(EKLocationSearchModel *)self delegate];
  v8 = [v6 sourceForSearchModel:self];

  v7 = [EKVirtualConferenceRoomTypeRecents roomTypesOrderedByMRU:v5 forSource:v8];

  if (v7)
  {
    [(NSMutableArray *)self->_allPossibleVirtualConferenceRooms addObjectsFromArray:v7];
  }
}

- (void)_updateVirtualConferenceOptions:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  virtualConferenceRoomSearchResults = self->_virtualConferenceRoomSearchResults;
  if (!virtualConferenceRoomSearchResults)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
    v7 = self->_virtualConferenceRoomSearchResults;
    self->_virtualConferenceRoomSearchResults = v6;

    virtualConferenceRoomSearchResults = self->_virtualConferenceRoomSearchResults;
  }

  [(NSMutableArray *)virtualConferenceRoomSearchResults removeAllObjects];
  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_allPossibleVirtualConferenceRooms;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 title];
          v15 = [v14 rangeOfString:v4 options:1];

          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableArray *)self->_virtualConferenceRoomSearchResults addObject:v13];
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [(NSMutableArray *)self->_virtualConferenceRoomSearchResults addObjectsFromArray:self->_allPossibleVirtualConferenceRooms];
  }

  v16 = ICSRedactString();
  v17 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_virtualConferenceRoomSearchResults, "count")}];
    *buf = 138543618;
    v26 = v16;
    v27 = 2114;
    v28 = v18;
    _os_log_impl(&dword_1A805E000, v17, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Virtual Conference Rooms %{public}@ results", buf, 0x16u);
  }

  [(EKLocationSearchModel *)self _decrementPendingOperationsCountForDomain:@"OperationDomainVirtualConferences"];
  v19 = [(EKLocationSearchModel *)self delegate];
  [v19 locationSearchModel:self updatedSearchTypes:512];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_updateMapURL:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ICSRedactString();
  v6 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [getMKMapItemClass() _mapItemBackedByURL:v6];
  v8 = v7;
  if (v7 && ([v7 isCurrentLocation] & 1) == 0)
  {
    v13 = objc_alloc_init(EKStructuredLocationSearchResult);
    locationFromMapsURL = self->_locationFromMapsURL;
    self->_locationFromMapsURL = v13;

    v15 = [EKStructuredLocation locationWithMapItem:v8];
    v16 = [v8 _geoAddress];
    v17 = [v16 formattedAddressLines];
    v31 = [v17 lastObject];

    [v15 setAddress:v31];
    [(EKStructuredLocationSearchResult *)self->_locationFromMapsURL setLocation:v15];
    if (([v8 isPlaceHolder] & 1) == 0)
    {
      v18 = [(EKStructuredLocationSearchResult *)self->_locationFromMapsURL location];
      [v18 setTitle:0];
    }

    v19 = [(EKStructuredLocationSearchResult *)self->_locationFromMapsURL location];
    v20 = [v19 address];
    if (v20)
    {
      v21 = [(EKStructuredLocationSearchResult *)self->_locationFromMapsURL location];
      v22 = [v21 title];

      if (v22)
      {
        v23 = +[EKLogSubsystem locationSearch];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [MEMORY[0x1E696AD98] numberWithInt:self->_locationFromMapsURL != 0];
          *buf = 138543618;
          v36 = v5;
          v37 = 2114;
          v38 = v24;
          _os_log_impl(&dword_1A805E000, v23, OS_LOG_TYPE_INFO, "[%{public}@] <<<< MapKit from URL %{public}@ results", buf, 0x16u);
        }

        v25 = [(EKLocationSearchModel *)self delegate];
        [v25 locationSearchModel:self updatedSearchTypes:2];

LABEL_22:
        goto LABEL_8;
      }
    }

    else
    {
    }

    geocoder = self->_geocoder;
    if (!geocoder)
    {
      v27 = objc_alloc_init(EKWeakLinkClass());
      v28 = self->_geocoder;
      self->_geocoder = v27;

      geocoder = self->_geocoder;
    }

    if ([(CLGeocoder *)geocoder isGeocoding])
    {
      [(CLGeocoder *)self->_geocoder cancelGeocode];
    }

    [(EKLocationSearchModel *)self _incrementPendingOperationsCountForDomain:@"OperationDomainLocationFromMapsURL"];
    objc_initWeak(buf, self);
    v29 = self->_geocoder;
    v30 = [v15 geoLocation];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __39__EKLocationSearchModel__updateMapURL___block_invoke;
    v32[3] = &unk_1E77FFCD0;
    objc_copyWeak(&v34, buf);
    v33 = v5;
    [(CLGeocoder *)v29 reverseGeocodeLocation:v30 completionHandler:v32];

    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
    goto LABEL_22;
  }

LABEL_5:
  v9 = self->_locationFromMapsURL;
  self->_locationFromMapsURL = 0;

  v10 = +[EKLogSubsystem locationSearch];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_locationFromMapsURL != 0];
    *buf = 138543618;
    v36 = v5;
    v37 = 2114;
    v38 = v11;
    _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_INFO, "[%{public}@] <<<< MapKit from URL %{public}@ results", buf, 0x16u);
  }

  v8 = [(EKLocationSearchModel *)self delegate];
  [v8 locationSearchModel:self updatedSearchTypes:2];
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

void __39__EKLocationSearchModel__updateMapURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  v8 = 0x1ED7F7000uLL;
  if (v6)
  {
    v9 = +[EKLogSubsystem locationSearch];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v6;
      _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_ERROR, "Map URL address geocoding failed failed with error: %@", buf, 0xCu);
    }

    v10 = WeakRetained[6];
    WeakRetained[6] = 0;

    goto LABEL_14;
  }

  if ([v5 count])
  {
    v11 = [v5 firstObject];
    v12 = [v11 postalAddress];
    v13 = [v11 name];
    v14 = [WeakRetained[6] location];
    [v14 setTitle:v13];

    if (v12)
    {
      v15 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v12 style:0];
      v16 = [WeakRetained[6] location];
      [v16 setAddress:v15];

      v17 = [v11 region];
      [v17 radius];
      v19 = v18;
      v20 = [WeakRetained[6] location];
      [v20 setRadius:v19];

      v21 = [WeakRetained[6] location];
      v22 = [v21 title];
      if (v22)
      {
        v23 = v22;
        v24 = [WeakRetained[6] location];
        [v24 title];
        v26 = v25 = v12;
        v35 = [v26 isEqualToString:&stru_1F1B49D68];

        v12 = v25;
        v8 = 0x1ED7F7000;

        if (!v35)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v27 = [WeakRetained[6] location];
      v28 = [v27 address];
      v29 = [WeakRetained[6] location];
      [v29 setTitle:v28];
    }

LABEL_13:
  }

LABEL_14:
  [WeakRetained _decrementPendingOperationsCountForDomain:@"OperationDomainLocationFromMapsURL"];
  v30 = [v8 + 2496 locationSearch];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = *(a1 + 32);
    v32 = [MEMORY[0x1E696AD98] numberWithInt:WeakRetained[6] != 0];
    *buf = 138543618;
    v37 = v31;
    v38 = 2114;
    v39 = v32;
    _os_log_impl(&dword_1A805E000, v30, OS_LOG_TYPE_INFO, "[%{public}@] <<<< MapKit from URL %{public}@ results", buf, 0x16u);
  }

  v33 = [WeakRetained delegate];
  [v33 locationSearchModel:WeakRetained updatedSearchTypes:2];

LABEL_17:
  v34 = *MEMORY[0x1E69E9840];
}

- (EKLocationSearchModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end