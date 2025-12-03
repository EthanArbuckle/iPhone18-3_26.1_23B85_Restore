@interface EKUILocationSearchModel
+ (id)URLsFromSource:(id)source;
+ (id)_dataDetector;
+ (id)_linksInSource:(id)source;
+ (void)initialize;
- (BOOL)removeRecentLocation:(id)location;
- (EKUILocationSearchModel)initWithEventStore:(id)store;
- (EKUILocationSearchModelDelegate)delegate;
- (id)_imageForAttributes:(id)attributes;
- (id)_imageForMapHandle:(id)handle;
- (id)availabilityRequestForConferenceRooms:(id)rooms duringEvent:(id)event resultsBlock:(id)block completionBlock:(id)completionBlock;
- (id)splitEventLocations:(id)locations;
- (unint64_t)dedupeResults;
- (void)_addDiscoveredConferenceRooms:(id)rooms;
- (void)_addLocationToRecents:(id)recents addressString:(id)string mapItem:(id)item;
- (void)_handleAvailabilityResults:(id)results forOperation:(id)operation;
- (void)_processDirectorySearchResultSet:(id)set forOperation:(id)operation;
- (void)_updateAllPossibleVirtualConferenceResultsWithRoomTypes:(id)types;
- (void)_updateContactsSearchWithResults:(id)results forToken:(id)token;
- (void)_updateMapURL:(id)l;
- (void)_updateVirtualConferenceCustomOptions:(id)options;
- (void)_updateVirtualConferenceOptions:(id)options;
- (void)addConferenceRoomToRecents:(id)recents fromSource:(id)source;
- (void)beginSearchForTerm:(id)term;
- (void)cancelSearch;
- (void)completerDidFail:(id)fail error:(id)error;
- (void)completerDidUpdateResults:(id)results finished:(BOOL)finished;
- (void)dealloc;
- (void)getCurrentLocation;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)resetConferenceRoomSearchResults;
- (void)resetContactsSearchResults;
- (void)resetEventsSearchResults;
- (void)resetRecentsSearchResults;
- (void)resetSearchResults:(BOOL)results;
- (void)searchConferenceRooms:(id)rooms;
- (void)searchFrequentLocations:(id)locations;
- (void)selectCurrentLocation;
- (void)selectLocation:(id)location;
- (void)selectMapSearchCompletion:(id)completion;
- (void)selectVirtualConferenceRoomType:(id)type;
- (void)stopUpdatingLocation;
- (void)updateConferenceRoomAvailability:(id)availability duringEvent:(id)event completionBlock:(id)block;
- (void)updateContacts:(id)contacts;
- (void)updateEventLocations:(id)locations;
- (void)updateRecents:(id)recents;
- (void)updateVirtualConferenceRoomOptions:(id)options;
@end

@implementation EKUILocationSearchModel

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    +[EKUILocationSearchModel initialize];
  }
}

void __37__EKUILocationSearchModel_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _mapItemCache;
  _mapItemCache = v0;
}

- (EKUILocationSearchModel)initWithEventStore:(id)store
{
  storeCopy = store;
  v38.receiver = self;
  v38.super_class = EKUILocationSearchModel;
  v6 = [(EKUILocationSearchModel *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventStore, store);
    v8 = objc_alloc_init(EKWeakLinkClass());
    [v8 setIncludeIncludeManagedAppleIDs:1];
    v9 = [objc_alloc(EKWeakLinkClass()) initWithConfiguration:v8];
    contactStore = v7->_contactStore;
    v7->_contactStore = v9;

    v7->_supportedSearchTypes = 2047;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    whitespaceAndNewlineCharacterSet = v7->_whitespaceAndNewlineCharacterSet;
    v7->_whitespaceAndNewlineCharacterSet = whitespaceAndNewlineCharacterSet;

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

    array = [MEMORY[0x1E695DF70] array];
    recentsSearchResults = v7->_recentsSearchResults;
    v7->_recentsSearchResults = array;

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

    v33 = v7->_locationManager;
    if (!v33)
    {
      v34 = [v23 alloc];
      v35 = [v34 _initWithDelegate:v7 onQueue:MEMORY[0x1E69E96A0]];
      v36 = v7->_locationManager;
      v7->_locationManager = v35;

      v33 = v7->_locationManager;
    }

    [(CLLocationManager *)v33 requestWhenInUseAuthorization];
  }

  return v7;
}

- (void)dealloc
{
  [(EKUILocationSearchModel *)self cancelSearch];
  [(EKUILocationSearchModel *)self stopUpdatingLocation];
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
    [(MKLocalSearch *)localSearch cancel];
  }

  [(NSOperationQueue *)self->_conferenceRoomOperationQueue cancelAllOperations];
  v6.receiver = self;
  v6.super_class = EKUILocationSearchModel;
  [(EKUILocationSearchModel *)&v6 dealloc];
}

- (void)getCurrentLocation
{
  if ((self->_supportedSearchTypes & 4) != 0)
  {
    [(EKUILocationSearchModel *)self performSelector:sel_stopUpdatingLocation withObject:0 afterDelay:30.0];
    v3 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_INFO, "Started updating current location", v6, 2u);
    }

    [(CLLocationManager *)self->_locationManager startUpdatingLocation];
    v4 = [EKWeakLinkClass() newAssertionForBundleIdentifier:*MEMORY[0x1E6993168] withReason:@"event editor getting current location"];
    locationAssertion = self->_locationAssertion;
    self->_locationAssertion = v4;
  }
}

- (void)stopUpdatingLocation
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_stopUpdatingLocation object:0];
  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  locationAssertion = self->_locationAssertion;
  self->_locationAssertion = 0;

  v4 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_INFO, "Stopped updating current location", v5, 2u);
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Updating current location failed with error: %@", &v7, 0xCu);
  }

  [(EKUILocationSearchModel *)self stopUpdatingLocation];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  _limitsPrecision = [manager _limitsPrecision];
  v8 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_INFO, "Found current location, shifting...", buf, 2u);
  }

  lastObject = [locationsCopy lastObject];

  v10 = objc_alloc_init(EKWeakLinkClass());
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__EKUILocationSearchModel_locationManager_didUpdateLocations___block_invoke;
  v11[3] = &unk_1E8440A98;
  v12 = _limitsPrecision;
  v11[4] = self;
  [v10 shiftLocation:lastObject withCompletionHandler:v11];
  [(EKUILocationSearchModel *)self stopUpdatingLocation];
}

void __62__EKUILocationSearchModel_locationManager_didUpdateLocations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1)
  {
    v5 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_INFO, "Current location shifting finished. Result is imprecise, so this only affects search result relevancy", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = v4;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = MEMORY[0x1E6966B08];
    v10 = EKUIUserFriendlyStringForCLLocation(v3);
    v11 = [v9 locationWithTitle:v10];
    v12 = *(a1 + 32);
    v13 = *(v12 + 32);
    *(v12 + 32) = v11;

    [*(*(a1 + 32) + 32) setGeoLocation:v4];
    v14 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1D3400000, v14, OS_LOG_TYPE_INFO, "Current location shifting finished", v15, 2u);
    }

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
  v3 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_INFO, "Resetting event search results", v8, 2u);
  }

  eventsSearch = self->_eventsSearch;
  if (eventsSearch)
  {
    [(EKOccurrenceCacheLocationSearch *)eventsSearch cancel];
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

- (void)resetSearchResults:(BOOL)results
{
  resultsCopy = results;
  v5 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_INFO, "Resetting location search results", v13, 2u);
  }

  if (resultsCopy)
  {
    [(CLGeocoder *)self->_geocoder cancelGeocode];
    [(MKLocalSearchCompleter *)self->_completer cancel];
    [(MKLocalSearch *)self->_localSearch cancel];
    localSearch = self->_localSearch;
    self->_localSearch = 0;
  }

  [(EKUILocationSearchModel *)self resetContactsSearchResults];
  [(EKUILocationSearchModel *)self resetEventsSearchResults];
  [(EKUILocationSearchModel *)self resetConferenceRoomSearchResults];
  [(EKUILocationSearchModel *)self resetRecentsSearchResults];
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

  if (resultsCopy)
  {
    delegate = [(EKUILocationSearchModel *)self delegate];
    [delegate locationSearchModel:self updatedSearchTypes:2047];
  }
}

- (void)cancelSearch
{
  [(EKUILocationSearchModel *)self resetSearchResults:1];
  v2 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_INFO, "Location search cancelled", v3, 2u);
  }
}

- (void)beginSearchForTerm:(id)term
{
  v23 = *MEMORY[0x1E69E9840];
  termCopy = term;
  v5 = ICSRedactString();
  v6 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v21 = 138543362;
    v22 = v5;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Location search begins!!", &v21, 0xCu);
  }

  [(EKUILocationSearchModel *)self resetSearchResults:0];
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
        geoLocation = [(EKStructuredLocation *)currentLocation geoLocation];
        [(MKLocalSearchCompleter *)self->_completer setDeviceLocation:geoLocation];
      }

      else if (self->_currentImpreciseLocation)
      {
        [(MKLocalSearchCompleter *)self->_completer setDeviceLocation:?];
      }
    }

    v12 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = v5;
      _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_INFO, "[%{public}@] >>>> MapKit", &v21, 0xCu);
    }

    [(MKLocalSearchCompleter *)self->_completer setFragment:termCopy];
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

  v13 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v21 = 138543362;
    v22 = v5;
    _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_INFO, "[%{public}@] >>>> MapKit from URL", &v21, 0xCu);
  }

  [(EKUILocationSearchModel *)self _updateMapURL:termCopy];
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
  v14 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v21 = 138543362;
    v22 = v5;
    _os_log_impl(&dword_1D3400000, v14, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Contacts", &v21, 0xCu);
  }

  [(EKUILocationSearchModel *)self updateContacts:termCopy];
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
  v15 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v21 = 138543362;
    v22 = v5;
    _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Recents", &v21, 0xCu);
  }

  [(EKUILocationSearchModel *)self updateRecents:termCopy];
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
  v16 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v21 = 138543362;
    v22 = v5;
    _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Frequents", &v21, 0xCu);
  }

  [(EKUILocationSearchModel *)self searchFrequentLocations:termCopy];
  supportedSearchTypes = self->_supportedSearchTypes;
  if ((supportedSearchTypes & 0x100) != 0)
  {
LABEL_30:
    v17 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = v5;
      _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_INFO, "[%{public}@] >>>> ConferenceRooms", &v21, 0xCu);
    }

    [(EKUILocationSearchModel *)self searchConferenceRooms:termCopy];
    supportedSearchTypes = self->_supportedSearchTypes;
  }

