@interface AXSDCustomDetectionController
+ (id)sharedInstance;
- (AXSDCustomDetectionController)init;
- (BOOL)containsCustomDetector:(id)detector;
@end

@implementation AXSDCustomDetectionController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[AXSDCustomDetectionController sharedInstance];
  }

  v3 = sharedInstance___SharedController_2;

  return v3;
}

uint64_t __47__AXSDCustomDetectionController_sharedInstance__block_invoke()
{
  sharedInstance___SharedController_2 = objc_alloc_init(AXSDCustomDetectionController);

  return MEMORY[0x2821F96F8]();
}

- (AXSDCustomDetectionController)init
{
  v8.receiver = self;
  v8.super_class = AXSDCustomDetectionController;
  v2 = [(AXSDCustomDetectionController *)&v8 init];
  if (v2)
  {
    v3 = AXIsSoundDetectionMedinaSupportEnabled();
    v4 = &off_278BDC9E0;
    if (!v3)
    {
      v4 = off_278BDC9D8;
    }

    v5 = objc_alloc_init(*v4);
    controller = v2->_controller;
    v2->_controller = v5;
  }

  return v2;
}

- (BOOL)containsCustomDetector:(id)detector
{
  controller = self->_controller;
  detectorCopy = detector;
  currentDetectionTypes = [(AXSDKShotControllerImplementation *)controller currentDetectionTypes];
  identifier = [detectorCopy identifier];

  LOBYTE(detectorCopy) = [currentDetectionTypes containsObject:identifier];
  return detectorCopy;
}

@end