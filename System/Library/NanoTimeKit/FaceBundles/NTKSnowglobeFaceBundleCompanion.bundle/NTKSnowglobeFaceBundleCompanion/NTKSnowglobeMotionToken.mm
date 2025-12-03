@interface NTKSnowglobeMotionToken
- (NTKSnowglobeMotionToken)initWithMotionManager:(id)manager;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NTKSnowglobeMotionToken

- (NTKSnowglobeMotionToken)initWithMotionManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = NTKSnowglobeMotionToken;
  v6 = [(NTKSnowglobeMotionToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
  }

  return v7;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_invalidated)
  {
    obj->_invalidated = 1;
    [(NTKSnowglobeMotionManager *)obj->_manager _invalidateToken];
  }

  objc_sync_exit(obj);
}

- (void)dealloc
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_sync_exit(selfCopy);

  [(NTKSnowglobeMotionToken *)selfCopy invalidate];
  v3.receiver = selfCopy;
  v3.super_class = NTKSnowglobeMotionToken;
  [(NTKSnowglobeMotionToken *)&v3 dealloc];
}

@end