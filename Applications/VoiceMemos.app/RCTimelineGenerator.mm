@interface RCTimelineGenerator
+ (id)emptyTimelineWithIdentifier:(id)identifier;
- (RCTimelineGenerator)initWithRecordingStartTimeInfo:(id)info elapsedRecordingTimeInfo:(id)timeInfo;
- (double)_recordingDurationForDurationAtStartTime:(double)result currentTime:(double)time;
- (id)_dateEntriesForRecordingStartTime:(id)time lastRecordingTime:(double)recordingTime elapsedTimeAtRecordingStart:(double)start recordingDurationAtRecordingStart:(double)recordingStart timelineDateInterval:(id)interval;
- (id)_recordingStartTimeSyncedWithDisplayedTime;
- (id)timelinesForDateInterval:(id)interval displayedRecordingTime:(double)time timelineIdentifier:(id)identifier;
@end

@implementation RCTimelineGenerator

- (RCTimelineGenerator)initWithRecordingStartTimeInfo:(id)info elapsedRecordingTimeInfo:(id)timeInfo
{
  infoCopy = info;
  timeInfoCopy = timeInfo;
  v14.receiver = self;
  v14.super_class = RCTimelineGenerator;
  v9 = [(RCTimelineGenerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordingStartTimeInfo, info);
    objc_storeStrong(&v10->_elapsedRecordingTimeInfo, timeInfo);
    _recordingStartTimeSyncedWithDisplayedTime = [(RCTimelineGenerator *)v10 _recordingStartTimeSyncedWithDisplayedTime];
    recordingStartTime = v10->_recordingStartTime;
    v10->_recordingStartTime = _recordingStartTimeSyncedWithDisplayedTime;
  }

  return v10;
}

+ (id)emptyTimelineWithIdentifier:(id)identifier
{
  v3 = [BLSAlwaysOnTimeline emptyTimelineWithIdentifier:identifier];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)timelinesForDateInterval:(id)interval displayedRecordingTime:(double)time timelineIdentifier:(id)identifier
{
  intervalCopy = interval;
  identifierCopy = identifier;
  recordingStartTime = [(RCTimelineGenerator *)self recordingStartTime];

  if (recordingStartTime)
  {
    v30 = identifierCopy;
    recordingStartTimeInfo = [(RCTimelineGenerator *)self recordingStartTimeInfo];
    recordingStartTime2 = [(RCTimelineGenerator *)self recordingStartTime];
    [recordingStartTimeInfo recordingTimeAtStartTime];
    v14 = v13;
    [recordingStartTimeInfo recordingDurationAtStartTime];
    v16 = [(RCTimelineGenerator *)self _dateEntriesForRecordingStartTime:recordingStartTime2 lastRecordingTime:intervalCopy elapsedTimeAtRecordingStart:time recordingDurationAtRecordingStart:v14 timelineDateInterval:v15];

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
          dateEntry = [v23 dateEntry];
          v25 = +[BLSAlwaysOnTimelineUnconfiguredEntry entryForPresentationTime:withRequestedFidelity:](BLSAlwaysOnTimelineUnconfiguredEntry, "entryForPresentationTime:withRequestedFidelity:", dateEntry, [v23 updateFidelity]);

          userInfo = [v23 userInfo];
          [v25 setUserObject:userInfo];

          [v17 addObject:v25];
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v20);
    }

    identifierCopy = v30;
    v27 = [BLSAlwaysOnTimeline timelineWithEntries:v17 identifier:v30 configure:0];
    v35 = v27;
    v28 = [NSArray arrayWithObjects:&v35 count:1];
  }

  else
  {
    recordingStartTimeInfo = OSLogForCategory();
    if (os_log_type_enabled(recordingStartTimeInfo, OS_LOG_TYPE_FAULT))
    {
      sub_1001B8144(recordingStartTimeInfo);
    }

    v28 = &__NSArray0__struct;
  }

  return v28;
}

