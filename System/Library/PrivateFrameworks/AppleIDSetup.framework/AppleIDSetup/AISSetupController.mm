@interface AISSetupController
- (AISSetupController)initWithQueue:(id)a3;
- (void)setupWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation AISSetupController

- (AISSetupController)initWithQueue:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AISSetupController;
  v5 = [(AISSetupController *)&v13 init];
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

    v10 = [[__AISSetupController alloc] initWithQueue:v5->_queue];
    implementation = v5->_implementation;
    v5->_implementation = v10;
  }

  return v5;
}

- (void)setupWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AISSetupController *)self implementation];
  [v8 setupWithContext:v7 completionHandler:v6];
}

@end