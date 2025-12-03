@interface MTPlayMetricsEvent
+ (id)eventWithAccessLog:(id)log dataSource:(id)source;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRecorded;
- (MTPlayMetricsEvent)initWithAccessLogEvent:(id)event dataSource:(id)source;
- (id)_data;
- (id)description;
- (unint64_t)hash;
- (void)record;
@end

@implementation MTPlayMetricsEvent

+ (id)eventWithAccessLog:(id)log dataSource:(id)source
{
  sourceCopy = source;
  logCopy = log;
  v7 = [objc_alloc(objc_opt_class()) initWithAccessLogEvent:logCopy dataSource:sourceCopy];

  return v7;
}

- (MTPlayMetricsEvent)initWithAccessLogEvent:(id)event dataSource:(id)source
{
  eventCopy = event;
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = MTPlayMetricsEvent;
  v8 = [(MTPlayMetricsEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTPlayMetricsEvent *)v8 setAccessLogEvent:eventCopy];
    [(MTPlayMetricsEvent *)v9 setDataSource:sourceCopy];
  }

  return v9;
}

- (BOOL)isRecorded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recorded = selfCopy->_recorded;
  objc_sync_exit(selfCopy);

  return recorded;
}

- (void)record
{
  obj = self;
  objc_sync_enter(obj);
  dataSource = [(MTPlayMetricsEvent *)obj dataSource];
  _data = [(MTPlayMetricsEvent *)obj _data];
  [IMMetrics recordEvent:@"play_stats" dataSource:dataSource data:_data];

  [(MTPlayMetricsEvent *)obj setRecorded:1];
  objc_sync_exit(obj);
}

- (id)_data
{
  accessLogEvent = [(MTPlayMetricsEvent *)self accessLogEvent];
  playbackStartDate = [accessLogEvent playbackStartDate];
  [playbackStartDate timeIntervalSince1970];
  v5 = (v4 * 1000.0);

  v37[0] = @"uri";
  v6 = [accessLogEvent URI];
  v36 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_1004F3018;
  }

  v38[0] = v7;
  v37[1] = @"server_address";
  serverAddress = [accessLogEvent serverAddress];
  v35 = serverAddress;
  if (serverAddress)
  {
    v9 = serverAddress;
  }

  else
  {
    v9 = &stru_1004F3018;
  }

  v38[1] = v9;
  v37[2] = @"number_of_server_address_changes";
  v34 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [accessLogEvent numberOfServerAddressChanges]);
  v38[2] = v34;
  v37[3] = @"media_requests_wwan";
  v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [accessLogEvent mediaRequestsWWAN]);
  v38[3] = v33;
  v37[4] = @"transfer_duration";
  [accessLogEvent transferDuration];
  v32 = [NSNumber numberWithDouble:?];
  v38[4] = v32;
  v37[5] = @"number_of_bytes_transferred";
  v31 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [accessLogEvent numberOfBytesTransferred]);
  v38[5] = v31;
  v37[6] = @"number_of_media_requests";
  v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [accessLogEvent numberOfMediaRequests]);
  v38[6] = v30;
  v37[7] = @"playStartTime";
  v29 = [NSNumber numberWithLongLong:v5];
  v38[7] = v29;
  v37[8] = @"playback_session_id";
  playbackSessionID = [accessLogEvent playbackSessionID];
  v38[8] = playbackSessionID;
  v37[9] = @"playStartPosition";
  [accessLogEvent playbackStartOffset];
  v27 = [NSNumber numberWithDouble:?];
  v38[9] = v27;
  v37[10] = @"playback_type";
  playbackType = [accessLogEvent playbackType];
  v11 = playbackType;
  if (playbackType)
  {
    v12 = playbackType;
  }

  else
  {
    v12 = &stru_1004F3018;
  }

  v38[10] = v12;
  v37[11] = @"startup_time";
  [accessLogEvent startupTime];
  v26 = [NSNumber numberWithDouble:?];
  v38[11] = v26;
  v37[12] = @"playDuration";
  [accessLogEvent durationWatched];
  v25 = [NSNumber numberWithDouble:?];
  v38[12] = v25;
  v37[13] = @"number_of_dropped_video_frames";
  v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [accessLogEvent numberOfDroppedVideoFrames]);
  v38[13] = v24;
  v37[14] = @"number_of_stalls";
  v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [accessLogEvent numberOfStalls]);
  v38[14] = v23;
  v37[15] = @"segments_downloaded_duration";
  [accessLogEvent segmentsDownloadedDuration];
  v22 = [NSNumber numberWithDouble:?];
  v38[15] = v22;
  v37[16] = @"download_overdue";
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [accessLogEvent downloadOverdue]);
  v38[16] = v13;
  v37[17] = @"observed_bitrate_stdev";
  [accessLogEvent observedBitrateStandardDeviation];
  [accessLogEvent observedBitrateStandardDeviation];
  v14 = [NSNumber numberWithDouble:?];
  v38[17] = v14;
  v37[18] = @"observed_bitrate_max";
  [accessLogEvent observedMaxBitrate];
  [accessLogEvent observedMaxBitrate];
  v15 = [NSNumber numberWithDouble:?];
  v38[18] = v15;
  v37[19] = @"observed_bitrate_min";
  [accessLogEvent observedMinBitrate];
  [accessLogEvent observedMinBitrate];
  v16 = [NSNumber numberWithDouble:?];
  v38[19] = v16;
  v37[20] = @"switch_bitrate";
  [accessLogEvent switchBitrate];
  [accessLogEvent switchBitrate];
  v17 = [NSNumber numberWithDouble:?];
  v38[20] = v17;
  v37[21] = @"indicated_bitrate";
  [accessLogEvent indicatedBitrate];
  [accessLogEvent indicatedBitrate];
  v18 = [NSNumber numberWithDouble:?];
  v38[21] = v18;
  v37[22] = @"observed_bitrate";
  [accessLogEvent observedBitrate];
  [accessLogEvent observedBitrate];
  v19 = [NSNumber numberWithDouble:?];
  v38[22] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:23];

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    dataSource = [v5 dataSource];
    dataSource2 = [(MTPlayMetricsEvent *)self dataSource];
    v8 = [dataSource isEqual:dataSource2];

    if (v8)
    {
      _data = [v5 _data];
      _data2 = [(MTPlayMetricsEvent *)self _data];
      v11 = [_data isEqualToDictionary:_data2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  dataSource = [(MTPlayMetricsEvent *)self dataSource];
  v4 = [dataSource hash];
  _data = [(MTPlayMetricsEvent *)self _data];
  v6 = [_data hash];

  return v6 ^ v4;
}

- (id)description
{
  accessLogEvent = [(MTPlayMetricsEvent *)self accessLogEvent];
  playbackStartDate = [accessLogEvent playbackStartDate];
  accessLogEvent2 = [(MTPlayMetricsEvent *)self accessLogEvent];
  [accessLogEvent2 playbackStartOffset];
  v7 = v6;
  accessLogEvent3 = [(MTPlayMetricsEvent *)self accessLogEvent];
  [accessLogEvent3 durationWatched];
  v10 = [NSString stringWithFormat:@"%@ @ %@: from %f for %f seconds", @"play_stats", playbackStartDate, v7, v9];

  return v10;
}

@end