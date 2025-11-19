@interface DurationTracker
- (DurationTracker)init;
- (unint64_t)getTotalDurationAndResetAtTimestamp:(unint64_t)a3;
- (void)hasBecomeActiveAtTimestamp:(unint64_t)a3;
- (void)hasBecomeInactiveAtTimestamp:(unint64_t)a3;
@end

@implementation DurationTracker

- (DurationTracker)init
{
  v6.receiver = self;
  v6.super_class = DurationTracker;
  v2 = [(DurationTracker *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(DurationTracker *)v2 setStartTimestamp:0];
    [(DurationTracker *)v3 setTotalDuration:0];
    v4 = v3;
  }

  return v3;
}

- (void)hasBecomeActiveAtTimestamp:(unint64_t)a3
{
  if ([(DurationTracker *)self startTimestamp])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_100203738();
    }
  }

  else
  {

    [(DurationTracker *)self setStartTimestamp:a3];
  }
}

- (void)hasBecomeInactiveAtTimestamp:(unint64_t)a3
{
  v5 = [(DurationTracker *)self startTimestamp];
  if (v5)
  {
    v6 = a3 >= v5;
    v7 = a3 - v5;
    if (v6)
    {
      [(DurationTracker *)self setTotalDuration:[(DurationTracker *)self totalDuration]+ v7];
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_100203774();
    }

    [(DurationTracker *)self setStartTimestamp:0];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1002037B0();
  }
}

- (unint64_t)getTotalDurationAndResetAtTimestamp:(unint64_t)a3
{
  v5 = [(DurationTracker *)self startTimestamp];
  v6 = [(DurationTracker *)self totalDuration];
  [(DurationTracker *)self setTotalDuration:0];
  if (v5)
  {
    [(DurationTracker *)self setStartTimestamp:a3];
    if (a3 >= v5)
    {
      v6 += a3 - v5;
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1002037EC();
    }
  }

  return v6;
}

@end