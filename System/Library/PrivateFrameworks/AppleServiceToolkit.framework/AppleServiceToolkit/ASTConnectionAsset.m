@interface ASTConnectionAsset
- (ASTConnectionAsset)initWithServerURL:(id)a3 endpoint:(id)a4 assetName:(id)a5 destinationFileHandle:(id)a6;
- (id)endpoint;
@end

@implementation ASTConnectionAsset

- (ASTConnectionAsset)initWithServerURL:(id)a3 endpoint:(id)a4 assetName:(id)a5 destinationFileHandle:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ASTConnectionAsset;
  v15 = [(ASTMaterializedConnection *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serverURL, a3);
    objc_storeStrong(&v16->_endpoint, a4);
    objc_storeStrong(&v16->_assetName, a5);
    objc_storeStrong(&v16->_destinationFileHandle, a6);
  }

  return v16;
}

- (id)endpoint
{
  endpoint = self->_endpoint;
  v3 = [(ASTConnectionAsset *)self assetName];
  if (endpoint)
  {
    v4 = [(NSString *)endpoint stringByAppendingPathComponent:v3];

    v3 = v4;
  }

  return v3;
}

@end