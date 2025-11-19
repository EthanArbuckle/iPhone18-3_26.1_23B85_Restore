@interface WKAccessibilityWebPageObjectAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (WKAccessibilityWebPageObjectAccessibility)init;
- (id)_accessibilityApplication;
- (id)_accessibilityResponderElement;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_axUnarchivedTokenForData:(id)a3;
- (id)accessibilityElements;
- (id)accessibilityHitTest:(CGPoint)a3;
- (id)accessibilityRemoteSubstituteChildren:(id)a3;
- (int)_accessibilityHostPid;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axCachedRootObject;
- (void)_axListenForRemoteElement;
- (void)_axRemoteElementRegistered:(id)a3;
- (void)_axSetCachedRootObject:(id)a3;
- (void)_disableCaching;
- (void)_enableCaching;
- (void)_initializeRootIfNecessary;
- (void)dealloc;
- (void)setRemoteTokenData:(id)a3;
@end

@implementation WKAccessibilityWebPageObjectAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WKAccessibilityWebPageObject" hasInstanceMethod:@"setRemoteTokenData:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"WKAccessibilityWebPageObject" hasInstanceMethod:@"_accessibilityCategoryInstalled:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"WKAccessibilityWebPageObject" hasInstanceMethod:@"remoteTokenData" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WKAccessibilityWebPageObject" hasInstanceMethod:@"accessibilityHitTest:" withFullSignature:{"@", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"WKAccessibilityWebPageObjectBase" hasInstanceMethod:@"accessibilityRootObjectWrapper" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WKAccessibilityWebPageObjectBase" hasInstanceMethod:@"accessibilityFocusedUIElement" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WKAccessibilityWebPageObject" isKindOfClass:@"WKAccessibilityWebPageObjectBase"];
  [v3 validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"enableAttributeCaching" withFullSignature:{"v", 0}];
  [v3 validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"disableAttributeCaching" withFullSignature:{"v", 0}];
}

- (WKAccessibilityWebPageObjectAccessibility)init
{
  v4.receiver = self;
  v4.super_class = WKAccessibilityWebPageObjectAccessibility;
  v2 = [(WKAccessibilityWebPageObjectAccessibility *)&v4 init];
  [(WKAccessibilityWebPageObjectAccessibility *)v2 _accessibilityLoadAccessibilityInformation];

  return v2;
}

- (void)dealloc
{
  v3 = [(WKAccessibilityWebPageObjectAccessibility *)self _accessibilityValueForKey:@"axRemoteElement"];
  v4 = [v3 remoteChildrenDelegate];

  if (v4 == self)
  {
    [v3 setRemoteChildrenDelegate:0];
    [v3 unregister];
  }

  [(WKAccessibilityWebPageObjectAccessibility *)self _accessibilityUnregister];

  v5.receiver = self;
  v5.super_class = WKAccessibilityWebPageObjectAccessibility;
  [(WKAccessibilityWebPageObjectAccessibility *)&v5 dealloc];
}

- (int)_accessibilityHostPid
{
  v2 = [(WKAccessibilityWebPageObjectAccessibility *)self _accessibilityValueForKey:@"axRemoteElement"];
  if ([v2 remotePid] < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 remotePid];
  }

  return v3;
}

- (id)_accessibilityApplication
{
  v2 = [(WKAccessibilityWebPageObjectAccessibility *)self _accessibilityValueForKey:@"axRemoteElement"];
  if ([v2 remotePid] < 1)
  {
    AppElementWithPid = 0;
  }

  else
  {
    [v2 remotePid];
    AppElementWithPid = _AXUIElementCreateAppElementWithPid();
  }

  return AppElementWithPid;
}

- (id)accessibilityHitTest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(WKAccessibilityWebPageObjectAccessibility *)self _initializeRootIfNecessary];
  v8.receiver = self;
  v8.super_class = WKAccessibilityWebPageObjectAccessibility;
  v6 = [(WKAccessibilityWebPageObjectAccessibility *)&v8 accessibilityHitTest:x, y];

  return v6;
}

- (void)_enableCaching
{
  v2 = [(WKAccessibilityWebPageObjectAccessibility *)self accessibilityElements];
  v4 = [v2 firstObject];

  if (objc_opt_respondsToSelector())
  {
    v3 = [v4 safeValueForKey:@"enableAttributeCaching"];
  }
}

- (void)_disableCaching
{
  v2 = [(WKAccessibilityWebPageObjectAccessibility *)self accessibilityElements];
  v4 = [v2 firstObject];

  if (objc_opt_respondsToSelector())
  {
    v3 = [v4 safeValueForKey:@"disableAttributeCaching"];
  }
}

- (id)_accessibilityResponderElement
{
  [(WKAccessibilityWebPageObjectAccessibility *)self _initializeRootIfNecessary];
  v3 = [(WKAccessibilityWebPageObjectAccessibility *)self safeValueForKey:@"accessibilityFocusedUIElement"];
  v4 = [v3 _accessibilityFindDescendant:&__block_literal_global_0];

  return v4;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  v2 = [(WKAccessibilityWebPageObjectAccessibility *)self accessibilityContainer];
  v3 = __UIAccessibilitySafeClass();

  [v3 setOnClientSide:1];
  v4 = _AXCreateAXUIElementWithElement();
  [v3 setOnClientSide:0];

  return v4;
}

