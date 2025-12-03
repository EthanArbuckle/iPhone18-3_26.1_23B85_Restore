@interface PUCropToolControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axRotationLabel:(int64_t)label;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_aspectButtonTapped:(id)tapped;
- (void)_axAnnounceFlipOrRotateOrientation;
- (void)_flipButtonTapped:(id)tapped;
- (void)_rotateButtonTapped:(id)tapped;
- (void)_userChangedAspectRatioLocked:(BOOL)locked;
- (void)cropAspectFlipperView:(id)view cropOrientationSelected:(int64_t)selected;
- (void)viewDidLoad;
@end

@implementation PUCropToolControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"rotateButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"autoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"flipButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"_rotateButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"_flipButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"_aspectButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"aspectButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"geometry" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PLImageGeometry" hasInstanceMethod:@"userOrientation" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"cropAspectFlipperView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"cropAspectFlipperView:cropOrientationSelected:" withFullSignature:{"v", "@", "q", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"autoButtonMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"cropAspect" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropAspect" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropAspect" hasInstanceMethod:@"width" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PUCropAspect" hasInstanceMethod:@"height" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"cropAspectViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"_userChangedAspectRatioLocked:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"cropAspect" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropAspect" hasInstanceMethod:@"isFreeformCrop" withFullSignature:{"B", 0}];
}

- (id)_axRotationLabel:(int64_t)label
{
  v3 = 0;
  if (label > 4)
  {
    if (label > 6)
    {
      if (label == 7)
      {
        v4 = @"crop.rotate.transverse";
        goto LABEL_19;
      }

      if (label != 8)
      {
        goto LABEL_20;
      }

      v5 = MEMORY[0x29EDBA0F8];
      v6 = accessibilityPULocalizedString(@"crop.rotate.degrees");
      v7 = 270;
    }

    else
    {
      if (label == 5)
      {
        v4 = @"crop.rotate.transpose";
        goto LABEL_19;
      }

      v5 = MEMORY[0x29EDBA0F8];
      v6 = accessibilityPULocalizedString(@"crop.rotate.degrees");
      v7 = 90;
    }

LABEL_17:
    v3 = [v5 localizedStringWithFormat:v6, v7];

    goto LABEL_20;
  }

  if (label <= 2)
  {
    if (label == 1)
    {
      v4 = @"crop.rotate.normal";
    }

    else
    {
      if (label != 2)
      {
        goto LABEL_20;
      }

      v4 = @"crop.flip.horizontal";
    }

    goto LABEL_19;
  }

  if (label == 3)
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityPULocalizedString(@"crop.rotate.degrees");
    v7 = 180;
    goto LABEL_17;
  }

  v4 = @"crop.flip.vertical";
LABEL_19:
  v3 = accessibilityPULocalizedString(v4);
LABEL_20:

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v48.receiver = self;
  v48.super_class = PUCropToolControllerAccessibility;
  [(PUCropToolControllerAccessibility *)&v48 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  objc_opt_class();
  v3 = [(PUCropToolControllerAccessibility *)self safeValueForKey:@"autoButton"];
  v4 = __UIAccessibilityCastAsClass();

  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 3221225472;
  v45[2] = __79__PUCropToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v45[3] = &unk_29F2E8158;
  objc_copyWeak(&v46, &location);
  [v4 _setAccessibilityLabelBlock:v45];
  objc_opt_class();
  v5 = [(PUCropToolControllerAccessibility *)self safeValueForKey:@"rotateButton"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 _setAccessibilityLabelBlock:&__block_literal_global_14];
  LOBYTE(v39) = 0;
  objc_opt_class();
  v7 = [(PUCropToolControllerAccessibility *)self safeValueForKey:@"aspectButton"];
  v8 = __UIAccessibilityCastAsClass();

  [v8 _setAccessibilityLabelBlock:&__block_literal_global_578];
  v9 = [(PUCropToolControllerAccessibility *)self safeValueForKey:@"cropAspect"];
  v10 = v9;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__7;
  v43 = __Block_byref_object_dispose__7;
  v44 = 0;
  if (v9)
  {
    v11 = [v9 safeStringForKey:@"localizedName"];
    v12 = v40[5];
    v40[5] = v11;

    v13 = v40[5];
    decimalDigitCharacterSet = [MEMORY[0x29EDB9F50] decimalDigitCharacterSet];
    v15 = [v13 rangeOfCharacterFromSet:decimalDigitCharacterSet];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    [v10 safeCGFloatForKey:@"width"];
    v17 = v16;
    [v10 safeCGFloatForKey:@"height"];
    v19 = v18;
    v20 = MEMORY[0x29EDBA0F8];
    v21 = accessibilityPULocalizedString(@"aspect.ratio.value");
    v22 = [v20 stringWithFormat:v21, v17, v19];
    v23 = v40[5];
    v40[5] = v22;
  }

  else
  {
    v24 = accessibilityPULocalizedString(@"aspect.ratio.freeform");
    v21 = v40[5];
    v40[5] = v24;
  }

LABEL_6:
  v38[0] = MEMORY[0x29EDCA5F8];
  v38[1] = 3221225472;
  v38[2] = __79__PUCropToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_589;
  v38[3] = &unk_29F2E8640;
  v38[4] = &v39;
  [v8 _setAccessibilityValueBlock:v38];
  v25 = [(PUCropToolControllerAccessibility *)self safeValueForKey:@"cropAspectViewController"];
  if (v25)
  {
    v26 = @"crop.aspectratio.hint.dismiss";
  }

  else
  {
    v26 = @"crop.aspectratio.hint";
  }

  v27 = accessibilityPULocalizedString(v26);

  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 3221225472;
  v36[2] = __79__PUCropToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2_596;
  v36[3] = &unk_29F2E8308;
  v28 = v27;
  v37 = v28;
  [v8 _setAccessibilityHintBlock:v36];
  objc_opt_class();
  v29 = [(PUCropToolControllerAccessibility *)self safeValueForKey:@"flipButton"];
  v30 = __UIAccessibilityCastAsClass();

  [v30 _setAccessibilityLabelBlock:&__block_literal_global_599];
  v35 = 0;
  objc_opt_class();
  v31 = [(PUCropToolControllerAccessibility *)self safeValueForKey:@"aspectRatioLockButton"];
  v32 = __UIAccessibilityCastAsClass();

  [v32 _setAccessibilityLabelBlock:&__block_literal_global_607];
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3221225472;
  v33[2] = __79__PUCropToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
  v33[3] = &unk_29F2E8668;
  objc_copyWeak(&v34, &location);
  [v32 _setIsAccessibilityElementBlock:v33];
  [v32 _setAccessibilityTraitsBlock:&__block_literal_global_614];
  objc_destroyWeak(&v34);

  _Block_object_dispose(&v39, 8);
  objc_destroyWeak(&v46);

  objc_destroyWeak(&location);
}

