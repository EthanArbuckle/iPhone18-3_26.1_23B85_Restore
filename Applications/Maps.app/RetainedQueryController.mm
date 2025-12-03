@interface RetainedQueryController
- (BOOL)hasRelevantRetainedSearchQuery;
- (void)_sendAnalyticsRetainedQueryEvent;
- (void)clearRetainedSearchQuery;
- (void)restoreIfNeededWithBlock:(id)block;
- (void)retainSearchQuery:(id)query metadata:(id)metadata forTimeInterval:(double)interval;
- (void)retainSearchQueryForSelectedAutocompleteItem:(id)item query:(id)query forTimeInterval:(double)interval;
- (void)retainSearchQueryForSelectedSearchCompletion:(id)completion query:(id)query forTimeInterval:(double)interval;
- (void)retainSearchQueryForSelectedSearchResult:(id)result query:(id)query forTimeInterval:(double)interval;
- (void)retainSearchQueryWithRetainedSearchMetadata:(id)metadata query:(id)query forTimeInterval:(double)interval;
@end

@implementation RetainedQueryController

- (BOOL)hasRelevantRetainedSearchQuery
{
  retainedSearchQueryMetadata = self->_retainedSearchQueryMetadata;
  if (retainedSearchQueryMetadata)
  {
    sourceAppID = [(GEORetainedSearchMetadata *)self->_retainedSearchQueryMetadata sourceAppID];
    if (sourceAppID == @"com.apple.Spotlight")
    {
      sourceAppID = @"com.apple.Spotlight";
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

- (void)retainSearchQuery:(id)query metadata:(id)metadata forTimeInterval:(double)interval
{
  queryCopy = query;
  metadataCopy = metadata;
  v9 = +[NSDate date];
  retainedSearchQueryTimestamp = self->_retainedSearchQueryTimestamp;
  self->_retainedSearchQueryTimestamp = v9;

  v11 = [queryCopy length];
  retainedSearchQueryString = queryCopy;
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
  self->_retainedSearchQueryMetadata = metadataCopy;

  self->_timeToRetainSearchQuery = interval;
}

- (void)retainSearchQueryForSelectedSearchCompletion:(id)completion query:(id)query forTimeInterval:(double)interval
{
  queryCopy = query;
  retainedSearchMetadata = [completion retainedSearchMetadata];
  [(RetainedQueryController *)self retainSearchQueryWithRetainedSearchMetadata:retainedSearchMetadata query:queryCopy forTimeInterval:interval];
}

- (void)retainSearchQueryForSelectedAutocompleteItem:(id)item query:(id)query forTimeInterval:(double)interval
{
  itemCopy = item;
  queryCopy = query;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RetainedQueryController *)self retainSearchQueryForSelectedSearchCompletion:itemCopy query:queryCopy forTimeInterval:interval];
  }

  else
  {
    [(RetainedQueryController *)self retainSearchQueryWithRetainedSearchMetadata:0 query:queryCopy forTimeInterval:interval];
  }
}

- (void)retainSearchQueryWithRetainedSearchMetadata:(id)metadata query:(id)query forTimeInterval:(double)interval
{
  queryCopy = query;
  metadataCopy = metadata;
  _query = [metadataCopy _query];
  if (_query)
  {
    v10 = _query;
  }

  else
  {
    v10 = queryCopy;
  }

  v11 = v10;

  [(RetainedQueryController *)self retainSearchQuery:v11 metadata:metadataCopy forTimeInterval:interval];
}

- (void)retainSearchQueryForSelectedSearchResult:(id)result query:(id)query forTimeInterval:(double)interval
{
  resultCopy = result;
  queryCopy = query;
  retainedSearchMetadata = [resultCopy retainedSearchMetadata];
  if (retainedSearchMetadata)
  {
    retainedSearchQueryMetadata = self->_retainedSearchQueryMetadata;

    if (!retainedSearchQueryMetadata)
    {
      retainedSearchMetadata2 = [resultCopy retainedSearchMetadata];
      [(RetainedQueryController *)self retainSearchQueryWithRetainedSearchMetadata:retainedSearchMetadata2 query:queryCopy forTimeInterval:interval];
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

- (void)restoreIfNeededWithBlock:(id)block
{
  blockCopy = block;
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
    blockCopy[2](blockCopy, v6);

    objc_storeStrong(&self->_restoredRetainedSearchQueryMetadata, self->_retainedSearchQueryMetadata);
    blockCopy = v6;
  }

  else
  {
    [(RetainedQueryController *)self clearRetainedSearchQuery];
    blockCopy[2](blockCopy, 0);
  }
}

@end