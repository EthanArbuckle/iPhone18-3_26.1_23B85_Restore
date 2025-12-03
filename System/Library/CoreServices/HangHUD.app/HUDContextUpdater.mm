@interface HUDContextUpdater
+ (id)sharedInstance;
- (BOOL)cleanUpExpiredHUDContents;
- (HUDContextUpdater)init;
- (void)HandleUpdateAndClear;
- (void)addHUDContents:(id)contents;
- (void)kickOffUpdater;
- (void)saveClearHUDRequest;
- (void)stopUpdater;
@end

@implementation HUDContextUpdater

- (HUDContextUpdater)init
{
  v11.receiver = self;
  v11.super_class = HUDContextUpdater;
  v2 = [(HUDContextUpdater *)&v11 init];
  v3 = v2;
  if (v2)
  {
    hudUpdateHandler = v2->_hudUpdateHandler;
    v2->_hudUpdateHandler = 0;

    *&v3->_hudContenDictLock._os_unfair_lock_opaque = 0;
    v5 = objc_alloc_init(NSMutableDictionary);
    hudContentDictionary = v3->_hudContentDictionary;
    v3->_hudContentDictionary = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    clearHUDRequestDictionary = v3->_clearHUDRequestDictionary;
    v3->_clearHUDRequestDictionary = v7;

    updateTimer = v3->_updateTimer;
    v3->_updateTimer = 0;
  }

  return v3;
}

- (void)addHUDContents:(id)contents
{
  contentsCopy = contents;
  os_unfair_lock_lock(&self->_hudContenDictLock);
  [(NSMutableDictionary *)self->_hudContentDictionary addEntriesFromDictionary:contentsCopy];

  os_unfair_lock_unlock(&self->_hudContenDictLock);
  v5 = +[HUDRenderServer sharedInstance];
  [v5 prepareHUDContextIfNeeded];
}

- (void)saveClearHUDRequest
{
  v3 = [HTHangHUDInfo alloc];
  LOBYTE(v7) = 1;
  v4 = [(HTHangHUDInfo *)v3 initWithHangStartTime:0 hangEndTime:0 receivedTimestamp:0 hangDurationMS:off_10003E3D8 hudString:off_10003E3D8 shortenedBundle:off_10003E3D8 bundleId:0.0 timedOut:v7];
  os_unfair_lock_lock(&self->_clearHUDRequestDictLock);
  [(NSMutableDictionary *)self->_clearHUDRequestDictionary setObject:v4 forKey:off_10003E3D8];
  os_unfair_lock_unlock(&self->_clearHUDRequestDictLock);
  v5 = sub_10000A9AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    clearHUDRequestDictionary = self->_clearHUDRequestDictionary;
    *buf = 138412290;
    v9 = clearHUDRequestDictionary;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, " - clear HUD dict: %@", buf, 0xCu);
  }
}

