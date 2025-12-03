@interface AKRemoteViewServiceConfiguration
+ (id)configurationForHostWithBundleID:(id)d sceneID:(id)iD;
+ (id)configurationForHostWithBundleID:(id)d sceneID:(id)iD remoteBundleID:(id)bundleID;
+ (id)configurationWithRemoteBundleID:(id)d;
+ (id)configurationWithRemoteBundleID:(id)d remoteClassName:(id)name;
+ (id)defaultConfiguration;
- (AKRemoteViewServiceConfiguration)init;
- (AKRemoteViewServiceConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKRemoteViewServiceConfiguration

- (AKRemoteViewServiceConfiguration)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKRemoteViewServiceConfiguration;
  v6 = [(AKRemoteViewServiceConfiguration *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    objc_storeStrong(&v6->_remoteBundleID, @"com.apple.AuthKitUIService");
  }

  v3 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  if (selfCopy->_hostBundleID)
  {
    [location[0] encodeObject:selfCopy->_hostBundleID forKey:@"_hostBundleID"];
  }

  if (selfCopy->_hostSceneID)
  {
    [location[0] encodeObject:selfCopy->_hostSceneID forKey:@"_hostSceneID"];
  }

  objc_storeStrong(location, 0);
}

- (AKRemoteViewServiceConfiguration)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = AKRemoteViewServiceConfiguration;
  selfCopy = [(AKRemoteViewServiceConfiguration *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hostBundleID"];
    hostBundleID = selfCopy->_hostBundleID;
    selfCopy->_hostBundleID = v4;
    _objc_release(hostBundleID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hostSceneID"];
    hostSceneID = selfCopy->_hostSceneID;
    selfCopy->_hostSceneID = v6;
    _objc_release(hostSceneID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_remoteBundleID"];
    remoteBundleID = selfCopy->_remoteBundleID;
    selfCopy->_remoteBundleID = v8;
    _objc_release(remoteBundleID);
  }

  v11 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

+ (id)configurationForHostWithBundleID:(id)d sceneID:(id)iD
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v10 = 0;
  objc_storeStrong(&v10, iD);
  v9 = +[AKRemoteViewServiceConfiguration defaultConfiguration];
  v5 = [location[0] copy];
  [v9 setHostBundleID:?];
  _objc_release(v5);
  v6 = [v10 copy];
  [v9 setHostSceneID:?];
  _objc_release(v6);
  v7 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)configurationForHostWithBundleID:(id)d sceneID:(id)iD remoteBundleID:(id)bundleID
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v14 = 0;
  objc_storeStrong(&v14, iD);
  v13 = 0;
  objc_storeStrong(&v13, bundleID);
  v12 = +[AKRemoteViewServiceConfiguration defaultConfiguration];
  v6 = [location[0] copy];
  [v12 setHostBundleID:?];
  _objc_release(v6);
  v7 = [v14 copy];
  [v12 setHostSceneID:?];
  _objc_release(v7);
  v8 = [v13 copy];
  [v12 setRemoteBundleID:?];
  _objc_release(v8);
  v9 = _objc_retain(v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v9;
}

+ (id)configurationWithRemoteBundleID:(id)d remoteClassName:(id)name
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v9 = 0;
  objc_storeStrong(&v9, name);
  v8 = [AKRemoteViewServiceConfiguration configurationWithRemoteBundleID:location[0]];
  v6 = [v9 copy];
  [(AKRemoteViewServiceConfiguration *)v8 setRemoteClassName:?];
  _objc_release(v6);
  v7 = _objc_retain(v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)configurationWithRemoteBundleID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = +[AKRemoteViewServiceConfiguration defaultConfiguration];
  v4 = [location[0] copy];
  [v6 setRemoteBundleID:?];
  _objc_release(v4);
  v5 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(AKRemoteViewServiceConfiguration);

  return v2;
}

@end