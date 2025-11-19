@interface NSFileProviderStringSearchRequest
- (NSFileProviderStringSearchRequest)initWithQuery:(id)a3 desiredNumberOfResults:(int64_t)a4;
@end

@implementation NSFileProviderStringSearchRequest

- (NSFileProviderStringSearchRequest)initWithQuery:(id)a3 desiredNumberOfResults:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NSFileProviderStringSearchRequest;
  v8 = [(NSFileProviderStringSearchRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_query, a3);
    v9->_desiredNumberOfResults = a4;
  }

  return v9;
}

@end