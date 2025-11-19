@interface RetainedQueryController
- (BOOL)hasRelevantRetainedSearchQuery;
- (void)_sendAnalyticsRetainedQueryEvent;
- (void)clearRetainedSearchQuery;
- (void)restoreIfNeededWithBlock:(id)a3;
- (void)retainSearchQuery:(id)a3 metadata:(id)a4 forTimeInterval:(double)a5;
- (void)retainSearchQueryForSelectedAutocompleteItem:(id)a3 query:(id)a4 forTimeInterval:(double)a5;
- (void)retainSearchQueryForSelectedSearchCompletion:(id)a3 query:(id)a4 forTimeInterval:(double)a5;
- (void)retainSearchQueryForSelectedSearchResult:(id)a3 query:(id)a4 forTimeInterval:(double)a5;
- (void)retainSearchQueryWithRetainedSearchMetadata:(id)a3 query:(id)a4 forTimeInterval:(double)a5;
@end

@implementation RetainedQueryController

- (BOOL)hasRelevantRetainedSearchQuery
{
  retainedSearchQueryMetadata = self->_retainedSearchQueryMetadata;
  if (retainedSearchQueryMetadata)
  {
    v2 = [(GEORetainedSearchMetadata *)self->_retainedSearchQueryMetadata sourceAppID];
    if (v2 == @"com.apple.Spotlight")
    {
      v2 = @"com.apple.Spotlight";
      if (self->_timeToRetainSearchQuery > 0.0)
      {
        v5 = 1;
        goto LABEL_11;
      }
    }
  }

  if (!self->_retainedSearchQueryString || !self->_retainedSearchQueryTimestamp || self->_timeToRetainSearchQuery <= 0.0)
  {
    v5 = 0;
    result = 0;
    if (!retainedSearchQueryMetadata)
    {
      return result;
    }

    goto LABEL_11;
  }

  [(RetainedQueryController *)self retainedSearchQueryAge];
  v5 = v6 < self->_timeToRetainSearchQuery;
  result = v5;
  if (retainedSearchQueryMetadata)
  {
LABEL_11:

    return v5;
  }

  return result;
}

- (void)clearRetainedSearchQuery
{
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing Retain Query", v8, 2u);
  }

  retainedSearchQueryTimestamp = self->_retainedSearchQueryTimestamp;
  self->_retainedSearchQueryTimestamp = 0;

  retainedSearchQueryString = self->_retainedSearchQueryString;
  self->_retainedSearchQueryString = 0;

  retainedSearchQueryMetadata = self->_retainedSearchQueryMetadata;
  self->_retainedSearchQueryMetadata = 0;

  restoredRetainedSearchQueryMetadata = self->_restoredRetainedSearchQueryMetadata;
  self->_restoredRetainedSearchQueryMetadata = 0;

  self->_timeToRetainSearchQuery = 0.0;
}

- (void)retainSearchQuery:(id)a3 metadata:(id)a4 forTimeInterval:(double)a5
{
  v14 = a3;
  v8 = a4;
  v9 = +[NSDate date];
  retainedSearchQueryTimestamp = self->_retainedSearchQueryTimestamp;
  self->_retainedSearchQueryTimestamp = v9;

  v11 = [v14 length];
  retainedSearchQueryString = v14;
  if (!v11)
  {
    if ([(NSString *)self->_retainedSearchQueryString length])
    {
      retainedSearchQueryString = self->_retainedSearchQueryString;
    }

    else
    {
      retainedSearchQueryString = 0;
    }
  }

  objc_storeStrong(&self->_retainedSearchQueryString, retainedSearchQueryString);
  retainedSearchQueryMetadata = self->_retainedSearchQueryMetadata;
  self->_retainedSearchQueryMetadata = v8;

  self->_timeToRetainSearchQuery = a5;
}

- (void)retainSearchQueryForSelectedSearchCompletion:(id)a3 query:(id)a4 forTimeInterval:(double)a5
{
  v8 = a4;
  v9 = [a3 retainedSearchMetadata];
  [(RetainedQueryController *)self retainSearchQueryWithRetainedSearchMetadata:v9 query:v8 forTimeInterval:a5];
}

- (void)retainSearchQueryForSelectedAutocompleteItem:(id)a3 query:(id)a4 forTimeInterval:(double)a5
{
  v9 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RetainedQueryController *)self retainSearchQueryForSelectedSearchCompletion:v9 query:v8 forTimeInterval:a5];
  }

  else
  {
    [(RetainedQueryController *)self retainSearchQueryWithRetainedSearchMetadata:0 query:v8 forTimeInterval:a5];
  }
}

- (void)retainSearchQueryWithRetainedSearchMetadata:(id)a3 query:(id)a4 forTimeInterval:(double)a5
{
  v12 = a4;
  v8 = a3;
  v9 = [v8 _query];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v12;
  }

  v11 = v10;

  [(RetainedQueryController *)self retainSearchQuery:v11 metadata:v8 forTimeInterval:a5];
}

- (void)retainSearchQueryForSelectedSearchResult:(id)a3 query:(id)a4 forTimeInterval:(double)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [v12 retainedSearchMetadata];
  if (v9)
  {
    retainedSearchQueryMetadata = self->_retainedSearchQueryMetadata;

    if (!retainedSearchQueryMetadata)
    {
      v11 = [v12 retainedSearchMetadata];
      [(RetainedQueryController *)self retainSearchQueryWithRetainedSearchMetadata:v11 query:v8 forTimeInterval:a5];
    }
  }
}

- (void)_sendAnalyticsRetainedQueryEvent
{
  [(RetainedQueryController *)self retainedSearchQueryAge];
  v5 = [NSString stringWithFormat:@"{ age: %lu, retainSearchTime: %lu }", (v3 * 1000.0), (self->_timeToRetainSearchQuery * 1000.0)];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:2024 onTarget:11 eventValue:v5];
}

- (void)restoreIfNeededWithBlock:(id)a3
{
  v4 = a3;
  if ([(RetainedQueryController *)self hasRelevantRetainedSearchQuery])
  {
    v5 = sub_100067540();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Restoring Retain Query", v7, 2u);
    }

    [(RetainedQueryController *)self _sendAnalyticsRetainedQueryEvent];
    v6 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v6 setSearchString:self->_retainedSearchQueryString];
    [(SearchFieldItem *)v6 setRetainedSearchMetadata:self->_retainedSearchQueryMetadata];
    v4[2](v4, v6);

    objc_storeStrong(&self->_restoredRetainedSearchQueryMetadata, self->_retainedSearchQueryMetadata);
    v4 = v6;
  }

  else
  {
    [(RetainedQueryController *)self clearRetainedSearchQuery];
    v4[2](v4, 0);
  }
}

@end