LABEL_33:
  if ((supportedSearchTypes & 0xC0) != 0)
  {
    v18 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = v5;
      _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Events", &v21, 0xCu);
    }

    [(EKUILocationSearchModel *)self updateEventLocations:termCopy];
    supportedSearchTypes = self->_supportedSearchTypes;
  }

  if ((supportedSearchTypes & 0x200) != 0)
  {
    v19 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = v5;
      _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Virtual Conference Rooms", &v21, 0xCu);
    }

    [(EKUILocationSearchModel *)self updateVirtualConferenceRoomOptions:termCopy];
    supportedSearchTypes = self->_supportedSearchTypes;
  }

  if ((supportedSearchTypes & 0x400) != 0)
  {
    v20 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = v5;
      _os_log_impl(&dword_1D3400000, v20, OS_LOG_TYPE_INFO, "[%{public}@] >>>> Virtual Conference Custom", &v21, 0xCu);
    }

    [(EKUILocationSearchModel *)self _updateVirtualConferenceCustomOptions:termCopy];
  }
}

- (unint64_t)dedupeResults
{
  v58 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v3 = self->_recentsSearchResults;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v47;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = MEMORY[0x1E6966AA8];
        recent = [*(*(&v46 + 1) + 8 * i) recent];
        v11 = [v9 locationForRecent:recent];

        frequentsSearchResults = self->_frequentsSearchResults;
        if (frequentsSearchResults && [(NSMutableArray *)frequentsSearchResults count])
        {
          v13 = self->_frequentsSearchResults;
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __40__EKUILocationSearchModel_dedupeResults__block_invoke;
          v44[3] = &unk_1E8440AC0;
          v45 = v11;
          v14 = [(NSMutableArray *)v13 indexesOfObjectsPassingTest:v44];
          v15 = v14;
          if (v14 && [v14 count])
          {
            [(NSMutableArray *)self->_frequentsSearchResults removeObjectsAtIndexes:v15];
            v6 |= 0x20uLL;
          }
        }

        else
        {
          v15 = 0;
        }

        eventsSearchResults = self->_eventsSearchResults;
        if (eventsSearchResults && [(NSMutableArray *)eventsSearchResults count])
        {
          v17 = self->_eventsSearchResults;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __40__EKUILocationSearchModel_dedupeResults__block_invoke_2;
          v42[3] = &unk_1E8440AE8;
          v43 = v11;
          v18 = [(NSMutableArray *)v17 indexesOfObjectsPassingTest:v42];

          if (v18 && [v18 count])
          {
            [(NSMutableArray *)self->_eventsSearchResults removeObjectsAtIndexes:v18];
            v6 |= 0x40uLL;
          }
        }

        else
        {
          v18 = v15;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = self->_frequentsSearchResults;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v38 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = self->_eventsSearchResults;
        if (v24)
        {
          v25 = *(*(&v38 + 1) + 8 * j);
          if ([(NSMutableArray *)v24 count])
          {
            v26 = self->_eventsSearchResults;
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __40__EKUILocationSearchModel_dedupeResults__block_invoke_3;
            v37[3] = &unk_1E8440AE8;
            v37[4] = v25;
            v27 = [(NSMutableArray *)v26 indexesOfObjectsPassingTest:v37];
            v28 = v27;
            if (v27 && [v27 count])
            {
              [(NSMutableArray *)self->_eventsSearchResults removeObjectsAtIndexes:v28];
              v6 |= 0x40uLL;
            }
          }
        }
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v38 objects:v56 count:16];
    }

    while (v21);
  }

  v29 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v30 = MEMORY[0x1E696AD98];
    recentsSearchResults = self->_recentsSearchResults;
    v32 = v29;
    v33 = [v30 numberWithUnsignedInteger:{-[NSMutableArray count](recentsSearchResults, "count")}];
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_eventsSearchResults, "count")}];
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_frequentsSearchResults, "count")}];
    *buf = 138543874;
    v51 = v33;
    v52 = 2114;
    v53 = v34;
    v54 = 2114;
    v55 = v35;
    _os_log_impl(&dword_1D3400000, v32, OS_LOG_TYPE_INFO, "After de-duping search results, Recents: %{public}@, Events: %{public}@, Frequents: %{public}@", buf, 0x20u);
  }

  return v6;
}

uint64_t __40__EKUILocationSearchModel_dedupeResults__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 location];
  v4 = [v2 isEqualToLocation:v3];

  return v4;
}

uint64_t __40__EKUILocationSearchModel_dedupeResults__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 location];
  v4 = [v2 isEqualToLocation:v3];

  return v4;
}

- (void)completerDidUpdateResults:(id)results finished:(BOOL)finished
{
  v22 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  queryFragment = [resultsCopy queryFragment];
  v7 = ICSRedactString();

  resultsAreCurrent = [resultsCopy resultsAreCurrent];
  v9 = kEKUILogLocationSearchHandle;
  v10 = os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO);
  if (resultsAreCurrent)
  {
    if (v10)
    {
      v11 = MEMORY[0x1E696AD98];
      v12 = v9;
      results = [resultsCopy results];
      v14 = [v11 numberWithUnsignedInteger:{objc_msgSend(results, "count")}];
      v18 = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_INFO, "[%{public}@] <<<< MapKit %{public}@ results", &v18, 0x16u);
    }

    results2 = [resultsCopy results];
    mapCompletionSearchResults = self->_mapCompletionSearchResults;
    self->_mapCompletionSearchResults = results2;

    delegate = [(EKUILocationSearchModel *)self delegate];
    [delegate locationSearchModel:self updatedSearchTypes:4];
  }

  else if (v10)
  {
    v18 = 138543362;
    v19 = v7;
    _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_INFO, "[%{public}@] <<<< MapKit but results are not current", &v18, 0xCu);
  }
}

- (void)completerDidFail:(id)fail error:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  queryFragment = [fail queryFragment];
  v7 = ICSRedactString();

  v8 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] MapKit failed with error: %@", &v9, 0x16u);
  }
}

- (void)updateContacts:(id)contacts
{
  contactsCopy = contacts;
  v18 = ICSRedactString();
  [(EKUILocationSearchModel *)self resetContactsSearchResults];
  v5 = objc_opt_new();
  contactsSearchResults = self->_contactsSearchResults;
  self->_contactsSearchResults = v5;

  delegate = [(EKUILocationSearchModel *)self delegate];
  [delegate locationSearchModel:self updatedSearchTypes:8];

  v8 = EKUIDescriptorForRequiredKeysForLabeledDisplayString();
  v9 = [v8 arrayByAddingObject:*MEMORY[0x1E695C360]];

  v10 = [objc_alloc(EKWeakLinkClass()) initWithKeysToFetch:v9];
  v11 = [MEMORY[0x1E695CD58] predicateForContactsMatchingFullTextSearch:contactsCopy containerIdentifiers:0 groupIdentifiers:0];
  [v10 setPredicate:v11];

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__8;
  v43[4] = __Block_byref_object_dispose__8;
  v44 = objc_opt_new();
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__8;
  v41 = __Block_byref_object_dispose__8;
  v42 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __42__EKUILocationSearchModel_updateContacts___block_invoke;
  v32[3] = &unk_1E8440B10;
  v32[4] = v35;
  v12 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v32 block:0.33];
  contactStore = self->_contactStore;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __42__EKUILocationSearchModel_updateContacts___block_invoke_2;
  v25[3] = &unk_1E8440B60;
  v28 = v43;
  v29 = v33;
  v30 = v35;
  v26 = v18;
  selfCopy = self;
  v31 = &v37;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__EKUILocationSearchModel_updateContacts___block_invoke_85;
  v19[3] = &unk_1E8440BB0;
  v14 = v26;
  v20 = v14;
  selfCopy2 = self;
  v23 = v43;
  v24 = &v37;
  v15 = v12;
  v22 = v15;
  v16 = [(CNContactStore *)contactStore executeFetchRequest:v10 progressiveResults:v25 completion:v19];
  contactsSearchToken = self->_contactsSearchToken;
  self->_contactsSearchToken = v16;

  objc_storeStrong(v38 + 5, v16);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(v43, 8);
}

void __42__EKUILocationSearchModel_updateContacts___block_invoke_2(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a2;
  v25 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v25)
  {
    v24 = *v37;
    do
    {
      v3 = 0;
      do
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v3;
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

              v14 = [MEMORY[0x1E6966B08] locationWithTitle:v13];
              v15 = [v10 label];
              v16 = EKUILabeledDisplayStringForContact(v4, v15);
              [v14 setContactLabel:v16];

              [v14 setAddress:v13];
              [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
            }

            v7 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v7);
        }

        v3 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v25);
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

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__EKUILocationSearchModel_updateContacts___block_invoke_3;
    block[3] = &unk_1E8440B38;
    v28 = *(a1 + 32);
    v29 = v17;
    v21 = *(a1 + 72);
    v30 = *(a1 + 40);
    v31 = v21;
    v22 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __42__EKUILocationSearchModel_updateContacts___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v3 = MEMORY[0x1E696AD98];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v2;
    v7 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Contacts %{public}@ progressive results", &v9, 0x16u);
  }

  return [*(a1 + 48) _updateContactsSearchWithResults:*(a1 + 40) forToken:*(*(*(a1 + 56) + 8) + 40)];
}

