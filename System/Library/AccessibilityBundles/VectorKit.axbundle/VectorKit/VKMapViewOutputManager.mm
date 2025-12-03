@interface VKMapViewOutputManager
+ (id)sharedOutputManager;
- (VKMapViewOutputManager)init;
- (unint64_t)outputQueueCount;
- (void)_handleAccessibilityAnnouncementDidFinish:(id)finish;
- (void)clearOutputQueue;
- (void)dealloc;
- (void)queueOutput:(id)output;
@end

@implementation VKMapViewOutputManager

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

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
    array = [MEMORY[0x29EDB8DE8] array];
    [(VKMapViewOutputManager *)v2 setOutputQueue:array];

    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleAccessibilityAnnouncementDidFinish_ name:*MEMORY[0x29EDC7E98] object:0];
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

- (void)_handleAccessibilityAnnouncementDidFinish:(id)finish
{
  outputQueue = [(VKMapViewOutputManager *)self outputQueue];
  if ([outputQueue count])
  {
    lastObject = [outputQueue lastObject];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], lastObject);
    [outputQueue removeLastObject];
  }
}

- (void)clearOutputQueue
{
  outputQueue = [(VKMapViewOutputManager *)self outputQueue];
  [outputQueue removeAllObjects];
}

- (unint64_t)outputQueueCount
{
  outputQueue = [(VKMapViewOutputManager *)self outputQueue];
  v3 = [outputQueue count];

  return v3;
}

- (void)queueOutput:(id)output
{
  argument = output;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    outputQueue = [(VKMapViewOutputManager *)self outputQueue];
    if ([outputQueue count])
    {
      [outputQueue insertObject:argument atIndex:0];
    }

    else
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
    }
  }
}

@end