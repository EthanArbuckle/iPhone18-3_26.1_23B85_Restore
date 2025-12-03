@interface ATXAppOrClipLaunch
- (id)initAppClipLaunchWithBundleId:(id)id urlHash:(id)hash launchReason:(int)reason;
- (id)initAppClipLaunchWithBundleId:(id)id urlHash:(id)hash launchReason:(int)reason latitude:(double)latitude longitude:(double)longitude;
- (id)initAppLaunchWithBundleId:(id)id;
- (id)initAppLaunchWithBundleId:(id)id launchReason:(int)reason latitude:(double)latitude longitude:(double)longitude;
@end

@implementation ATXAppOrClipLaunch

- (id)initAppLaunchWithBundleId:(id)id
{
  idCopy = id;
  v11.receiver = self;
  v11.super_class = ATXAppOrClipLaunch;
  v6 = [(ATXAppOrClipLaunch *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleId, id);
    v8 = MEMORY[0x277D131D0];
    v7->_isClip = 0;
    v9 = *v8;
    v7->_latitude = *v8;
    v7->_longitude = v9;
    v7->_launchReason = 9;
  }

  return v7;
}

- (id)initAppLaunchWithBundleId:(id)id launchReason:(int)reason latitude:(double)latitude longitude:(double)longitude
{
  idCopy = id;
  v15.receiver = self;
  v15.super_class = ATXAppOrClipLaunch;
  v12 = [(ATXAppOrClipLaunch *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleId, id);
    v13->_isClip = 0;
    v13->_launchReason = reason;
    v13->_latitude = latitude;
    v13->_longitude = longitude;
  }

  return v13;
}

- (id)initAppClipLaunchWithBundleId:(id)id urlHash:(id)hash launchReason:(int)reason
{
  idCopy = id;
  hashCopy = hash;
  v15.receiver = self;
  v15.super_class = ATXAppOrClipLaunch;
  v11 = [(ATXAppOrClipLaunch *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleId, id);
    objc_storeStrong(&v12->_urlHash, hash);
    v12->_isClip = 1;
    v12->_launchReason = reason;
    v13 = *MEMORY[0x277D131D0];
    v12->_latitude = *MEMORY[0x277D131D0];
    v12->_longitude = v13;
  }

  return v12;
}

- (id)initAppClipLaunchWithBundleId:(id)id urlHash:(id)hash launchReason:(int)reason latitude:(double)latitude longitude:(double)longitude
{
  idCopy = id;
  hashCopy = hash;
  v18.receiver = self;
  v18.super_class = ATXAppOrClipLaunch;
  v15 = [(ATXAppOrClipLaunch *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleId, id);
    objc_storeStrong(&v16->_urlHash, hash);
    v16->_isClip = 1;
    v16->_launchReason = reason;
    v16->_latitude = latitude;
    v16->_longitude = longitude;
  }

  return v16;
}

@end