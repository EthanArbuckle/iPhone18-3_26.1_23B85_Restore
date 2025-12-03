@interface VLFSessionIndoorOutdoorAnalyticsRecorder
- (VLFSessionIndoorOutdoorAnalyticsRecorder)init;
- (void)dealloc;
- (void)recordFrame:(id)frame;
@end

@implementation VLFSessionIndoorOutdoorAnalyticsRecorder

- (void)recordFrame:(id)frame
{
  frameCopy = frame;
  v5 = sub_100DEB1E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v25 = 134349312;
    selfCopy = self;
    v27 = 2048;
    v28 = *&frameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Received frame: %p", &v25, 0x16u);
  }

  GEOConfigGetDouble();
  v7 = v6;
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  lastUpdate = [(VLFSessionIndoorOutdoorAnalyticsRecorder *)selfCopy2 lastUpdate];
  if (lastUpdate && (+[NSDate date](NSDate, "date"), v10 = objc_claimAutoreleasedReturnValue(), -[VLFSessionIndoorOutdoorAnalyticsRecorder lastUpdate](selfCopy2, "lastUpdate"), v11 = objc_claimAutoreleasedReturnValue(), [v10 timeIntervalSinceDate:v11], v13 = v12 < v7, v11, v10, lastUpdate, v13))
  {
    entries = sub_100DEB1E8();
    if (os_log_type_enabled(entries, OS_LOG_TYPE_DEBUG))
    {
      v25 = 134349312;
      selfCopy = selfCopy2;
      v27 = 2048;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, entries, OS_LOG_TYPE_DEBUG, "[%{public}p] Last frame update was too soon (< %0.2fs ago); ignoring", &v25, 0x16u);
    }
  }

  else
  {
    v15 = +[NSDate date];
    [(VLFSessionIndoorOutdoorAnalyticsRecorder *)selfCopy2 setLastUpdate:v15];

    objc_sync_exit(selfCopy2);
    [frameCopy indoorConfidence];
    v17 = v16;
    [frameCopy outdoorConfidence];
    v19 = v18;
    v20 = v17 < v18;
    v21 = sub_100DEB1E8();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = @"Indoor";
      if (v17 < v19)
      {
        v22 = @"Outdoor";
      }

      v25 = 134349314;
      selfCopy = selfCopy2;
      v27 = 2112;
      v28 = *&v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Recording frame with type: %@", &v25, 0x16u);
    }

    v23 = selfCopy2;
    objc_sync_enter(v23);
    entries = [(VLFSessionIndoorOutdoorAnalyticsRecorder *)v23 entries];
    v24 = [NSNumber numberWithInteger:v20];
    [entries push:v24];
  }

  objc_sync_exit(selfCopy2);
}

- (void)dealloc
{
  v3 = sub_100DEB1E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = VLFSessionIndoorOutdoorAnalyticsRecorder;
  [(VLFSessionIndoorOutdoorAnalyticsRecorder *)&v4 dealloc];
}

- (VLFSessionIndoorOutdoorAnalyticsRecorder)init
{
  v8.receiver = self;
  v8.super_class = VLFSessionIndoorOutdoorAnalyticsRecorder;
  v2 = [(VLFSessionIndoorOutdoorAnalyticsRecorder *)&v8 init];
  if (v2)
  {
    UInteger = GEOConfigGetUInteger();
    v4 = sub_100DEB1E8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      v10 = v2;
      v11 = 2048;
      v12 = UInteger;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with max entries: %lu", buf, 0x16u);
    }

    v5 = [[MapsRingBuffer alloc] initWithLength:UInteger];
    entries = v2->_entries;
    v2->_entries = v5;
  }

  return v2;
}

@end