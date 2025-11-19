@interface ATXHeuristicCreateCalendarEventActionMaker
- (ATXHeuristicCreateCalendarEventActionMaker)initWithCoder:(id)a3;
- (ATXHeuristicCreateCalendarEventActionMaker)initWithTitle:(id)a3 subtitle:(id)a4 event:(id)a5 suggestionsInfoUniqueKey:(id)a6;
- (id)_makeAction;
- (void)_makeAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHeuristicCreateCalendarEventActionMaker

- (ATXHeuristicCreateCalendarEventActionMaker)initWithTitle:(id)a3 subtitle:(id)a4 event:(id)a5 suggestionsInfoUniqueKey:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXHeuristicCreateCalendarEventActionMaker;
  v15 = [(ATXHeuristicCreateCalendarEventActionMaker *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->super._title, a3);
    objc_storeStrong(&v16->super._subtitle, a4);
    objc_storeStrong(&v16->_event, a5);
    objc_storeStrong(&v16->_suggestionsInfoUniqueKey, a6);
  }

  return v16;
}

- (id)_makeAction
{
  v3 = [(ATXHeuristicObjectHandle *)self->_event obj];
  if (!v3)
  {
    v5 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicCreateCalendarEventActionMaker *)self _makeAction];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicCreateCalendarEventActionMaker _makeAction];
    }

LABEL_10:
    v9 = 0;
    goto LABEL_19;
  }

  pthread_mutex_lock(&_makeAction_actionHandlerLock);
  v4 = [MEMORY[0x277CC5A30] sharedInstance];
  v5 = [v4 createEventIntentForEvent:v3 withSuggestionsInfoUniqueKey:self->_suggestionsInfoUniqueKey];

  pthread_mutex_unlock(&_makeAction_actionHandlerLock);
  v6 = INIntentWithTypedIntent();
  if (!v6)
  {
    v10 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicCreateCalendarEventActionMaker *)v10 _makeAction:v11];
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicCreateCalendarEventActionMaker *)v18 _makeAction:v19];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Generic intent created from EKUICreateEventIntent is not an INIntent object."];
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v7 = objc_alloc(MEMORY[0x277CEB2C8]);
  v8 = objc_opt_new();
  LOBYTE(v27) = 0;
  v9 = [v7 initWithIntent:v6 actionUUID:v8 bundleId:@"com.apple.mobilecal" heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v27 title:self->super._title subtitle:self->super._subtitle];

LABEL_18:
LABEL_19:

  return v9;
}

- (ATXHeuristicCreateCalendarEventActionMaker)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ATXHeuristicCreateCalendarEventActionMaker;
  v5 = [(ATXHeuristicActionMaker *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->super._title;
    v5->super._title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->super._subtitle;
    v5->super._subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    event = v5->_event;
    v5->_event = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionsInfoUniqueKey"];
    suggestionsInfoUniqueKey = v5->_suggestionsInfoUniqueKey;
    v5->_suggestionsInfoUniqueKey = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATXHeuristicCreateCalendarEventActionMaker;
  v4 = a3;
  [(ATXHeuristicActionMaker *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_event forKey:{@"event", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_suggestionsInfoUniqueKey forKey:@"suggestionsInfoUniqueKey"];
}

- (void)_makeAction
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 heuristic];
  OUTLINED_FUNCTION_0_0(&dword_23E3EA000, v2, v3, "Failed to create Intent because of nil ekEvent. Heuristic: %@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end