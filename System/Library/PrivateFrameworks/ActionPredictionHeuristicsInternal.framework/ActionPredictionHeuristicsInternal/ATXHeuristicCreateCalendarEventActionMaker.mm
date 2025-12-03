@interface ATXHeuristicCreateCalendarEventActionMaker
- (ATXHeuristicCreateCalendarEventActionMaker)initWithCoder:(id)coder;
- (ATXHeuristicCreateCalendarEventActionMaker)initWithTitle:(id)title subtitle:(id)subtitle event:(id)event suggestionsInfoUniqueKey:(id)key;
- (id)_makeAction;
- (void)_makeAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHeuristicCreateCalendarEventActionMaker

- (ATXHeuristicCreateCalendarEventActionMaker)initWithTitle:(id)title subtitle:(id)subtitle event:(id)event suggestionsInfoUniqueKey:(id)key
{
  titleCopy = title;
  subtitleCopy = subtitle;
  eventCopy = event;
  keyCopy = key;
  v18.receiver = self;
  v18.super_class = ATXHeuristicCreateCalendarEventActionMaker;
  v15 = [(ATXHeuristicCreateCalendarEventActionMaker *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->super._title, title);
    objc_storeStrong(&v16->super._subtitle, subtitle);
    objc_storeStrong(&v16->_event, event);
    objc_storeStrong(&v16->_suggestionsInfoUniqueKey, key);
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
  mEMORY[0x277CC5A30] = [MEMORY[0x277CC5A30] sharedInstance];
  v5 = [mEMORY[0x277CC5A30] createEventIntentForEvent:v3 withSuggestionsInfoUniqueKey:self->_suggestionsInfoUniqueKey];

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

- (ATXHeuristicCreateCalendarEventActionMaker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ATXHeuristicCreateCalendarEventActionMaker;
  v5 = [(ATXHeuristicActionMaker *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->super._title;
    v5->super._title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->super._subtitle;
    v5->super._subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    event = v5->_event;
    v5->_event = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionsInfoUniqueKey"];
    suggestionsInfoUniqueKey = v5->_suggestionsInfoUniqueKey;
    v5->_suggestionsInfoUniqueKey = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXHeuristicCreateCalendarEventActionMaker;
  coderCopy = coder;
  [(ATXHeuristicActionMaker *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_event forKey:{@"event", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_suggestionsInfoUniqueKey forKey:@"suggestionsInfoUniqueKey"];
}

- (void)_makeAction
{
  v9 = *MEMORY[0x277D85DE8];
  heuristic = [self heuristic];
  OUTLINED_FUNCTION_0_0(&dword_23E3EA000, v2, v3, "Failed to create Intent because of nil ekEvent. Heuristic: %@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end