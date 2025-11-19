@interface FMContextState
- (FMContextState)initWithStartTime:(id)a3;
@end

@implementation FMContextState

- (FMContextState)initWithStartTime:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMContextState;
  v5 = [(FMContextState *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(FMContextState *)v5 setStartTime:v4];
    v7 = v6;
  }

  return v6;
}

@end