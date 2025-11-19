@interface AKRemoteViewServiceConfiguration
+ (id)configurationForHostWithBundleID:(id)a3 sceneID:(id)a4;
+ (id)configurationForHostWithBundleID:(id)a3 sceneID:(id)a4 remoteBundleID:(id)a5;
+ (id)configurationWithRemoteBundleID:(id)a3;
+ (id)configurationWithRemoteBundleID:(id)a3 remoteClassName:(id)a4;
+ (id)defaultConfiguration;
- (AKRemoteViewServiceConfiguration)init;
- (AKRemoteViewServiceConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_hostBundleID)
  {
    [location[0] encodeObject:v4->_hostBundleID forKey:@"_hostBundleID"];
  }

  if (v4->_hostSceneID)
  {
    [location[0] encodeObject:v4->_hostSceneID forKey:@"_hostSceneID"];
  }

  objc_storeStrong(location, 0);
}

- (AKRemoteViewServiceConfiguration)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12.receiver = v3;
  v12.super_class = AKRemoteViewServiceConfiguration;
  v14 = [(AKRemoteViewServiceConfiguration *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hostBundleID"];
    hostBundleID = v14->_hostBundleID;
    v14->_hostBundleID = v4;
    _objc_release(hostBundleID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hostSceneID"];
    hostSceneID = v14->_hostSceneID;
    v14->_hostSceneID = v6;
    _objc_release(hostSceneID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_remoteBundleID"];
    remoteBundleID = v14->_remoteBundleID;
    v14->_remoteBundleID = v8;
    _objc_release(remoteBundleID);
  }

  v11 = _objc_retain(v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v11;
}

+ (id)configurationForHostWithBundleID:(id)a3 sceneID:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
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

+ (id)configurationForHostWithBundleID:(id)a3 sceneID:(id)a4 remoteBundleID:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
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

+ (id)configurationWithRemoteBundleID:(id)a3 remoteClassName:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
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

+ (id)configurationWithRemoteBundleID:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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