@interface CXScreenSharingRequestMetadata
- (CXScreenSharingRequestMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXScreenSharingRequestMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  appName = [(CXScreenSharingRequestMetadata *)self appName];
  [v4 setAppName:appName];

  bundleIdentifier = [(CXScreenSharingRequestMetadata *)self bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  sceneID = [(CXScreenSharingRequestMetadata *)self sceneID];
  [v4 setSceneID:sceneID];

  return v4;
}

- (CXScreenSharingRequestMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXScreenSharingRequestMetadata *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_appName);
    v7 = [coderCopy decodeObjectForKey:v6];
    appName = v5->_appName;
    v5->_appName = v7;

    v9 = NSStringFromSelector(sel_bundleIdentifier);
    v10 = [coderCopy decodeObjectForKey:v9];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = NSStringFromSelector(sel_sceneID);
    v13 = [coderCopy decodeObjectForKey:v12];
    sceneID = v5->_sceneID;
    v5->_sceneID = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appName = [(CXScreenSharingRequestMetadata *)self appName];
  v6 = NSStringFromSelector(sel_appName);
  [coderCopy encodeObject:appName forKey:v6];

  bundleIdentifier = [(CXScreenSharingRequestMetadata *)self bundleIdentifier];
  v8 = NSStringFromSelector(sel_bundleIdentifier);
  [coderCopy encodeObject:bundleIdentifier forKey:v8];

  sceneID = [(CXScreenSharingRequestMetadata *)self sceneID];
  v9 = NSStringFromSelector(sel_sceneID);
  [coderCopy encodeObject:sceneID forKey:v9];
}

@end