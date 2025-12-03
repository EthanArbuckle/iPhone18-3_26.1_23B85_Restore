@interface CAMMotionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axDoMotionUpdate:(id)update;
- (void)_handleLevelMotionUpdate:(id)update error:(id)error;
- (void)axStartInternalMotionManagerIfNecessary;
- (void)axStopInternalMotionManager;
@end

@implementation CAMMotionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMMotionController" hasInstanceMethod:@"_attitudeAlignmentMotionManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMMotionController" hasInstanceMethod:@"captureOrientation" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMMotionController" hasInstanceMethod:@"_handleLevelMotionUpdate:error:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_handleLevelMotionUpdate:(id)update error:(id)error
{
  updateCopy = update;
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = CAMMotionControllerAccessibility;
  [(CAMMotionControllerAccessibility *)&v10 _handleLevelMotionUpdate:updateCopy error:errorCopy];
  objc_opt_class();
  v8 = [(CAMMotionControllerAccessibility *)self safeValueForKey:@"_attitudeAlignmentMotionManager"];
  v9 = __UIAccessibilityCastAsClass();

  if (v9)
  {
    [(CAMMotionControllerAccessibility *)self _axDoMotionUpdate:v9];
  }
}

- (void)axStartInternalMotionManagerIfNecessary
{
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(CAMMotionControllerAccessibility *)self safeValueForKey:@"_attitudeAlignmentMotionManager"];
  v4 = __UIAccessibilityCastAsClass();

  if (([v4 isDeviceMotionActive] & 1) == 0)
  {
    _axInternalMotionManagerQueue = [(CAMMotionControllerAccessibility *)self _axInternalMotionManagerQueue];
    if (!_axInternalMotionManagerQueue)
    {
      _axInternalMotionManagerQueue = objc_alloc_init(MEMORY[0x29EDBA088]);
      [(CAMMotionControllerAccessibility *)self _axSetInternalMotionManagerQueue:_axInternalMotionManagerQueue];
    }

    _axInternalMotionManager = [(CAMMotionControllerAccessibility *)self _axInternalMotionManager];
    if (!_axInternalMotionManager)
    {
      _axInternalMotionManager = objc_alloc_init(MEMORY[0x29EDB93C0]);
      [_axInternalMotionManager setDeviceMotionUpdateInterval:0.1];
      [(CAMMotionControllerAccessibility *)self _axSetInternalMotionManager:_axInternalMotionManager];
    }

    if ([_axInternalMotionManager isDeviceMotionAvailable] && (objc_msgSend(_axInternalMotionManager, "isDeviceMotionActive") & 1) == 0)
    {
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x29EDCA5F8];
      v7[1] = 3221225472;
      v7[2] = __75__CAMMotionControllerAccessibility_axStartInternalMotionManagerIfNecessary__block_invoke;
      v7[3] = &unk_29F2AD490;
      objc_copyWeak(&v9, &location);
      v8 = _axInternalMotionManager;
      [v8 startDeviceMotionUpdatesToQueue:_axInternalMotionManagerQueue withHandler:v7];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __75__CAMMotionControllerAccessibility_axStartInternalMotionManagerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _axDoMotionUpdate:*(a1 + 32)];
}

- (void)axStopInternalMotionManager
{
  _axInternalMotionManager = [(CAMMotionControllerAccessibility *)self _axInternalMotionManager];
  [_axInternalMotionManager stopDeviceMotionUpdates];
}

- (void)_axDoMotionUpdate:(id)update
{
  updateCopy = update;
  if (updateCopy)
  {
    v8 = updateCopy;
    if ([updateCopy isDeviceMotionAvailable])
    {
      deviceMotion = [v8 deviceMotion];
      v6 = [(CAMMotionControllerAccessibility *)self safeIntegerForKey:@"captureOrientation"];
      v7 = +[AXCameraVisionEngine sharedEngine];
      [v7 motionManagerDidUpdateDeviceMotion:deviceMotion captureOrientation:v6];
    }
  }

  MEMORY[0x2A1C71028]();
}

@end