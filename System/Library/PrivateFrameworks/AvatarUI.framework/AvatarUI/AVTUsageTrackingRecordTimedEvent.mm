@interface AVTUsageTrackingRecordTimedEvent
- (AVTUsageTrackingRecordTimedEvent)initWithStartTime:(id)time record:(id)record;
- (double)totalElapsedTimeAtTime:(id)time;
- (void)pauseAtTime:(id)time;
- (void)resumeAtTime:(id)time;
@end

@implementation AVTUsageTrackingRecordTimedEvent

- (AVTUsageTrackingRecordTimedEvent)initWithStartTime:(id)time record:(id)record
{
  timeCopy = time;
  recordCopy = record;
  v12.receiver = self;
  v12.super_class = AVTUsageTrackingRecordTimedEvent;
  v9 = [(AVTUsageTrackingRecordTimedEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currentStartTime, time);
    objc_storeStrong(&v10->_record, record);
  }

  return v10;
}

- (void)pauseAtTime:(id)time
{
  timeCopy = time;
  if (![(AVTUsageTrackingRecordTimedEvent *)self paused])
  {
    [(AVTUsageTrackingRecordTimedEvent *)self setPaused:1];
    currentStartTime = [(AVTUsageTrackingRecordTimedEvent *)self currentStartTime];
    [timeCopy timeIntervalSinceDate:currentStartTime];
    v6 = v5;

    [(AVTUsageTrackingRecordTimedEvent *)self totalTime];
    [(AVTUsageTrackingRecordTimedEvent *)self setTotalTime:v6 + v7];
  }
}

- (void)resumeAtTime:(id)time
{
  timeCopy = time;
  if ([(AVTUsageTrackingRecordTimedEvent *)self paused])
  {
    [(AVTUsageTrackingRecordTimedEvent *)self setPaused:0];
    [(AVTUsageTrackingRecordTimedEvent *)self setCurrentStartTime:timeCopy];
  }
}

- (double)totalElapsedTimeAtTime:(id)time
{
  timeCopy = time;
  if (![(AVTUsageTrackingRecordTimedEvent *)self paused])
  {
    [(AVTUsageTrackingRecordTimedEvent *)self pauseAtTime:timeCopy];
  }

  [(AVTUsageTrackingRecordTimedEvent *)self totalTime];
  v6 = v5;

  return v6;
}

@end