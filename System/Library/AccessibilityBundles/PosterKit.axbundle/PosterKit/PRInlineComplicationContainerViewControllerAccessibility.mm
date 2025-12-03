@interface PRInlineComplicationContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityRemoteSubstituteChildren:(id)children;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axResetRemoteView;
- (void)_axSetRemoteView;
- (void)_axSetWidgetView;
- (void)invalidate;
- (void)setComplicationDescriptor:(id)descriptor;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PRInlineComplicationContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PRInlineComplicationContainerViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PRInlineComplicationContainerViewController" hasInstanceMethod:@"setComplicationDescriptor:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PRInlineComplicationContainerViewController" hasInstanceMethod:@"invalidate" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PRInlineComplicationContainerViewController" hasInstanceMethod:@"complicationDescriptor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRComplicationDescriptor" hasInstanceMethod:@"widgetDescriptor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIScene" hasInstanceMethod:@"_FBSScene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FBSScene" hasInstanceMethod:@"hostProcess" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FBSProcess" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PRInlineComplicationContainerViewControllerAccessibility;
  [(PRInlineComplicationContainerViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PRInlineComplicationContainerViewControllerAccessibility *)self _axSetWidgetView];
  [(PRInlineComplicationContainerViewControllerAccessibility *)self _axSetRemoteView];
}

- (void)setComplicationDescriptor:(id)descriptor
{
  v4.receiver = self;
  v4.super_class = PRInlineComplicationContainerViewControllerAccessibility;
  [(PRInlineComplicationContainerViewControllerAccessibility *)&v4 setComplicationDescriptor:descriptor];
  [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PRInlineComplicationContainerViewControllerAccessibility;
  [(PRInlineComplicationContainerViewControllerAccessibility *)&v4 viewDidAppear:appear];
  [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PRInlineComplicationContainerViewControllerAccessibility;
  [(PRInlineComplicationContainerViewControllerAccessibility *)&v4 viewDidDisappear:disappear];
  [(PRInlineComplicationContainerViewControllerAccessibility *)self _axResetRemoteView];
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PRInlineComplicationContainerViewControllerAccessibility;
  [(PRInlineComplicationContainerViewControllerAccessibility *)&v3 invalidate];
  [(PRInlineComplicationContainerViewControllerAccessibility *)self _axResetRemoteView];
}

- (void)_axSetWidgetView
{
  v8 = [(PRInlineComplicationContainerViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v3 = accessibilityLocalizedString(@"default.calendar.widget");
  v4 = [(PRInlineComplicationContainerViewControllerAccessibility *)self safeValueForKey:@"complicationDescriptor"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 safeValueForKey:@"widgetDescriptor"];
    v7 = AXWidgetAndAppName(v6, 1);

    v3 = v7;
  }

  [v8 setAccessibilityLabel:v3];
  [v8 setIsAccessibilityElement:1];
}

- (void)_axSetRemoteView
{
  _accessibilityGetRemoteElement = [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilityGetRemoteElement];
  if (!_accessibilityGetRemoteElement)
  {
    v4 = [(PRInlineComplicationContainerViewControllerAccessibility *)self safeUIViewForKey:@"view"];
    _accessibilityWindowScene = [v4 _accessibilityWindowScene];
    v6 = [_accessibilityWindowScene safeValueForKeyPath:@"_FBSScene.hostProcess"];
    v7 = [v6 safeIntForKey:@"pid"];

    _accessibilityContextId = [v4 _accessibilityContextId];
    if (v7 && _accessibilityContextId)
    {
      v9 = [objc_alloc(MEMORY[0x29EDBD800]) initWithUUID:@"posterboard.posterkit.top.widget" andRemotePid:v7 andContextId:_accessibilityContextId];
      [v9 setRemoteChildrenDelegate:self];
      [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilitySetRemoteElement:v9];
    }

    _accessibilityGetRemoteElement = 0;
  }
}

- (void)_axResetRemoteView
{
  _accessibilityGetRemoteElement = [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilityGetRemoteElement];
  if (_accessibilityGetRemoteElement)
  {
    v5 = _accessibilityGetRemoteElement;
    _accessibilityGetRemoteElement2 = [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilityGetRemoteElement];
    [_accessibilityGetRemoteElement2 unregister];

    [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilitySetRemoteElement:0];
    _accessibilityGetRemoteElement = v5;
  }
}

- (id)accessibilityRemoteSubstituteChildren:(id)children
{
  v3 = [(PRInlineComplicationContainerViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end