void __42__EKUILocationSearchModel_updateContacts___block_invoke_85(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EKUILocationSearchModel_updateContacts___block_invoke_2_86;
  block[3] = &unk_1E8440B88;
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

void __42__EKUILocationSearchModel_updateContacts___block_invoke_2_86(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = MEMORY[0x1E696AD98];
    v5 = *(*(*(a1 + 56) + 8) + 40);
    v6 = v2;
    v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v10 = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Contacts %{public}@ results", &v10, 0x16u);
  }

  [*(a1 + 40) _updateContactsSearchWithResults:*(*(*(a1 + 56) + 8) + 40) forToken:*(*(*(a1 + 64) + 8) + 40)];
  [*(a1 + 48) invalidate];
  v8 = *(a1 + 40);
  v9 = *(v8 + 80);
  if (*(*(*(a1 + 64) + 8) + 40) == v9)
  {
    *(v8 + 80) = 0;
  }
}

- (void)_updateContactsSearchWithResults:(id)results forToken:(id)token
{
  if (self->_contactsSearchToken == token)
  {
    [(NSMutableArray *)self->_contactsSearchResults addObjectsFromArray:results];
    delegate = [(EKUILocationSearchModel *)self delegate];
    [delegate locationSearchModel:self updatedSearchTypes:8];
  }
}

- (void)updateRecents:(id)recents
{
  v37[2] = *MEMORY[0x1E69E9840];
  recentsCopy = recents;
  v5 = recentsCopy;
  if ((self->_supportedSearchTypes & 0x10) != 0)
  {
    if (recentsCopy)
    {
      v28 = EKWeakLinkStringConstant();
      v27 = EKWeakLinkStringConstant();
      v26 = EKWeakLinkStringConstant();
      v25 = EKWeakLinkStringConstant();
      v6 = EKWeakLinkClass();
      v36 = v28;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
      v8 = [v6 predicateForKey:v27 inCollection:v7];
      v37[0] = v8;
      v9 = [v6 predicateForKey:v26 matchingText:v5 comparison:1];
      v35[0] = v9;
      v10 = [v6 predicateForKey:v25 matchingText:v5 comparison:1];
      v35[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      v12 = [v6 predicateSatisfyingAnySubpredicate:v11];
      v37[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      v14 = [v6 predicateSatisfyingAllSubpredicates:v13];
    }

    else
    {
      v15 = kEKUILogLocationSearchHandle;
      if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_INFO, "Recents query is nil, returning all recents", &buf, 2u);
      }

      v14 = 0;
    }

    if (!self->_recentsQueue)
    {
      v16 = dispatch_queue_create("com.apple.mobilecal.recents", 0);
      recentsQueue = self->_recentsQueue;
      self->_recentsQueue = v16;
    }

    objc_initWeak(&buf, self);
    v18 = EKWeakLinkClass();
    v19 = EKWeakLinkClass();
    v20 = objc_alloc_init(v19);
    [v20 setSearchPredicate:v14];
    [v20 setDomains:&unk_1F4F321B8];
    frecencyComparator = [(objc_class *)v19 frecencyComparator];
    [v20 setComparator:frecencyComparator];

    objc_storeStrong(&self->_currentRecentsSearch, v20);
    defaultInstance = [v18 defaultInstance];
    v23 = self->_recentsQueue;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __41__EKUILocationSearchModel_updateRecents___block_invoke;
    v29[3] = &unk_1E8440C78;
    objc_copyWeak(v33, &buf);
    v24 = v20;
    v30 = v24;
    selfCopy = self;
    v33[1] = v18;
    v32 = v5;
    [defaultInstance performRecentsSearch:v24 queue:v23 completion:v29];

    objc_destroyWeak(v33);
    objc_destroyWeak(&buf);
  }
}

void __41__EKUILocationSearchModel_updateRecents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && [*(a1 + 32) isEqual:WeakRetained[16]])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__EKUILocationSearchModel_updateRecents___block_invoke_2;
    v6[3] = &unk_1E8440C50;
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

void __41__EKUILocationSearchModel_updateRecents___block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 calendarItemForSearchModel:*(a1 + 32)];

  v26 = v3;
  v4 = [v3 calendar];
  v28 = [v4 source];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v30 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  group = dispatch_group_create();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        if ([MEMORY[0x1E6966AA8] recentIsDirectoryLocation:v10])
        {
          v11 = objc_alloc_init(EKUIConferenceRoom);
          v12 = objc_alloc_init(MEMORY[0x1E69669F0]);
          [(EKUIConferenceRoom *)v11 setLocation:v12];

          v13 = [v10 displayName];
          v14 = [(EKUIConferenceRoom *)v11 location];
          [v14 setDisplayName:v13];

          v15 = [*(a1 + 32) delegate];
          v16 = [v15 shouldIncludeConferenceRoom:v11];

          if (![MEMORY[0x1E6966AA8] recentDirectoryLocation:v10 matchesSource:v28] || !v16)
          {
            continue;
          }
        }

        if ([MEMORY[0x1E6966AA8] recentMissingStyleAttributes:v10])
        {
          v17 = [MEMORY[0x1E6966AA8] mapKitHandleForRecent:v10];
          if (v17)
          {
            dispatch_group_enter(group);
            v18 = MEMORY[0x1E696F270];
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __41__EKUILocationSearchModel_updateRecents___block_invoke_3;
            v38[3] = &unk_1E8440BD8;
            v39 = v30;
            v40 = v10;
            v43 = *(a1 + 72);
            v17 = v17;
            v41 = v17;
            v42 = group;
            [v18 _mapItemFromHandle:v17 completionHandler:v38];
          }
        }

        else
        {
          v17 = [MEMORY[0x1E6966AA8] mapKitStyleAttributesForRecent:v10];
          os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_dictionaryLock);
          v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v10, "contactID")}];
          [v30 setObject:v17 forKeyedSubscript:v19];

          os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_dictionaryLock);
        }

        [v5 addObject:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v7);
  }

  v21 = *(a1 + 48);
  v20 = *(a1 + 56);
  v22 = *(v21 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EKUILocationSearchModel_updateRecents___block_invoke_111;
  block[3] = &unk_1E8440C28;
  v32 = group;
  v33 = v5;
  v34 = v30;
  v35 = v21;
  v36 = v20;
  v37 = *(a1 + 64);
  v23 = v30;
  v24 = v5;
  v25 = group;
  dispatch_async(v22, block);
}

void __41__EKUILocationSearchModel_updateRecents___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_dictionaryLock);
    v7 = [v5 _styleAttributes];
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "contactID")}];
    [v8 setObject:v7 forKeyedSubscript:v9];

    os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_dictionaryLock);
    v10 = MEMORY[0x1E6966AA8];
    v11 = *(a1 + 40);
    v12 = [v5 _styleAttributes];
    v13 = [v10 recentEventWithRecentContact:v11 styleAttributes:v12];

    v14 = [*(a1 + 64) defaultInstance];
    v22[0] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v14 recordContactEvents:v15 recentsDomain:@"com.apple.eventkit.ios" sendingAddress:0 completion:0];
  }

  else
  {
    v16 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      v18 = 138412546;
      v19 = v17;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, "Failed to get map item from handle when updating recents: %@, %@", &v18, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void __41__EKUILocationSearchModel_updateRecents___block_invoke_111(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v2, v3))
  {
    v4 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, "Timed out waiting for all mapItemHandles to resolve to mapItems", buf, 2u);
    }
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = objc_alloc_init(EKRecentContactWithImage);
        [(EKRecentContactWithImage *)v11 setRecent:v10];
        os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_dictionaryLock);
        v12 = *(a1 + 48);
        v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v10, "contactID")}];
        v14 = [v12 objectForKey:v13];

        os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_dictionaryLock);
        v15 = [*(a1 + 56) _imageForAttributes:v14];
        [(EKRecentContactWithImage *)v11 setImage:v15];

        [v5 addObject:v11];
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EKUILocationSearchModel_updateRecents___block_invoke_113;
  block[3] = &unk_1E8440C00;
  v16 = *(a1 + 64);
  v17 = *(a1 + 56);
  v21 = v16;
  v22 = v17;
  v23 = v5;
  v24 = *(a1 + 72);
  v18 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __41__EKUILocationSearchModel_updateRecents___block_invoke_113(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 128)])
  {
    [*(*(a1 + 40) + 176) removeAllObjects];
    [*(*(a1 + 40) + 176) addObjectsFromArray:*(a1 + 48)];
    if (*(a1 + 56))
    {
      v2 = ICSRedactString();
      v3 = kEKUILogLocationSearchHandle;
      if (!os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
      {
LABEL_8:

        goto LABEL_9;
      }

      v4 = MEMORY[0x1E696AD98];
      v5 = *(*(a1 + 40) + 176);
      v6 = v3;
      v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v13 = 138543618;
      v14 = v2;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Recents %{public}@ results", &v13, 0x16u);
    }

    else
    {
      v8 = kEKUILogLocationSearchHandle;
      if (!os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
      {
LABEL_9:
        v11 = [*(a1 + 40) dedupeResults];
        v12 = [*(a1 + 40) delegate];
        [v12 locationSearchModel:*(a1 + 40) updatedSearchTypes:v11 | 0x10];

        return;
      }

      v9 = MEMORY[0x1E696AD98];
      v10 = *(*(a1 + 40) + 176);
      v2 = v8;
      v6 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_INFO, "Returning all Recents %{public}@ results", &v13, 0xCu);
    }

    goto LABEL_8;
  }
}

