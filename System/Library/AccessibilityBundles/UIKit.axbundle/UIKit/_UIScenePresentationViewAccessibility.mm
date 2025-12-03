@interface _UIScenePresentationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHandlesRemoteFocusMovement;
- (BOOL)_axIsPosterLockViewWithScene:(id)scene;
- (BOOL)canBecomeFocused;
- (id)_accessibilityGetRemoteElementArray;
- (id)_accessibilityRemoteSceneID;
- (id)_accessibilityResponderElement;
- (id)_axRemoteChild;
- (id)accessibilityElements;
- (int)_accessibilityRemotePid;
- (uint64_t)_accessibilityShouldUseRemoteElement;
- (void)_accessibilityResetRemoteElementArray;
- (void)_accessibilitySetRemoteElementArray:(uint64_t)array;
- (void)_accessibilitySetRemoteElementIfNecessary;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _UIScenePresentationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIScenePresentationView";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"RBSProcessHandle" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
  v4 = "@";
  [location[0] validateClass:v3 hasInstanceMethod:@"identifier" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"invalidate" withFullSignature:{"v", 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"_invalidated" withType:"B"];
  [location[0] validateClass:v3 hasInstanceMethod:@"hostContainerView" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"_UISceneLayerHostContainerView" hasInstanceMethod:@"hostedLayers" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)_accessibilityGetRemoteElementArray
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &___UIScenePresentationViewAccessibility___accessibilityGetRemoteElementArray);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetRemoteElementArray:(uint64_t)array
{
  arrayCopy = array;
  location = 0;
  objc_storeStrong(&location, a2);
  if (arrayCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityResponderElement
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [(_UIScenePresentationViewAccessibility *)self _accessibilityGetRemoteElementArray];
  lastObject = [v5[0] lastObject];
  _accessibilityResponderElement = [lastObject _accessibilityResponderElement];
  objc_storeStrong(&lastObject, 0);
  objc_storeStrong(v5, 0);

  return _accessibilityResponderElement;
}

- (id)accessibilityElements
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = [(_UIScenePresentationViewAccessibility *)self _accessibilityGetRemoteElementArray];
  if (!v6[0])
  {
    [(_UIScenePresentationViewAccessibility *)selfCopy _accessibilitySetRemoteElementIfNecessary];
    v6[0] = [(_UIScenePresentationViewAccessibility *)selfCopy _accessibilityGetRemoteElementArray];
    MEMORY[0x29EDC9740](0);
  }

  ShouldUseRemote = [(_UIScenePresentationViewAccessibility *)selfCopy _accessibilityShouldUseRemoteElement];
  if (v6[0] && (ShouldUseRemote & 1) != 0)
  {
    accessibilityElements = MEMORY[0x29EDC9748](v6[0]);
  }

  else
  {
    v4 = [MEMORY[0x29EDC7DA8] viewControllerForView:selfCopy];
    accessibilityElements = [v4 accessibilityElements];
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(v6, 0);
  v2 = accessibilityElements;

  return v2;
}

- (void)_accessibilitySetRemoteElementIfNecessary
{
  v49 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    if (([MEMORY[0x29EDBA108] isMainThread] & 1) == 0)
    {
      location = AXLogAppAccessibility();
      v45 = 17;
      if (os_log_type_enabled(location, OS_LOG_TYPE_FAULT))
      {
        log = location;
        type = v45;
        __os_log_helper_16_0_0(v44);
        _os_log_fault_impl(&dword_29C4D6000, log, type, "Should always update remote view AX properties on the main thread", v44, 2u);
      }

      objc_storeStrong(&location, 0);
    }

    _accessibilityGetRemoteElementArray = [(_UIScenePresentationViewAccessibility *)selfCopy _accessibilityGetRemoteElementArray];
    LOBYTE(v24) = 0;
    if (!_accessibilityGetRemoteElementArray)
    {
      v24 = [selfCopy safeBoolForKey:@"_invalidated"] ^ 1;
    }

    MEMORY[0x29EDC9740](_accessibilityGetRemoteElementArray);
    if (v24)
    {
      v42 = 0;
      objc_opt_class();
      v22 = [selfCopy safeValueForKey:@"_scene"];
      v41 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v22);
      v40 = MEMORY[0x29EDC9748](v41);
      objc_storeStrong(&v41, 0);
      v43 = v40;
      clientHandle = [v40 clientHandle];
      identity = [clientHandle identity];
      processIdentity = [identity processIdentity];
      MEMORY[0x29EDC9740](identity);
      *&v1 = MEMORY[0x29EDC9740](clientHandle).n128_u64[0];
      clientHandle2 = [v43 clientHandle];
      processHandle = [clientHandle2 processHandle];
      *&v2 = MEMORY[0x29EDC9740](clientHandle2).n128_u64[0];
      identity2 = [v43 identity];
      workspaceIdentifier = [identity2 workspaceIdentifier];
      *&v3 = MEMORY[0x29EDC9740](identity2).n128_u64[0];
      if ([selfCopy _axIsPosterLockViewWithScene:{v43, v3}])
      {
        v36 = 1;
      }

      else
      {
        identifier = [v43 identifier];
        RemoteViewForIdentityAndSceneIdentifier = AXShouldCreateRemoteViewForIdentityAndSceneIdentifier(processIdentity, identifier, workspaceIdentifier);
        MEMORY[0x29EDC9740](identifier);
        if (RemoteViewForIdentityAndSceneIdentifier)
        {
          v35 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
          v34 = [processHandle safeIntForKey:@"pid"];
          if (v34 != getpid())
          {
            if (AXShouldCreateRemoteViewForEachLayer(workspaceIdentifier))
            {
              v13 = [selfCopy safeValueForKey:@"hostContainerView"];
              v33 = [v13 safeSetForKey:@"hostedLayers"];
              MEMORY[0x29EDC9740](v13);
              memset(__b, 0, sizeof(__b));
              obj = MEMORY[0x29EDC9748](v33);
              v15 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
              if (v15)
              {
                v10 = *__b[2];
                v11 = 0;
                v12 = v15;
                while (1)
                {
                  v9 = v11;
                  if (*__b[2] != v10)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v32 = *(__b[1] + 8 * v11);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    contextID = [v32 contextID];
                    identifier2 = [v43 identifier];
                    v29 = AXRemoteElementConcatSceneUUIDAndContextId();
                    MEMORY[0x29EDC9740](identifier2);
                    v4 = objc_alloc(MEMORY[0x29EDBD800]);
                    v28 = [v4 initWithUUID:v29 andRemotePid:v34 andContextId:contextID];
                    if (v28)
                    {
                      [v28 setOnClientSide:1];
                      [v28 setAccessibilityContainer:selfCopy];
                      [v35 addObject:v28];
                    }

                    objc_storeStrong(&v28, 0);
                    objc_storeStrong(&v29, 0);
                  }

                  ++v11;
                  if (v9 + 1 >= v12)
                  {
                    v11 = 0;
                    v12 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
                    if (!v12)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x29EDC9740](obj);
              objc_storeStrong(&v33, 0);
            }

            else
            {
              v6 = objc_alloc(MEMORY[0x29EDBD800]);
              identifier3 = [v43 identifier];
              v27 = [v6 initWithUUID:? andRemotePid:? andContextId:?];
              *&v5 = MEMORY[0x29EDC9740](identifier3).n128_u64[0];
              if (v27)
              {
                [v27 setOnClientSide:{1, v5}];
                [v27 setAccessibilityContainer:selfCopy];
                [v35 addObject:v27];
              }

              objc_storeStrong(&v27, 0);
            }
          }

          if ([v35 count])
          {
            [(_UIScenePresentationViewAccessibility *)selfCopy _accessibilitySetRemoteElementArray:v35];
          }

          objc_storeStrong(&v35, 0);
        }

        else
        {
          [(_UIScenePresentationViewAccessibility *)selfCopy _accessibilitySetRemoteElementArray:?];
        }

        v36 = 0;
      }

      objc_storeStrong(&workspaceIdentifier, 0);
      objc_storeStrong(&processHandle, 0);
      objc_storeStrong(&processIdentity, 0);
      objc_storeStrong(&v43, 0);
    }
  }
}

