@interface CloudTabParameters
- (CloudTabParameters)initWithTabUUIDString:(id)a3 owningDeviceUUIDString:(id)a4 owningSceneID:(id)a5 urlString:(id)a6;
@end

@implementation CloudTabParameters

- (CloudTabParameters)initWithTabUUIDString:(id)a3 owningDeviceUUIDString:(id)a4 owningSceneID:(id)a5 urlString:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = CloudTabParameters;
  v14 = [(CloudTabParameters *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    tabUUIDString = v14->_tabUUIDString;
    v14->_tabUUIDString = v15;

    v17 = [v11 copy];
    owningDeviceUUIDString = v14->_owningDeviceUUIDString;
    v14->_owningDeviceUUIDString = v17;

    v19 = [v12 copy];
    owningSceneID = v14->_owningSceneID;
    v14->_owningSceneID = v19;

    v21 = [v13 copy];
    urlString = v14->_urlString;
    v14->_urlString = v21;

    v23 = v14;
  }

  return v14;
}

@end