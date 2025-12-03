@interface SHLCloudAccountStatusPrecondition
- (SHLCloudAccountStatusPrecondition)initWithContainer:(id)container;
- (void)evaluatePreconditionWithCompletion:(id)completion;
@end

@implementation SHLCloudAccountStatusPrecondition

- (SHLCloudAccountStatusPrecondition)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = SHLCloudAccountStatusPrecondition;
  v6 = [(SHLCloudAccountStatusPrecondition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudContainer, container);
  }

  return v7;
}

- (void)evaluatePreconditionWithCompletion:(id)completion
{
  completionCopy = completion;
  cloudContainer = [(SHLCloudAccountStatusPrecondition *)self cloudContainer];
  container = [cloudContainer container];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100032110;
  v8[3] = &unk_10007DC50;
  v9 = completionCopy;
  v7 = completionCopy;
  [container accountStatusWithCompletionHandler:v8];
}

@end