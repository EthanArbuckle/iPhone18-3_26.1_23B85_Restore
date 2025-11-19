@interface MSStopwatchLap
- (MSStopwatchLap)initWithLapTime:(unint64_t)a3 andName:(id)a4;
@end

@implementation MSStopwatchLap

- (MSStopwatchLap)initWithLapTime:(unint64_t)a3 andName:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MSStopwatchLap;
  v7 = [(MSStopwatchLap *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MSStopwatchLap *)v7 setName:v6];
    [(MSStopwatchLap *)v8 setLapTime:a3];
  }

  return v8;
}

@end