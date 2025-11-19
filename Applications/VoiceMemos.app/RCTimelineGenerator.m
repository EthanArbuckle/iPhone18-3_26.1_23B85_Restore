@interface RCTimelineGenerator
+ (id)emptyTimelineWithIdentifier:(id)a3;
- (RCTimelineGenerator)initWithRecordingStartTimeInfo:(id)a3 elapsedRecordingTimeInfo:(id)a4;
- (double)_recordingDurationForDurationAtStartTime:(double)result currentTime:(double)a4;
- (id)_dateEntriesForRecordingStartTime:(id)a3 lastRecordingTime:(double)a4 elapsedTimeAtRecordingStart:(double)a5 recordingDurationAtRecordingStart:(double)a6 timelineDateInterval:(id)a7;
- (id)_recordingStartTimeSyncedWithDisplayedTime;
- (id)timelinesForDateInterval:(id)a3 displayedRecordingTime:(double)a4 timelineIdentifier:(id)a5;
@end

@implementation RCTimelineGenerator

- (RCTimelineGenerator)initWithRecordingStartTimeInfo:(id)a3 elapsedRecordingTimeInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RCTimelineGenerator;
  v9 = [(RCTimelineGenerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordingStartTimeInfo, a3);
    objc_storeStrong(&v10->_elapsedRecordingTimeInfo, a4);
    v11 = [(RCTimelineGenerator *)v10 _recordingStartTimeSyncedWithDisplayedTime];
    recordingStartTime = v10->_recordingStartTime;
    v10->_recordingStartTime = v11;
  }

  return v10;
}

+ (id)emptyTimelineWithIdentifier:(id)a3
{
  v3 = [BLSAlwaysOnTimeline emptyTimelineWithIdentifier:a3];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)timelinesForDateInterval:(id)a3 displayedRecordingTime:(double)a4 timelineIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RCTimelineGenerator *)self recordingStartTime];

  if (v10)
  {
    v30 = v9;
    v11 = [(RCTimelineGenerator *)self recordingStartTimeInfo];
    v12 = [(RCTimelineGenerator *)self recordingStartTime];
    [v11 recordingTimeAtStartTime];
    v14 = v13;
    [v11 recordingDurationAtStartTime];
    v16 = [(RCTimelineGenerator *)self _dateEntriesForRecordingStartTime:v12 lastRecordingTime:v8 elapsedTimeAtRecordingStart:a4 recordingDurationAtRecordingStart:v14 timelineDateInterval:v15];

    v17 = +[NSMutableArray array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          v24 = [v23 dateEntry];
          v25 = +[BLSAlwaysOnTimelineUnconfiguredEntry entryForPresentationTime:withRequestedFidelity:](BLSAlwaysOnTimelineUnconfiguredEntry, "entryForPresentationTime:withRequestedFidelity:", v24, [v23 updateFidelity]);

          v26 = [v23 userInfo];
          [v25 setUserObject:v26];

          [v17 addObject:v25];
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v20);
    }

    v9 = v30;
    v27 = [BLSAlwaysOnTimeline timelineWithEntries:v17 identifier:v30 configure:0];
    v35 = v27;
    v28 = [NSArray arrayWithObjects:&v35 count:1];
  }

  else
  {
    v11 = OSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001B8144(v11);
    }

    v28 = &__NSArray0__struct;
  }

  return v28;
}

