@interface UIButtonAccessibility__PhotosUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIButtonAccessibility__PhotosUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUPhotoEditToolPickerController"];
  [v3 validateClass:@"PUPhotoEditToolPickerController" hasInstanceMethod:@"selectedToolTag" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v11 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 imageForState:0];

  v5 = [v4 accessibilityIdentifier];
  if ([v5 hasPrefix:@"PUCropTool"])
  {
    v6 = @"crop.tool";
LABEL_33:
    v7 = accessibilityPULocalizedString(v6);
    goto LABEL_34;
  }

  if ([v5 hasPrefix:@"PUFiltersTool"])
  {
    v6 = @"filters.tool";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PUAdjustmentsTool"])
  {
    v6 = @"adjustments.tool";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PULivePhotoTool"])
  {
    v6 = @"edit.live.photo.tool";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PUVideoTool"])
  {
    v6 = @"edit.video.tool";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PUPortraitTool"])
  {
    v6 = @"edit.portrait.tool";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PUAdjustmentsListButton"])
  {
    v6 = @"adjustments.list";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PUCropRotate"])
  {
    v6 = @"crop.rotate";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PUCropFlip"])
  {
    v6 = @"crop.flip";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PUCropAspectRatio"])
  {
    v6 = @"crop.aspectratio";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PUAdjustmentsModeCollapse"])
  {
    v6 = @"collapse.adjustments";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PUAdjustmentsModeExpand"])
  {
    v6 = @"expand.adjustments";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PURedEyeTool"])
  {
    v6 = @"redeye.tool";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"PURedEyeTool-Selected"])
  {
    v6 = @"redeye.tool.selected";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"person.fill"])
  {
    v6 = @"personal.library";
    goto LABEL_33;
  }

  if ([v5 hasPrefix:@"person.2.fill"])
  {
    v6 = @"shared.library";
    goto LABEL_33;
  }

  v10.receiver = self;
  v10.super_class = UIButtonAccessibility__PhotosUI__UIKit;
  v7 = [(UIButtonAccessibility__PhotosUI__UIKit *)&v10 accessibilityLabel];
LABEL_34:
  v8 = v7;

  return v8;
}

- (id)accessibilityHint
{
  v16 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 imageForState:0];

  v5 = [v4 accessibilityIdentifier];
  v6 = [v5 hasPrefix:@"PUAdjustmentsListButton"];

  if (v6)
  {
    v7 = @"adjustments.list.hint";
LABEL_7:
    v12 = accessibilityPULocalizedString(v7);
    goto LABEL_8;
  }

  v8 = [v4 accessibilityIdentifier];
  v9 = [v8 hasPrefix:@"PUCropRotate"];

  if (v9)
  {
    v7 = @"crop.rotate.hint";
    goto LABEL_7;
  }

  v10 = [v4 accessibilityIdentifier];
  v11 = [v10 hasPrefix:@"PUCropFlip"];

  if (v11)
  {
    v7 = @"crop.flip.hint";
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = UIButtonAccessibility__PhotosUI__UIKit;
  v12 = [(UIButtonAccessibility__PhotosUI__UIKit *)&v15 accessibilityHint];
LABEL_8:
  v13 = v12;

  return v13;
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = UIButtonAccessibility__PhotosUI__UIKit;
  v3 = [(UIButtonAccessibility__PhotosUI__UIKit *)&v10 accessibilityTraits];
  v4 = [(UIButtonAccessibility__PhotosUI__UIKit *)self _accessibilityFindAncestor:&__block_literal_global_3 startWithSelf:0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _accessibilityViewController];
    if (v6)
    {
      NSClassFromString(&cfstr_Puphotoedittoo_3.isa);
      if (objc_opt_isKindOfClass())
      {
        v7 = [(UIButtonAccessibility__PhotosUI__UIKit *)self safeValueForKey:@"tag"];
        v8 = [v6 safeValueForKey:@"selectedToolTag"];

        if (v7 == v8)
        {
          v3 |= *MEMORY[0x29EDC7FC0];
        }

        else
        {
          v3 &= ~*MEMORY[0x29EDC7FC0];
        }
      }
    }
  }

  return v3;
}

@end