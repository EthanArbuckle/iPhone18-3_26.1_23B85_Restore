@interface AVRouteDetectorCoordinator
+ (BOOL)multipleRoutesDetected;
+ (id)routeDetectorCoordinatorQueue;
+ (id)sharedSystemRouteDetector;
+ (void)beginDetectingRoutes;
+ (void)endDetectingRoutes;
+ (void)setMultipleRoutesDetected:(BOOL)detected;
+ (void)updateMultipleRoutesDetected;
- (BOOL)multipleRoutesDetected;
- (void)dealloc;
- (void)setRouteDetectionEnabled:(BOOL)enabled;
@end

@implementation AVRouteDetectorCoordinator

- (void)dealloc
{
  [(AVRouteDetectorCoordinator *)self setRouteDetectionEnabled:0];
  v3.receiver = self;
  v3.super_class = AVRouteDetectorCoordinator;
  [(AVRouteDetectorCoordinator *)&v3 dealloc];
}

- (BOOL)multipleRoutesDetected
{
  v2 = objc_opt_class();

  return [v2 multipleRoutesDetected];
}

- (void)setRouteDetectionEnabled:(BOOL)enabled
{
  if (self->_routeDetectionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_routeDetectionEnabled = enabled;
    v4 = objc_opt_class();
    if (enabledCopy)
    {

      [v4 beginDetectingRoutes];
    }

    else
    {

      [v4 endDetectingRoutes];
    }
  }
}

+ (void)setMultipleRoutesDetected:(BOOL)detected
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVRouteDetectorCoordinator_setMultipleRoutesDetected___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  detectedCopy = detected;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__AVRouteDetectorCoordinator_setMultipleRoutesDetected___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) != AVRouteDetectorCoordinatorMultipleRoutesDetected)
  {
    AVRouteDetectorCoordinatorMultipleRoutesDetected = *(a1 + 32);
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"AVRouteDetectorCoordinatorMultipleRoutesDetectedDidChangeNotification" object:0];
  }
}

+ (BOOL)multipleRoutesDetected
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v2 = _AVLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_18B49C000, v2, OS_LOG_TYPE_ERROR, "Only access this property on the main queue!", v4, 2u);
    }
  }

  return AVRouteDetectorCoordinatorMultipleRoutesDetected;
}

+ (void)updateMultipleRoutesDetected
{
  routeDetectorCoordinatorQueue = [self routeDetectorCoordinatorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AVRouteDetectorCoordinator_updateMultipleRoutesDetected__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(routeDetectorCoordinatorQueue, block);
}

void __58__AVRouteDetectorCoordinator_updateMultipleRoutesDetected__block_invoke(uint64_t a1)
{
  if (AVRouteDetectorCoordinatorBeginDetectingRoutesCount >= 1)
  {
    v2 = *(a1 + 32);
    v3 = [v2 sharedSystemRouteDetector];
    [v2 setMultipleRoutesDetected:{objc_msgSend(v3, "multipleRoutesDetected")}];
  }
}

+ (void)endDetectingRoutes
{
  routeDetectorCoordinatorQueue = [self routeDetectorCoordinatorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVRouteDetectorCoordinator_endDetectingRoutes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(routeDetectorCoordinatorQueue, block);
}

void __48__AVRouteDetectorCoordinator_endDetectingRoutes__block_invoke(uint64_t a1)
{
  if (!--AVRouteDetectorCoordinatorBeginDetectingRoutesCount)
  {
    v2 = [*(a1 + 32) sharedSystemRouteDetector];
    [v2 setRouteDetectionEnabled:0];
  }
}

+ (void)beginDetectingRoutes
{
  routeDetectorCoordinatorQueue = [self routeDetectorCoordinatorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVRouteDetectorCoordinator_beginDetectingRoutes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(routeDetectorCoordinatorQueue, block);
}

void __50__AVRouteDetectorCoordinator_beginDetectingRoutes__block_invoke(uint64_t a1)
{
  if (!AVRouteDetectorCoordinatorBeginDetectingRoutesCount++)
  {
    v3 = [*(a1 + 32) sharedSystemRouteDetector];
    [v3 setRouteDetectionEnabled:1];
  }
}

+ (id)sharedSystemRouteDetector
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AVRouteDetectorCoordinator_sharedSystemRouteDetector__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSystemRouteDetector_onceToken != -1)
  {
    dispatch_once(&sharedSystemRouteDetector_onceToken, block);
  }

  v2 = sharedSystemRouteDetector_sharedSystemRouteDetector;

  return v2;
}

void __55__AVRouteDetectorCoordinator_sharedSystemRouteDetector__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6988118]);
  v3 = sharedSystemRouteDetector_sharedSystemRouteDetector;
  sharedSystemRouteDetector_sharedSystemRouteDetector = v2;

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E6987AF0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AVRouteDetectorCoordinator_sharedSystemRouteDetector__block_invoke_2;
  v7[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  v7[4] = *(a1 + 32);
  v6 = [v4 addObserverForName:v5 object:sharedSystemRouteDetector_sharedSystemRouteDetector queue:0 usingBlock:v7];
}

+ (id)routeDetectorCoordinatorQueue
{
  if (routeDetectorCoordinatorQueue_onceToken != -1)
  {
    dispatch_once(&routeDetectorCoordinatorQueue_onceToken, &__block_literal_global_189);
  }

  v3 = routeDetectorCoordinatorQueue_routeDetectorCoordinatorQueue;

  return v3;
}

void __59__AVRouteDetectorCoordinator_routeDetectorCoordinatorQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.avkit.routeDetectorCoordinatorQueue", v2);
  v1 = routeDetectorCoordinatorQueue_routeDetectorCoordinatorQueue;
  routeDetectorCoordinatorQueue_routeDetectorCoordinatorQueue = v0;
}

@end