- (id)_imageForMapHandle:(id)handle
{
  handleCopy = handle;
  if (!handleCopy || ([_mapItemCache objectForKey:handleCopy], v4 = objc_claimAutoreleasedReturnValue(), ImageForMapItem(v4), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = MapPinImage();
  }

  return v5;
}

- (id)_imageForAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = attributesCopy;
  if (!attributesCopy || (ImageForAttributes(attributesCopy), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = MapPinImage();
  }

  return v5;
}

- (void)searchFrequentLocations:(id)locations
{
  locationsCopy = locations;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E6966B30];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__EKUILocationSearchModel_searchFrequentLocations___block_invoke;
  v7[3] = &unk_1E8440CA0;
  objc_copyWeak(&v9, &location);
  v6 = locationsCopy;
  v8 = v6;
  [v5 estimateGeolocationFromHistoricDevicePositionAtLocation:v6 withCompletionBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__EKUILocationSearchModel_searchFrequentLocations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__EKUILocationSearchModel_searchFrequentLocations___block_invoke_2;
    v9[3] = &unk_1E8440C00;
    v9[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    v12 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

void __51__EKUILocationSearchModel_searchFrequentLocations___block_invoke_2(uint64_t a1)
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
    v6 = [MEMORY[0x1E6966B08] locationWithTitle:*(a1 + 56)];
    [v6 setGeoLocation:*(a1 + 40)];
    [v6 setAddress:0];
    [*(*(a1 + 32) + 184) addObject:v6];
  }

  v7 = ICSRedactString();
  v8 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = *(a1 + 32);
    v11 = v8;
    v12 = [v10 frequentsSearchResults];
    v13 = [v9 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    v16 = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Frequents %{public}@ results", &v16, 0x16u);
  }

  v14 = [*(a1 + 32) dedupeResults];
  v15 = [*(a1 + 32) delegate];
  [v15 locationSearchModel:*(a1 + 32) updatedSearchTypes:v14 | 0x20];
}

- (id)splitEventLocations:(id)locations
{
  v35 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  structuredLocationWithoutPrediction = [locationsCopy structuredLocationWithoutPrediction];
  preferredLocationWithoutPrediction = [locationsCopy preferredLocationWithoutPrediction];
  title = [preferredLocationWithoutPrediction title];
  v6 = [title componentsSeparatedByString:@" "];;

  [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v21 = v20 = locationsCopy;
  attendees = [locationsCopy attendees];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = attendees;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
LABEL_8:
          v16 = 0;
          while (1)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            name = [*(*(&v25 + 1) + 8 * v16) name];
            v18 = [name isEqualToString:v11];

            if (v18)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
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

          if (structuredLocationWithoutPrediction)
          {
            [structuredLocationWithoutPrediction duplicate];
          }

          else
          {
            [MEMORY[0x1E6966B08] locationWithTitle:v11];
          }
          v12 = ;
          [v12 setTitle:v11];
          [v21 addObject:v12];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  return v21;
}

- (void)updateEventLocations:(id)locations
{
  locationsCopy = locations;
  v5 = locationsCopy;
  if (locationsCopy)
  {
    if (([locationsCopy isEqualToString:&stru_1F4EF6790] & 1) == 0)
    {
      eventStore = self->_eventStore;
      if (eventStore)
      {
        v7 = MEMORY[0x1E695DFD8];
        v8 = [(EKEventStore *)eventStore readWriteCalendarsForEntityType:0];
        v9 = [v7 setWithArray:v8];

        v10 = MEMORY[0x1E6966A70];
        v11 = self->_eventStore;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __48__EKUILocationSearchModel_updateEventLocations___block_invoke;
        v20[3] = &unk_1E8440D90;
        v21 = v5;
        selfCopy = self;
        v12 = [v10 searchWithCalendars:v9 searchTerm:v21 store:v11 callback:v20];
        eventsSearch = self->_eventsSearch;
        self->_eventsSearch = v12;

        if (!self->_eventsQueue)
        {
          v14 = dispatch_queue_create("com.apple.mobilecal.eventslocation", 0);
          eventsQueue = self->_eventsQueue;
          self->_eventsQueue = v14;
        }

        objc_initWeak(&location, self->_eventsSearch);
        v16 = self->_eventsQueue;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __48__EKUILocationSearchModel_updateEventLocations___block_invoke_138;
        v17[3] = &unk_1E843F080;
        objc_copyWeak(&v18, &location);
        dispatch_async(v16, v17);
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __48__EKUILocationSearchModel_updateEventLocations___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ICSRedactString();
  v5 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = v5;
    v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    *buf = 138543618;
    v20 = v4;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events %{public}@ match results", buf, 0x16u);
  }

  v9 = v3;
  v10 = *(a1 + 40);
  v11 = *(v10 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EKUILocationSearchModel_updateEventLocations___block_invoke_127;
  block[3] = &unk_1E8440D68;
  block[4] = v10;
  v15 = v4;
  v12 = v9;
  v16 = v12;
  v17 = *(a1 + 32);
  v18 = v12;
  v13 = v4;
  dispatch_async(v11, block);
}

void __48__EKUILocationSearchModel_updateEventLocations___block_invoke_127(uint64_t a1)
{
  v101 = *MEMORY[0x1E69E9840];
  v1 = [*(*(a1 + 32) + 120) searchTerm];
  v41 = ICSRedactString();

  v2 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = v2;
    v7 = [v3 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    *buf = 138543874;
    *&buf[4] = v4;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    *&buf[22] = 2114;
    v98 = v41;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events Processing %{public}@ match results, events search text = %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v98 = __Block_byref_object_copy__8;
  v99 = __Block_byref_object_dispose__8;
  v100 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__8;
  v92 = __Block_byref_object_dispose__8;
  v93 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EKUILocationSearchModel_updateEventLocations___block_invoke_128;
  block[3] = &unk_1E8440CC8;
  v8 = a1;
  block[4] = *(a1 + 32);
  v80 = *(a1 + 56);
  v81 = &v84;
  v82 = buf;
  v83 = &v88;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  if ((v85[3] & 1) == 0)
  {
    group = dispatch_group_create();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = *(a1 + 64);
    v44 = [obj countByEnumeratingWithState:&v75 objects:v96 count:16];
    if (v44)
    {
      v43 = *v76;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v76 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v75 + 1) + 8 * i);
          v10 = [v9 objectForKey:*MEMORY[0x1E6993328]];
          if (!v10)
          {
            v11 = [v9 objectForKey:*MEMORY[0x1E6993330]];
            v12 = [v9 objectForKey:*MEMORY[0x1E6993320]];
            v13 = [*(*(v8 + 32) + 112) eventForObjectID:v11 occurrenceDate:v12 checkValid:0];

            v8 = a1;
            v10 = v13;
          }

          v45 = v10;
          v14 = [*(v8 + 32) splitEventLocations:?];
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v71 objects:v95 count:16];
          if (v16)
          {
            v17 = *v72;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v72 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v71 + 1) + 8 * j);
                v20 = [v19 geoLocation];

                if (v20)
                {
                  *v67 = 0;
                  v68 = v67;
                  v69 = 0x2020000000;
                  v70 = 1;
                  v21 = *(*&buf[8] + 40);
                  v66[0] = MEMORY[0x1E69E9820];
                  v66[1] = 3221225472;
                  v66[2] = __48__EKUILocationSearchModel_updateEventLocations___block_invoke_129;
                  v66[3] = &unk_1E8440CF0;
                  v66[4] = v19;
                  v66[5] = v67;
                  [v21 enumerateObjectsUsingBlock:v66];
                  if (v19 && (v68[24] & 1) != 0)
                  {
                    v22 = [v19 mapKitHandle];
                    if (v22)
                    {
                      v23 = [_mapItemCache objectForKey:v22];
                      v24 = v23 == 0;

                      if (v24)
                      {
                        dispatch_group_enter(group);
                        v25 = MEMORY[0x1E696F270];
                        v62[0] = MEMORY[0x1E69E9820];
                        v62[1] = 3221225472;
                        v62[2] = __48__EKUILocationSearchModel_updateEventLocations___block_invoke_2;
                        v62[3] = &unk_1E8440D18;
                        v26 = v22;
                        v63 = v26;
                        v64 = v19;
                        v65 = group;
                        [v25 _mapItemFromHandle:v26 completionHandler:v62];
                      }
                    }

                    v27 = objc_alloc_init(EKStructuredLocationWithImage);
                    [(EKStructuredLocationWithImage *)v27 setLocation:v19];
                    [*(*&buf[8] + 40) addObject:v27];
                  }
                }

                else
                {
                  *v67 = 0;
                  v68 = v67;
                  v69 = 0x2020000000;
                  v70 = 1;
                  v28 = v89[5];
                  v61[0] = MEMORY[0x1E69E9820];
                  v61[1] = 3221225472;
                  v61[2] = __48__EKUILocationSearchModel_updateEventLocations___block_invoke_132;
                  v61[3] = &unk_1E8440D40;
                  v61[4] = v19;
                  v61[5] = v67;
                  [v28 enumerateObjectsUsingBlock:v61];
                  if (v19 && (v68[24] & 1) != 0)
                  {
                    [v89[5] addObject:v19];
                  }
                }

                _Block_object_dispose(v67, 8);
              }

              v16 = [v15 countByEnumeratingWithState:&v71 objects:v95 count:16];
            }

            while (v16);
          }

          v8 = a1;
        }

        v44 = [obj countByEnumeratingWithState:&v75 objects:v96 count:16];
      }

      while (v44);
    }

    v29 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(group, v29))
    {
      v30 = kEKUILogLocationSearchHandle;
      if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
      {
        *v67 = 0;
        _os_log_impl(&dword_1D3400000, v30, OS_LOG_TYPE_ERROR, "Timed out waiting for all mapItemHandles to resolve to mapItems", v67, 2u);
      }
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v31 = *(*&buf[8] + 40);
    v32 = [v31 countByEnumeratingWithState:&v57 objects:v94 count:16];
    if (v32)
    {
      v33 = *v58;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v58 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v57 + 1) + 8 * k);
          v36 = [v35 location];
          v37 = [v36 mapKitHandle];

          v38 = [*(a1 + 32) _imageForMapHandle:v37];
          [v35 setImage:v38];
        }

        v32 = [v31 countByEnumeratingWithState:&v57 objects:v94 count:16];
      }

      while (v32);
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __48__EKUILocationSearchModel_updateEventLocations___block_invoke_134;
    v52[3] = &unk_1E8440CC8;
    v52[4] = *(a1 + 32);
    v53 = *(a1 + 56);
    v54 = &v84;
    v55 = buf;
    v56 = &v88;
    v39 = MEMORY[0x1E69E96A0];
    dispatch_sync(MEMORY[0x1E69E96A0], v52);

    if ((v85[3] & 1) == 0)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __48__EKUILocationSearchModel_updateEventLocations___block_invoke_135;
      v49[3] = &unk_1E843EC38;
      v49[4] = *(a1 + 32);
      v50 = *(a1 + 56);
      v51 = *(a1 + 48);
      v40 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v49);
    }
  }

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v88, 8);

  _Block_object_dispose(buf, 8);
}

