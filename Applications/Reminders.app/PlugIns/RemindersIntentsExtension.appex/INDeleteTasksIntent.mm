@interface INDeleteTasksIntent
- (BOOL)rem_all;
@end

@implementation INDeleteTasksIntent

- (BOOL)rem_all
{
  v2 = [(INDeleteTasksIntent *)self all];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end