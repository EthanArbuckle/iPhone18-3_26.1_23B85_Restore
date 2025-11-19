@interface EKEventActionHandler
+ (id)_displayStringForDate:(id)a3;
+ (id)_logHandle;
+ (id)sharedInstance;
- (id)_intentForAction:(id)a3 onEvent:(id)a4;
- (id)createEventIntentForEvent:(id)a3 withSuggestionsInfoUniqueKey:(id)a4;
- (void)donateInteractionForAction:(id)a3 onEvent:(id)a4;
- (void)donatePredictiveAction:(id)a3 forEvent:(id)a4;
- (void)handleEventCreation:(id)a3;
- (void)removeInteractionsForCalendar:(id)a3;
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

- (void)handleEventCreation:(id)a3
{
  v4 = a3;
  [(EKEventActionHandler *)self donateInteractionForAction:@"createEvent" onEvent:v4];
  [(EKEventActionHandler *)self donatePredictiveAction:@"createEvent" forEvent:v4];
}

- (void)removeInteractionsForCalendar:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E696E8B8];
  v5 = [v3 calendarIdentifier];
  [v4 deleteInteractionsWithGroupIdentifier:v5 completion:0];

  v6 = [objc_opt_class() _logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v3 calendarIdentifier];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_INFO, "Deleting previous interactions on calendar %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_intentForAction:(id)a3 onEvent:(id)a4
{
  v5 = a3;
  v6 = [EKDuetSignalEventSerializer serializedEventWithEvent:a4];
  v7 = [objc_alloc(MEMORY[0x1E696E880]) initWithDomain:@"Calendar" verb:v5 parametersByName:v6];

  return v7;
}

- (void)donateInteractionForAction:(id)a3 onEvent:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(EKEventActionHandler *)self _intentForAction:a3 onEvent:v6];
  if (v7)
  {
    v8 = [v6 calendarItemIdentifier];
    v9 = [v7 verb];
    v10 = [v9 isEqualToString:@"deleteEvent"];

    if (v10)
    {
      v11 = MEMORY[0x1E696E8B8];
      v24[0] = v8;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v11 deleteInteractionsWithIdentifiers:v12 completion:0];

      v13 = [objc_opt_class() _logHandle];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v8;
        _os_log_impl(&dword_1A805E000, v13, OS_LOG_TYPE_INFO, "Deleting previous interactions on event %@", &v20, 0xCu);
      }
    }

    v14 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v7 response:0];
    [v14 setIdentifier:v8];
    v15 = [v6 calendar];
    v16 = [v15 calendarIdentifier];
    [v14 setGroupIdentifier:v16];

    [v14 donateInteractionWithCompletion:0];
    v17 = [objc_opt_class() _logHandle];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v7 verb];
      v20 = 138412546;
      v21 = v18;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1A805E000, v17, OS_LOG_TYPE_INFO, "Donated interaction for action %@ on event %@", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)donatePredictiveAction:(id)a3 forEvent:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.mobilecal"];

  if (v9 && [v15 isEqualToString:@"createEvent"])
  {
    v10 = [(EKEventActionHandler *)self createEventIntentForEvent:v6];
    v11 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v10 response:0];
    v12 = [v6 calendarItemIdentifier];
    [v11 setIdentifier:v12];

    v13 = [v6 calendar];
    v14 = [v13 calendarIdentifier];
    [v11 setGroupIdentifier:v14];

    [v11 donateInteractionWithCompletion:0];
  }
}

+ (id)_displayStringForDate:(id)a3
{
  v4 = a3;
  if (_displayStringForDate__onceToken != -1)
  {
    +[EKEventActionHandler _displayStringForDate:];
  }

  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = a1;
  objc_sync_enter(v6);
  v7 = [v5 localeIdentifier];
  v8 = [_displayStringForDate__cachedLocale localeIdentifier];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEMMMdjmm" options:0 locale:v5];
    [_displayStringForDate__dateFormatter setDateFormat:v10];

    objc_storeStrong(&_displayStringForDate__cachedLocale, v5);
  }

  v11 = [_displayStringForDate__dateFormatter stringFromDate:v4];
  objc_sync_exit(v6);

  return v11;
}

uint64_t __46__EKEventActionHandler__displayStringForDate___block_invoke()
{
  _displayStringForDate__dateFormatter = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)createEventIntentForEvent:(id)a3 withSuggestionsInfoUniqueKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v5 startDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = [v5 startTimeZone];
  v12 = [v11 name];
  v13 = [v7 stringWithFormat:@"%f#%@", v10, v12];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v5 endDateUnadjustedForLegacyClients];
  [v15 timeIntervalSinceReferenceDate];
  v17 = v16;
  v18 = [v5 endTimeZone];
  v19 = [v18 name];
  v20 = [v14 stringWithFormat:@"%f#%@", v17, v19];

  if (v6)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@#%@", v13, v6];

    v13 = v21;
  }

  v22 = objc_alloc_init(EKUICreateEventIntent);
  v23 = objc_alloc(MEMORY[0x1E696E910]);
  v24 = objc_opt_class();
  v25 = [v5 startDate];
  v26 = [v24 _displayStringForDate:v25];
  v27 = [v23 initWithIdentifier:v13 displayString:v26];

  v28 = objc_alloc(MEMORY[0x1E696E910]);
  v29 = objc_opt_class();
  v30 = [v5 endDateUnadjustedForLegacyClients];
  v31 = [v29 _displayStringForDate:v30];
  v32 = [v28 initWithIdentifier:v20 displayString:v31];

  v33 = [v5 title];
  [(EKUICreateEventIntent *)v22 setTitle:v33];

  [(EKUICreateEventIntent *)v22 setStartDate:v27];
  [(EKUICreateEventIntent *)v22 setEndDate:v32];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isAllDay")}];
  [(EKUICreateEventIntent *)v22 setAllDay:v34];

  [(EKUICreateEventIntent *)v22 _setLaunchId:@"com.apple.mobilecal"];
  v35 = EKBundle();
  v36 = [v35 localizedStringForKey:@"Create event" value:&stru_1F1B49D68 table:0];
  [(EKUICreateEventIntent *)v22 setSuggestedInvocationPhrase:v36];

  v37 = [v5 structuredLocation];

  if (v37)
  {
    v38 = [v5 structuredLocation];
    v39 = [v38 title];
    [(EKUICreateEventIntent *)v22 setLocationName:v39];

    v40 = [v5 structuredLocation];
    v41 = [v40 address];
    [(EKUICreateEventIntent *)v22 setLocationAddress:v41];

    v42 = [v5 structuredLocation];
    v43 = [v42 geoLocation];

    if (v43)
    {
      v44 = objc_alloc(EKWeakLinkClass());
      v45 = [v5 structuredLocation];
      v46 = [v45 geoLocation];
      v47 = [v44 initWithLocation:v46 addressDictionary:0 region:0 areasOfInterest:0];
      [(EKUICreateEventIntent *)v22 setGeolocation:v47];
    }
  }

  return v22;
}

@end