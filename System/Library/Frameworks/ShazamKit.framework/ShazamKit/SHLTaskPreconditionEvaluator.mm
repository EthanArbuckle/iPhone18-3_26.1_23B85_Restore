@interface SHLTaskPreconditionEvaluator
+ (void)evaluatePreconditions:(id)preconditions withCompletion:(id)completion;
@end

@implementation SHLTaskPreconditionEvaluator

+ (void)evaluatePreconditions:(id)preconditions withCompletion:(id)completion
{
  preconditionsCopy = preconditions;
  completionCopy = completion;
  firstObject = [preconditionsCopy firstObject];
  if (firstObject)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100031984;
    v10[3] = &unk_10007DC00;
    v12 = completionCopy;
    v11 = preconditionsCopy;
    selfCopy = self;
    [firstObject evaluatePreconditionWithCompletion:v10];
  }

  else
  {
    v9 = +[SHLTaskPreconditionResult fulfilledResult];
    (*(completionCopy + 2))(completionCopy, v9);
  }
}

@end