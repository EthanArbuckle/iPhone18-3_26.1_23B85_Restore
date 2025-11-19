@interface _UIRemoteViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityActiveKeyboard;
- (id)_accessibilityGetRemoteElementArray;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityRemoteElementCommunicationQueue;
- (id)_accessibilityResponderElement;
- (id)accessibilityElements;
- (uint64_t)_accessibilityRemoteMachPort;
- (uint64_t)_accessibilityRemoteViewPid;
- (uint64_t)_accessibilitySetRemoteMachPort:(uint64_t)result;
- (uint64_t)_accessibilitySetRemoteViewPid:(uint64_t)result;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetFocusOnElement:(BOOL)a3;
- (void)_accessibilitySetRemoteElementArray:(uint64_t)a1;
- (void)_accessibilitySetRemoteElementIfNecessary;
- (void)_accessibilityTransmitRemoteUUIDToPid:(int)a3 machPort:(id)obj value:;
- (void)_accessibilityUnregisterRemoteView;
- (void)dealloc;
@end

@implementation _UIRemoteViewAccessibility

- (uint64_t)_accessibilityRemoteMachPort
{
  if (a1)
  {
    return __UIAccessibilityGetAssociatedUnsignedInt();
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_accessibilitySetRemoteMachPort:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedUnsignedInt();
  }

  return result;
}

- (uint64_t)_accessibilityRemoteViewPid
{
  if (a1)
  {
    return __UIAccessibilityGetAssociatedInt();
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_accessibilitySetRemoteViewPid:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedInt();
  }

  return result;
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UISizeTrackingView"];
  [location[0] validateClass:@"_UIRemoteView" hasInstanceMethod:@"hostedWindowHostingHandle" withFullSignature:{"@", 0}];
  [location[0] validateClass:@"_UIHostedWindowHostingHandle" hasInstanceVariable:@"_pid" withType:"i"];
  objc_storeStrong(v4, obj);
}

- (id)_accessibilityGetRemoteElementArray
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &___UIRemoteViewAccessibility___accessibilityGetRemoteElementArray);
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

