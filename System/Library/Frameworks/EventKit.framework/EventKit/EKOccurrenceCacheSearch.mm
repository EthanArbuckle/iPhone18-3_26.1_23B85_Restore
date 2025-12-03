@interface EKOccurrenceCacheSearch
+ (id)searchWithCalendars:(id)calendars searchTerm:(id)term store:(id)store callback:(id)callback;
- (EKOccurrenceCacheSearch)initWithCalendars:(id)calendars searchTerm:(id)term store:(id)store callback:(id)callback;
- (id)searchTerm;
- (void)cancel;
- (void)run;
@end

@implementation EKOccurrenceCacheSearch

+ (id)searchWithCalendars:(id)calendars searchTerm:(id)term store:(id)store callback:(id)callback
{
  callbackCopy = callback;
  storeCopy = store;
  termCopy = term;
  calendarsCopy = calendars;
  v14 = [[self alloc] initWithCalendars:calendarsCopy searchTerm:termCopy store:storeCopy callback:callbackCopy];

  return v14;
}

- (EKOccurrenceCacheSearch)initWithCalendars:(id)calendars searchTerm:(id)term store:(id)store callback:(id)callback
{
  calendarsCopy = calendars;
  termCopy = term;
  storeCopy = store;
  callbackCopy = callback;
  v27.receiver = self;
  v27.super_class = EKOccurrenceCacheSearch;
  v15 = [(EKOccurrenceCacheSearch *)&v27 init];
  if (v15)
  {
    if (calendarsCopy)
    {
      if (termCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"calendars != nil"}];

      if (termCopy)
      {
LABEL_4:
        if (storeCopy)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"searchTerm != nil"}];

    if (storeCopy)
    {
LABEL_5:
      if (callbackCopy)
      {
LABEL_6:
        v16 = [calendarsCopy copy];
        calendars = v15->_calendars;
        v15->_calendars = v16;

        v18 = [termCopy copy];
        searchTerm = v15->_searchTerm;
        v15->_searchTerm = v18;

        objc_storeStrong(&v15->_store, store);
        v20 = [callbackCopy copy];
        callback = v15->_callback;
        v15->_callback = v20;

        goto LABEL_7;
      }

LABEL_11:
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"callback != nil"}];

      goto LABEL_6;
    }

LABEL_10:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];

    if (callbackCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_7:

  return v15;
}

- (void)run
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  selfCopy = self;
  v5 = [v3 errorWithCADResult:a2];
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_1A805E000, selfCopy, OS_LOG_TYPE_ERROR, "Call to calendar daemon failed: %@", &v7, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  self->_canceled = 1;
  if (self->_replyID)
  {
    connection = [(EKEventStore *)self->_store connection];
    cADOperationProxy = [connection CADOperationProxy];
    [cADOperationProxy CADOccurrenceCacheCancelSearchWithReplyID:{-[NSNumber unsignedIntValue](self->_replyID, "unsignedIntValue")}];
  }
}

- (id)searchTerm
{
  v2 = [(NSString *)self->_searchTerm copy];

  return v2;
}

@end