void __48__EKUILocationSearchModel_updateEventLocations___block_invoke_128(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
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

    v11 = *(a1[4] + 240);
    if (!v11)
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v13 = a1[4];
      v14 = *(v13 + 240);
      *(v13 + 240) = v12;

      v11 = *(a1[4] + 240);
    }

    v15 = [MEMORY[0x1E695DF70] arrayWithArray:v11];
    v16 = *(a1[8] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
    v18 = ICSRedactString();
    v19 = [*(a1[4] + 120) searchTerm];
    v20 = ICSRedactString();

    v21 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      v22 = 138543618;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events Bailing before processing matches because query changed, events search text = %{public}@", &v22, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void __48__EKUILocationSearchModel_updateEventLocations___block_invoke_129(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

void __48__EKUILocationSearchModel_updateEventLocations___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [_mapItemCache setObject:v5 forKey:*(a1 + 32)];
  }

  else
  {
    v7 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 mapKitHandle];
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, "Failed to get map item from handle when fetching event locations: %@, %@", &v11, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __48__EKUILocationSearchModel_updateEventLocations___block_invoke_132(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqualToLocation:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void __48__EKUILocationSearchModel_updateEventLocations___block_invoke_134(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
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
    v9 = *(v8 + 240);
    *(v8 + 240) = v7;
  }

  else
  {
    v10 = ICSRedactString();
    v11 = [*(a1[4] + 120) searchTerm];
    v12 = ICSRedactString();

    v13 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events Bailing before setting results because query changed, events search text = %{public}@", &v14, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void __48__EKUILocationSearchModel_updateEventLocations___block_invoke_135(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 120) searchTerm];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if (v3)
  {
    if ([*(a1 + 48) count])
    {
      v4 = 192;
    }

    else
    {
      v13 = ICSRedactString();
      v14 = kEKUILogLocationSearchHandle;
      if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
      {
        v15 = MEMORY[0x1E696AD98];
        v16 = *(*(a1 + 32) + 192);
        v17 = v14;
        v18 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
        v19 = 138543618;
        v20 = v13;
        v21 = 2114;
        v22 = v18;
        _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events %{public}@ results", &v19, 0x16u);
      }

      v4 = [*(a1 + 32) dedupeResults] | 0xC0;
    }

    v5 = [*(a1 + 32) delegate];
    [v5 locationSearchModel:*(a1 + 32) updatedSearchTypes:v4];
  }

  else
  {
    v5 = ICSRedactString();
    v6 = [*(*(a1 + 32) + 120) searchTerm];
    v7 = ICSRedactString();

    v8 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
    {
      v19 = 138543618;
      v20 = v5;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Events Bailing before updating results because query changed, events search text = %{public}@", &v19, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 192);
    *(v9 + 192) = 0;

    v11 = *(a1 + 32);
    v12 = *(v11 + 240);
    *(v11 + 240) = 0;
  }
}

void __48__EKUILocationSearchModel_updateEventLocations___block_invoke_138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained run];
    WeakRetained = v2;
  }
}

- (void)searchConferenceRooms:(id)rooms
{
  roomsCopy = rooms;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke;
  v6[3] = &unk_1E843EFB8;
  v6[4] = self;
  v7 = roomsCopy;
  v5 = roomsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 calendarItemForSearchModel:*(a1 + 32)];

  v4 = [v3 calendar];
  v5 = [v4 source];

  v6 = [v5 constraints];
  if ([v6 supportsLocationDirectorySearches])
  {
    v7 = [v3 allowsAttendeesModifications];

    if (v7)
    {
      v8 = *(*(a1 + 32) + 144);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke_139;
      block[3] = &unk_1E843EC38;
      v9 = *(a1 + 40);
      v10 = *(a1 + 32);
      v13 = v9;
      v14 = v10;
      v15 = v5;
      dispatch_async(v8, block);

      goto LABEL_7;
    }
  }

  else
  {
  }

  v11 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Either the source for the search model's event does not support location directory searches or the calendar is shared to the user.  Will not search for conference rooms.", buf, 2u);
  }

LABEL_7:
}

void __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke_139(uint64_t a1)
{
  v2 = [*(a1 + 32) componentsSeparatedByCharactersInSet:*(*(a1 + 40) + 136)];
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v2];
  v4 = objc_alloc_init(MEMORY[0x1E6966A00]);
  [v4 setTerms:v3];
  [v4 setFindLocations:1];
  [v4 setResultLimit:50];
  objc_initWeak(&location, *(a1 + 40));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke_2;
  aBlock[3] = &unk_1E8440DB8;
  objc_copyWeak(&v18, &location);
  v17 = 0;
  v5 = _Block_copy(aBlock);
  v6 = [objc_alloc(MEMORY[0x1E69669F8]) initWithSource:*(a1 + 48) query:v4 resultsBlock:v5];
  objc_initWeak(&from, v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke_3;
  v12[3] = &unk_1E8440DE0;
  objc_copyWeak(&v14, &from);
  v12[4] = *(a1 + 40);
  v7 = v4;
  v13 = v7;
  [v6 setCompletionBlock:v12];
  [*(*(a1 + 40) + 152) cancelAllOperations];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke_144;
  block[3] = &unk_1E843EFB8;
  v9 = *(a1 + 32);
  v8 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  [*(*(a1 + 40) + 152) addOperation:v6];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processDirectorySearchResultSet:v3 forOperation:*(a1 + 32)];
}

void __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(*(a1 + 32) + 144);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke_143;
    v6[3] = &unk_1E843EFB8;
    v7 = WeakRetained;
    v8 = *(a1 + 40);
    dispatch_async(v4, v6);
  }

  else
  {
    v5 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEBUG, "The directory search operation went away.  Returning early.", buf, 2u);
    }
  }
}

void __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke_143(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 32) error];
    if (v2)
    {
      v3 = kEKUILogLocationSearchHandle;
      if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
      {
        v7 = 138412290;
        v8 = v2;
        _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_ERROR, "Directory search operation completed with error: [%@]", &v7, 0xCu);
      }
    }

    else if ([*(a1 + 32) numberOfMatchesExceededLimit])
    {
      v4 = kEKUILogLocationSearchHandle;
      if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 40);
        v6 = v4;
        v7 = 134217984;
        v8 = [v5 resultLimit];
        _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "Directory search operation completed.  The number of matches exceeded the original result limit of [%tu]", &v7, 0xCu);
      }
    }
  }
}

void __49__EKUILocationSearchModel_searchConferenceRooms___block_invoke_144(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 160) removeAllObjects];
  [*(*(a1 + 32) + 168) removeAllObjects];
  v2 = ICSRedactString();
  v3 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = *(*(a1 + 32) + 160);
    v6 = v3;
    v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v9 = 138543618;
    v10 = v2;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "[%{public}@] <<<< ConferenceRooms %{public}@ results", &v9, 0x16u);
  }

  v8 = [*(a1 + 32) delegate];
  [v8 locationSearchModel:*(a1 + 32) updatedSearchTypes:256];
}

- (void)_processDirectorySearchResultSet:(id)set forOperation:(id)operation
{
  setCopy = set;
  operationCopy = operation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__EKUILocationSearchModel__processDirectorySearchResultSet_forOperation___block_invoke;
  block[3] = &unk_1E843EC38;
  v11 = operationCopy;
  selfCopy = self;
  v13 = setCopy;
  v8 = setCopy;
  v9 = operationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73__EKUILocationSearchModel__processDirectorySearchResultSet_forOperation___block_invoke(id *a1)
{
  if (([a1[4] isCancelled] & 1) == 0)
  {
    v2 = [a1[5] delegate];
    v3 = [v2 calendarItemForSearchModel:a1[5]];

    v4 = [v3 calendar];
    v5 = [v4 source];

    v6 = [v5 constraints];
    v7 = [v6 supportsAvailabilityRequests];

    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__EKUILocationSearchModel__processDirectorySearchResultSet_forOperation___block_invoke_2;
    block[3] = &unk_1E843FBC8;
    v9 = a1[6];
    v14 = v7;
    v10 = a1[5];
    v12 = v9;
    v13 = v10;
    dispatch_async(v8, block);
  }
}

void __73__EKUILocationSearchModel__processDirectorySearchResultSet_forOperation___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [*(a1 + 32) locations];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__EKUILocationSearchModel__processDirectorySearchResultSet_forOperation___block_invoke_3;
  v5[3] = &unk_1E8440E08;
  v7 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:v5];

  [*(a1 + 40) _addDiscoveredConferenceRooms:v4];
}

