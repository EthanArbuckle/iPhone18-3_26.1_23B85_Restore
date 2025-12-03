@interface CMIOExtensionInfo
+ (id)infoWithEndpoint:(id)endpoint bundleID:(id)d bundleInfo:(id)info;
- (CMIOExtensionInfo)initWithEndpoint:(id)endpoint bundleID:(id)d bundleInfo:(id)info;
- (id)description;
- (id)redactedDescription;
- (void)dealloc;
@end

@implementation CMIOExtensionInfo

+ (id)infoWithEndpoint:(id)endpoint bundleID:(id)d bundleInfo:(id)info
{
  v5 = [objc_alloc(objc_opt_class()) initWithEndpoint:endpoint bundleID:d bundleInfo:info];

  return v5;
}

- (CMIOExtensionInfo)initWithEndpoint:(id)endpoint bundleID:(id)d bundleInfo:(id)info
{
  v10.receiver = self;
  v10.super_class = CMIOExtensionInfo;
  v8 = [(CMIOExtensionInfo *)&v10 init];
  if (v8)
  {
    if (endpoint)
    {
      v8->_endpoint = xpc_retain(endpoint);
    }

    v8->_bundleID = [d copy];
    v8->_bundleInfo = [info copy];
    v8->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionInfo: ID %@>", v8->_bundleID];
    v8->_redactedDescription = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionInfo: ID ->"];
  }

  return v8;
}

- (void)dealloc
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    xpc_release(endpoint);
  }

  v4.receiver = self;
  v4.super_class = CMIOExtensionInfo;
  [(CMIOExtensionInfo *)&v4 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (id)redactedDescription
{
  v2 = self->_redactedDescription;

  return v2;
}

@end