- (uint64_t)_accessibilityShouldUseRemoteElement
{
  selfCopy = self;
  if (self)
  {
    v8 = 0;
    objc_opt_class();
    v5 = [selfCopy safeValueForKey:@"_scene"];
    v7 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v5);
    v6 = MEMORY[0x29EDC9748](v7);
    objc_storeStrong(&v7, 0);
    v9 = v6;
    identifier = [v6 identifier];
    v4 = [identifier containsString:*MEMORY[0x29EDBD600]];
    *&v1 = MEMORY[0x29EDC9740](identifier).n128_u64[0];
    if (v4)
    {
      v11 = [v9 accessibilitySceneIsCallServiceBanner] & 1;
    }

    else
    {
      v11 = 1;
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)invalidate
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIScenePresentationViewAccessibility;
  [(_UIScenePresentationViewAccessibility *)&v3 invalidate];
  _accessibilityGetRemoteElementArray = [(_UIScenePresentationViewAccessibility *)selfCopy _accessibilityGetRemoteElementArray];
  [_accessibilityGetRemoteElementArray makeObjectsPerformSelector:sel_unregister];
  MEMORY[0x29EDC9740](_accessibilityGetRemoteElementArray);
  [(_UIScenePresentationViewAccessibility *)selfCopy _accessibilitySetRemoteElementArray:?];
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  _accessibilityGetRemoteElementArray = [(_UIScenePresentationViewAccessibility *)self _accessibilityGetRemoteElementArray];
  [_accessibilityGetRemoteElementArray makeObjectsPerformSelector:sel_unregister];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityGetRemoteElementArray).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = _UIScenePresentationViewAccessibility;
  [(_UIScenePresentationViewAccessibility *)&v4 dealloc];
}

