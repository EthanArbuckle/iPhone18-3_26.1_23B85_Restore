@interface CAMMotionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axDoMotionUpdate:(id)a3;
- (void)_handleLevelMotionUpdate:(id)a3 error:(id)a4;
- (void)axStartInternalMotionManagerIfNecessary;
- (void)axStopInternalMotionManager;
@end

@implementation CAMMotionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMMotionController" hasInstanceMethod:@"_attitudeAlignmentMotionManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMMotionController" hasInstanceMethod:@"captureOrientation" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMMotionController" hasInstanceMethod:@"_handleLevelMotionUpdate:error:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_handleLevelMotionUpdate:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = CAMMotionControllerAccessibility;
  [(CAMMotionControllerAccessibility *)&v10 _handleLevelMotionUpdate:v6 error:v7];
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
    v5 = [(CAMMotionControllerAccessibility *)self _axInternalMotionManagerQueue];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x29EDBA088]);
      [(CAMMotionControllerAccessibility *)self _axSetInternalMotionManagerQueue:v5];
    }

    v6 = [(CAMMotionControllerAccessibility *)self _axInternalMotionManager];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x29EDB93C0]);
      [v6 setDeviceMotionUpdateInterval:0.1];
      [(CAMMotionControllerAccessibility *)self _axSetInternalMotionManager:v6];
    }

    if ([v6 isDeviceMotionAvailable] && (objc_msgSend(v6, "isDeviceMotionActive") & 1) == 0)
    {
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x29EDCA5F8];
      v7[1] = 3221225472;
      v7[2] = __75__CAMMotionControllerAccessibility_axStartInternalMotionManagerIfNecessary__block_invoke;
      v7[3] = &unk_29F2AD490;
      objc_copyWeak(&v9, &location);
      v8 = v6;
      [v8 startDeviceMotionUpdatesToQueue:v5 withHandler:v7];

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
  v2 = [(CAMMotionControllerAccessibility *)self _axInternalMotionManager];
  [v2 stopDeviceMotionUpdates];
}

- (void)_axDoMotionUpdate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if ([v4 isDeviceMotionAvailable])
    {
      v5 = [v8 deviceMotion];
      v6 = [(CAMMotionControllerAccessibility *)self safeIntegerForKey:@"captureOrientation"];
      v7 = +[AXCameraVisionEngine sharedEngine];
      [v7 motionManagerDidUpdateDeviceMotion:v5 captureOrientation:v6];
    }
  }

  MEMORY[0x2A1C71028]();
}

@end