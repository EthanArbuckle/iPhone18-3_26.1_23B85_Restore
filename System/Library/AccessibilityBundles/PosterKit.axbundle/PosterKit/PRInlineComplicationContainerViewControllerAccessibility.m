@interface PRInlineComplicationContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityRemoteSubstituteChildren:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axResetRemoteView;
- (void)_axSetRemoteView;
- (void)_axSetWidgetView;
- (void)invalidate;
- (void)setComplicationDescriptor:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PRInlineComplicationContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PRInlineComplicationContainerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PRInlineComplicationContainerViewController" hasInstanceMethod:@"setComplicationDescriptor:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PRInlineComplicationContainerViewController" hasInstanceMethod:@"invalidate" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PRInlineComplicationContainerViewController" hasInstanceMethod:@"complicationDescriptor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRComplicationDescriptor" hasInstanceMethod:@"widgetDescriptor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIScene" hasInstanceMethod:@"_FBSScene" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FBSScene" hasInstanceMethod:@"hostProcess" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FBSProcess" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PRInlineComplicationContainerViewControllerAccessibility;
  [(PRInlineComplicationContainerViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PRInlineComplicationContainerViewControllerAccessibility *)self _axSetWidgetView];
  [(PRInlineComplicationContainerViewControllerAccessibility *)self _axSetRemoteView];
}

- (void)setComplicationDescriptor:(id)a3
{
  v4.receiver = self;
  v4.super_class = PRInlineComplicationContainerViewControllerAccessibility;
  [(PRInlineComplicationContainerViewControllerAccessibility *)&v4 setComplicationDescriptor:a3];
  [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRInlineComplicationContainerViewControllerAccessibility;
  [(PRInlineComplicationContainerViewControllerAccessibility *)&v4 viewDidAppear:a3];
  [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRInlineComplicationContainerViewControllerAccessibility;
  [(PRInlineComplicationContainerViewControllerAccessibility *)&v4 viewDidDisappear:a3];
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
  v3 = [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilityGetRemoteElement];
  if (!v3)
  {
    v4 = [(PRInlineComplicationContainerViewControllerAccessibility *)self safeUIViewForKey:@"view"];
    v5 = [v4 _accessibilityWindowScene];
    v6 = [v5 safeValueForKeyPath:@"_FBSScene.hostProcess"];
    v7 = [v6 safeIntForKey:@"pid"];

    v8 = [v4 _accessibilityContextId];
    if (v7 && v8)
    {
      v9 = [objc_alloc(MEMORY[0x29EDBD800]) initWithUUID:@"posterboard.posterkit.top.widget" andRemotePid:v7 andContextId:v8];
      [v9 setRemoteChildrenDelegate:self];
      [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilitySetRemoteElement:v9];
    }

    v3 = 0;
  }
}

- (void)_axResetRemoteView
{
  v3 = [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilityGetRemoteElement];
  if (v3)
  {
    v5 = v3;
    v4 = [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilityGetRemoteElement];
    [v4 unregister];

    [(PRInlineComplicationContainerViewControllerAccessibility *)self _accessibilitySetRemoteElement:0];
    v3 = v5;
  }
}

- (id)accessibilityRemoteSubstituteChildren:(id)a3
{
  v3 = [(PRInlineComplicationContainerViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end