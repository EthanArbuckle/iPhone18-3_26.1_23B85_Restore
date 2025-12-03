@interface SHLCloudEncryptionPrecondition
- (SHLCloudEncryptionPrecondition)initWithContainer:(id)container;
- (void)evaluatePreconditionWithCompletion:(id)completion;
@end

@implementation SHLCloudEncryptionPrecondition

- (SHLCloudEncryptionPrecondition)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = SHLCloudEncryptionPrecondition;
  v6 = [(SHLCloudEncryptionPrecondition *)&v9 init];
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
  cloudContainer = [(SHLCloudEncryptionPrecondition *)self cloudContainer];
  container = [cloudContainer container];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022840;
  v8[3] = &unk_10007D7F0;
  v9 = completionCopy;
  v7 = completionCopy;
  [container accountInfoWithCompletionHandler:v8];
}

@end