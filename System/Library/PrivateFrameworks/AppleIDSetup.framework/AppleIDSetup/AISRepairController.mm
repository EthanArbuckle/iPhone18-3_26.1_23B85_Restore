@interface AISRepairController
- (AISRepairController)initWithQueue:(id)a3;
- (void)generateSymptomReportWithContext:(id)a3 completionHandler:(id)a4;
- (void)repairWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation AISRepairController

- (AISRepairController)initWithQueue:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AISRepairController;
  v5 = [(AISRepairController *)&v13 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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

- (void)repairWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AISRepairController *)self implementation];
  [v8 repairWithContext:v7 completionHandler:v6];
}

- (void)generateSymptomReportWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AISRepairController *)self implementation];
  [v8 generateSymptomReportWithContext:v7 completionHandler:v6];
}

@end