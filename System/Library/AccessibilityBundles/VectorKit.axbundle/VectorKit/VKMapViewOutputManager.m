@interface VKMapViewOutputManager
+ (id)sharedOutputManager;
- (VKMapViewOutputManager)init;
- (unint64_t)outputQueueCount;
- (void)_handleAccessibilityAnnouncementDidFinish:(id)a3;
- (void)clearOutputQueue;
- (void)dealloc;
- (void)queueOutput:(id)a3;
@end

@implementation VKMapViewOutputManager

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VKMapViewOutputManager;
  [(VKMapViewOutputManager *)&v4 dealloc];
}

- (VKMapViewOutputManager)init
{
  v6.receiver = self;
  v6.super_class = VKMapViewOutputManager;
  v2 = [(VKMapViewOutputManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    [(VKMapViewOutputManager *)v2 setOutputQueue:v3];

    v4 = [MEMORY[0x29EDBA068] defaultCenter];
    [v4 addObserver:v2 selector:sel__handleAccessibilityAnnouncementDidFinish_ name:*MEMORY[0x29EDC7E98] object:0];
  }

  return v2;
}

+ (id)sharedOutputManager
{
  if (+[VKMapViewOutputManager sharedOutputManager]::_OutputManagerOnceToken != -1)
  {
    +[VKMapViewOutputManager sharedOutputManager];
  }

  v3 = +[VKMapViewOutputManager sharedOutputManager]::_OutputManager;

  return v3;
}

void __45__VKMapViewOutputManager_sharedOutputManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = +[VKMapViewOutputManager sharedOutputManager]::_OutputManager;
  +[VKMapViewOutputManager sharedOutputManager]::_OutputManager = v0;
}

- (void)_handleAccessibilityAnnouncementDidFinish:(id)a3
{
  v4 = [(VKMapViewOutputManager *)self outputQueue];
  if ([v4 count])
  {
    v3 = [v4 lastObject];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v3);
    [v4 removeLastObject];
  }
}

- (void)clearOutputQueue
{
  v2 = [(VKMapViewOutputManager *)self outputQueue];
  [v2 removeAllObjects];
}

- (unint64_t)outputQueueCount
{
  v2 = [(VKMapViewOutputManager *)self outputQueue];
  v3 = [v2 count];

  return v3;
}

- (void)queueOutput:(id)a3
{
  argument = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(VKMapViewOutputManager *)self outputQueue];
    if ([v4 count])
    {
      [v4 insertObject:argument atIndex:0];
    }

    else
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
    }
  }
}

@end