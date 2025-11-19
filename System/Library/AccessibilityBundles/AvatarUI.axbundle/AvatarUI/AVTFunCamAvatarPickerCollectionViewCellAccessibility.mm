@interface AVTFunCamAvatarPickerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation AVTFunCamAvatarPickerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTFunCamAvatarPickerCollectionViewCell" hasInstanceMethod:@"accessoryButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTFunCamAvatarPickerCollectionViewCell" hasInstanceMethod:@"selectionVisible" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AVTFunCamAvatarPickerCollectionViewCellAccessibility;
  [(AVTFunCamAvatarPickerCollectionViewCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVTFunCamAvatarPickerCollectionViewCellAccessibility *)self safeValueForKey:@"accessoryButton"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(AVTFunCamAvatarPickerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"accessoryButton.titleLabel"];
  [v4 setIsAccessibilityElement:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AVTFunCamAvatarPickerCollectionViewCellAccessibility;
  [(AVTFunCamAvatarPickerCollectionViewCellAccessibility *)&v3 viewDidLoad];
  [(AVTFunCamAvatarPickerCollectionViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end