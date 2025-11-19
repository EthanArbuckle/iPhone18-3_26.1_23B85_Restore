@interface SHLCloudAccountStatusPrecondition
- (SHLCloudAccountStatusPrecondition)initWithContainer:(id)a3;
- (void)evaluatePreconditionWithCompletion:(id)a3;
@end

@implementation SHLCloudAccountStatusPrecondition

- (SHLCloudAccountStatusPrecondition)initWithContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHLCloudAccountStatusPrecondition;
  v6 = [(SHLCloudAccountStatusPrecondition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudContainer, a3);
  }

  return v7;
}

- (void)evaluatePreconditionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SHLCloudAccountStatusPrecondition *)self cloudContainer];
  v6 = [v5 container];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100032110;
  v8[3] = &unk_10007DC50;
  v9 = v4;
  v7 = v4;
  [v6 accountStatusWithCompletionHandler:v8];
}

@end