- (id)_accessibilityRemoteElementCommunicationQueue
{
  if (a1)
  {
    v4 = &_accessibilityRemoteElementCommunicationQueue_onceToken;
    location = 0;
    objc_storeStrong(&location, &__block_literal_global_59);
    if (*v4 != -1)
    {
      dispatch_once(v4, location);
    }

    objc_storeStrong(&location, 0);
    v2 = MEMORY[0x29EDC9748](_accessibilityRemoteElementCommunicationQueue_q);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(_UIRemoteViewAccessibility *)self _accessibilityUnregisterRemoteView];
  v2.receiver = v4;
  v2.super_class = _UIRemoteViewAccessibility;
  [(_UIRemoteViewAccessibility *)&v2 dealloc];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9 = a3;
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (([(_UIRemoteViewAccessibility *)v8 pointInside:location[0] withEvent:v9.x, v9.y]& 1) != 0)
  {
    v6 = [(_UIRemoteViewAccessibility *)v8 accessibilityElements];
    v10 = [v6 lastObject];
    MEMORY[0x29EDC9740](v6);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v10;

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIRemoteViewAccessibility;
  [(_UIRemoteViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UIRemoteViewAccessibility *)v4 _accessibilitySetRemoteElementIfNecessary];
}

- (void)_accessibilitySetRemoteElementIfNecessary
{
  v75 = *MEMORY[0x29EDCA608];
  v68 = a1;
  if (a1)
  {
    if (([MEMORY[0x29EDBA108] isMainThread] & 1) == 0)
    {
      _AXAssert();
    }

    v67 = [(_UIRemoteViewAccessibility *)v68 _accessibilityGetRemoteElementArray];
    if (!v67)
    {
      v39 = [v68 safeValueForKey:@"layer"];
      v40 = [v39 contextId];
      MEMORY[0x29EDC9740](v39);
      v66 = v40;
      v65 = [(_UIRemoteViewAccessibility *)v68 _accessibilityRemoteViewPid];
      v64 = [(_UIRemoteViewAccessibility *)v68 _accessibilityRemoteMachPort];
      v62 = 0;
      v41 = 0;
      if (!v65)
      {
        v37 = [v68 safeValueForKey:@"superview"];
        v63 = v37;
        v38 = 1;
        v62 = 1;
        NSClassFromString(&cfstr_Uisizetracking_0.isa);
        v41 = objc_opt_isKindOfClass() ^ 1;
      }

      v36 = v41;
      if (v62)
      {
        MEMORY[0x29EDC9740](v63);
      }

      if (v36)
      {
        v35 = [v68 safeValueForKey:@"hostedWindowHostingHandle"];
        v65 = [v35 safeIntForKey:@"_pid"];
        MEMORY[0x29EDC9740](v35);
      }

      if (v65)
      {
        v22 = MEMORY[0x29EDB8ED8];
        v55 = CFUUIDCreate(*MEMORY[0x29EDB8ED8]);
        v69 = CFUUIDCreateString(*v22, v55);
        v23 = v69;
        v1 = v69;
        v54 = v69;
        if (v55)
        {
          CFRelease(v55);
          v55 = 0;
        }

        v53 = [objc_alloc(MEMORY[0x29EDBD800]) initWithUUID:v54 andRemotePid:v65 andContextId:v66];
        [v53 setOnClientSide:1];
        [v53 setAccessibilityContainer:v68];
        [v53 setMachPort:v64];
        v71 = v53;
        v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v71 count:1];
        v3 = v67;
        v67 = v2;
        MEMORY[0x29EDC9740](v3);
        [(_UIRemoteViewAccessibility *)v68 _accessibilitySetRemoteElementArray:v67];
        v17 = MEMORY[0x29EDB8DC0];
        v16 = 0x29EDBA000uLL;
        v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v64];
        v15 = MEMORY[0x29EDBA070];
        v20 = [MEMORY[0x29EDBA070] numberWithInt:getpid()];
        v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v66];
        v4 = *MEMORY[0x29EDB8F00];
        v18 = &v5;
        v52 = [v17 dictionaryWithObjectsAndKeys:{v21, @"ax-machport", v20, @"ax-pid", v19, @"ax-context", v54, @"ax-uuid", v4, @"ax-register", 0}];
        MEMORY[0x29EDC9740](v19);
        MEMORY[0x29EDC9740](v20);
        MEMORY[0x29EDC9740](v21);
        oslog = AXLogRemoteElement();
        v50 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          v12 = oslog;
          *v13 = v50;
          v14 = v70;
          __os_log_helper_16_2_3_8_64_4_0_8_64(v70, v68, v65, v52);
          _os_log_impl(&dword_29C4D6000, v12, v13[0], "%@: transmitting UUID to remote side with pid: %d, value: %@", v14, 0x1Cu);
        }

        obj = 0;
        objc_storeStrong(&oslog, 0);
        queue = [(_UIRemoteViewAccessibility *)v68 _accessibilityRemoteElementCommunicationQueue];
        block = &v42;
        v42 = MEMORY[0x29EDCA5F8];
        v43 = -1073741824;
        v44 = 0;
        v45 = __71___UIRemoteViewAccessibility__accessibilitySetRemoteElementIfNecessary__block_invoke;
        v46 = &unk_29F30CF28;
        v9 = v47;
        v47[0] = MEMORY[0x29EDC9748](v68);
        v48 = v65;
        v49 = v64;
        v8 = (block + 40);
        v10 = &v52;
        v47[1] = MEMORY[0x29EDC9748](v52);
        dispatch_async(queue, block);
        MEMORY[0x29EDC9740](queue);
        objc_storeStrong(v8, obj);
        objc_storeStrong(v9, obj);
        objc_storeStrong(v10, obj);
        objc_storeStrong(&v53, obj);
        objc_storeStrong(&v54, obj);
      }

      else if (_AXSApplicationAccessibilityEnabled())
      {
        if ([v68 _accessibilityBoolValueForKey:@"AXDidRequestRemoteViewLoad"])
        {
          v59 = AXLogRemoteElement();
          v58 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            v27 = v59;
            *v28 = v58;
            v29 = v73;
            __os_log_helper_16_2_1_8_64(v73, v68);
            _os_log_impl(&dword_29C4D6000, v59, v58, "%@: no remote pid, but already requested a remote view load once", v73, 0xCu);
          }

          objc_storeStrong(&v59, 0);
        }

        else
        {
          [v68 _accessibilitySetBoolValue:1 forKey:@"AXDidRequestRemoteViewLoad"];
          location = AXLogRemoteElement();
          v60 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
          {
            log = location;
            *type = v60;
            buf = v74;
            __os_log_helper_16_2_1_8_64(v74, v68);
            _os_log_impl(&dword_29C4D6000, location, v60, "%@: no remote pid set, so requesting that info from the remote view controller", v74, 0xCu);
          }

          v30 = 0;
          objc_storeStrong(&location, 0);
          v31 = [MEMORY[0x29EDBA068] defaultCenter];
          [v31 postNotificationName:@"AXRequestRemoteViewLoad" object:0];
          MEMORY[0x29EDC9740](v31);
        }
      }

      else
      {
        v57 = AXLogRemoteElement();
        v56 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v24 = v57;
          *v25 = v56;
          v26 = v72;
          __os_log_helper_16_2_1_8_64(v72, v68);
          _os_log_impl(&dword_29C4D6000, v57, v56, "%@: no remote pid, but AX is not enabled so there's no use trying to get that info yet", v72, 0xCu);
        }

        objc_storeStrong(&v57, 0);
      }
    }

    objc_storeStrong(&v67, 0);
  }
}

