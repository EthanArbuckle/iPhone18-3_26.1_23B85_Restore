@interface CKNanoGroupComposeModelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateStickerViewModels;
- (void)_axAnnotateViewModels;
- (void)_axAnnotateWaveformViewModels;
- (void)configureStickerViewModel;
- (void)configureWaveFormViewModel;
- (void)transitionModelStateTo:(unint64_t)to;
@end

@implementation CKNanoGroupComposeModelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKNanoGroupComposeModel" hasInstanceMethod:@"transitionModelStateTo:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"CKNanoGroupComposeModel" hasInstanceMethod:@"disabledSendViewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKNanoGroupComposeModel" hasInstanceMethod:@"configureStickerViewModel" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKNanoGroupComposeModel" hasInstanceMethod:@"stickerViewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKNanoGroupComposeModel" hasInstanceMethod:@"sticker" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKNanoGroupComposeModel" hasInstanceMethod:@"waveFormViewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKNanoGroupComposeModel" hasInstanceMethod:@"configureWaveFormViewModel" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CKNanoGroupComposeModelAccessibility;
  [(CKNanoGroupComposeModelAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CKNanoGroupComposeModelAccessibility *)self _axAnnotateViewModels];
}

- (void)transitionModelStateTo:(unint64_t)to
{
  v4.receiver = self;
  v4.super_class = CKNanoGroupComposeModelAccessibility;
  [(CKNanoGroupComposeModelAccessibility *)&v4 transitionModelStateTo:to];
  [(CKNanoGroupComposeModelAccessibility *)self _axAnnotateViewModels];
}

- (void)configureStickerViewModel
{
  v3.receiver = self;
  v3.super_class = CKNanoGroupComposeModelAccessibility;
  [(CKNanoGroupComposeModelAccessibility *)&v3 configureStickerViewModel];
  [(CKNanoGroupComposeModelAccessibility *)self _axAnnotateStickerViewModels];
}

- (void)configureWaveFormViewModel
{
  v3.receiver = self;
  v3.super_class = CKNanoGroupComposeModelAccessibility;
  [(CKNanoGroupComposeModelAccessibility *)&v3 configureWaveFormViewModel];
  [(CKNanoGroupComposeModelAccessibility *)self _axAnnotateWaveformViewModels];
}

- (void)_axAnnotateViewModels
{
  v2 = [(CKNanoGroupComposeModelAccessibility *)self safeValueForKey:@"disabledSendViewModel"];
  [v2 setAccessibilityTraits:*MEMORY[0x29EDC7FA8]];
}

- (void)_axAnnotateStickerViewModels
{
  v3 = [(CKNanoGroupComposeModelAccessibility *)self safeValueForKey:@"sticker"];
  accessibilityLabel = [v3 accessibilityLabel];

  if (accessibilityLabel)
  {
    v4 = [(CKNanoGroupComposeModelAccessibility *)self safeValueForKey:@"stickerViewModel"];
    [v4 setAccessibilityLabel:accessibilityLabel];
  }
}

- (void)_axAnnotateWaveformViewModels
{
  v3 = [(CKNanoGroupComposeModelAccessibility *)self safeValueForKey:@"waveFormViewModel"];
  v2 = accessibilityLocalizedString(@"waveform.image");
  [v3 setAccessibilityLabel:v2];
}

@end