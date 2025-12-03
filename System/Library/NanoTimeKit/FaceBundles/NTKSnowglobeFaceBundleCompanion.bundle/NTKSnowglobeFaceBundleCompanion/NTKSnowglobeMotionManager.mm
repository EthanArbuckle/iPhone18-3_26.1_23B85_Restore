@interface NTKSnowglobeMotionManager
+ (id)sharedInstance;
- ($1AB5FA073B851C12C2339EC22442E995)rotationRate;
- ($1AB5FA073B851C12C2339EC22442E995)userAcceleration;
- (NTKSnowglobeMotionManager)init;
- (id)acquireToken;
- (void)_invalidateToken;
- (void)pause;
- (void)resume;
@end

@implementation NTKSnowglobeMotionManager

+ (id)sharedInstance
{
  if (qword_27E1EDDC8 != -1)
  {
    sub_23C08ED3C();
  }

  v3 = qword_27E1EDDC0;

  return v3;
}

- (NTKSnowglobeMotionManager)init
{
  v6.receiver = self;
  v6.super_class = NTKSnowglobeMotionManager;
  v2 = [(NTKSnowglobeMotionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    motionManager = v2->_motionManager;
    v2->_motionManager = v3;

    [(CMMotionManager *)v2->_motionManager setDeviceMotionUpdateInterval:0.0333333351];
  }

  return v2;
}

- (void)resume
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_running)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_running = 1;
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23C07F000, v2, OS_LOG_TYPE_DEFAULT, "Resuming motion input", buf, 2u);
    }

    objc_sync_exit(obj);
    objc_initWeak(buf, obj);
    motionManager = obj->_motionManager;
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_23C080EF0;
    v6[3] = &unk_278BAC578;
    objc_copyWeak(&v7, buf);
    [(CMMotionManager *)motionManager startDeviceMotionUpdatesToQueue:mainQueue withHandler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (void)pause
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_running)
  {
    obj->_running = 0;
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C07F000, v2, OS_LOG_TYPE_DEFAULT, "Pausing motion input", buf, 2u);
    }

    objc_sync_exit(obj);
    [(CMMotionManager *)obj->_motionManager stopDeviceMotionUpdates];
    obj->_userAcceleration.z = 0.0;
    obj->_rotationRate.x = 0.0;
    obj->_userAcceleration.x = 0.0;
    obj->_userAcceleration.y = 0.0;
    obj->_rotationRate.y = 0.0;
    obj->_rotationRate.z = 0.0;
  }

  else
  {
    objc_sync_exit(obj);
  }
}

- (id)acquireToken
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++selfCopy->_activeTokens;
  [(NTKSnowglobeMotionManager *)selfCopy resume];
  objc_sync_exit(selfCopy);

  v3 = [[NTKSnowglobeMotionToken alloc] initWithMotionManager:selfCopy];

  return v3;
}

- (void)_invalidateToken
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj->_activeTokens - 1;
  obj->_activeTokens = v2;
  if (!v2)
  {
    [(NTKSnowglobeMotionManager *)obj pause];
  }

  objc_sync_exit(obj);
}

- ($1AB5FA073B851C12C2339EC22442E995)userAcceleration
{
  objc_copyStruct(dest, &self->_userAcceleration, 24, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)rotationRate
{
  objc_copyStruct(dest, &self->_rotationRate, 24, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end