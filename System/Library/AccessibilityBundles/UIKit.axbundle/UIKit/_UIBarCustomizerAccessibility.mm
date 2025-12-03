@interface _UIBarCustomizerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axContainerView;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)beginWithSession:(id)session;
@end

@implementation _UIBarCustomizerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "@";
  v4 = @"_UIBarCustomizer";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"beginWithSession:" withFullSignature:{"v", v3, 0}];
  objc_storeStrong(v6, v5);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = _UIBarCustomizerAccessibility;
  [(_UIBarCustomizerAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, selfCopy);
  _axContainerView = [(_UIBarCustomizerAccessibility *)selfCopy _axContainerView];
  [_axContainerView setAccessibilityViewIsModal:1];
  *&v2 = MEMORY[0x29EDC9740](_axContainerView).n128_u64[0];
  _axContainerView2 = [(_UIBarCustomizerAccessibility *)selfCopy _axContainerView];
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __75___UIBarCustomizerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9 = &unk_29F30C7F0;
  objc_copyWeak(v10, &location);
  [_axContainerView2 _setAccessibilityPerformEscapeBlock:&v5];
  MEMORY[0x29EDC9740](_axContainerView2);
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (id)_axContainerView
{
  v10[2] = self;
  v10[1] = a2;
  v9 = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  delegate = [v7 delegate];
  v3 = v10[0];
  _activeSession = [v10[0] _activeSession];
  v6 = [delegate barCustomizer:v3 containerViewForSession:?];
  MEMORY[0x29EDC9740](_activeSession);
  MEMORY[0x29EDC9740](delegate);
  objc_storeStrong(v10, 0);

  return v6;
}

- (void)beginWithSession:(id)session
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v5.receiver = selfCopy;
  v5.super_class = _UIBarCustomizerAccessibility;
  [(_UIBarCustomizerAccessibility *)&v5 beginWithSession:location[0]];
  [(_UIBarCustomizerAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
  notification = *MEMORY[0x29EDC7F10];
  _axContainerView = [(_UIBarCustomizerAccessibility *)selfCopy _axContainerView];
  UIAccessibilityPostNotification(notification, _axContainerView);
  MEMORY[0x29EDC9740](_axContainerView);
  objc_storeStrong(location, 0);
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, interaction);
  v37 = 0;
  objc_storeStrong(&v37, update);
  v35 = 0;
  objc_opt_class();
  v34 = __UIAccessibilityCastAsClass();
  v33 = MEMORY[0x29EDC9748](v34);
  objc_storeStrong(&v34, 0);
  v36 = v33;
  _dropIndex = [v33 _dropIndex];
  v30.receiver = selfCopy;
  v30.super_class = _UIBarCustomizerAccessibility;
  v31 = [(_UIBarCustomizerAccessibility *)&v30 dropInteraction:location[0] sessionDidUpdate:v37];
  _dropIndex2 = [v36 _dropIndex];
  if (_dropIndex != _dropIndex2 && _dropIndex2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (_dropIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      _dropIndex = _dropIndex2 - 1;
    }

    _visibleItems = [v36 _visibleItems];
    if (_dropIndex >= _dropIndex2 || (v18 = _dropIndex, v18 >= [_visibleItems count]))
    {
      if (_dropIndex2 < [_visibleItems count])
      {
        v22 = 0;
        objc_opt_class();
        v11 = [_visibleItems objectAtIndex:_dropIndex2];
        v21 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v11);
        v20 = MEMORY[0x29EDC9748](v21);
        objc_storeStrong(&v21, 0);
        v23 = v20;
        v7 = *MEMORY[0x29EDC7EA8];
        v6 = MEMORY[0x29EDBA0F8];
        v10 = UIKitAccessibilityLocalizedString();
        name = [v23 name];
        v8 = [v6 localizedStringWithFormat:v10, name];
        UIAccessibilityPostNotification(v7, v8);
        MEMORY[0x29EDC9740](v8);
        MEMORY[0x29EDC9740](name);
        MEMORY[0x29EDC9740](v10);
        objc_storeStrong(&v23, 0);
      }
    }

    else
    {
      v26 = 0;
      objc_opt_class();
      v17 = [_visibleItems objectAtIndex:_dropIndex];
      v25 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v17);
      v24 = MEMORY[0x29EDC9748](v25);
      objc_storeStrong(&v25, 0);
      v27 = v24;
      notification = *MEMORY[0x29EDC7EA8];
      v12 = MEMORY[0x29EDBA0F8];
      v16 = UIKitAccessibilityLocalizedString();
      name2 = [v27 name];
      v14 = [v12 localizedStringWithFormat:v16, name2];
      UIAccessibilityPostNotification(notification, v14);
      MEMORY[0x29EDC9740](v14);
      MEMORY[0x29EDC9740](name2);
      MEMORY[0x29EDC9740](v16);
      objc_storeStrong(&v27, 0);
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAA8]);
    objc_storeStrong(&_visibleItems, 0);
  }

  v5 = MEMORY[0x29EDC9748](v31);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end