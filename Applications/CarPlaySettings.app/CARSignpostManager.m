@interface CARSignpostManager
+ (void)emitLaunched;
- (void)_emitFinalizedIfNeeded;
- (void)emitInstantOnIfNeeded;
- (void)emitRenderedIfNeeded;
@end

@implementation CARSignpostManager

+ (void)emitLaunched
{
  CAFSignpostEmit_Launched();
  v2 = sub_10001C784();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Settings] Launched signpost emitted", v3, 2u);
  }
}

- (void)emitInstantOnIfNeeded
{
  if (![(CARSignpostManager *)self hasEmittedInstantOnSignpost])
  {
    [(CARSignpostManager *)self setHasEmittedInstantOnSignpost:1];
    CAFSignpostEmit_InstantOn();
    v3 = sub_10001C784();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] InstantOn signpost emitted", v4, 2u);
    }
  }

  if (![(CARSignpostManager *)self hasEmittedFinalizedSignpost]&& [(CARSignpostManager *)self hasEmittedRenderedSignpost])
  {
    if ([(CARSignpostManager *)self hasEmittedInstantOnSignpost])
    {
      [(CARSignpostManager *)self _emitFinalizedIfNeeded];
    }
  }
}

- (void)emitRenderedIfNeeded
{
  if (![(CARSignpostManager *)self hasEmittedRenderedSignpost])
  {
    [(CARSignpostManager *)self setHasEmittedRenderedSignpost:1];
    CAFSignpostEmit_Rendered();
    v3 = sub_10001C784();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] Rendered signpost emitted", v4, 2u);
    }
  }

  if (![(CARSignpostManager *)self hasEmittedFinalizedSignpost]&& [(CARSignpostManager *)self hasEmittedRenderedSignpost])
  {
    if ([(CARSignpostManager *)self hasEmittedInstantOnSignpost])
    {
      [(CARSignpostManager *)self _emitFinalizedIfNeeded];
    }
  }
}

- (void)_emitFinalizedIfNeeded
{
  if (![(CARSignpostManager *)self hasEmittedFinalizedSignpost])
  {
    [(CARSignpostManager *)self setHasEmittedFinalizedSignpost:1];
    CAFSignpostEmit_Finalized();
    v3 = sub_10001C784();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] Finalized signpost emitted", v4, 2u);
    }
  }
}

@end