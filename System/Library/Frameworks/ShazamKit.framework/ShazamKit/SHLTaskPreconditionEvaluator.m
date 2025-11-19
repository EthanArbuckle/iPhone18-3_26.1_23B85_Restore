@interface SHLTaskPreconditionEvaluator
+ (void)evaluatePreconditions:(id)a3 withCompletion:(id)a4;
@end

@implementation SHLTaskPreconditionEvaluator

+ (void)evaluatePreconditions:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstObject];
  if (v8)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100031984;
    v10[3] = &unk_10007DC00;
    v12 = v7;
    v11 = v6;
    v13 = a1;
    [v8 evaluatePreconditionWithCompletion:v10];
  }

  else
  {
    v9 = +[SHLTaskPreconditionResult fulfilledResult];
    (*(v7 + 2))(v7, v9);
  }
}

@end