- (id)_dateEntriesForRecordingStartTime:(id)time lastRecordingTime:(double)recordingTime elapsedTimeAtRecordingStart:(double)start recordingDurationAtRecordingStart:(double)recordingStart timelineDateInterval:(id)interval
{
  timeCopy = time;
  intervalCopy = interval;
  endDate = [intervalCopy endDate];
  v15 = [timeCopy compare:endDate];

  if (v15 == 1)
  {
    v16 = OSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1001B8438(timeCopy, intervalCopy, v16);
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
      sub_1001B81C8(timeCopy);
    }

    v19 = OSLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B8258();
    }

    v20 = OSLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B82E8(intervalCopy);
    }

    v21 = OSLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B8390(intervalCopy);
    }
  }

  startDate = [intervalCopy startDate];
  [startDate timeIntervalSinceDate:timeCopy];
  v24 = v23;

  v26 = vcvtpd_u64_f64(v24);
  v27 = vcvtpd_u64_f64(recordingTime);
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
    start = [NSDate dateWithTimeInterval:timeCopy sinceDate:v28 - start, v48];
    endDate2 = [intervalCopy endDate];
    if ([start compare:endDate2] == -1)
    {
    }

    else
    {
      endDate3 = [intervalCopy endDate];
      v32 = [start compare:endDate3];

      if (v32)
      {
        v17 = [v16 copy];
        goto LABEL_38;
      }
    }

    [(RCTimelineGenerator *)self _recordingDurationForDurationAtStartTime:recordingStart currentTime:v28];
    v34 = [[RCTimelineDateEntryUserInfo alloc] initWithCurrentTime:v28 recordingDuration:v33];
    v35 = [[RCTimelineDateEntry alloc] initWithDateEntry:start updateFidelity:2 userInfo:v34];
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
  v37 = (60 * (recordingTime / 60.0) + 60);
  start = [NSDate dateWithTimeInterval:timeCopy sinceDate:v37 - start];
  for (i = start; ; i = v46)
  {
    endDate4 = [intervalCopy endDate];
    if ([i compare:endDate4] != -1)
    {
      break;
    }

LABEL_33:
    [(RCTimelineGenerator *)self _recordingDurationForDurationAtStartTime:recordingStart currentTime:v37];
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

  endDate5 = [intervalCopy endDate];
  v41 = [i compare:endDate5];

  if (!v41)
  {
    goto LABEL_33;
  }

  v17 = [v16 copy];

LABEL_38:
LABEL_39:

  return v17;
}

- (double)_recordingDurationForDurationAtStartTime:(double)result currentTime:(double)time
{
  if (result < time)
  {
    return time;
  }

  return result;
}

- (id)_recordingStartTimeSyncedWithDisplayedTime
{
  recordingStartTimeInfo = [(RCTimelineGenerator *)self recordingStartTimeInfo];
  dateRecordingStartTime = [recordingStartTimeInfo dateRecordingStartTime];
  machRecordingStartTime = [recordingStartTimeInfo machRecordingStartTime];
  elapsedRecordingTimeInfo = [(RCTimelineGenerator *)self elapsedRecordingTimeInfo];
  v7 = elapsedRecordingTimeInfo;
  if (elapsedRecordingTimeInfo)
  {
    [elapsedRecordingTimeInfo elapsedRecordingTime];
    v9 = v8;
    machElapsedRecordingTime = [v7 machElapsedRecordingTime];
  }

  else
  {
    [recordingStartTimeInfo recordingTimeAtStartTime];
    v9 = v11;
    machElapsedRecordingTime = machRecordingStartTime;
  }

  [recordingStartTimeInfo recordingTimeAtStartTime];
  [AVAudioTime secondsForHostTime:machElapsedRecordingTime - machRecordingStartTime - [AVAudioTime hostTimeForSeconds:v9 - v12]];
  v13 = [dateRecordingStartTime dateByAddingTimeInterval:?];

  return v13;
}

@end