void __73__EKUILocationSearchModel__processDirectorySearchResultSet_forOperation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_alloc_init(EKUIConferenceRoom);
  [(EKUIConferenceRoom *)v5 setLocation:v3];

  [(EKUIConferenceRoom *)v5 setAvailability:0];
  [(EKUIConferenceRoom *)v5 setSupportsAvailability:*(a1 + 48)];
  v4 = [*(a1 + 32) delegate];
  LODWORD(v3) = [v4 shouldIncludeConferenceRoom:v5];

  if (v3)
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)_addDiscoveredConferenceRooms:(id)rooms
{
  roomsCopy = rooms;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke;
  v6[3] = &unk_1E843EFB8;
  v7 = roomsCopy;
  selfCopy = self;
  v5 = roomsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138543362;
    v37 = v6;
    _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_INFO, "<<<< ConferenceRooms %{public}@ results", buf, 0xCu);
  }

  [*(*(a1 + 40) + 160) addObjectsFromArray:*(a1 + 32)];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_146;
  aBlock[3] = &__block_descriptor_40_e51_q24__0__EKUIConferenceRoom_8__EKUIConferenceRoom_16l;
  aBlock[4] = 193;
  v7 = _Block_copy(aBlock);
  [*(*(a1 + 40) + 160) sortWithOptions:16 usingComparator:v7];
  v8 = [*(a1 + 40) delegate];
  v9 = [v8 calendarItemForSearchModel:*(a1 + 40)];

  v10 = [v9 calendar];
  v11 = [v10 source];

  v12 = [v11 constraints];
  v13 = [v12 supportsAvailabilityRequests];

  if ((v13 & 1) == 0)
  {
    v22 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v37 = v11;
      _os_log_impl(&dword_1D3400000, v22, OS_LOG_TYPE_DEBUG, "The source for this calendar item does not support availability requests.  Will not issue an availability request.  Source: [%@]", buf, 0xCu);
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
      v25 = objc_opt_class();
      *buf = 138412290;
      v37 = v25;
      v26 = v25;
      _os_log_impl(&dword_1D3400000, v24, OS_LOG_TYPE_DEBUG, "This calendar item is not a [%@].  Will not issue an availability request.", buf, 0xCu);
    }

LABEL_10:
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = [*(a1 + 40) delegate];
    [v27 locationSearchModel:*(a1 + 40) updatedSearchTypes:256];

    goto LABEL_11;
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = *(a1 + 32);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_150;
  v32[3] = &unk_1E8440E50;
  v16 = v14;
  v17 = *(a1 + 40);
  v33 = v16;
  v34 = v17;
  [v15 enumerateObjectsUsingBlock:v32];

  v18 = [*(a1 + 40) delegate];
  [v18 locationSearchModel:*(a1 + 40) updatedSearchTypes:256];

  v19 = *(a1 + 40);
  v20 = *(v19 + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_2;
  block[3] = &unk_1E8440C00;
  block[4] = v19;
  v21 = v16;
  v29 = v21;
  v30 = v9;
  v31 = *(a1 + 32);
  dispatch_async(v20, block);

LABEL_11:
}

uint64_t __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 location];
  v7 = [v6 displayName];

  v8 = [v5 location];

  v9 = [v8 displayName];

  v10 = [v7 compare:v9 options:*(a1 + 32)];
  return v10;
}

void __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_150(uint64_t a1, void *a2)
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

void __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_3;
  aBlock[3] = &unk_1E8440E78;
  objc_copyWeak(&v11, &location);
  v10 = 0;
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 32) availabilityRequestForConferenceRooms:*(a1 + 40) duringEvent:*(a1 + 48) resultsBlock:v2 completionBlock:0];
  objc_initWeak(&from, v3);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_5;
  v4[3] = &unk_1E8440EC8;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  v5 = *(a1 + 56);
  [v3 setCompletionBlock:v4];
  [*(*(a1 + 32) + 152) addOperation:v3];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[18];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_4;
    block[3] = &unk_1E843EC38;
    block[4] = WeakRetained;
    v8 = v3;
    v9 = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_5(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = v3;
  if (!WeakRetained)
  {
    v6 = kEKUILogLocationSearchHandle;
    if (!os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v7 = "self went away.  Returning early.";
LABEL_8:
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, v7, buf, 2u);
    goto LABEL_9;
  }

  if (!v3)
  {
    v6 = kEKUILogLocationSearchHandle;
    if (!os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_DEBUG))
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
  block[2] = __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_153;
  block[3] = &unk_1E843EC38;
  v9 = v3;
  v10 = a1[4];
  v11 = WeakRetained;
  dispatch_async(v5, block);

LABEL_9:
}

void __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_153(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 32) error];
    if (v2)
    {
      v3 = kEKUILogLocationSearchHandle;
      if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v2;
        _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_ERROR, "Availability operation completed with error: [%@]", buf, 0xCu);
      }
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_154;
  v6[3] = &unk_1E843EFB8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_154(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_2_155;
  v4[3] = &unk_1E8440EA0;
  v4[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v4];
  if (*(v6 + 24) == 1)
  {
    v3 = [*(a1 + 40) delegate];
    [v3 locationSearchModel:*(a1 + 40) updatedSearchTypes:256];
  }

  _Block_object_dispose(&v5, 8);
}

void __57__EKUILocationSearchModel__addDiscoveredConferenceRooms___block_invoke_2_155(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 availabilityRequestInProgress])
  {
    [v3 setAvailabilityRequestInProgress:0];
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (id)availabilityRequestForConferenceRooms:(id)rooms duringEvent:(id)event resultsBlock:(id)block completionBlock:(id)completionBlock
{
  completionBlockCopy = completionBlock;
  blockCopy = block;
  eventCopy = event;
  roomsCopy = rooms;
  startDate = [eventCopy startDate];
  endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
  calendar = [eventCopy calendar];
  source = [calendar source];

  v17 = [objc_alloc(MEMORY[0x1E6966AE0]) initWithSource:source startDate:startDate endDate:endDateUnadjustedForLegacyClients ignoredEvent:eventCopy addresses:roomsCopy resultsBlock:blockCopy];
  [v17 setCompletionBlock:completionBlockCopy];

  return v17;
}

- (void)updateConferenceRoomAvailability:(id)availability duringEvent:(id)event completionBlock:(id)block
{
  v23[1] = *MEMORY[0x1E69E9840];
  availabilityCopy = availability;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__EKUILocationSearchModel_updateConferenceRoomAvailability_duringEvent_completionBlock___block_invoke;
  aBlock[3] = &unk_1E843EFE0;
  v22 = availabilityCopy;
  v9 = availabilityCopy;
  blockCopy = block;
  eventCopy = event;
  v12 = _Block_copy(aBlock);
  location = [v9 location];
  preferredAddress = [location preferredAddress];
  v23[0] = preferredAddress;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v16 = [(EKUILocationSearchModel *)self availabilityRequestForConferenceRooms:v15 duringEvent:eventCopy resultsBlock:v12 completionBlock:blockCopy];

  [v9 setAvailabilityRequestInProgress:1];
  conferenceRoomProcessingQueue = self->_conferenceRoomProcessingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__EKUILocationSearchModel_updateConferenceRoomAvailability_duringEvent_completionBlock___block_invoke_2;
  block[3] = &unk_1E843EFB8;
  block[4] = self;
  v20 = v16;
  v18 = v16;
  dispatch_async(conferenceRoomProcessingQueue, block);
}

void __88__EKUILocationSearchModel_updateConferenceRoomAvailability_duringEvent_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 location];
  v6 = [v5 preferredAddress];
  v7 = [v4 objectForKey:v6];

  [*(a1 + 32) setAvailability:{objc_msgSend(MEMORY[0x1E6966988], "summarizedAvailabilityTypeForSpans:", v7)}];
  [*(a1 + 32) setAvailabilityRequestInProgress:0];
}

- (void)_handleAvailabilityResults:(id)results forOperation:(id)operation
{
  resultsCopy = results;
  if (([operation isCancelled] & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__EKUILocationSearchModel__handleAvailabilityResults_forOperation___block_invoke;
    v7[3] = &unk_1E843EFB8;
    v8 = resultsCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __67__EKUILocationSearchModel__handleAvailabilityResults_forOperation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__EKUILocationSearchModel__handleAvailabilityResults_forOperation___block_invoke_2;
  v4[3] = &unk_1E843EF90;
  v4[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  v3 = [*(a1 + 40) delegate];
  [v3 locationSearchModel:*(a1 + 40) updatedSearchTypes:256];
}

void __67__EKUILocationSearchModel__handleAvailabilityResults_forOperation___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E6966988];
  v6 = a2;
  v7 = [v5 summarizedAvailabilityTypeForSpans:a3];
  v8 = [*(*(a1 + 32) + 168) objectForKey:v6];

  [v8 setAvailability:v7];
  [v8 setAvailabilityRequestInProgress:0];
}

- (void)_addLocationToRecents:(id)recents addressString:(id)string mapItem:(id)item
{
  v25[1] = *MEMORY[0x1E69E9840];
  recentsCopy = recents;
  stringCopy = string;
  itemCopy = item;
  contactLabel = [recentsCopy contactLabel];
  v11 = contactLabel;
  if (contactLabel)
  {
    title = contactLabel;
  }

  else
  {
    title = [recentsCopy title];
  }

  v13 = title;

  if (stringCopy && v13)
  {
    v14 = EKWeakLinkClass();
    v15 = [MEMORY[0x1E6966AA8] recentForLocation:recentsCopy withAddressString:stringCopy andTitle:v13 mapItem:itemCopy];
    defaultInstance = [v14 defaultInstance];
    v25[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [defaultInstance recordContactEvents:v17 recentsDomain:@"com.apple.eventkit.ios" sendingAddress:0 completion:0];
  }

  else
  {
    v18 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      title2 = [recentsCopy title];
      v21 = 138412546;
      v22 = stringCopy;
      v23 = 2112;
      v24 = title2;
      _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_ERROR, "can't add to recents, missing info: %@ %@", &v21, 0x16u);
    }
  }
}

