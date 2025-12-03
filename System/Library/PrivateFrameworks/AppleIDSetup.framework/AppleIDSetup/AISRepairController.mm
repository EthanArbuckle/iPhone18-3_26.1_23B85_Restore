@interface AISRepairController
- (AISRepairController)initWithQueue:(id)queue;
- (void)generateSymptomReportWithContext:(id)context completionHandler:(id)handler;
- (void)repairWithContext:(id)context completionHandler:(id)handler;
@end

@implementation AISRepairController

- (AISRepairController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = AISRepairController;
  v5 = [(AISRepairController *)&v13 init];
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

    v10 = [[__AISRepairController alloc] initWithQueue:v5->_queue];
    implementation = v5->_implementation;
    v5->_implementation = v10;
  }

  return v5;
}

- (void)repairWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  implementation = [(AISRepairController *)self implementation];
  [implementation repairWithContext:contextCopy completionHandler:handlerCopy];
}

- (void)generateSymptomReportWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  implementation = [(AISRepairController *)self implementation];
  [implementation generateSymptomReportWithContext:contextCopy completionHandler:handlerCopy];
}

@end