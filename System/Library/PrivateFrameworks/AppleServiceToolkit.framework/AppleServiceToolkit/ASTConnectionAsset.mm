@interface ASTConnectionAsset
- (ASTConnectionAsset)initWithServerURL:(id)l endpoint:(id)endpoint assetName:(id)name destinationFileHandle:(id)handle;
- (id)endpoint;
@end

@implementation ASTConnectionAsset

- (ASTConnectionAsset)initWithServerURL:(id)l endpoint:(id)endpoint assetName:(id)name destinationFileHandle:(id)handle
{
  lCopy = l;
  endpointCopy = endpoint;
  nameCopy = name;
  handleCopy = handle;
  v18.receiver = self;
  v18.super_class = ASTConnectionAsset;
  v15 = [(ASTMaterializedConnection *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serverURL, l);
    objc_storeStrong(&v16->_endpoint, endpoint);
    objc_storeStrong(&v16->_assetName, name);
    objc_storeStrong(&v16->_destinationFileHandle, handle);
  }

  return v16;
}

- (id)endpoint
{
  endpoint = self->_endpoint;
  assetName = [(ASTConnectionAsset *)self assetName];
  if (endpoint)
  {
    v4 = [(NSString *)endpoint stringByAppendingPathComponent:assetName];

    assetName = v4;
  }

  return assetName;
}

@end