- (void)addConferenceRoomToRecents:(id)recents fromSource:(id)source
{
  v13[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  recentsCopy = recents;
  v7 = EKWeakLinkClass();
  v8 = MEMORY[0x1E6966AA8];
  location = [recentsCopy location];

  v10 = [v8 recentForDirectoryLocation:location onSource:sourceCopy];

  defaultInstance = [v7 defaultInstance];
  v13[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [defaultInstance recordContactEvents:v12 recentsDomain:@"com.apple.eventkit.ios" sendingAddress:0 completion:0];
}

- (BOOL)removeRecentLocation:(id)location
{
  v13[1] = *MEMORY[0x1E69E9840];
  locationCopy = location;
  defaultInstance = [EKWeakLinkClass() defaultInstance];
  v13[0] = locationCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v7 = [defaultInstance removeRecentContacts:v6 error:0];

  if (v7)
  {
    recentsSearchResults = self->_recentsSearchResults;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__EKUILocationSearchModel_removeRecentLocation___block_invoke;
    v11[3] = &unk_1E8440EF0;
    v12 = locationCopy;
    [(NSMutableArray *)self->_recentsSearchResults removeObjectAtIndex:[(NSMutableArray *)recentsSearchResults indexOfObjectPassingTest:v11]];
    delegate = [(EKUILocationSearchModel *)self delegate];
    [delegate locationSearchModel:self updatedSearchTypes:16];
  }

  return v7;
}

uint64_t __48__EKUILocationSearchModel_removeRecentLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recent];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)selectMapSearchCompletion:(id)completion
{
  completionCopy = completion;
  localSearch = self->_localSearch;
  if (localSearch)
  {
    [(MKLocalSearch *)localSearch cancel];
    v6 = self->_localSearch;
    self->_localSearch = 0;
  }

  v7 = EKWeakLinkClass();
  v8 = EKWeakLinkClass();
  v9 = [v7 searchRequestWithCompletion:completionCopy];
  v10 = [[v8 alloc] initWithRequest:v9];
  v11 = self->_localSearch;
  self->_localSearch = v10;

  v12 = self->_localSearch;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __53__EKUILocationSearchModel_selectMapSearchCompletion___block_invoke;
  v17 = &unk_1E8440F18;
  v18 = completionCopy;
  selfCopy = self;
  v13 = completionCopy;
  [(MKLocalSearch *)v12 startWithCompletionHandler:&v14];
  [v13 sendFeedback];
}

void __53__EKUILocationSearchModel_selectMapSearchCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  v6 = [v26 mapItems];
  v7 = [v6 count];

  if (v7)
  {
    v8 = EKWeakLinkClass();
    v9 = [v26 mapItems];
    v10 = [v9 firstObject];

    v11 = [v10 placemark];
    [v11 coordinate];
    v13 = v12;
    v15 = v14;

    v16 = [[v8 alloc] initWithLatitude:v13 longitude:v15];
    v7 = objc_alloc_init(MEMORY[0x1E6966B08]);
    v17 = [v10 name];
    [v7 setTitle:v17];

    [v7 setGeoLocation:v16];
    v18 = [*(a1 + 32) displayLines];
    v19 = [v18 lastObject];
    [v7 setAddress:v19];

    v20 = [v10 placemark];
    v21 = [v20 region];
    [v21 radius];
    [v7 setRadius:?];

    v22 = [v10 _handle];
    [v7 setMapKitHandle:v22];

    v23 = *(a1 + 40);
    v24 = [v7 address];
    [v23 _addLocationToRecents:v7 addressString:v24 mapItem:v10];
  }

  v25 = [*(a1 + 40) delegate];
  [v25 locationSearchModel:*(a1 + 40) selectedLocation:v7 withError:v5];
}

- (void)selectLocation:(id)location
{
  locationCopy = location;
  mapKitHandle = [locationCopy mapKitHandle];

  if (mapKitHandle)
  {
    v6 = MEMORY[0x1E696F270];
    mapKitHandle2 = [locationCopy mapKitHandle];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __42__EKUILocationSearchModel_selectLocation___block_invoke;
    v18[3] = &unk_1E8440F40;
    v18[4] = self;
    v19 = locationCopy;
    v8 = locationCopy;
    [v6 _mapItemFromHandle:mapKitHandle2 completionHandler:v18];

    delegate = [(EKUILocationSearchModel *)self delegate];
    [delegate locationSearchModel:self selectedLocation:v8 withError:0];
  }

  else
  {
    v10 = MEMORY[0x1E6992FD8];
    title = [locationCopy title];
    address = [locationCopy address];
    v8 = [v10 fullDisplayStringWithTitle:title address:address];

    v13 = MEMORY[0x1E6992FB8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__EKUILocationSearchModel_selectLocation___block_invoke_172;
    v15[3] = &unk_1E8440F40;
    v16 = locationCopy;
    selfCopy = self;
    v14 = locationCopy;
    [v13 geocodeLocationString:v8 withCompletionBlock:v15];
  }
}

void __42__EKUILocationSearchModel_selectLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
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
    v10 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_ERROR, "Failed to convert mapKitHandle to mapItem in selectLocation: %@", &v11, 0xCu);
    }
  }
}

void __42__EKUILocationSearchModel_selectLocation___block_invoke_172(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "Location search failed with error: %@", &v12, 0xCu);
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
  geoLocation = [(EKStructuredLocation *)self->_currentLocation geoLocation];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__EKUILocationSearchModel_selectCurrentLocation__block_invoke;
  v8[3] = &unk_1E8440F68;
  objc_copyWeak(&v9, &location);
  [(CLGeocoder *)v6 reverseGeocodeLocation:geoLocation completionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__EKUILocationSearchModel_selectCurrentLocation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = kEKUILogLocationSearchHandle;
      if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = v6;
        _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "Current Location search failed with error: %@", &v19, 0xCu);
      }
    }

    else if ([v5 count])
    {
      v9 = [v5 firstObject];
      v10 = [v9 postalAddress];
      v11 = [v9 name];
      [WeakRetained[4] setTitle:v11];

      if (v10)
      {
        v12 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v10 style:0];
        [WeakRetained[4] setAddress:v12];

        [WeakRetained[4] setRadius:100.0];
        v13 = [WeakRetained[4] title];
        if (!v13 || (v14 = v13, [WeakRetained[4] title], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", &stru_1F4EF6790), v15, v14, v16))
        {
          v17 = [WeakRetained[4] address];
          [WeakRetained[4] setTitle:v17];
        }
      }
    }

    v18 = [WeakRetained delegate];
    [v18 locationSearchModel:WeakRetained selectedLocation:WeakRetained[4] withError:0];
  }
}

+ (id)_dataDetector
{
  if (_dataDetector_onceToken != -1)
  {
    +[EKUILocationSearchModel _dataDetector];
  }

  v3 = _dataDetector_dataDetector;

  return v3;
}

void __40__EKUILocationSearchModel__dataDetector__block_invoke()
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
    v4 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, "Error initializing the custom virtual conference data detector.", v5, 2u);
    }
  }
}

+ (id)_linksInSource:(id)source
{
  sourceCopy = source;
  _dataDetector = [objc_opt_class() _dataDetector];
  v5 = [_dataDetector matchesInString:sourceCopy options:0 range:{0, objc_msgSend(sourceCopy, "length")}];

  return v5;
}

+ (id)URLsFromSource:(id)source
{
  v20 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [self _linksInSource:{sourceCopy, 0}];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 resultType] == 32)
        {
          phoneURL = [v11 URL];
        }

        else
        {
          if ([v11 resultType] != 2048)
          {
            phoneURL = 0;
            if (([0 cal_hasSchemeMailto] & 1) == 0)
            {
              continue;
            }

            goto LABEL_14;
          }

          phoneNumber = [v11 phoneNumber];
          phoneURL = [phoneNumber phoneURL];
        }

        if (([phoneURL cal_hasSchemeMailto] & 1) == 0)
        {
          if (!phoneURL)
          {
            continue;
          }

          [array addObject:phoneURL];
        }

LABEL_14:
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)_updateVirtualConferenceCustomOptions:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = optionsCopy;
  if ((self->_supportedSearchTypes & 0x400) != 0)
  {
    if ([optionsCopy length])
    {
      customConferenceQueue = self->_customConferenceQueue;
      if (!customConferenceQueue)
      {
        v7 = dispatch_queue_create("com.apple.mobilecal.customConference", 0);
        v8 = self->_customConferenceQueue;
        self->_customConferenceQueue = v7;

        customConferenceQueue = self->_customConferenceQueue;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65__EKUILocationSearchModel__updateVirtualConferenceCustomOptions___block_invoke;
      v17[3] = &unk_1E843EFB8;
      v17[4] = self;
      v18 = v5;
      dispatch_async(customConferenceQueue, v17);
    }

    else
    {
      virtualConferenceCustomSearchResults = self->_virtualConferenceCustomSearchResults;
      self->_virtualConferenceCustomSearchResults = 0;

      v10 = ICSRedactString();
      v11 = kEKUILogLocationSearchHandle;
      if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
      {
        v12 = MEMORY[0x1E696AD98];
        v13 = self->_virtualConferenceCustomSearchResults;
        v14 = v11;
        v15 = [v12 numberWithUnsignedInteger:{-[NSArray count](v13, "count")}];
        *buf = 138543618;
        v20 = v10;
        v21 = 2114;
        v22 = v15;
        _os_log_impl(&dword_1D3400000, v14, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Virtual Conference Custom %{public}@ results", buf, 0x16u);
      }

      delegate = [(EKUILocationSearchModel *)self delegate];
      [delegate locationSearchModel:self updatedSearchTypes:1024];
    }
  }
}

void __65__EKUILocationSearchModel__updateVirtualConferenceCustomOptions___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() URLsFromSource:*(a1 + 40)];
  v3 = [v2 CalMap:&__block_literal_global_182];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__EKUILocationSearchModel__updateVirtualConferenceCustomOptions___block_invoke_3;
  block[3] = &unk_1E843EC38;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id __65__EKUILocationSearchModel__updateVirtualConferenceCustomOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6966B40];
  v3 = a2;
  v4 = [[v2 alloc] initWithTitle:0 url:v3];

  v5 = objc_alloc(MEMORY[0x1E6966B38]);
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v5 initWithTitle:0 joinMethods:v6 conferenceDetails:0];

  return v7;
}

void __65__EKUILocationSearchModel__updateVirtualConferenceCustomOptions___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 248), *(a1 + 40));
  v2 = ICSRedactString();
  v3 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = *(*(a1 + 32) + 248);
    v6 = v3;
    v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v9 = 138543618;
    v10 = v2;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Virtual Conference Custom %{public}@ results", &v9, 0x16u);
  }

  v8 = [*(a1 + 32) delegate];
  [v8 locationSearchModel:*(a1 + 32) updatedSearchTypes:1024];
}

