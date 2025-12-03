@interface TUICandidateCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axCellIsVisibleInCollectionView;
- (BOOL)accessibilityElementsHidden;
- (id)_axCandidateText;
- (id)accessibilityHeaderElements;
- (id)accessibilityLabel;
- (void)accessibilityHeaderElements;
@end

@implementation TUICandidateCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TUICandidateGroupHeader"];
  [validationsCopy validateClass:@"TUICandidateCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"TUICandidateCell" hasInstanceMethod:@"candidate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"_accessibilityIndexPath" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIKeyboardCandidateController"];
  [validationsCopy validateClass:@"UIKeyboardCandidateController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIKeyboardCandidateController" hasInstanceMethod:@"isExtended" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  _axCandidateText = [(TUICandidateCellAccessibility *)self _axCandidateText];
  v3 = [_axCandidateText length] == 0;

  return v3;
}

- (id)_axCandidateText
{
  objc_opt_class();
  v3 = [(TUICandidateCellAccessibility *)self safeValueForKey:@"candidate"];
  v4 = __UIAccessibilityCastAsClass();

  label = [v4 label];

  return label;
}

- (id)accessibilityLabel
{
  mEMORY[0x29EDC7B18] = [MEMORY[0x29EDC7B18] sharedInputModeController];
  currentInputMode = [mEMORY[0x29EDC7B18] currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];

  _axCandidateText = [(TUICandidateCellAccessibility *)self _axCandidateText];
  mEMORY[0x29EDBDF80] = [MEMORY[0x29EDBDF80] sharedInstance];
  v11 = [mEMORY[0x29EDBDF80] descriptionOfWord:_axCandidateText forLanguage:primaryLanguage];
  v8 = __UIAXStringForVariables();

  if (![v8 length])
  {
    v9 = _axCandidateText;

    v8 = v9;
  }

  return v8;
}

- (id)accessibilityHeaderElements
{
  v12[1] = *MEMORY[0x29EDCA608];
  v3 = [(TUICandidateCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  objc_opt_class();
  v4 = [(TUICandidateCellAccessibility *)self safeValueForKey:@"_accessibilityIndexPath"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [MEMORY[0x29EDB9FE0] indexPathForItem:0 inSection:{objc_msgSend(v5, "section")}];
  v7 = [v3 supplementaryViewForElementKind:@"GroupHeader" atIndexPath:v6];
  if (v7)
  {
    MEMORY[0x29ED3C2C0](@"TUICandidateGroupHeader");
    if (objc_opt_isKindOfClass())
    {
      v12[0] = v7;
      v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
      goto LABEL_8;
    }

    v9 = AXLogAppAccessibility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TUICandidateCellAccessibility *)v7 accessibilityHeaderElements];
    }
  }

  v8 = 0;
LABEL_8:

  v10 = *MEMORY[0x29EDCA608];

  return v8;
}

- (BOOL)_axCellIsVisibleInCollectionView
{
  v3 = [MEMORY[0x29ED3C2C0](@"UIKeyboardCandidateController" a2)];
  v4 = [v3 safeBoolForKey:@"isExtended"];

  if (v4)
  {
    return 1;
  }

  v6 = [(TUICandidateCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  objc_opt_class();
  v7 = [(TUICandidateCellAccessibility *)self safeValueForKey:@"_accessibilityIndexPath"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v6 layoutAttributesForItemAtIndexPath:v8];
  [v9 frame];
  v11 = v10;
  [v9 frame];
  v5 = v11 < v12;

  return v5;
}

- (void)accessibilityHeaderElements
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_29C4B7000, a2, OS_LOG_TYPE_ERROR, "Unexpected class for candidate group header: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end