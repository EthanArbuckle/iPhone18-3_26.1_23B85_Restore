@interface CXScreenSharingRequestMetadata
- (CXScreenSharingRequestMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXScreenSharingRequestMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CXScreenSharingRequestMetadata *)self appName];
  [v4 setAppName:v5];

  v6 = [(CXScreenSharingRequestMetadata *)self bundleIdentifier];
  [v4 setBundleIdentifier:v6];

  v7 = [(CXScreenSharingRequestMetadata *)self sceneID];
  [v4 setSceneID:v7];

  return v4;
}

- (CXScreenSharingRequestMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXScreenSharingRequestMetadata *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_appName);
    v7 = [v4 decodeObjectForKey:v6];
    appName = v5->_appName;
    v5->_appName = v7;

    v9 = NSStringFromSelector(sel_bundleIdentifier);
    v10 = [v4 decodeObjectForKey:v9];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = NSStringFromSelector(sel_sceneID);
    v13 = [v4 decodeObjectForKey:v12];
    sceneID = v5->_sceneID;
    v5->_sceneID = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXScreenSharingRequestMetadata *)self appName];
  v6 = NSStringFromSelector(sel_appName);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXScreenSharingRequestMetadata *)self bundleIdentifier];
  v8 = NSStringFromSelector(sel_bundleIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(CXScreenSharingRequestMetadata *)self sceneID];
  v9 = NSStringFromSelector(sel_sceneID);
  [v4 encodeObject:v10 forKey:v9];
}

@end