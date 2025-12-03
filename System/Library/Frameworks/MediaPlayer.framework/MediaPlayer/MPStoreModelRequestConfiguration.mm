@interface MPStoreModelRequestConfiguration
- (MPStoreModelRequestConfiguration)initWithRequestedItemIdentifiers:(id)identifiers reason:(unint64_t)reason;
- (MPStoreModelRequestConfiguration)initWithURLRequest:(id)request;
- (MPStoreModelRequestConfiguration)initWithURLRequests:(id)requests;
@end

@implementation MPStoreModelRequestConfiguration

- (MPStoreModelRequestConfiguration)initWithRequestedItemIdentifiers:(id)identifiers reason:(unint64_t)reason
{
  identifiersCopy = identifiers;
  v11.receiver = self;
  v11.super_class = MPStoreModelRequestConfiguration;
  v7 = [(MPStoreModelRequestConfiguration *)&v11 init];
  if (v7)
  {
    v8 = [identifiersCopy copy];
    requestedItemIdentifiers = v7->_requestedItemIdentifiers;
    v7->_requestedItemIdentifiers = v8;

    v7->_itemMetadataRequestReason = reason;
    v7->_type = 1;
  }

  return v7;
}

- (MPStoreModelRequestConfiguration)initWithURLRequests:(id)requests
{
  requestsCopy = requests;
  v9.receiver = self;
  v9.super_class = MPStoreModelRequestConfiguration;
  v5 = [(MPStoreModelRequestConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [requestsCopy copy];
    URLRequests = v5->_URLRequests;
    v5->_URLRequests = v6;

    v5->_type = 2 * ([requestsCopy count] > 1);
  }

  return v5;
}

- (MPStoreModelRequestConfiguration)initWithURLRequest:(id)request
{
  v11[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = MPStoreModelRequestConfiguration;
  v5 = [(MPStoreModelRequestConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [requestCopy copy];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    URLRequests = v5->_URLRequests;
    v5->_URLRequests = v7;

    v5->_type = 0;
  }

  return v5;
}

@end