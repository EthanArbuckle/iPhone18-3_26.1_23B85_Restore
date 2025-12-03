@interface AISSetupController
- (AISSetupController)initWithQueue:(id)queue;
- (void)setupWithContext:(id)context completionHandler:(id)handler;
@end

@implementation AISSetupController

- (AISSetupController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = AISSetupController;
  v5 = [(AISSetupController *)&v13 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = queueCopy;
      queue = v5->_queue;
      v5->_queue = v6;
    }

    else
    {
      v8 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85CD0];
      queue = v5->_queue;
      v5->_queue = v8;
    }

    v10 = [[__AISSetupController alloc] initWithQueue:v5->_queue];
    implementation = v5->_implementation;
    v5->_implementation = v10;
  }

  return v5;
}

- (void)setupWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  implementation = [(AISSetupController *)self implementation];
  [implementation setupWithContext:contextCopy completionHandler:handlerCopy];
}

@end