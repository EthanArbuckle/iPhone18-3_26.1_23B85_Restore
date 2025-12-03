@interface GCGameControllerActivationContext
- (GCGameControllerActivationContext)initWithPreviousApplication:(id)application;
- (id)asBSActionWithResponder:(id)responder error:(id *)error;
@end

@implementation GCGameControllerActivationContext

- (GCGameControllerActivationContext)initWithPreviousApplication:(id)application
{
  v8.receiver = self;
  v8.super_class = GCGameControllerActivationContext;
  applicationCopy = application;
  v4 = [(GCGameControllerActivationContext *)&v8 init];
  v5 = [applicationCopy copy];

  previousApplicationBundleID = v4->_previousApplicationBundleID;
  v4->_previousApplicationBundleID = v5;

  return v4;
}

- (id)asBSActionWithResponder:(id)responder error:(id *)error
{
  responderCopy = responder;
  if (LoadGameControllerUIFramework(2) == 1)
  {
    v7 = [(GCGameControllerActivationContext *)self asBSActionWithResponder:responderCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end