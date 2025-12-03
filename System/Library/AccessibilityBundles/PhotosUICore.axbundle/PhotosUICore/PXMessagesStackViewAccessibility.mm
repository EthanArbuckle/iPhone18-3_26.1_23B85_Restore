@interface PXMessagesStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
- (int64_t)_accessibilityPlaybackStyle;
- (unint64_t)_accessibilityCurrentIndex;
@end

@implementation PXMessagesStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXMessagesStackPlaybackControlView"];
  [validationsCopy validateClass:@"PXBaseMessagesStackView" hasInstanceMethod:@"layout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXMessagesStackView" isKindOfClass:@"PXBaseMessagesStackView"];
  [validationsCopy validateClass:@"PXMessagesStackView" hasInstanceMethod:@"currentAssetReference" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXMessagesStackItemsLayout" hasInstanceMethod:@"primaryItemIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PXAssetReference" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXMessagesStackItemsLayout" hasInstanceMethod:@"stackedItemsCount" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"PXMessagesStackPlaybackControlView" hasInstanceVariable:@"_button" withType:"_PXMessagesStackPlayButton"];
}

- (id)accessibilityValue
{
  accessibilityUserDefinedValue = [(PXMessagesStackViewAccessibility *)self accessibilityUserDefinedValue];

  if (accessibilityUserDefinedValue)
  {
    accessibilityUserDefinedValue2 = [(PXMessagesStackViewAccessibility *)self accessibilityUserDefinedValue];
  }

  else
  {
    v5 = [(PXMessagesStackViewAccessibility *)self _accessibilityCurrentIndex]+ 1;
    v6 = [(PXMessagesStackViewAccessibility *)self safeValueForKey:@"layout"];
    v7 = [v6 safeUnsignedIntegerForKey:@"stackedItemsCount"];

    if ([(PXMessagesStackViewAccessibility *)self _accessibilityPlaybackStyle]== 4)
    {
      v8 = @"photo.label.type.video";
    }

    else
    {
      v8 = @"photo.label.type.image";
    }

    v9 = accessibilityPhotoLibraryServicesLocalizedString(v8);
    v10 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityPhotosUICoreLocalizedString(@"messages.attachment.stack.view.format");
    v13 = [v10 localizedStringWithFormat:v11, v5, v7];
    accessibilityUserDefinedValue2 = __UIAXStringForVariables();
  }

  return accessibilityUserDefinedValue2;
}

uint64_t __58__PXMessagesStackViewAccessibility_accessibilityIncrement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _accessibilityCurrentIndex] + 1;

  return [v1 scrollToIndex:v2 animated:1];
}

uint64_t __58__PXMessagesStackViewAccessibility_accessibilityDecrement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _accessibilityCurrentIndex] - 1;

  return [v1 scrollToIndex:v2 animated:1];
}

- (CGPoint)accessibilityActivationPoint
{
  v12.receiver = self;
  v12.super_class = PXMessagesStackViewAccessibility;
  [(PXMessagesStackViewAccessibility *)&v12 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;
  if ([(PXMessagesStackViewAccessibility *)self _accessibilityPlaybackStyle]== 4)
  {
    [(PXMessagesStackViewAccessibility *)self accessibilityFrame];
    v8 = (v6 - v7) * 0.5;
    [(PXMessagesStackViewAccessibility *)self accessibilityFrame];
    v6 = v9 + v8;
  }

  v10 = v4;
  v11 = v6;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)accessibilityCustomActions
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x29EDC78E0]);
  v3 = accessibilityPhotosUICoreLocalizedString(@"memory.video.play");
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __62__PXMessagesStackViewAccessibility_accessibilityCustomActions__block_invoke;
  v7[3] = &unk_29F2E62E8;
  objc_copyWeak(&v8, &location);
  v4 = [v2 initWithName:v3 actionHandler:v7];

  v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v4}];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

uint64_t __62__PXMessagesStackViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _accessibilityDescendantOfType:MEMORY[0x29C2E6930](@"PXMessagesStackPlaybackControlView")];

  v6 = [v5 safeUIViewForKey:@"_button"];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9 = v5;
  v10 = v6;
  AXPerformSafeBlock();
  v7 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __62__PXMessagesStackViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) frame];
  AX_CGRectGetCenter();
  result = [v2 handleTapAtPoint:?];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)_accessibilityPlaybackStyle
{
  v2 = [(PXMessagesStackViewAccessibility *)self safeValueForKeyPath:@"currentAssetReference.asset"];
  v3 = [v2 safeIntegerForKey:@"playbackStyle"];

  return v3;
}

- (unint64_t)_accessibilityCurrentIndex
{
  v2 = [(PXMessagesStackViewAccessibility *)self safeValueForKey:@"layout"];
  v3 = [v2 safeIntegerForKey:@"currentIndex"];

  return v3;
}

@end