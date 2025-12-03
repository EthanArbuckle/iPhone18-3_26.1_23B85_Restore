@interface _UIRemoteKeyboardPlaceholderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityActiveKeyboard;
- (id)accessibilityElements;
@end

@implementation _UIRemoteKeyboardPlaceholderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"FBSSceneDefinition" hasProperty:@"identity" withType:?];
  [location[0] validateClass:@"FBSSceneIdentity" hasProperty:@"workspaceIdentifier" withType:"@"];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityActiveKeyboard
{
  selfCopy = self;
  v5[1] = a2;
  if (AXUIKeyboardIsOOP())
  {
    v5[0] = [(_UIRemoteKeyboardPlaceholderViewAccessibility *)selfCopy accessibilityElements];
    lastObject = [v5[0] lastObject];
    _accessibilityActiveKeyboard = [lastObject _accessibilityActiveKeyboard];
    objc_storeStrong(&lastObject, 0);
    objc_storeStrong(v5, 0);
  }

  else
  {
    _accessibilityActiveKeyboard = 0;
  }

  v2 = _accessibilityActiveKeyboard;

  return v2;
}

- (id)accessibilityElements
{
  v25[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v22[1] = a2;
  v22[0] = [(_UIRemoteKeyboardPlaceholderViewAccessibility *)self window];
  if (v22[0])
  {
    if (AXUIKeyboardIsOOP())
    {
      location = 0;
      windowScene = [v22[0] windowScene];
      v19 = [windowScene safeValueForKey:@"_FBSScene"];
      v11 = [v19 safeValueForKey:{@"identity", MEMORY[0x29EDC9740](windowScene).n128_f64[0]}];
      v18 = [v11 safeStringForKey:@"workspaceIdentifier"];
      MEMORY[0x29EDC9740](v11);
      if (axIsAutomaticArbiterClientKeyboardActive() & 1) == 0 || (axKeyboardInSeparateProcessAndScene(v22[0]) & 1) != 0 || ([v18 isEqualToString:@"com.apple.BannerKit"])
      {
        v24 = 0;
        v21 = 1;
      }

      else
      {
        activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
        v16 = [activeInstance safeValueForKey:@"remoteTextInputPartner"];
        NSClassFromString(&cfstr_Uikbrtipartner_0.isa);
        if (objc_opt_isKindOfClass())
        {
          v15 = [v16 safeValueForKey:@"rtiClient"];
          NSClassFromString(&cfstr_Rtiinputsystem.isa);
          if (objc_opt_isKindOfClass())
          {
            v14 = [v15 safeDictionaryForKey:@"connections"];
            v9 = getRTIInputUIServiceMachNameiOS();
            v13 = [v14 objectForKey:?];
            *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
            if (v13)
            {
              processIdentifier = [v13 processIdentifier];
              objc_storeStrong(&location, __AXUIRemoteKeyboardPlaceholderElement);
              if (!location || [location remotePid] != processIdentifier)
              {
                v3 = [objc_alloc(MEMORY[0x29EDBD800]) initWithUUID:@"KeyboardSingleton" andRemotePid:processIdentifier andContextId:0];
                v4 = location;
                location = v3;
                MEMORY[0x29EDC9740](v4);
                objc_storeStrong(&__AXUIRemoteKeyboardPlaceholderElement, location);
              }
            }

            objc_storeStrong(&v13, 0);
            objc_storeStrong(&v14, 0);
          }

          objc_storeStrong(&v15, 0);
        }

        if (!location)
        {
          v5 = AXUIRepresentedKeyboardElement();
          v6 = location;
          location = v5;
          MEMORY[0x29EDC9740](v6);
        }

        [location setAccessibilityContainer:selfCopy];
        [location setOnClientSide:1];
        v25[0] = location;
        v24 = [MEMORY[0x29EDB8D80] arrayWithObjects:v25 count:1];
        v21 = 1;
        objc_storeStrong(&v16, 0);
        objc_storeStrong(&activeInstance, 0);
      }

      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&location, 0);
    }

    else
    {
      v24 = 0;
      v21 = 1;
    }
  }

  else
  {
    v24 = 0;
    v21 = 1;
  }

  objc_storeStrong(v22, 0);
  v7 = v24;

  return v7;
}

@end