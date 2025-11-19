@interface VLFSessionIndoorOutdoorAnalyticsRecorder
- (VLFSessionIndoorOutdoorAnalyticsRecorder)init;
- (void)dealloc;
- (void)recordFrame:(id)a3;
@end

@implementation VLFSessionIndoorOutdoorAnalyticsRecorder

- (void)recordFrame:(id)a3
{
  v4 = a3;
  v5 = sub_100DEB1E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v25 = 134349312;
    v26 = self;
    v27 = 2048;
    v28 = *&v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Received frame: %p", &v25, 0x16u);
  }

  GEOConfigGetDouble();
  v7 = v6;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(VLFSessionIndoorOutdoorAnalyticsRecorder *)v8 lastUpdate];
  if (v9 && (+[NSDate date](NSDate, "date"), v10 = objc_claimAutoreleasedReturnValue(), -[VLFSessionIndoorOutdoorAnalyticsRecorder lastUpdate](v8, "lastUpdate"), v11 = objc_claimAutoreleasedReturnValue(), [v10 timeIntervalSinceDate:v11], v13 = v12 < v7, v11, v10, v9, v13))
  {
    v14 = sub_100DEB1E8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v25 = 134349312;
      v26 = v8;
      v27 = 2048;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Last frame update was too soon (< %0.2fs ago); ignoring", &v25, 0x16u);
    }
  }

  else
  {
    v15 = +[NSDate date];
    [(VLFSessionIndoorOutdoorAnalyticsRecorder *)v8 setLastUpdate:v15];

    objc_sync_exit(v8);
    [v4 indoorConfidence];
    v17 = v16;
    [v4 outdoorConfidence];
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
      v26 = v8;
      v27 = 2112;
      v28 = *&v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Recording frame with type: %@", &v25, 0x16u);
    }

    v23 = v8;
    objc_sync_enter(v23);
    v14 = [(VLFSessionIndoorOutdoorAnalyticsRecorder *)v23 entries];
    v24 = [NSNumber numberWithInteger:v20];
    [v14 push:v24];
  }

  objc_sync_exit(v8);
}

- (void)dealloc
{
  v3 = sub_100DEB1E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
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