- (BOOL)cleanUpExpiredHUDContents
{
  os_unfair_lock_lock(&self->_hudContenDictLock);
  [(NSMutableDictionary *)self->_hudContentDictionary allKeys];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = v33 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v4)
  {
    v6 = v4;
    v29 = 0;
    v7 = *v31;
    *&v5 = 138413314;
    v28 = v5;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_hudContentDictionary objectForKeyedSubscript:v9, v28];
        v11 = mach_absolute_time();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_22;
          }

          v19 = v10;
          v14 = [HUDContext displayNameForHangInfo:v19];
          v20 = sub_100017A6C(v11 - [v19 receivedTimestamp]);
          if (v20 <= 5000.0)
          {
            processName2 = sub_10000A9AC();
            if (os_log_type_enabled(processName2, OS_LOG_TYPE_DEBUG))
            {
              v25 = sub_100017A6C(v11);
              v26 = sub_100017A6C([v19 receivedTimestamp]);
              *buf = v28;
              v35 = v14;
              v36 = 2048;
              v37 = v20;
              v38 = 1024;
              *v39 = 5000;
              *&v39[4] = 2048;
              *&v39[6] = v25;
              v40 = 2048;
              v41 = v26;
              _os_log_debug_impl(&_mh_execute_header, processName2, OS_LOG_TYPE_DEBUG, "  ==> keeping hangInfo item %@ since durationToKeepRendering: %f ms < threshold: %i ms where current_time: %fms, receivedTimestamp: %f", buf, 0x30u);
            }
          }

          else
          {
            [(NSMutableDictionary *)self->_hudContentDictionary removeObjectForKey:v9];
            processName2 = sub_10000A9AC();
            if (os_log_type_enabled(processName2, OS_LOG_TYPE_DEFAULT))
            {
              hangStartTime = [v19 hangStartTime];
              *buf = 138413058;
              v35 = v14;
              v36 = 2048;
              v37 = *&hangStartTime;
              v38 = 2048;
              *v39 = v20;
              *&v39[8] = 1024;
              *&v39[10] = 5000;
              v17 = processName2;
              v18 = "  ==> removing hangInfo with process name %@ and hangStartTime: %llu since durationToKeepRendering: %f ms > threshold: %i ms";
LABEL_14:
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0x26u);
            }
          }

          goto LABEL_21;
        }

        v12 = v10;
        v13 = sub_100017A6C(v11 - [v12 requestedToRenderTimestamp]);
        if (v13 <= 5000.0)
        {
          v14 = sub_10000A9AC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            processName = [v12 processName];
            v23 = sub_100017A6C(v11);
            v24 = sub_100017A6C([v12 exitTimestamp]);
            *buf = v28;
            v35 = processName;
            v36 = 2048;
            v37 = v13;
            v38 = 1024;
            *v39 = 5000;
            *&v39[4] = 2048;
            *&v39[6] = v23;
            v40 = 2048;
            v41 = v24;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "  ==> keeping ProcExit item %@ since durationToKeepRendering: %f ms < threshold: %i where current_time: %f ms, exitTimestamp: %f", buf, 0x30u);
          }

          v29 = 1;
          goto LABEL_21;
        }

        [(NSMutableDictionary *)self->_hudContentDictionary removeObjectForKey:v9];
        v14 = sub_10000A9AC();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          processName2 = [v12 processName];
          exitTimestamp = [v12 exitTimestamp];
          *buf = 138413058;
          v35 = processName2;
          v36 = 2048;
          v37 = *&exitTimestamp;
          v38 = 2048;
          *v39 = v13;
          *&v39[8] = 1024;
          *&v39[10] = 5000;
          v17 = v14;
          v18 = "  ==> removing ProcExit item %@ and exit timestamp %llu since durationToKeepRendering: %f ms > theshold: %i ms";
          goto LABEL_14;
        }

LABEL_21:

LABEL_22:
      }

      v6 = [v3 countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (!v6)
      {
        goto LABEL_26;
      }
    }
  }

  v29 = 0;
LABEL_26:
  os_unfair_lock_unlock(&self->_hudContenDictLock);

  return v29 & 1;
}

+ (id)sharedInstance
{
  if (qword_10003E710 != -1)
  {
    sub_100018C28();
  }

  v3 = qword_10003E708;

  return v3;
}

- (void)kickOffUpdater
{
  if (!self->_updateTimer)
  {
    v8[7] = v2;
    v8[8] = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005FF8;
    v8[3] = &unk_100030A28;
    v8[4] = self;
    v5 = [NSTimer timerWithTimeInterval:1 repeats:v8 block:0.05];
    updateTimer = self->_updateTimer;
    self->_updateTimer = v5;

    v7 = +[NSRunLoop mainRunLoop];
    [v7 addTimer:self->_updateTimer forMode:NSDefaultRunLoopMode];

    [(NSTimer *)self->_updateTimer fire];
  }
}

- (void)stopUpdater
{
  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (void)HandleUpdateAndClear
{
  hudUpdateHandler = self->_hudUpdateHandler;
  if (hudUpdateHandler)
  {
    hudUpdateHandler[2](hudUpdateHandler, self->_hudContentDictionary);
    cleanUpExpiredHUDContents = [(HUDContextUpdater *)self cleanUpExpiredHUDContents];
    if ([(NSMutableDictionary *)self->_clearHUDRequestDictionary count]&& (cleanUpExpiredHUDContents & 1) == 0)
    {
      clearHUDRequestDictionary = self->_clearHUDRequestDictionary;
      (*(self->_hudUpdateHandler + 2))();
      os_unfair_lock_lock(&self->_clearHUDRequestDictLock);
      [(NSMutableDictionary *)self->_clearHUDRequestDictionary removeAllObjects];
      os_unfair_lock_unlock(&self->_clearHUDRequestDictLock);
    }

    if (![(NSMutableDictionary *)self->_hudContentDictionary count]&& (byte_10003E718 & 1) == 0)
    {
      v6 = sub_10000A9AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100018CC4();
      }

      v7 = +[HUDContextUpdater sharedInstance];
      [v7 saveClearHUDRequest];

      byte_10003E718 = 1;
    }

    if ([(NSMutableDictionary *)self->_hudContentDictionary count])
    {
      byte_10003E718 = 0;
    }
  }
}

@end