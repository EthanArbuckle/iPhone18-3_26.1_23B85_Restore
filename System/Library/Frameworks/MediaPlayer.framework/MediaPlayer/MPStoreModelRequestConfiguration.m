@interface MPStoreModelRequestConfiguration
- (MPStoreModelRequestConfiguration)initWithRequestedItemIdentifiers:(id)a3 reason:(unint64_t)a4;
- (MPStoreModelRequestConfiguration)initWithURLRequest:(id)a3;
- (MPStoreModelRequestConfiguration)initWithURLRequests:(id)a3;
@end

@implementation MPStoreModelRequestConfiguration

- (MPStoreModelRequestConfiguration)initWithRequestedItemIdentifiers:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MPStoreModelRequestConfiguration;
  v7 = [(MPStoreModelRequestConfiguration *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    requestedItemIdentifiers = v7->_requestedItemIdentifiers;
    v7->_requestedItemIdentifiers = v8;

    v7->_itemMetadataRequestReason = a4;
    v7->_type = 1;
  }

  return v7;
}

- (MPStoreModelRequestConfiguration)initWithURLRequests:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPStoreModelRequestConfiguration;
  v5 = [(MPStoreModelRequestConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    URLRequests = v5->_URLRequests;
    v5->_URLRequests = v6;

    v5->_type = 2 * ([v4 count] > 1);
  }

  return v5;
}

- (MPStoreModelRequestConfiguration)initWithURLRequest:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MPStoreModelRequestConfiguration;
  v5 = [(MPStoreModelRequestConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    URLRequests = v5->_URLRequests;
    v5->_URLRequests = v7;

    v5->_type = 0;
  }

  return v5;
}

@end