- (void)_axCachedRootObject
{
  v2 = [(WKAccessibilityWebPageObjectAccessibility *)self _accessibilityValueForKey:@"AXRootObjectCache"];
  v3 = [v2 pointerValue];

  return v3;
}

- (void)_axSetCachedRootObject:(id)a3
{
  v4 = [MEMORY[0x29EDBA168] valueWithPointer:a3];
  [(WKAccessibilityWebPageObjectAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:@"AXRootObjectCache"];
}

- (void)_initializeRootIfNecessary
{
  v7 = [(WKAccessibilityWebPageObjectAccessibility *)self safeValueForKey:@"accessibilityRootObjectWrapper"];
  v3 = [v7 accessibilityContainer];
  if (v3)
  {
    v4 = v3;
    v5 = [(WKAccessibilityWebPageObjectAccessibility *)self _axCachedRootObject];

    v6 = v7;
    if (v7 && v7 != v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = v7;
    if (v7)
    {
LABEL_4:
      [v7 setAccessibilityContainer:self];
      [(WKAccessibilityWebPageObjectAccessibility *)self _axSetCachedRootObject:v7];
      v6 = v7;
    }
  }
}

- (id)accessibilityElements
{
  v6[1] = *MEMORY[0x29EDCA608];
  v3 = [(WKAccessibilityWebPageObjectAccessibility *)self safeValueForKey:@"accessibilityRootObjectWrapper"];
  [(WKAccessibilityWebPageObjectAccessibility *)self _initializeRootIfNecessary];
  if (v3)
  {
    v6[0] = v3;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityRemoteSubstituteChildren:(id)a3
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = self;
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_axRemoteElementRegistered:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"element"];

  if (!v6)
  {
    _AXAssert();
  }

  v7 = [(WKAccessibilityWebPageObjectAccessibility *)self safeValueForKey:@"remoteTokenData"];
  v8 = __UIAccessibilitySafeClass();

  v9 = [(WKAccessibilityWebPageObjectAccessibility *)self _axUnarchivedTokenForData:v8];
  v10 = [v6 uuid];
  v11 = [v9 objectForKey:@"ax-uuid"];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v13 = [(WKAccessibilityWebPageObjectAccessibility *)self _accessibilityValueForKey:@"axRemoteElement"];
    v14 = v13;
    if (v13 != v6)
    {
      [v13 setRemoteChildrenDelegate:0];
      [v14 unregister];
      [v6 setRemoteChildrenDelegate:self];
      [(WKAccessibilityWebPageObjectAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:@"axRemoteElement"];
    }
  }
}

- (void)_axListenForRemoteElement
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel__axRemoteElementRegistered_ name:@"ax_remote_element_registered" object:0];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = WKAccessibilityWebPageObjectAccessibility;
  [(WKAccessibilityWebPageObjectAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  _AXAddToElementCache();
  [(WKAccessibilityWebPageObjectAccessibility *)self _axListenForRemoteElement];
  v3 = [(WKAccessibilityWebPageObjectAccessibility *)self remoteTokenData];
  if (v3)
  {
    v4 = [(WKAccessibilityWebPageObjectAccessibility *)self _axUnarchivedTokenForData:v3];
    [(WKAccessibilityWebPageObjectAccessibility *)self _initializeRemoteElement:v4];
  }
}

- (void)setRemoteTokenData:(id)a3
{
  v6.receiver = self;
  v6.super_class = WKAccessibilityWebPageObjectAccessibility;
  v4 = a3;
  [(WKAccessibilityWebPageObjectAccessibility *)&v6 setRemoteTokenData:v4];
  v5 = [(WKAccessibilityWebPageObjectAccessibility *)self _axUnarchivedTokenForData:v4, v6.receiver, v6.super_class];

  [(WKAccessibilityWebPageObjectAccessibility *)self _initializeRemoteElement:v5];
}

- (CGRect)accessibilityFrame
{
  v2 = [(WKAccessibilityWebPageObjectAccessibility *)self safeValueForKey:@"accessibilityRootObjectWrapper"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v7 = *MEMORY[0x29EDB90B8];
  v8 = *(MEMORY[0x29EDB90B8] + 8);

  v9 = v7;
  v10 = v8;
  v11 = v4;
  v12 = v6;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)_axUnarchivedTokenForData:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x29EDBA000];
  v5 = MEMORY[0x29EDB8E50];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v13 = 0;
  v9 = [v4 unarchivedObjectOfClasses:v8 fromData:v3 error:&v13];
  v10 = v13;

  if (v10)
  {
    v11 = AXLogAppAccessibility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(WKAccessibilityWebPageObjectAccessibility *)v10 _axUnarchivedTokenForData:v3, v11];
    }
  }

  return v9;
}

- (void)_axUnarchivedTokenForData:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_29C7B6000, log, OS_LOG_TYPE_ERROR, "Problem with unarchiving remote token data: %@ %@", &v3, 0x16u);
}

@end