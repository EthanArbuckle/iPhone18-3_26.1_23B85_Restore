@interface AVTUsageTrackingRecordTimedEvent
- (AVTUsageTrackingRecordTimedEvent)initWithStartTime:(id)a3 record:(id)a4;
- (double)totalElapsedTimeAtTime:(id)a3;
- (void)pauseAtTime:(id)a3;
- (void)resumeAtTime:(id)a3;
@end

@implementation AVTUsageTrackingRecordTimedEvent

- (AVTUsageTrackingRecordTimedEvent)initWithStartTime:(id)a3 record:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVTUsageTrackingRecordTimedEvent;
  v9 = [(AVTUsageTrackingRecordTimedEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currentStartTime, a3);
    objc_storeStrong(&v10->_record, a4);
  }

  return v10;
}

- (void)pauseAtTime:(id)a3
{
  v8 = a3;
  if (![(AVTUsageTrackingRecordTimedEvent *)self paused])
  {
    [(AVTUsageTrackingRecordTimedEvent *)self setPaused:1];
    v4 = [(AVTUsageTrackingRecordTimedEvent *)self currentStartTime];
    [v8 timeIntervalSinceDate:v4];
    v6 = v5;

    [(AVTUsageTrackingRecordTimedEvent *)self totalTime];
    [(AVTUsageTrackingRecordTimedEvent *)self setTotalTime:v6 + v7];
  }
}

- (void)resumeAtTime:(id)a3
{
  v4 = a3;
  if ([(AVTUsageTrackingRecordTimedEvent *)self paused])
  {
    [(AVTUsageTrackingRecordTimedEvent *)self setPaused:0];
    [(AVTUsageTrackingRecordTimedEvent *)self setCurrentStartTime:v4];
  }
}

- (double)totalElapsedTimeAtTime:(id)a3
{
  v4 = a3;
  if (![(AVTUsageTrackingRecordTimedEvent *)self paused])
  {
    [(AVTUsageTrackingRecordTimedEvent *)self pauseAtTime:v4];
  }

  [(AVTUsageTrackingRecordTimedEvent *)self totalTime];
  v6 = v5;

  return v6;
}

@end