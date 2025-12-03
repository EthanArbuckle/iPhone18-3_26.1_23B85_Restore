@interface DOCTagEditorTagCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axCellTextField;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation DOCTagEditorTagCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCTagEditorTagCell" hasSwiftField:@"mixedSelection" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCTagEditorTagCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCTagEditorTagCell" hasSwiftField:@"inNewTagMode" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCTagEditorTagCell" hasSwiftField:@"tagDotButton" withSwiftType:"Optional<UIButton>"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCTagEditorTagCell" hasSwiftField:@"tagValue" withSwiftType:"Optional<DOCTag>"];
  [validationsCopy validateClass:@"DOCTag" hasInstanceMethod:@"labelIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCTagEditorTagCell" hasSwiftField:@"newTagColor" withSwiftType:"DOCTagColor"];
  [validationsCopy validateClass:@"_UIContentViewEditingTextField"];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"_setSelected:animated:" withFullSignature:{"v", "B", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = DOCTagEditorTagCellAccessibility;
  [(DOCTagEditorTagCellAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(DOCTagEditorTagCellAccessibility *)self safeSwiftValueForKey:@"tagDotButton"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 isUserInteractionEnabled])
  {
    v5 = accessibilityLocalizedString(@"choose.tag.color.button");
    [v4 setAccessibilityLabel:v5];
  }

  objc_initWeak(&location, v4);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __78__DOCTagEditorTagCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F2BBAC0;
  objc_copyWeak(&v7, &location);
  [v4 setIsAccessibilityElementBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __78__DOCTagEditorTagCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained isUserInteractionEnabled];

  return v2;
}

- (id)accessibilityLabel
{
  if ([(DOCTagEditorTagCellAccessibility *)self _axIsInNewTagMode])
  {
    _axCellTextField = [(DOCTagEditorTagCellAccessibility *)self _axCellTextField];
    text = [_axCellTextField text];
    v5 = [text length];

    if (v5)
    {
      [_axCellTextField text];
    }

    else
    {
      [_axCellTextField placeholder];
    }
    accessibilityLabel = ;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DOCTagEditorTagCellAccessibility;
    accessibilityLabel = [(DOCTagEditorTagCellAccessibility *)&v8 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(DOCTagEditorTagCellAccessibility *)self safeBoolForKey:@"isSelected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityValue
{
  if ([(DOCTagEditorTagCellAccessibility *)self safeSwiftBoolForKey:@"mixedSelection"])
  {
    v3 = accessibilityLocalizedString(@"mixed.selected");
    goto LABEL_24;
  }

  v4 = [(DOCTagEditorTagCellAccessibility *)self safeSwiftValueForKey:@"tagValue"];
  v5 = [v4 safeIntegerForKey:@"labelIndex"];

  if ([(DOCTagEditorTagCellAccessibility *)self _axIsInNewTagMode])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    AXPerformSafeBlock();
    v5 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  v3 = 0;
  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 7)
      {
        systemOrangeColor = [MEMORY[0x29EDC7A00] systemOrangeColor];
        goto LABEL_22;
      }

      if (v5 == 6)
      {
        systemOrangeColor = [MEMORY[0x29EDC7A00] systemRedColor];
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v5 == 4)
    {
      [MEMORY[0x29EDC7A00] systemBlueColor];
    }

    else
    {
      [MEMORY[0x29EDC7A00] systemYellowColor];
    }

    systemOrangeColor = LABEL_13:;
    goto LABEL_22;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [MEMORY[0x29EDC7A00] systemGreenColor];
    }

    else
    {
      [MEMORY[0x29EDC7A00] systemPurpleColor];
    }

    goto LABEL_13;
  }

  if (!v5)
  {
    goto LABEL_24;
  }

  if (v5 == 1)
  {
    systemOrangeColor = [MEMORY[0x29EDC7A00] systemGrayColor];
LABEL_22:
    v3 = systemOrangeColor;
  }

LABEL_23:
  v7 = AXColorStringForColor();

  v3 = v7;
LABEL_24:

  return v3;
}

void __54__DOCTagEditorTagCellAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) safeSwiftValueForKey:@"newTagColor"];
  v2 = [v3 safeSwiftEnumAssociatedObject];
  *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];
}

- (BOOL)accessibilityActivate
{
  if ([(DOCTagEditorTagCellAccessibility *)self _axIsInNewTagMode])
  {
    v3 = [(DOCTagEditorTagCellAccessibility *)self safeBoolForKey:@"isSelected"];
    v6 = MEMORY[0x29EDCA5F8];
    v7 = 3221225472;
    v8 = __57__DOCTagEditorTagCellAccessibility_accessibilityActivate__block_invoke;
    v9 = &unk_29F2BBB10;
    selfCopy = self;
    v11 = v3;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DOCTagEditorTagCellAccessibility;
    return [(DOCTagEditorTagCellAccessibility *)&v5 accessibilityActivate];
  }
}

- (id)_accessibilitySupplementaryFooterViews
{
  v7.receiver = self;
  v7.super_class = DOCTagEditorTagCellAccessibility;
  _accessibilitySupplementaryFooterViews = [(DOCTagEditorTagCellAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  v4 = [_accessibilitySupplementaryFooterViews mutableCopy];

  if ([(DOCTagEditorTagCellAccessibility *)self _axIsInNewTagMode])
  {
    _axCellTextField = [(DOCTagEditorTagCellAccessibility *)self _axCellTextField];
    [v4 axSafelyAddObject:_axCellTextField];
  }

  return v4;
}

- (id)_axCellTextField
{
  v3 = NSClassFromString(&cfstr_Uicontentviewe.isa);

  return [(DOCTagEditorTagCellAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end