id __79__PUCropToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeIntegerForKey:@"autoButtonMode"];

  if (v2 == 1)
  {
    v3 = @"crop.auto";
    goto LABEL_5;
  }

  if (v2 == 3)
  {
    v3 = @"crop.reset";
LABEL_5:
    v4 = accessibilityPULocalizedString(v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

uint64_t __79__PUCropToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"cropAspect"];

  if (v2)
  {
    v3 = [v2 safeBoolForKey:@"isFreeformCrop"] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUCropToolControllerAccessibility;
  [(PUCropToolControllerAccessibility *)&v3 viewDidLoad];
  [(PUCropToolControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_rotateButtonTapped:(id)tapped
{
  v6.receiver = self;
  v6.super_class = PUCropToolControllerAccessibility;
  [(PUCropToolControllerAccessibility *)&v6 _rotateButtonTapped:tapped];
  v4 = *MEMORY[0x29EDC7F10];
  v5 = [(PUCropToolControllerAccessibility *)self safeValueForKey:@"_rotateButton"];
  UIAccessibilityPostNotification(v4, v5);

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_flipButtonTapped:(id)tapped
{
  v6.receiver = self;
  v6.super_class = PUCropToolControllerAccessibility;
  [(PUCropToolControllerAccessibility *)&v6 _flipButtonTapped:tapped];
  v4 = *MEMORY[0x29EDC7F10];
  v5 = [(PUCropToolControllerAccessibility *)self safeValueForKey:@"_flipButton"];
  UIAccessibilityPostNotification(v4, v5);

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_aspectButtonTapped:(id)tapped
{
  v4.receiver = self;
  v4.super_class = PUCropToolControllerAccessibility;
  [(PUCropToolControllerAccessibility *)&v4 _aspectButtonTapped:tapped];
  AXPerformBlockOnMainThreadAfterDelay();
  [(PUCropToolControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

void __57__PUCropToolControllerAccessibility__aspectButtonTapped___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F10];
  v2 = [*(a1 + 32) safeValueForKey:@"cropAspectFlipperView"];
  UIAccessibilityPostNotification(v1, v2);
}

- (void)_axAnnounceFlipOrRotateOrientation
{
  v3 = [(PUCropToolControllerAccessibility *)self safeValueForKey:@"geometry"];
  v4 = __UIAccessibilitySafeClass();

  v5 = -[PUCropToolControllerAccessibility _axRotationLabel:](self, "_axRotationLabel:", [v4 safeIntegerForKey:@"userOrientation"]);
  UIAccessibilitySpeak();
}

- (void)cropAspectFlipperView:(id)view cropOrientationSelected:(int64_t)selected
{
  v5.receiver = self;
  v5.super_class = PUCropToolControllerAccessibility;
  [(PUCropToolControllerAccessibility *)&v5 cropAspectFlipperView:view cropOrientationSelected:selected];
  [(PUCropToolControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_userChangedAspectRatioLocked:(BOOL)locked
{
  lockedCopy = locked;
  v6.receiver = self;
  v6.super_class = PUCropToolControllerAccessibility;
  [(PUCropToolControllerAccessibility *)&v6 _userChangedAspectRatioLocked:?];
  if (lockedCopy)
  {
    v4 = @"photoedit.crop.aspect.ratio.locked";
  }

  else
  {
    v4 = @"photoedit.crop.aspect.ratio.unlocked";
  }

  v5 = accessibilityPULocalizedString(v4);
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

@end