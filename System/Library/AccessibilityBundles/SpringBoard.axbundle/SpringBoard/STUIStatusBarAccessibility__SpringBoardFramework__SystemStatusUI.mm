@interface STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axElementWithinFocused;
- (id)_accessibilityMultitaskingButtonContainer;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations;
@end

@implementation STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBWindowScene" hasInstanceMethod:@"recordingIndicatorManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBRecordingIndicatorManager" hasInstanceVariable:@"_recordingIndicatorWindow" withType:"UIWindow"];
  if (NSClassFromString(&cfstr_Stuistatusbara_0.isa))
  {
    [validationsCopy validateClass:@"STUIStatusBarAccessibility" hasInstanceMethod:@"_axElementWithinFocused" withFullSignature:{"B", 0}];
  }

  [validationsCopy validateClass:@"SBTopAffordanceViewController" hasInstanceMethod:@"dotsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBTopAffordanceViewController"];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"_updateDisplayedItemsWithData:styleAttributes:extraAnimations:" withFullSignature:{"v", "@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI;
  [(STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI *)&v7 _accessibilityLoadAccessibilityInformation];
  _accessibilityMultitaskingButtonContainer = [(STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI *)self _accessibilityMultitaskingButtonContainer];
  v4 = _accessibilityMultitaskingButtonContainer;
  if (_accessibilityMultitaskingButtonContainer)
  {
    _accessibilityViewController = [_accessibilityMultitaskingButtonContainer _accessibilityViewController];
    v6 = [_accessibilityViewController safeValueForKey:@"dotsView"];

    [v6 setAccessibilityContainer:self];
  }
}

- (id)accessibilityElements
{
  if (AXProcessIsSpringBoard() && AXDeviceHasJindo() && UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [*MEMORY[0x29EDC8008] _accessibilityStatusBarElements:1 sorted:1];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v14.receiver = self;
    v14.super_class = STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI;
    accessibilityElements = [(STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI *)&v14 accessibilityElements];
    [v4 axSafelyAddObjectsFromArray:accessibilityElements];

    if (![v4 count])
    {
      objc_opt_class();
      v6 = __UIAccessibilityCastAsClass();
      subviews = [v6 subviews];
      [v4 axSafelyAddObjectsFromArray:subviews];
    }

    if ([v4 count])
    {
      v8 = AXWindowScene(@"activeDisplayWindowScene");
      v9 = [v8 safeValueForKey:@"recordingIndicatorManager"];
      v10 = [v9 safeValueForKey:@"_recordingIndicatorWindow"];
      [v4 axSafelyAddObject:v10];

      _accessibilityMultitaskingButtonContainer = [(STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI *)self _accessibilityMultitaskingButtonContainer];
      [v4 axSafelyAddObject:_accessibilityMultitaskingButtonContainer];
    }

    if ([v4 count])
    {
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }

    v3 = v12;
  }

  return v3;
}

- (id)_accessibilityMultitaskingButtonContainer
{
  _accessibilityWindow = [(STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI *)self _accessibilityWindow];
  v3 = [_accessibilityWindow _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_3];

  firstObject = [v3 firstObject];

  return firstObject;
}

- (BOOL)_axElementWithinFocused
{
  v20 = *MEMORY[0x29EDCA608];
  _accessibilityMultitaskingButtonContainer = [(STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI *)self _accessibilityMultitaskingButtonContainer];
  v4 = _accessibilityMultitaskingButtonContainer;
  if (_accessibilityMultitaskingButtonContainer)
  {
    _accessibilityViewController = [_accessibilityMultitaskingButtonContainer _accessibilityViewController];
    v6 = [_accessibilityViewController safeValueForKey:@"dotsView"];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = _UIAccessibilityFocusedElements();
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (*(*(&v15 + 1) + 8 * i) == v6)
          {

            _axElementWithinFocused = 1;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v14.receiver = self;
  v14.super_class = STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI;
  _axElementWithinFocused = [(STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI *)&v14 _axElementWithinFocused];
LABEL_13:

  return _axElementWithinFocused;
}

- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI;
  [(STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI *)&v13 _updateDisplayedItemsWithData:dataCopy styleAttributes:attributes extraAnimations:animations];
  if (!_updateDisplayedItemsWithData_styleAttributes_extraAnimations__entriesToMonitor)
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDB8E50]) initWithObjects:{@"backgroundActivityEntry", @"backNavigationEntry", @"forwardNavigationEntry", 0}];
    v10 = _updateDisplayedItemsWithData_styleAttributes_extraAnimations__entriesToMonitor;
    _updateDisplayedItemsWithData_styleAttributes_extraAnimations__entriesToMonitor = v9;
  }

  if (dataCopy)
  {
    v11 = [dataCopy safeSetForKey:@"existingEntryKeys"];
    v12 = [v11 intersectsSet:_updateDisplayedItemsWithData_styleAttributes_extraAnimations__entriesToMonitor];

    if (v12)
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

@end