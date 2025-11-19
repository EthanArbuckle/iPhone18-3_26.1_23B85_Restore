@interface GCGameControllerActivationContext
- (GCGameControllerActivationContext)initWithPreviousApplication:(id)a3;
- (id)asBSActionWithResponder:(id)a3 error:(id *)a4;
@end

@implementation GCGameControllerActivationContext

- (GCGameControllerActivationContext)initWithPreviousApplication:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCGameControllerActivationContext;
  v3 = a3;
  v4 = [(GCGameControllerActivationContext *)&v8 init];
  v5 = [v3 copy];

  previousApplicationBundleID = v4->_previousApplicationBundleID;
  v4->_previousApplicationBundleID = v5;

  return v4;
}

- (id)asBSActionWithResponder:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (LoadGameControllerUIFramework(2) == 1)
  {
    v7 = [(GCGameControllerActivationContext *)self asBSActionWithResponder:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end