- (void)selectVirtualConferenceRoomType:(id)type
{
  typeCopy = type;
  delegate = [(EKUILocationSearchModel *)self delegate];
  v9 = [delegate calendarItemForSearchModel:self];

  v6 = MEMORY[0x1E6966B50];
  calendar = [v9 calendar];
  source = [calendar source];
  [v6 selectRoomType:typeCopy forSource:source];
}

- (void)updateVirtualConferenceRoomOptions:(id)options
{
  optionsCopy = options;
  if ((self->_supportedSearchTypes & 0x200) != 0)
  {
    if (updateVirtualConferenceRoomOptions__onceToken != -1)
    {
      [EKUILocationSearchModel updateVirtualConferenceRoomOptions:];
    }

    if (self->_allPossibleVirtualConferenceRooms)
    {
      [(EKUILocationSearchModel *)self _updateVirtualConferenceOptions:optionsCopy];
    }

    else
    {
      v5 = MEMORY[0x1E6966B48];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __62__EKUILocationSearchModel_updateVirtualConferenceRoomOptions___block_invoke_2;
      v6[3] = &unk_1E8440D90;
      v6[4] = self;
      v7 = optionsCopy;
      [v5 virtualConferenceRoomTypesWithCompletion:v6 queue:MEMORY[0x1E69E96A0]];
    }
  }
}

uint64_t __62__EKUILocationSearchModel_updateVirtualConferenceRoomOptions___block_invoke_2(uint64_t a1, void *a2)
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

- (void)_updateAllPossibleVirtualConferenceResultsWithRoomTypes:(id)types
{
  allPossibleVirtualConferenceRooms = self->_allPossibleVirtualConferenceRooms;
  typesCopy = types;
  [(NSMutableArray *)allPossibleVirtualConferenceRooms removeAllObjects];
  delegate = [(EKUILocationSearchModel *)self delegate];
  v11 = [delegate calendarItemForSearchModel:self];

  v7 = MEMORY[0x1E6966B50];
  calendar = [v11 calendar];
  source = [calendar source];
  v10 = [v7 roomTypesOrderedByMRU:typesCopy forSource:source];

  if (v10)
  {
    [(NSMutableArray *)self->_allPossibleVirtualConferenceRooms addObjectsFromArray:v10];
  }
}

- (void)_updateVirtualConferenceOptions:(id)options
{
  v32 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  virtualConferenceRoomSearchResults = self->_virtualConferenceRoomSearchResults;
  if (!virtualConferenceRoomSearchResults)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
    v7 = self->_virtualConferenceRoomSearchResults;
    self->_virtualConferenceRoomSearchResults = v6;

    virtualConferenceRoomSearchResults = self->_virtualConferenceRoomSearchResults;
  }

  [(NSMutableArray *)virtualConferenceRoomSearchResults removeAllObjects];
  if (optionsCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = self->_allPossibleVirtualConferenceRooms;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          title = [v13 title];
          v15 = [title rangeOfString:optionsCopy options:1];

          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableArray *)self->_virtualConferenceRoomSearchResults addObject:v13];
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [(NSMutableArray *)self->_virtualConferenceRoomSearchResults addObjectsFromArray:self->_allPossibleVirtualConferenceRooms];
  }

  v16 = ICSRedactString();
  v17 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v18 = MEMORY[0x1E696AD98];
    v19 = self->_virtualConferenceRoomSearchResults;
    v20 = v17;
    v21 = [v18 numberWithUnsignedInteger:{-[NSMutableArray count](v19, "count")}];
    *buf = 138543618;
    v28 = v16;
    v29 = 2114;
    v30 = v21;
    _os_log_impl(&dword_1D3400000, v20, OS_LOG_TYPE_INFO, "[%{public}@] <<<< Virtual Conference Rooms %{public}@ results", buf, 0x16u);
  }

  delegate = [(EKUILocationSearchModel *)self delegate];
  [delegate locationSearchModel:self updatedSearchTypes:512];
}

- (void)_updateMapURL:(id)l
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = ICSRedactString();
  v6 = [MEMORY[0x1E695DFF8] URLWithString:lCopy];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [MEMORY[0x1E696F270] _mapItemBackedByURL:v6];
  delegate2 = v7;
  if (v7 && ([v7 isCurrentLocation] & 1) == 0)
  {
    v15 = objc_alloc_init(EKStructuredLocationWithImage);
    locationFromMapsURL = self->_locationFromMapsURL;
    self->_locationFromMapsURL = v15;

    v17 = [MEMORY[0x1E6966B08] locationWithMapItem:delegate2];
    _geoAddress = [delegate2 _geoAddress];
    formattedAddressLines = [_geoAddress formattedAddressLines];
    lastObject = [formattedAddressLines lastObject];

    [v17 setAddress:lastObject];
    [(EKStructuredLocationWithImage *)self->_locationFromMapsURL setLocation:v17];
    v20 = ImageForMapItem(delegate2);
    [(EKStructuredLocationWithImage *)self->_locationFromMapsURL setImage:v20];

    if (([delegate2 isPlaceHolder] & 1) == 0)
    {
      location = [(EKStructuredLocationWithImage *)self->_locationFromMapsURL location];
      [location setTitle:0];
    }

    location2 = [(EKStructuredLocationWithImage *)self->_locationFromMapsURL location];
    address = [location2 address];
    if (address)
    {
      location3 = [(EKStructuredLocationWithImage *)self->_locationFromMapsURL location];
      title = [location3 title];

      if (title)
      {
        v26 = kEKUILogLocationSearchHandle;
        if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
        {
          v27 = MEMORY[0x1E696AD98];
          v28 = self->_locationFromMapsURL != 0;
          v29 = v26;
          v30 = [v27 numberWithInt:v28];
          *buf = 138543618;
          v42 = v5;
          v43 = 2114;
          v44 = v30;
          _os_log_impl(&dword_1D3400000, v29, OS_LOG_TYPE_INFO, "[%{public}@] <<<< MapKit from URL %{public}@ results", buf, 0x16u);
        }

        delegate = [(EKUILocationSearchModel *)self delegate];
        [delegate locationSearchModel:self updatedSearchTypes:2];

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
      v33 = objc_alloc_init(EKWeakLinkClass());
      v34 = self->_geocoder;
      self->_geocoder = v33;

      geocoder = self->_geocoder;
    }

    if ([(CLGeocoder *)geocoder isGeocoding])
    {
      [(CLGeocoder *)self->_geocoder cancelGeocode];
    }

    objc_initWeak(buf, self);
    v35 = self->_geocoder;
    geoLocation = [v17 geoLocation];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __41__EKUILocationSearchModel__updateMapURL___block_invoke;
    v38[3] = &unk_1E8440FB0;
    objc_copyWeak(&v40, buf);
    v39 = v5;
    [(CLGeocoder *)v35 reverseGeocodeLocation:geoLocation completionHandler:v38];

    objc_destroyWeak(&v40);
    objc_destroyWeak(buf);
    goto LABEL_22;
  }

LABEL_5:
  v9 = self->_locationFromMapsURL;
  self->_locationFromMapsURL = 0;

  v10 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = self->_locationFromMapsURL != 0;
    v13 = v10;
    v14 = [v11 numberWithInt:v12];
    *buf = 138543618;
    v42 = v5;
    v43 = 2114;
    v44 = v14;
    _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_INFO, "[%{public}@] <<<< MapKit from URL %{public}@ results", buf, 0x16u);
  }

  delegate2 = [(EKUILocationSearchModel *)self delegate];
  [delegate2 locationSearchModel:self updatedSearchTypes:2];
LABEL_8:
}

void __41__EKUILocationSearchModel__updateMapURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  if (v6)
  {
    v8 = kEKUILogLocationSearchHandle;
    if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "Map URL address geocoding failed failed with error: %@", buf, 0xCu);
    }

    v9 = WeakRetained[6];
    WeakRetained[6] = 0;

    goto LABEL_14;
  }

  if ([v5 count])
  {
    v10 = [v5 firstObject];
    v11 = [v10 postalAddress];
    v12 = [v10 name];
    v13 = [WeakRetained[6] location];
    [v13 setTitle:v12];

    if (v11)
    {
      v14 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v11 style:0];
      v15 = [WeakRetained[6] location];
      [v15 setAddress:v14];

      v16 = [v10 region];
      [v16 radius];
      v18 = v17;
      v19 = [WeakRetained[6] location];
      [v19 setRadius:v18];

      v20 = [WeakRetained[6] location];
      v21 = [v20 title];
      if (v21)
      {
        v22 = v21;
        v23 = [WeakRetained[6] location];
        [v23 title];
        v25 = v24 = v11;
        v36 = [v25 isEqualToString:&stru_1F4EF6790];

        v11 = v24;
        if (!v36)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v26 = [WeakRetained[6] location];
      v27 = [v26 address];
      v28 = [WeakRetained[6] location];
      [v28 setTitle:v27];
    }

LABEL_13:
  }

LABEL_14:
  v29 = kEKUILogLocationSearchHandle;
  if (os_log_type_enabled(kEKUILogLocationSearchHandle, OS_LOG_TYPE_INFO))
  {
    v30 = *(a1 + 32);
    v31 = MEMORY[0x1E696AD98];
    v32 = WeakRetained[6] != 0;
    v33 = v29;
    v34 = [v31 numberWithInt:v32];
    *buf = 138543618;
    v38 = v30;
    v39 = 2114;
    v40 = v34;
    _os_log_impl(&dword_1D3400000, v33, OS_LOG_TYPE_INFO, "[%{public}@] <<<< MapKit from URL %{public}@ results", buf, 0x16u);
  }

  v35 = [WeakRetained delegate];
  [v35 locationSearchModel:WeakRetained updatedSearchTypes:2];

LABEL_17:
}

- (EKUILocationSearchModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end