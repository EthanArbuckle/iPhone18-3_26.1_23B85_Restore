@interface EKEventActionHandler
+ (id)_displayStringForDate:(id)date;
+ (id)_logHandle;
+ (id)sharedInstance;
- (id)_intentForAction:(id)action onEvent:(id)event;
- (id)createEventIntentForEvent:(id)event withSuggestionsInfoUniqueKey:(id)key;
- (void)donateInteractionForAction:(id)action onEvent:(id)event;
- (void)donatePredictiveAction:(id)action forEvent:(id)event;
- (void)handleEventCreation:(id)creation;
- (void)removeInteractionsForCalendar:(id)calendar;
@end

@implementation EKEventActionHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[EKEventActionHandler sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __38__EKEventActionHandler_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(EKEventActionHandler);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_logHandle
{
  if (_logHandle_onceToken != -1)
  {
    +[EKEventActionHandler _logHandle];
  }

  v3 = _logHandle_handle;

  return v3;
}

uint64_t __34__EKEventActionHandler__logHandle__block_invoke()
{
  _logHandle_handle = os_log_create("EventKit", "EKEventActionHandler");

  return MEMORY[0x1EEE66BB8]();
}

- (void)handleEventCreation:(id)creation
{
  creationCopy = creation;
  [(EKEventActionHandler *)self donateInteractionForAction:@"createEvent" onEvent:creationCopy];
  [(EKEventActionHandler *)self donatePredictiveAction:@"createEvent" forEvent:creationCopy];
}

- (void)removeInteractionsForCalendar:(id)calendar
{
  v11 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  v4 = MEMORY[0x1E696E8B8];
  calendarIdentifier = [calendarCopy calendarIdentifier];
  [v4 deleteInteractionsWithGroupIdentifier:calendarIdentifier completion:0];

  _logHandle = [objc_opt_class() _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_INFO))
  {
    calendarIdentifier2 = [calendarCopy calendarIdentifier];
    v9 = 138412290;
    v10 = calendarIdentifier2;
    _os_log_impl(&dword_1A805E000, _logHandle, OS_LOG_TYPE_INFO, "Deleting previous interactions on calendar %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_intentForAction:(id)action onEvent:(id)event
{
  actionCopy = action;
  v6 = [EKDuetSignalEventSerializer serializedEventWithEvent:event];
  v7 = [objc_alloc(MEMORY[0x1E696E880]) initWithDomain:@"Calendar" verb:actionCopy parametersByName:v6];

  return v7;
}

- (void)donateInteractionForAction:(id)action onEvent:(id)event
{
  v24[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v7 = [(EKEventActionHandler *)self _intentForAction:action onEvent:eventCopy];
  if (v7)
  {
    calendarItemIdentifier = [eventCopy calendarItemIdentifier];
    verb = [v7 verb];
    v10 = [verb isEqualToString:@"deleteEvent"];

    if (v10)
    {
      v11 = MEMORY[0x1E696E8B8];
      v24[0] = calendarItemIdentifier;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v11 deleteInteractionsWithIdentifiers:v12 completion:0];

      _logHandle = [objc_opt_class() _logHandle];
      if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = calendarItemIdentifier;
        _os_log_impl(&dword_1A805E000, _logHandle, OS_LOG_TYPE_INFO, "Deleting previous interactions on event %@", &v20, 0xCu);
      }
    }

    v14 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v7 response:0];
    [v14 setIdentifier:calendarItemIdentifier];
    calendar = [eventCopy calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    [v14 setGroupIdentifier:calendarIdentifier];

    [v14 donateInteractionWithCompletion:0];
    _logHandle2 = [objc_opt_class() _logHandle];
    if (os_log_type_enabled(_logHandle2, OS_LOG_TYPE_INFO))
    {
      verb2 = [v7 verb];
      v20 = 138412546;
      v21 = verb2;
      v22 = 2112;
      v23 = calendarItemIdentifier;
      _os_log_impl(&dword_1A805E000, _logHandle2, OS_LOG_TYPE_INFO, "Donated interaction for action %@ on event %@", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)donatePredictiveAction:(id)action forEvent:(id)event
{
  actionCopy = action;
  eventCopy = event;
  bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  bundleIdentifier = [bundleRecordForCurrentProcess bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:@"com.apple.mobilecal"];

  if (v9 && [actionCopy isEqualToString:@"createEvent"])
  {
    v10 = [(EKEventActionHandler *)self createEventIntentForEvent:eventCopy];
    v11 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v10 response:0];
    calendarItemIdentifier = [eventCopy calendarItemIdentifier];
    [v11 setIdentifier:calendarItemIdentifier];

    calendar = [eventCopy calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    [v11 setGroupIdentifier:calendarIdentifier];

    [v11 donateInteractionWithCompletion:0];
  }
}

+ (id)_displayStringForDate:(id)date
{
  dateCopy = date;
  if (_displayStringForDate__onceToken != -1)
  {
    +[EKEventActionHandler _displayStringForDate:];
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  localeIdentifier = [currentLocale localeIdentifier];
  localeIdentifier2 = [_displayStringForDate__cachedLocale localeIdentifier];
  v9 = [localeIdentifier isEqual:localeIdentifier2];

  if ((v9 & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEMMMdjmm" options:0 locale:currentLocale];
    [_displayStringForDate__dateFormatter setDateFormat:v10];

    objc_storeStrong(&_displayStringForDate__cachedLocale, currentLocale);
  }

  v11 = [_displayStringForDate__dateFormatter stringFromDate:dateCopy];
  objc_sync_exit(selfCopy);

  return v11;
}

uint64_t __46__EKEventActionHandler__displayStringForDate___block_invoke()
{
  _displayStringForDate__dateFormatter = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)createEventIntentForEvent:(id)event withSuggestionsInfoUniqueKey:(id)key
{
  eventCopy = event;
  keyCopy = key;
  v7 = MEMORY[0x1E696AEC0];
  startDate = [eventCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v10 = v9;
  startTimeZone = [eventCopy startTimeZone];
  name = [startTimeZone name];
  v13 = [v7 stringWithFormat:@"%f#%@", v10, name];

  v14 = MEMORY[0x1E696AEC0];
  endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
  [endDateUnadjustedForLegacyClients timeIntervalSinceReferenceDate];
  v17 = v16;
  endTimeZone = [eventCopy endTimeZone];
  name2 = [endTimeZone name];
  v20 = [v14 stringWithFormat:@"%f#%@", v17, name2];

  if (keyCopy)
  {
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@#%@", v13, keyCopy];

    v13 = keyCopy;
  }

  v22 = objc_alloc_init(EKUICreateEventIntent);
  v23 = objc_alloc(MEMORY[0x1E696E910]);
  v24 = objc_opt_class();
  startDate2 = [eventCopy startDate];
  v26 = [v24 _displayStringForDate:startDate2];
  v27 = [v23 initWithIdentifier:v13 displayString:v26];

  v28 = objc_alloc(MEMORY[0x1E696E910]);
  v29 = objc_opt_class();
  endDateUnadjustedForLegacyClients2 = [eventCopy endDateUnadjustedForLegacyClients];
  v31 = [v29 _displayStringForDate:endDateUnadjustedForLegacyClients2];
  v32 = [v28 initWithIdentifier:v20 displayString:v31];

  title = [eventCopy title];
  [(EKUICreateEventIntent *)v22 setTitle:title];

  [(EKUICreateEventIntent *)v22 setStartDate:v27];
  [(EKUICreateEventIntent *)v22 setEndDate:v32];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(eventCopy, "isAllDay")}];
  [(EKUICreateEventIntent *)v22 setAllDay:v34];

  [(EKUICreateEventIntent *)v22 _setLaunchId:@"com.apple.mobilecal"];
  v35 = EKBundle();
  v36 = [v35 localizedStringForKey:@"Create event" value:&stru_1F1B49D68 table:0];
  [(EKUICreateEventIntent *)v22 setSuggestedInvocationPhrase:v36];

  structuredLocation = [eventCopy structuredLocation];

  if (structuredLocation)
  {
    structuredLocation2 = [eventCopy structuredLocation];
    title2 = [structuredLocation2 title];
    [(EKUICreateEventIntent *)v22 setLocationName:title2];

    structuredLocation3 = [eventCopy structuredLocation];
    address = [structuredLocation3 address];
    [(EKUICreateEventIntent *)v22 setLocationAddress:address];

    structuredLocation4 = [eventCopy structuredLocation];
    geoLocation = [structuredLocation4 geoLocation];

    if (geoLocation)
    {
      v44 = objc_alloc(EKWeakLinkClass());
      structuredLocation5 = [eventCopy structuredLocation];
      geoLocation2 = [structuredLocation5 geoLocation];
      v47 = [v44 initWithLocation:geoLocation2 addressDictionary:0 region:0 areasOfInterest:0];
      [(EKUICreateEventIntent *)v22 setGeolocation:v47];
    }
  }

  return v22;
}

@end