- (id)_accessibilityActiveKeyboard
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [(_UIRemoteViewAccessibility *)self _accessibilityGetRemoteElementArray];
  v4 = [v5[0] lastObject];
  v3 = [v4 _accessibilityActiveKeyboard];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);

  return v3;
}

- (id)_accessibilityResponderElement
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [(_UIRemoteViewAccessibility *)self _accessibilityGetRemoteElementArray];
  v4 = [v5[0] lastObject];
  v3 = [v4 _accessibilityResponderElement];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);

  return v3;
}

- (void)_accessibilityTransmitRemoteUUIDToPid:(int)a3 machPort:(id)obj value:
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = a1;
  v23 = a2;
  v22 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v24)
  {
    v7 = [(_UIRemoteViewAccessibility *)v24 _accessibilityRemoteElementCommunicationQueue];
    dispatch_assert_queue_V2(v7);
    MEMORY[0x29EDC9740](v7);
    AppElementWithPid = _AXUIElementCreateAppElementWithPid();
    AXUIElementSetMessagingTimeout(AppElementWithPid, 1.0);
    if (!v22)
    {
      v22 = [*MEMORY[0x29EDC8008] _accessibilityMachPort];
      v18 = AXLogRemoteElement();
      v17 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v25, v22);
        _os_log_impl(&dword_29C4D6000, v18, v17, "mach port was not initialized by the remote view controller, so using app's mach port %u", v25, 8u);
      }

      objc_storeStrong(&v18, 0);
    }

    _AXUIElementSetMachPortForNextMessage();
    v16 = AXUIElementPerformFencedActionWithValue();
    v5 = MEMORY[0x29EDCA578];
    v4 = MEMORY[0x29EDCA578];
    queue = v5;
    v8 = MEMORY[0x29EDCA5F8];
    v9 = -1073741824;
    v10 = 0;
    v11 = __83___UIRemoteViewAccessibility__accessibilityTransmitRemoteUUIDToPid_machPort_value___block_invoke;
    v12 = &unk_29F30DC40;
    v14 = v16;
    v13[0] = MEMORY[0x29EDC9748](v24);
    v15 = v23;
    v13[1] = AppElementWithPid;
    dispatch_async(queue, &v8);
    MEMORY[0x29EDC9740](queue);
    objc_storeStrong(v13, 0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (id)accessibilityElements
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [(_UIRemoteViewAccessibility *)self _accessibilityGetRemoteElementArray];
  if (!v4[0])
  {
    [(_UIRemoteViewAccessibility *)v5 _accessibilitySetRemoteElementIfNecessary];
    v4[0] = [(_UIRemoteViewAccessibility *)v5 _accessibilityGetRemoteElementArray];
    MEMORY[0x29EDC9740](0);
  }

  v3 = MEMORY[0x29EDC9748](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)_accessibilityUnregisterRemoteView
{
  v47 = *MEMORY[0x29EDCA608];
  v43 = self;
  v42 = a2;
  v41 = [(_UIRemoteViewAccessibility *)self _accessibilityRemoteViewPid];
  v40 = [(_UIRemoteViewAccessibility *)v43 _accessibilityRemoteMachPort];
  if (v41)
  {
    v39 = [(_UIRemoteViewAccessibility *)v43 _accessibilityGetRemoteElementArray];
    v25 = __b;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v39);
    v27 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
    if (v27)
    {
      v22 = *__b[2];
      v23 = 0;
      v24 = v27;
      while (1)
      {
        v20 = v24;
        v21 = v23;
        if (*__b[2] != v22)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(__b[1] + 8 * v21);
        v15 = MEMORY[0x29EDB8DC0];
        v13 = 0x29EDBA000uLL;
        v12 = MEMORY[0x29EDBA070];
        v19 = [MEMORY[0x29EDBA070] numberWithInt:getpid()];
        v14 = *(v13 + 112);
        v2 = [v38 contextId];
        v18 = [v14 numberWithUnsignedInt:v2];
        v17 = [v38 uuid];
        v3 = *MEMORY[0x29EDB8EF8];
        v16 = &v5;
        v36 = [v15 dictionaryWithObjectsAndKeys:{v19, @"ax-pid", v18, @"ax-context", v17, @"ax-uuid", v3, @"ax-register", 0}];
        MEMORY[0x29EDC9740](v17);
        MEMORY[0x29EDC9740](v18);
        MEMORY[0x29EDC9740](v19);
        v45 = &_accessibilityUnregisterRemoteView_onceToken;
        location = 0;
        objc_storeStrong(&location, &__block_literal_global_370);
        if (*v45 != -1)
        {
          dispatch_once(v45, location);
        }

        v11 = 0;
        objc_storeStrong(&location, 0);
        queue = _accessibilityUnregisterRemoteView_UnregisterQueue;
        block = &v28;
        v28 = MEMORY[0x29EDCA5F8];
        v29 = -1073741824;
        v30 = 0;
        v31 = __64___UIRemoteViewAccessibility__accessibilityUnregisterRemoteView__block_invoke_2;
        v32 = &unk_29F30C690;
        v34 = v41;
        v9 = &v33;
        v10 = &v36;
        v33 = MEMORY[0x29EDC9748](v36);
        v35 = v40;
        dispatch_async(queue, block);
        [v38 setAccessibilityContainer:v11];
        [v38 unregister];
        objc_storeStrong(v9, v11);
        objc_storeStrong(v10, v11);
        v23 = v21 + 1;
        v24 = v20;
        if (v21 + 1 >= v20)
        {
          v4 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
          v23 = 0;
          v24 = v4;
          if (!v4)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v6 = 0;
    [(_UIRemoteViewAccessibility *)v43 _accessibilitySetRemoteElementArray:?];
    objc_storeStrong(&v39, v6);
  }
}

- (void)_accessibilitySetFocusOnElement:(BOOL)a3
{
  v3 = [(_UIRemoteViewAccessibility *)self accessibilityContainer];
  [v3 _accessibilitySetFocusOnElement:a3];
  MEMORY[0x29EDC9740](v3);
}

@end