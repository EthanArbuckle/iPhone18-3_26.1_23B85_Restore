@interface WKAccessibilityWebPageObjectAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (WKAccessibilityWebPageObjectAccessibility)init;
- (id)_accessibilityApplication;
- (id)_accessibilityResponderElement;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_axUnarchivedTokenForData:(id)data;
- (id)accessibilityElements;
- (id)accessibilityHitTest:(CGPoint)test;
- (id)accessibilityRemoteSubstituteChildren:(id)children;
- (int)_accessibilityHostPid;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axCachedRootObject;
- (void)_axListenForRemoteElement;
- (void)_axRemoteElementRegistered:(id)registered;
- (void)_axSetCachedRootObject:(id)object;
- (void)_disableCaching;
- (void)_enableCaching;
- (void)_initializeRootIfNecessary;
- (void)dealloc;
- (void)setRemoteTokenData:(id)data;
@end

@implementation WKAccessibilityWebPageObjectAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WKAccessibilityWebPageObject" hasInstanceMethod:@"setRemoteTokenData:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKAccessibilityWebPageObject" hasInstanceMethod:@"_accessibilityCategoryInstalled:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKAccessibilityWebPageObject" hasInstanceMethod:@"remoteTokenData" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WKAccessibilityWebPageObject" hasInstanceMethod:@"accessibilityHitTest:" withFullSignature:{"@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"WKAccessibilityWebPageObjectBase" hasInstanceMethod:@"accessibilityRootObjectWrapper" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WKAccessibilityWebPageObjectBase" hasInstanceMethod:@"accessibilityFocusedUIElement" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WKAccessibilityWebPageObject" isKindOfClass:@"WKAccessibilityWebPageObjectBase"];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"enableAttributeCaching" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"disableAttributeCaching" withFullSignature:{"v", 0}];
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
  remoteChildrenDelegate = [v3 remoteChildrenDelegate];

  if (remoteChildrenDelegate == self)
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
    remotePid = 0;
  }

  else
  {
    remotePid = [v2 remotePid];
  }

  return remotePid;
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

- (id)accessibilityHitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  [(WKAccessibilityWebPageObjectAccessibility *)self _initializeRootIfNecessary];
  v8.receiver = self;
  v8.super_class = WKAccessibilityWebPageObjectAccessibility;
  v6 = [(WKAccessibilityWebPageObjectAccessibility *)&v8 accessibilityHitTest:x, y];

  return v6;
}

- (void)_enableCaching
{
  accessibilityElements = [(WKAccessibilityWebPageObjectAccessibility *)self accessibilityElements];
  firstObject = [accessibilityElements firstObject];

  if (objc_opt_respondsToSelector())
  {
    v3 = [firstObject safeValueForKey:@"enableAttributeCaching"];
  }
}

- (void)_disableCaching
{
  accessibilityElements = [(WKAccessibilityWebPageObjectAccessibility *)self accessibilityElements];
  firstObject = [accessibilityElements firstObject];

  if (objc_opt_respondsToSelector())
  {
    v3 = [firstObject safeValueForKey:@"disableAttributeCaching"];
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
  accessibilityContainer = [(WKAccessibilityWebPageObjectAccessibility *)self accessibilityContainer];
  v3 = __UIAccessibilitySafeClass();

  [v3 setOnClientSide:1];
  v4 = _AXCreateAXUIElementWithElement();
  [v3 setOnClientSide:0];

  return v4;
}

- (void)_axCachedRootObject
{
  v2 = [(WKAccessibilityWebPageObjectAccessibility *)self _accessibilityValueForKey:@"AXRootObjectCache"];
  pointerValue = [v2 pointerValue];

  return pointerValue;
}

- (void)_axSetCachedRootObject:(id)object
{
  v4 = [MEMORY[0x29EDBA168] valueWithPointer:object];
  [(WKAccessibilityWebPageObjectAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:@"AXRootObjectCache"];
}

- (void)_initializeRootIfNecessary
{
  v7 = [(WKAccessibilityWebPageObjectAccessibility *)self safeValueForKey:@"accessibilityRootObjectWrapper"];
  accessibilityContainer = [v7 accessibilityContainer];
  if (accessibilityContainer)
  {
    v4 = accessibilityContainer;
    _axCachedRootObject = [(WKAccessibilityWebPageObjectAccessibility *)self _axCachedRootObject];

    v6 = v7;
    if (v7 && v7 != _axCachedRootObject)
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

- (id)accessibilityRemoteSubstituteChildren:(id)children
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = self;
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_axRemoteElementRegistered:(id)registered
{
  registeredCopy = registered;
  userInfo = [registeredCopy userInfo];
  v6 = [userInfo objectForKey:@"element"];

  if (!v6)
  {
    _AXAssert();
  }

  v7 = [(WKAccessibilityWebPageObjectAccessibility *)self safeValueForKey:@"remoteTokenData"];
  v8 = __UIAccessibilitySafeClass();

  v9 = [(WKAccessibilityWebPageObjectAccessibility *)self _axUnarchivedTokenForData:v8];
  uuid = [v6 uuid];
  v11 = [v9 objectForKey:@"ax-uuid"];
  v12 = [uuid isEqual:v11];

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
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__axRemoteElementRegistered_ name:@"ax_remote_element_registered" object:0];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = WKAccessibilityWebPageObjectAccessibility;
  [(WKAccessibilityWebPageObjectAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  _AXAddToElementCache();
  [(WKAccessibilityWebPageObjectAccessibility *)self _axListenForRemoteElement];
  remoteTokenData = [(WKAccessibilityWebPageObjectAccessibility *)self remoteTokenData];
  if (remoteTokenData)
  {
    v4 = [(WKAccessibilityWebPageObjectAccessibility *)self _axUnarchivedTokenForData:remoteTokenData];
    [(WKAccessibilityWebPageObjectAccessibility *)self _initializeRemoteElement:v4];
  }
}

- (void)setRemoteTokenData:(id)data
{
  v6.receiver = self;
  v6.super_class = WKAccessibilityWebPageObjectAccessibility;
  dataCopy = data;
  [(WKAccessibilityWebPageObjectAccessibility *)&v6 setRemoteTokenData:dataCopy];
  v5 = [(WKAccessibilityWebPageObjectAccessibility *)self _axUnarchivedTokenForData:dataCopy, v6.receiver, v6.super_class];

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

- (id)_axUnarchivedTokenForData:(id)data
{
  dataCopy = data;
  v4 = MEMORY[0x29EDBA000];
  v5 = MEMORY[0x29EDB8E50];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v13 = 0;
  v9 = [v4 unarchivedObjectOfClasses:v8 fromData:dataCopy error:&v13];
  v10 = v13;

  if (v10)
  {
    v11 = AXLogAppAccessibility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(WKAccessibilityWebPageObjectAccessibility *)v10 _axUnarchivedTokenForData:dataCopy, v11];
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