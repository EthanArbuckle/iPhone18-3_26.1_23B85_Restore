@interface CloudTabParameters
- (CloudTabParameters)initWithTabUUIDString:(id)string owningDeviceUUIDString:(id)dString owningSceneID:(id)d urlString:(id)urlString;
@end

@implementation CloudTabParameters

- (CloudTabParameters)initWithTabUUIDString:(id)string owningDeviceUUIDString:(id)dString owningSceneID:(id)d urlString:(id)urlString
{
  stringCopy = string;
  dStringCopy = dString;
  dCopy = d;
  urlStringCopy = urlString;
  v25.receiver = self;
  v25.super_class = CloudTabParameters;
  v14 = [(CloudTabParameters *)&v25 init];
  if (v14)
  {
    v15 = [stringCopy copy];
    tabUUIDString = v14->_tabUUIDString;
    v14->_tabUUIDString = v15;

    v17 = [dStringCopy copy];
    owningDeviceUUIDString = v14->_owningDeviceUUIDString;
    v14->_owningDeviceUUIDString = v17;

    v19 = [dCopy copy];
    owningSceneID = v14->_owningSceneID;
    v14->_owningSceneID = v19;

    v21 = [urlStringCopy copy];
    urlString = v14->_urlString;
    v14->_urlString = v21;

    v23 = v14;
  }

  return v14;
}

@end