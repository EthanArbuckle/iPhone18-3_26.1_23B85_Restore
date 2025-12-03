@interface BADoNotDisturbHelper
+ (void)fetchCurrentState:(id)state;
@end

@implementation BADoNotDisturbHelper

+ (void)fetchCurrentState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_35EC;
    block[3] = &unk_25ED10;
    v6 = stateCopy;
    dispatch_async(v4, block);
  }
}

@end