- (void)_accessibilityResetRemoteElementArray
{
  v13 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    memset(__b, 0, sizeof(__b));
    obj = [(_UIScenePresentationViewAccessibility *)selfCopy _accessibilityGetRemoteElementArray];
    v6 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
    if (v6)
    {
      v2 = *__b[2];
      v3 = 0;
      v4 = v6;
      while (1)
      {
        v1 = v3;
        if (*__b[2] != v2)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(__b[1] + 8 * v3);
        [v10 unregister];
        ++v3;
        if (v1 + 1 >= v4)
        {
          v3 = 0;
          v4 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
          if (!v4)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    [(_UIScenePresentationViewAccessibility *)selfCopy _accessibilitySetRemoteElementArray:?];
    objc_initWeak(&location, selfCopy);
    objc_copyWeak(&v7, &location);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (id)_axRemoteChild
{
  if (self)
  {
    _accessibilityGetRemoteElementArray = [(_UIScenePresentationViewAccessibility *)self _accessibilityGetRemoteElementArray];
    firstObject = [_accessibilityGetRemoteElementArray firstObject];
    MEMORY[0x29EDC9740](_accessibilityGetRemoteElementArray);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (int)_accessibilityRemotePid
{
  _axRemoteChild = [(_UIScenePresentationViewAccessibility *)self _axRemoteChild];
  v5 = 0;
  if ([_axRemoteChild onClientSide])
  {
    _axRemoteChild2 = [(_UIScenePresentationViewAccessibility *)self _axRemoteChild];
    v5 = 1;
    remotePid = [_axRemoteChild2 remotePid];
  }

  else
  {
    remotePid = 0;
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](_axRemoteChild2);
  }

  MEMORY[0x29EDC9740](_axRemoteChild);
  return remotePid;
}

- (id)_accessibilityRemoteSceneID
{
  selfCopy = self;
  v8[1] = a2;
  v7 = 0;
  objc_opt_class();
  v4 = [(_UIScenePresentationViewAccessibility *)selfCopy safeValueForKey:@"_scene"];
  v6 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = v5;
  identifier = [v5 identifier];
  objc_storeStrong(v8, 0);

  return identifier;
}

- (BOOL)_accessibilityHandlesRemoteFocusMovement
{
  _axRemoteChild = [(_UIScenePresentationViewAccessibility *)self _axRemoteChild];
  onClientSide = [_axRemoteChild onClientSide];
  MEMORY[0x29EDC9740](_axRemoteChild);
  return onClientSide;
}

- (BOOL)canBecomeFocused
{
  _axRemoteChild = [(_UIScenePresentationViewAccessibility *)self _axRemoteChild];
  onClientSide = [_axRemoteChild onClientSide];
  MEMORY[0x29EDC9740](_axRemoteChild);
  return onClientSide;
}

- (BOOL)_axIsPosterLockViewWithScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  identity = [location[0] identity];
  workspaceIdentifier = [identity workspaceIdentifier];
  v7 = 0;
  v6 = 0;
  if ([workspaceIdentifier isEqualToString:@"PosterKit"])
  {
    v8 = [(_UIScenePresentationViewAccessibility *)selfCopy safeStringForKey:@"identifier"];
    v7 = 1;
    v6 = [v8 isEqualToString:@"PBUIPosterLockViewController"];
  }

  v11 = v6 & 1;
  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](workspaceIdentifier);
  MEMORY[0x29EDC9740](identity);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

@end