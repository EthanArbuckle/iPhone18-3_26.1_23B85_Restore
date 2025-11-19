@interface EKOccurrenceCacheSearch
+ (id)searchWithCalendars:(id)a3 searchTerm:(id)a4 store:(id)a5 callback:(id)a6;
- (EKOccurrenceCacheSearch)initWithCalendars:(id)a3 searchTerm:(id)a4 store:(id)a5 callback:(id)a6;
- (id)searchTerm;
- (void)cancel;
- (void)run;
@end

@implementation EKOccurrenceCacheSearch

+ (id)searchWithCalendars:(id)a3 searchTerm:(id)a4 store:(id)a5 callback:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithCalendars:v13 searchTerm:v12 store:v11 callback:v10];

  return v14;
}

- (EKOccurrenceCacheSearch)initWithCalendars:(id)a3 searchTerm:(id)a4 store:(id)a5 callback:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = EKOccurrenceCacheSearch;
  v15 = [(EKOccurrenceCacheSearch *)&v27 init];
  if (v15)
  {
    if (v11)
    {
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"calendars != nil"}];

      if (v12)
      {
LABEL_4:
        if (v13)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"searchTerm != nil"}];

    if (v13)
    {
LABEL_5:
      if (v14)
      {
LABEL_6:
        v16 = [v11 copy];
        calendars = v15->_calendars;
        v15->_calendars = v16;

        v18 = [v12 copy];
        searchTerm = v15->_searchTerm;
        v15->_searchTerm = v18;

        objc_storeStrong(&v15->_store, a5);
        v20 = [v14 copy];
        callback = v15->_callback;
        v15->_callback = v20;

        goto LABEL_7;
      }

LABEL_11:
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"callback != nil"}];

      goto LABEL_6;
    }

LABEL_10:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];

    if (v14)
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
  v4 = a1;
  v5 = [v3 errorWithCADResult:a2];
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_1A805E000, v4, OS_LOG_TYPE_ERROR, "Call to calendar daemon failed: %@", &v7, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  self->_canceled = 1;
  if (self->_replyID)
  {
    v4 = [(EKEventStore *)self->_store connection];
    v3 = [v4 CADOperationProxy];
    [v3 CADOccurrenceCacheCancelSearchWithReplyID:{-[NSNumber unsignedIntValue](self->_replyID, "unsignedIntValue")}];
  }
}

- (id)searchTerm
{
  v2 = [(NSString *)self->_searchTerm copy];

  return v2;
}

@end