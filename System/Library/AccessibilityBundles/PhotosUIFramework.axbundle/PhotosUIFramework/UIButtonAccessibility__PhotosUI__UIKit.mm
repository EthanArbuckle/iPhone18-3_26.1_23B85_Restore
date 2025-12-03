@interface UIButtonAccessibility__PhotosUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIButtonAccessibility__PhotosUI__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUPhotoEditToolPickerController"];
  [validationsCopy validateClass:@"PUPhotoEditToolPickerController" hasInstanceMethod:@"selectedToolTag" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v11 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 imageForState:0];

  accessibilityIdentifier = [v4 accessibilityIdentifier];
  if ([accessibilityIdentifier hasPrefix:@"PUCropTool"])
  {
    v6 = @"crop.tool";
LABEL_33:
    accessibilityLabel = accessibilityPULocalizedString(v6);
    goto LABEL_34;
  }

  if ([accessibilityIdentifier hasPrefix:@"PUFiltersTool"])
  {
    v6 = @"filters.tool";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PUAdjustmentsTool"])
  {
    v6 = @"adjustments.tool";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PULivePhotoTool"])
  {
    v6 = @"edit.live.photo.tool";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PUVideoTool"])
  {
    v6 = @"edit.video.tool";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PUPortraitTool"])
  {
    v6 = @"edit.portrait.tool";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PUAdjustmentsListButton"])
  {
    v6 = @"adjustments.list";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PUCropRotate"])
  {
    v6 = @"crop.rotate";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PUCropFlip"])
  {
    v6 = @"crop.flip";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PUCropAspectRatio"])
  {
    v6 = @"crop.aspectratio";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PUAdjustmentsModeCollapse"])
  {
    v6 = @"collapse.adjustments";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PUAdjustmentsModeExpand"])
  {
    v6 = @"expand.adjustments";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PURedEyeTool"])
  {
    v6 = @"redeye.tool";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"PURedEyeTool-Selected"])
  {
    v6 = @"redeye.tool.selected";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"person.fill"])
  {
    v6 = @"personal.library";
    goto LABEL_33;
  }

  if ([accessibilityIdentifier hasPrefix:@"person.2.fill"])
  {
    v6 = @"shared.library";
    goto LABEL_33;
  }

  v10.receiver = self;
  v10.super_class = UIButtonAccessibility__PhotosUI__UIKit;
  accessibilityLabel = [(UIButtonAccessibility__PhotosUI__UIKit *)&v10 accessibilityLabel];
LABEL_34:
  v8 = accessibilityLabel;

  return v8;
}

- (id)accessibilityHint
{
  v16 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 imageForState:0];

  accessibilityIdentifier = [v4 accessibilityIdentifier];
  v6 = [accessibilityIdentifier hasPrefix:@"PUAdjustmentsListButton"];

  if (v6)
  {
    v7 = @"adjustments.list.hint";
LABEL_7:
    accessibilityHint = accessibilityPULocalizedString(v7);
    goto LABEL_8;
  }

  accessibilityIdentifier2 = [v4 accessibilityIdentifier];
  v9 = [accessibilityIdentifier2 hasPrefix:@"PUCropRotate"];

  if (v9)
  {
    v7 = @"crop.rotate.hint";
    goto LABEL_7;
  }

  accessibilityIdentifier3 = [v4 accessibilityIdentifier];
  v11 = [accessibilityIdentifier3 hasPrefix:@"PUCropFlip"];

  if (v11)
  {
    v7 = @"crop.flip.hint";
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = UIButtonAccessibility__PhotosUI__UIKit;
  accessibilityHint = [(UIButtonAccessibility__PhotosUI__UIKit *)&v15 accessibilityHint];
LABEL_8:
  v13 = accessibilityHint;

  return v13;
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = UIButtonAccessibility__PhotosUI__UIKit;
  accessibilityTraits = [(UIButtonAccessibility__PhotosUI__UIKit *)&v10 accessibilityTraits];
  v4 = [(UIButtonAccessibility__PhotosUI__UIKit *)self _accessibilityFindAncestor:&__block_literal_global_3 startWithSelf:0];
  v5 = v4;
  if (v4)
  {
    _accessibilityViewController = [v4 _accessibilityViewController];
    if (_accessibilityViewController)
    {
      NSClassFromString(&cfstr_Puphotoedittoo_3.isa);
      if (objc_opt_isKindOfClass())
      {
        v7 = [(UIButtonAccessibility__PhotosUI__UIKit *)self safeValueForKey:@"tag"];
        v8 = [_accessibilityViewController safeValueForKey:@"selectedToolTag"];

        if (v7 == v8)
        {
          accessibilityTraits |= *MEMORY[0x29EDC7FC0];
        }

        else
        {
          accessibilityTraits &= ~*MEMORY[0x29EDC7FC0];
        }
      }
    }
  }

  return accessibilityTraits;
}

@end