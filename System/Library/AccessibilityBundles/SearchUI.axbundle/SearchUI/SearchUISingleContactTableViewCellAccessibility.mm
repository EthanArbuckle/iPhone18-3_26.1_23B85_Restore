@interface SearchUISingleContactTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axActionButton;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (void)_axPerformCustomAction:(id)action;
- (void)updateThumbnailViewForResult:(id)result;
@end

@implementation SearchUISingleContactTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUISingleContactTableViewCell" hasInstanceMethod:@"textAreaView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUISingleContactTableViewCell" hasInstanceMethod:@"accessoryViewControllerForResult" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIContactActionButton" hasInstanceMethod:@"actions" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIAccessoryViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNQuickAction" hasInstanceMethod:@"perform" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CNQuickAction" hasInstanceMethod:@"category" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = SearchUISingleContactTableViewCellAccessibility;
  accessibilityLabel = [(SearchUISingleContactTableViewCellAccessibility *)&v6 accessibilityLabel];
  v5 = accessibilityLocalizedString(@"suggestion.contact");
  v3 = __UIAXStringForVariables();

  return v3;
}

- (id)accessibilityCustomActions
{
  v29 = *MEMORY[0x29EDCA608];
  _axActionButton = [(SearchUISingleContactTableViewCellAccessibility *)self _axActionButton];
  v27 = 0;
  objc_opt_class();
  v3 = [_axActionButton safeValueForKey:@"actions"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && [v4 count])
  {
    v19 = _axActionButton;
    v22 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        v8 = 0;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * v8);
          v10 = [v9 safeValueForKey:{@"category", v15, v16, v17, v18}];
          if (AXLocalizedStringFromQuickActionCategory_onceToken != -1)
          {
            [SearchUISingleContactTableViewCellAccessibility accessibilityCustomActions];
          }

          v11 = [AXLocalizedStringFromQuickActionCategory_AXQuickActionCategoryTable objectForKeyedSubscript:v10];
          if (v11)
          {
            v12 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v11 target:self selector:sel__axPerformCustomAction_];
            [v12 _accessibilitySetRetainedValue:v9 forKey:@"AXCNActionKey"];
            [v22 addObject:v12];
          }

          else
          {
            v17 = v9;
            v18 = v10;
            v16 = @"Could not create title for action %@ with category %@";
            LOBYTE(v15) = 1;
            _AXLogWithFacility();
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }

    _axActionButton = v19;
  }

  else
  {
    _AXLogWithFacility();
    v22 = 0;
  }

  v13 = *MEMORY[0x29EDCA608];

  return v22;
}

- (void)_axPerformCustomAction:(id)action
{
  v4 = [action _accessibilityValueForKey:@"AXCNActionKey"];
  v3 = v4;
  AXPerformSafeBlock();
}

- (void)updateThumbnailViewForResult:(id)result
{
  v3.receiver = self;
  v3.super_class = SearchUISingleContactTableViewCellAccessibility;
  [(SearchUISingleContactTableViewCellAccessibility *)&v3 updateThumbnailViewForResult:result];
}

- (id)_axActionButton
{
  v2 = [(SearchUISingleContactTableViewCellAccessibility *)self safeValueForKey:@"accessoryViewControllerForResult"];
  v3 = [v2 safeValueForKey:@"_view"];

  return v3;
}

@end