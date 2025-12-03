@interface AmbientCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)axSetHideOrDeleteButtonLabel:(id)label;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation AmbientCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PosterBoard.AmbientCollectionViewCell" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"PREditingHideButton"];
  [validationsCopy validateClass:@"PosterBoard.AmbientCollectionViewCell" hasSwiftField:@"hideOrDeleteButton" withSwiftType:"Optional<PREditingCloseBoxButton>"];
  [validationsCopy validateClass:@"PosterBoard.AmbientCollectionViewCell" hasSwiftField:@"editingButton" withSwiftType:"Optional<UIButton>"];
  [validationsCopy validateClass:@"PREditingHideButton"];
  [validationsCopy validateClass:@"PREditingHideButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"PosterBoard.AmbientCollectionViewCell" hasSwiftField:@"ambientPosterViewController" withSwiftType:"Optional<PRUISAmbientPosterViewController>"];
  [validationsCopy validateClass:@"PRUISAmbientPosterViewController" hasInstanceVariable:@"_configuration" withType:"PRSPosterConfiguration"];
  [validationsCopy validateClass:@"PRSPosterConfiguration" hasInstanceMethod:@"providerBundleIdentifier" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v29.receiver = self;
  v29.super_class = AmbientCollectionViewCellAccessibility;
  [(AmbientCollectionViewCellAccessibility *)&v29 _accessibilityLoadAccessibilityInformation];
  v3 = [(AmbientCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"hideOrDeleteButton"];
  objc_initWeak(&location, v3);
  objc_initWeak(&from, self);
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = __84__AmbientCollectionViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v24[3] = &unk_29F2EB3F0;
  objc_copyWeak(&v25, &from);
  objc_copyWeak(&v26, &location);
  [v3 _setAccessibilityLabelBlock:v24];
  v4 = [(AmbientCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"editingButton"];
  v5 = [(AmbientCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"ambientPosterViewController"];
  v6 = [v5 safeValueForKey:@"_configuration"];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = MEMORY[0x29EDCA5F8];
  v13 = 3221225472;
  v14 = __84__AmbientCollectionViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_323;
  v15 = &unk_29F2EB418;
  v17 = &v18;
  v7 = v6;
  v16 = v7;
  AXPerformSafeBlock();
  v8 = v19[5];

  _Block_object_dispose(&v18, 8);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __84__AmbientCollectionViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v10[3] = &unk_29F2EB440;
  v9 = v8;
  v11 = v9;
  [v4 setAccessibilityLabelBlock:v10];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

id __84__AmbientCollectionViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained axSetHideOrDeleteButtonLabel:v3];

  return v4;
}

uint64_t __84__AmbientCollectionViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_323(uint64_t a1)
{
  v2 = [*(a1 + 32) providerBundleIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

id __84__AmbientCollectionViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"])
  {
    v1 = @"people.picker";
  }

  else
  {
    v1 = @"standby.color.picker";
  }

  v2 = accessibilityLocalizedString(v1);

  return v2;
}

- (id)axSetHideOrDeleteButtonLabel:(id)label
{
  labelCopy = label;
  v5 = [(AmbientCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"posterModel"];
  v6 = [v5 safeSwiftStringForKey:@"localizedTitle"];

  MEMORY[0x29C2E7EC0](@"PREditingHideButton");
  isKindOfClass = objc_opt_isKindOfClass();
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_2A229E280;
  }

  if (isKindOfClass)
  {
    v9 = [labelCopy safeBoolForKey:@"isSelected"];
    v10 = MEMORY[0x29EDBA0F8];
    if (v9)
    {
      v11 = @"editing.unhide.button.label";
    }

    else
    {
      v11 = @"editing.hide.button.label";
    }
  }

  else
  {
    v10 = MEMORY[0x29EDBA0F8];
    v11 = @"editing.minus.close.button.label";
  }

  v12 = accessibilityLocalizedString(v11);
  v13 = [v10 localizedStringWithFormat:v12, v8];

  return v13;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AmbientCollectionViewCellAccessibility;
  [(AmbientCollectionViewCellAccessibility *)&v3 layoutSubviews];
  [(AmbientCollectionViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end