- (id)_dateEntriesForRecordingStartTime:(id)a3 lastRecordingTime:(double)a4 elapsedTimeAtRecordingStart:(double)a5 recordingDurationAtRecordingStart:(double)a6 timelineDateInterval:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [v13 endDate];
  v15 = [v12 compare:v14];

  if (v15 == 1)
  {
    v16 = OSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1001B8438(v12, v13, v16);
    }

    v17 = &__NSArray0__struct;
    goto LABEL_39;
  }

  v16 = +[NSMutableArray array];
  if (RCSupportsDebugAODLogs())
  {
    v18 = OSLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B81C8(v12);
    }

    v19 = OSLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B8258();
    }

    v20 = OSLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B82E8(v13);
    }

    v21 = OSLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B8390(v13);
    }
  }

  v22 = [v13 startDate];
  [v22 timeIntervalSinceDate:v12];
  v24 = v23;

  v26 = vcvtpd_u64_f64(v24);
  v27 = vcvtpd_u64_f64(a4);
  if (v26 <= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  *&v25 = 136315394;
  v48 = v25;
  do
  {
    v29 = [NSDate dateWithTimeInterval:v12 sinceDate:v28 - a5, v48];
    v30 = [v13 endDate];
    if ([v29 compare:v30] == -1)
    {
    }

    else
    {
      v31 = [v13 endDate];
      v32 = [v29 compare:v31];

      if (v32)
      {
        v17 = [v16 copy];
        goto LABEL_38;
      }
    }

    [(RCTimelineGenerator *)self _recordingDurationForDurationAtStartTime:a6 currentTime:v28];
    v34 = [[RCTimelineDateEntryUserInfo alloc] initWithCurrentTime:v28 recordingDuration:v33];
    v35 = [[RCTimelineDateEntry alloc] initWithDateEntry:v29 updateFidelity:2 userInfo:v34];
    [v16 addObject:v35];
    if (RCSupportsDebugAODLogs())
    {
      v36 = OSLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = v48;
        v50 = "[RCTimelineGenerator _dateEntriesForRecordingStartTime:lastRecordingTime:elapsedTimeAtRecordingStart:recordingDurationAtRecordingStart:timelineDateInterval:]";
        v51 = 2112;
        v52 = v35;
        _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s -- per second date entry: %@", buf, 0x16u);
      }
    }

    ++v28;
  }

  while (v28 < 0x3C);
  v37 = (60 * (a4 / 60.0) + 60);
  v29 = [NSDate dateWithTimeInterval:v12 sinceDate:v37 - a5];
  for (i = v29; ; i = v46)
  {
    v39 = [v13 endDate];
    if ([i compare:v39] != -1)
    {
      break;
    }

LABEL_33:
    [(RCTimelineGenerator *)self _recordingDurationForDurationAtStartTime:a6 currentTime:v37];
    v43 = [[RCTimelineDateEntryUserInfo alloc] initWithCurrentTime:v37 recordingDuration:v42];
    v44 = [[RCTimelineDateEntry alloc] initWithDateEntry:i updateFidelity:1 userInfo:v43];
    [v16 addObject:v44];
    if (RCSupportsDebugAODLogs())
    {
      v45 = OSLogForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = v48;
        v50 = "[RCTimelineGenerator _dateEntriesForRecordingStartTime:lastRecordingTime:elapsedTimeAtRecordingStart:recordingDurationAtRecordingStart:timelineDateInterval:]";
        v51 = 2112;
        v52 = v44;
        _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "%s -- per minute date entry: %@", buf, 0x16u);
      }
    }

    v46 = [i dateByAddingTimeInterval:60.0];

    v37 = v37 + 60.0;
  }

  v40 = [v13 endDate];
  v41 = [i compare:v40];

  if (!v41)
  {
    goto LABEL_33;
  }

  v17 = [v16 copy];

LABEL_38:
LABEL_39:

  return v17;
}

- (double)_recordingDurationForDurationAtStartTime:(double)result currentTime:(double)a4
{
  if (result < a4)
  {
    return a4;
  }

  return result;
}

- (id)_recordingStartTimeSyncedWithDisplayedTime
{
  v3 = [(RCTimelineGenerator *)self recordingStartTimeInfo];
  v4 = [v3 dateRecordingStartTime];
  v5 = [v3 machRecordingStartTime];
  v6 = [(RCTimelineGenerator *)self elapsedRecordingTimeInfo];
  v7 = v6;
  if (v6)
  {
    [v6 elapsedRecordingTime];
    v9 = v8;
    v10 = [v7 machElapsedRecordingTime];
  }

  else
  {
    [v3 recordingTimeAtStartTime];
    v9 = v11;
    v10 = v5;
  }

  [v3 recordingTimeAtStartTime];
  [AVAudioTime secondsForHostTime:v10 - v5 - [AVAudioTime hostTimeForSeconds:v9 - v12]];
  v13 = [v4 dateByAddingTimeInterval:?];

  return v13;
}

@end