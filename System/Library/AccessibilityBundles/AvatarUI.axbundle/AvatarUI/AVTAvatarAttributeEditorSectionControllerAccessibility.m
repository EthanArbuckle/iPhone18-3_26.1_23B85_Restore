@interface AVTAvatarAttributeEditorSectionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)viewForIndex:(int64_t)a3;
@end

@implementation AVTAvatarAttributeEditorSectionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTAvatarAttributeEditorSection"];
  [v3 validateClass:@"AVTAvatarAttributeEditorSectionItem"];
  [v3 validateClass:@"AVTAvatarAttributeEditorSectionController" hasInstanceMethod:@"section" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorSection" hasInstanceMethod:@"sectionItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorSectionItem" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorSection" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorSectionController" hasInstanceMethod:@"viewForIndex:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorSectionCoordinator"];
  [v3 validateClass:@"AVTAvatarAttributeEditorSectionCoordinator" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorDataSource" hasInstanceMethod:@"categories" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorDataSource" hasInstanceMethod:@"currentCategoryIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorCategory" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorCategory" hasInstanceMethod:@"sections" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"AVTAvatarAttributeEditorSection" hasRequiredInstanceMethod:@"localizedName"];
}

- (id)viewForIndex:(int64_t)a3
{
  v30.receiver = self;
  v30.super_class = AVTAvatarAttributeEditorSectionControllerAccessibility;
  v5 = [(AVTAvatarAttributeEditorSectionControllerAccessibility *)&v30 viewForIndex:?];
  objc_opt_class();
  v6 = [(AVTAvatarAttributeEditorSectionControllerAccessibility *)self safeValueForKeyPath:@"section.sectionItems"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 objectAtIndex:a3];
  MEMORY[0x29C2CABD0](@"AVTAvatarAttributeEditorSectionItem");
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 safeStringForKey:@"localizedName"];
    [v5 setAccessibilityLabel:v9];
    v10 = [(AVTAvatarAttributeEditorSectionControllerAccessibility *)self safeValueForKey:@"section"];
    v11 = [v10 safeStringForKey:@"localizedName"];
    if (!v11)
    {
      v12 = [(AVTAvatarAttributeEditorSectionControllerAccessibility *)self safeValueForKey:@"delegate"];
      MEMORY[0x29C2CABD0](@"AVTAvatarAttributeEditorSectionCoordinator");
      v28 = v9;
      v29 = v10;
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 safeValueForKey:@"delegate"];

        v12 = v13;
      }

      v14 = [v12 safeValueForKey:@"dataSource"];
      v15 = [v14 safeArrayForKey:@"categories"];
      v16 = [v15 objectAtIndex:{objc_msgSend(v14, "safeUnsignedIntegerForKey:", @"currentCategoryIndex"}];

      v17 = [v16 safeArrayForKey:@"sections"];
      v18 = [v17 indexOfObject:v29];
      if (v18 >= [v17 count])
      {
        goto LABEL_10;
      }

      v27 = v12;
      do
      {
        v19 = [v17 objectAtIndexedSubscript:v18];
        v11 = [v19 safeValueForKey:@"localizedName"];

        --v18;
      }

      while (v18 < [v17 count] && !v11);
      v12 = v27;
      if (!v11)
      {
LABEL_10:
        v11 = [v16 safeValueForKey:@"localizedName"];
      }

      v9 = v28;
      v10 = v29;
    }

    v20 = [v11 length];
    v21 = MEMORY[0x29EDBA0F8];
    v22 = a3 + 1;
    if (v20)
    {
      v23 = accessibilityLocalizedString(@"starfish.number.of.in");
      [v21 stringWithFormat:v23, v22, objc_msgSend(v7, "count"), v11];
    }

    else
    {
      v23 = accessibilityLocalizedString(@"starfish.number.of");
      [v21 stringWithFormat:v23, v22, objc_msgSend(v7, "count"), v26];
    }
    v24 = ;
    [v5 setAccessibilityValue:v24];
  }

  return v5;
}

@end