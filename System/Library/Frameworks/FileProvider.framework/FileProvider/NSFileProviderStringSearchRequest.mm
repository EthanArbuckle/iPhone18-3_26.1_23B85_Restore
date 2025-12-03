@interface NSFileProviderStringSearchRequest
- (NSFileProviderStringSearchRequest)initWithQuery:(id)query desiredNumberOfResults:(int64_t)results;
@end

@implementation NSFileProviderStringSearchRequest

- (NSFileProviderStringSearchRequest)initWithQuery:(id)query desiredNumberOfResults:(int64_t)results
{
  queryCopy = query;
  v11.receiver = self;
  v11.super_class = NSFileProviderStringSearchRequest;
  v8 = [(NSFileProviderStringSearchRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_query, query);
    v9->_desiredNumberOfResults = results;
  }

  return v9;
}

@end