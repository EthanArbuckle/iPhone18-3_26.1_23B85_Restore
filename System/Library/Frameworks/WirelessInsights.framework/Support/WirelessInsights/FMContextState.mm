@interface FMContextState
- (FMContextState)initWithStartTime:(id)time;
@end

@implementation FMContextState

- (FMContextState)initWithStartTime:(id)time
{
  timeCopy = time;
  v9.receiver = self;
  v9.super_class = FMContextState;
  v5 = [(FMContextState *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(FMContextState *)v5 setStartTime:timeCopy];
    v7 = v6;
  }

  return v6;
}

@end