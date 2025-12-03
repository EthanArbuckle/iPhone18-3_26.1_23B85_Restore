@interface ClockAngelUtilities
+ (void)updateTimerWithID:(id)d toState:(unint64_t)state withManager:(id)manager;
@end

@implementation ClockAngelUtilities

+ (void)updateTimerWithID:(id)d toState:(unint64_t)state withManager:(id)manager
{
  dCopy = d;
  managerCopy = manager;
  timers = [managerCopy timers];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000305C;
  v17[3] = &unk_1000FF5C0;
  v18 = dCopy;
  v10 = dCopy;
  v11 = [timers flatMap:v17];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003164;
  v14[3] = &unk_1000FF5E8;
  v15 = managerCopy;
  stateCopy = state;
  v12 = managerCopy;
  v13 = [v11 addSuccessBlock:v14];
}

@end