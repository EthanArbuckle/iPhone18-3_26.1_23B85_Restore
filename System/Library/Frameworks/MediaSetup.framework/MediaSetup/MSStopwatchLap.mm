@interface MSStopwatchLap
- (MSStopwatchLap)initWithLapTime:(unint64_t)time andName:(id)name;
@end

@implementation MSStopwatchLap

- (MSStopwatchLap)initWithLapTime:(unint64_t)time andName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = MSStopwatchLap;
  v7 = [(MSStopwatchLap *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MSStopwatchLap *)v7 setName:nameCopy];
    [(MSStopwatchLap *)v8 setLapTime:time];
  }

  return v8;
}

@end