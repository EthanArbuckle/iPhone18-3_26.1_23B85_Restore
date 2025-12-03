@interface ADUserProfileService
+ (id)sharedService;
- (ADUserProfileService)init;
- (id)_init;
- (void)_withLock:(id)lock;
@end

@implementation ADUserProfileService

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_init
{
  v15.receiver = self;
  v15.super_class = ADUserProfileService;
  v2 = [(ADUserProfileService *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create("com.apple.assistant.user-profile-service", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = +[NSMutableSet set];
    namesToDelete = v2->_namesToDelete;
    v2->_namesToDelete = v7;

    v9 = +[NSMutableSet set];
    homeUserProfileNames = v2->_homeUserProfileNames;
    v2->_homeUserProfileNames = v9;

    v2->_needsProfileNameSync = 1;
    v11 = +[NSMutableArray array];
    profilesChangedHandlers = v2->_profilesChangedHandlers;
    v2->_profilesChangedHandlers = v11;

    v2->isATVOnly = AFIsATV();
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v17 = "[ADUserProfileService _init]";
    v18 = 2048;
    v19 = v2;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s %p", buf, 0x16u);
  }

  return v2;
}

- (ADUserProfileService)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ADUserProfileService.m" lineNumber:105 description:@"Use + sharedService"];

  return 0;
}

+ (id)sharedService
{
  if (qword_100590670 != -1)
  {
    dispatch_once(&qword_100590670, &stru_100517760);
  }

  v3 = qword_100590668;

  return v3;
}

@end