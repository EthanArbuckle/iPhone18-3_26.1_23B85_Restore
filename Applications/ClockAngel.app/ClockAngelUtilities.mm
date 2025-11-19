@interface ClockAngelUtilities
+ (void)updateTimerWithID:(id)a3 toState:(unint64_t)a4 withManager:(id)a5;
@end

@implementation ClockAngelUtilities

+ (void)updateTimerWithID:(id)a3 toState:(unint64_t)a4 withManager:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 timers];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000305C;
  v17[3] = &unk_1000FF5C0;
  v18 = v7;
  v10 = v7;
  v11 = [v9 flatMap:v17];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003164;
  v14[3] = &unk_1000FF5E8;
  v15 = v8;
  v16 = a4;
  v12 = v8;
  v13 = [v11 addSuccessBlock:v14];
}

@end