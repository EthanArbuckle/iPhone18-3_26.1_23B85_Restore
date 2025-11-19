@interface _UIScenePresentationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHandlesRemoteFocusMovement;
- (BOOL)_axIsPosterLockViewWithScene:(id)a3;
- (BOOL)canBecomeFocused;
- (id)_accessibilityGetRemoteElementArray;
- (id)_accessibilityRemoteSceneID;
- (id)_accessibilityResponderElement;
- (id)_axRemoteChild;
- (id)accessibilityElements;
- (int)_accessibilityRemotePid;
- (uint64_t)_accessibilityShouldUseRemoteElement;
- (void)_accessibilityResetRemoteElementArray;
- (void)_accessibilitySetRemoteElementArray:(uint64_t)a1;
- (void)_accessibilitySetRemoteElementIfNecessary;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _UIScenePresentationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &___UIScenePresentationViewAccessibility___accessibilityGetRemoteElementArray);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetRemoteElementArray:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
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
  v4 = [v5[0] lastObject];
  v3 = [v4 _accessibilityResponderElement];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);

  return v3;
}

- (id)accessibilityElements
{
  v7 = self;
  v6[1] = a2;
  v6[0] = [(_UIScenePresentationViewAccessibility *)self _accessibilityGetRemoteElementArray];
  if (!v6[0])
  {
    [(_UIScenePresentationViewAccessibility *)v7 _accessibilitySetRemoteElementIfNecessary];
    v6[0] = [(_UIScenePresentationViewAccessibility *)v7 _accessibilityGetRemoteElementArray];
    MEMORY[0x29EDC9740](0);
  }

  ShouldUseRemote = [(_UIScenePresentationViewAccessibility *)v7 _accessibilityShouldUseRemoteElement];
  if (v6[0] && (ShouldUseRemote & 1) != 0)
  {
    v8 = MEMORY[0x29EDC9748](v6[0]);
  }

  else
  {
    v4 = [MEMORY[0x29EDC7DA8] viewControllerForView:v7];
    v8 = [v4 accessibilityElements];
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(v6, 0);
  v2 = v8;

  return v2;
}

- (void)_accessibilitySetRemoteElementIfNecessary
{
  v49 = *MEMORY[0x29EDCA608];
  v47 = a1;
  if (a1)
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

    v23 = [(_UIScenePresentationViewAccessibility *)v47 _accessibilityGetRemoteElementArray];
    LOBYTE(v24) = 0;
    if (!v23)
    {
      v24 = [v47 safeBoolForKey:@"_invalidated"] ^ 1;
    }

    MEMORY[0x29EDC9740](v23);
    if (v24)
    {
      v42 = 0;
      objc_opt_class();
      v22 = [v47 safeValueForKey:@"_scene"];
      v41 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v22);
      v40 = MEMORY[0x29EDC9748](v41);
      objc_storeStrong(&v41, 0);
      v43 = v40;
      v19 = [v40 clientHandle];
      v18 = [v19 identity];
      v39 = [v18 processIdentity];
      MEMORY[0x29EDC9740](v18);
      *&v1 = MEMORY[0x29EDC9740](v19).n128_u64[0];
      v20 = [v43 clientHandle];
      v38 = [v20 processHandle];
      *&v2 = MEMORY[0x29EDC9740](v20).n128_u64[0];
      v21 = [v43 identity];
      v37 = [v21 workspaceIdentifier];
      *&v3 = MEMORY[0x29EDC9740](v21).n128_u64[0];
      if ([v47 _axIsPosterLockViewWithScene:{v43, v3}])
      {
        v36 = 1;
      }

      else
      {
        v16 = [v43 identifier];
        RemoteViewForIdentityAndSceneIdentifier = AXShouldCreateRemoteViewForIdentityAndSceneIdentifier(v39, v16, v37);
        MEMORY[0x29EDC9740](v16);
        if (RemoteViewForIdentityAndSceneIdentifier)
        {
          v35 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
          v34 = [v38 safeIntForKey:@"pid"];
          if (v34 != getpid())
          {
            if (AXShouldCreateRemoteViewForEachLayer(v37))
            {
              v13 = [v47 safeValueForKey:@"hostContainerView"];
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
                    v30 = [v32 contextID];
                    v8 = [v43 identifier];
                    v29 = AXRemoteElementConcatSceneUUIDAndContextId();
                    MEMORY[0x29EDC9740](v8);
                    v4 = objc_alloc(MEMORY[0x29EDBD800]);
                    v28 = [v4 initWithUUID:v29 andRemotePid:v34 andContextId:v30];
                    if (v28)
                    {
                      [v28 setOnClientSide:1];
                      [v28 setAccessibilityContainer:v47];
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
              v7 = [v43 identifier];
              v27 = [v6 initWithUUID:? andRemotePid:? andContextId:?];
              *&v5 = MEMORY[0x29EDC9740](v7).n128_u64[0];
              if (v27)
              {
                [v27 setOnClientSide:{1, v5}];
                [v27 setAccessibilityContainer:v47];
                [v35 addObject:v27];
              }

              objc_storeStrong(&v27, 0);
            }
          }

          if ([v35 count])
          {
            [(_UIScenePresentationViewAccessibility *)v47 _accessibilitySetRemoteElementArray:v35];
          }

          objc_storeStrong(&v35, 0);
        }

        else
        {
          [(_UIScenePresentationViewAccessibility *)v47 _accessibilitySetRemoteElementArray:?];
        }

        v36 = 0;
      }

      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v43, 0);
    }
  }
}

