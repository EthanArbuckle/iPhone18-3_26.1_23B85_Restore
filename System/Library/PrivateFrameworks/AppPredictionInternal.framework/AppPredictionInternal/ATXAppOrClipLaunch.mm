@interface ATXAppOrClipLaunch
- (id)initAppClipLaunchWithBundleId:(id)a3 urlHash:(id)a4 launchReason:(int)a5;
- (id)initAppClipLaunchWithBundleId:(id)a3 urlHash:(id)a4 launchReason:(int)a5 latitude:(double)a6 longitude:(double)a7;
- (id)initAppLaunchWithBundleId:(id)a3;
- (id)initAppLaunchWithBundleId:(id)a3 launchReason:(int)a4 latitude:(double)a5 longitude:(double)a6;
@end

@implementation ATXAppOrClipLaunch

- (id)initAppLaunchWithBundleId:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ATXAppOrClipLaunch;
  v6 = [(ATXAppOrClipLaunch *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleId, a3);
    v8 = MEMORY[0x277D131D0];
    v7->_isClip = 0;
    v9 = *v8;
    v7->_latitude = *v8;
    v7->_longitude = v9;
    v7->_launchReason = 9;
  }

  return v7;
}

- (id)initAppLaunchWithBundleId:(id)a3 launchReason:(int)a4 latitude:(double)a5 longitude:(double)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = ATXAppOrClipLaunch;
  v12 = [(ATXAppOrClipLaunch *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleId, a3);
    v13->_isClip = 0;
    v13->_launchReason = a4;
    v13->_latitude = a5;
    v13->_longitude = a6;
  }

  return v13;
}

- (id)initAppClipLaunchWithBundleId:(id)a3 urlHash:(id)a4 launchReason:(int)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = ATXAppOrClipLaunch;
  v11 = [(ATXAppOrClipLaunch *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleId, a3);
    objc_storeStrong(&v12->_urlHash, a4);
    v12->_isClip = 1;
    v12->_launchReason = a5;
    v13 = *MEMORY[0x277D131D0];
    v12->_latitude = *MEMORY[0x277D131D0];
    v12->_longitude = v13;
  }

  return v12;
}

- (id)initAppClipLaunchWithBundleId:(id)a3 urlHash:(id)a4 launchReason:(int)a5 latitude:(double)a6 longitude:(double)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = ATXAppOrClipLaunch;
  v15 = [(ATXAppOrClipLaunch *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleId, a3);
    objc_storeStrong(&v16->_urlHash, a4);
    v16->_isClip = 1;
    v16->_launchReason = a5;
    v16->_latitude = a6;
    v16->_longitude = a7;
  }

  return v16;
}

@end