- (uint64_t)_accessibilityShouldUseRemoteElement
{
  v10 = a1;
  if (a1)
  {
    v8 = 0;
    objc_opt_class();
    v5 = [v10 safeValueForKey:@"_scene"];
    v7 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v5);
    v6 = MEMORY[0x29EDC9748](v7);
    objc_storeStrong(&v7, 0);
    v9 = v6;
    v3 = [v6 identifier];
    v4 = [v3 containsString:*MEMORY[0x29EDBD600]];
    *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
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
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIScenePresentationViewAccessibility;
  [(_UIScenePresentationViewAccessibility *)&v3 invalidate];
  v2 = [(_UIScenePresentationViewAccessibility *)v5 _accessibilityGetRemoteElementArray];
  [v2 makeObjectsPerformSelector:sel_unregister];
  MEMORY[0x29EDC9740](v2);
  [(_UIScenePresentationViewAccessibility *)v5 _accessibilitySetRemoteElementArray:?];
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [(_UIScenePresentationViewAccessibility *)self _accessibilityGetRemoteElementArray];
  [v3 makeObjectsPerformSelector:sel_unregister];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = _UIScenePresentationViewAccessibility;
  [(_UIScenePresentationViewAccessibility *)&v4 dealloc];
}

- (void)_accessibilityResetRemoteElementArray
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = a1;
  if (a1)
  {
    memset(__b, 0, sizeof(__b));
    obj = [(_UIScenePresentationViewAccessibility *)v11 _accessibilityGetRemoteElementArray];
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
    [(_UIScenePresentationViewAccessibility *)v11 _accessibilitySetRemoteElementArray:?];
    objc_initWeak(&location, v11);
    objc_copyWeak(&v7, &location);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (id)_axRemoteChild
{
  if (a1)
  {
    v2 = [(_UIScenePresentationViewAccessibility *)a1 _accessibilityGetRemoteElementArray];
    v3 = [v2 firstObject];
    MEMORY[0x29EDC9740](v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int)_accessibilityRemotePid
{
  v4 = [(_UIScenePresentationViewAccessibility *)self _axRemoteChild];
  v5 = 0;
  if ([v4 onClientSide])
  {
    v6 = [(_UIScenePresentationViewAccessibility *)self _axRemoteChild];
    v5 = 1;
    v3 = [v6 remotePid];
  }

  else
  {
    v3 = 0;
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  MEMORY[0x29EDC9740](v4);
  return v3;
}

- (id)_accessibilityRemoteSceneID
{
  v9 = self;
  v8[1] = a2;
  v7 = 0;
  objc_opt_class();
  v4 = [(_UIScenePresentationViewAccessibility *)v9 safeValueForKey:@"_scene"];
  v6 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = v5;
  v3 = [v5 identifier];
  objc_storeStrong(v8, 0);

  return v3;
}

- (BOOL)_accessibilityHandlesRemoteFocusMovement
{
  v3 = [(_UIScenePresentationViewAccessibility *)self _axRemoteChild];
  v4 = [v3 onClientSide];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)canBecomeFocused
{
  v3 = [(_UIScenePresentationViewAccessibility *)self _axRemoteChild];
  v4 = [v3 onClientSide];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_axIsPosterLockViewWithScene:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] identity];
  v5 = [v4 workspaceIdentifier];
  v7 = 0;
  v6 = 0;
  if ([v5 isEqualToString:@"PosterKit"])
  {
    v8 = [(_UIScenePresentationViewAccessibility *)v10 safeStringForKey:@"identifier"];
    v7 = 1;
    v6 = [v8 isEqualToString:@"PBUIPosterLockViewController"];
  }

  v11 = v6 & 1;
  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

@end