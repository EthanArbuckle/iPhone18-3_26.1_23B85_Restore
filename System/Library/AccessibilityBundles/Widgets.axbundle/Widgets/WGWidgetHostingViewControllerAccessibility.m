@interface WGWidgetHostingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:(id)a3 completionHandler:(id)a4;
@end

@implementation WGWidgetHostingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WGWidgetHostingViewController" hasInstanceMethod:@"_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:completionHandler:" withFullSignature:{"v", "@", "@?", 0}];
  [v3 validateClass:@"WGWidgetLifeCycleSequence" hasInstanceMethod:@"currentState" withFullSignature:{"q", 0}];
}

- (void)_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __124__WGWidgetHostingViewControllerAccessibility__requestInsertionOfRemoteViewAfterViewWillAppearForSequence_completionHandler___block_invoke;
  v11[3] = &unk_29F322938;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x29ED42C50](v11);
  v10.receiver = self;
  v10.super_class = WGWidgetHostingViewControllerAccessibility;
  [(WGWidgetHostingViewControllerAccessibility *)&v10 _requestInsertionOfRemoteViewAfterViewWillAppearForSequence:v8 completionHandler:v9];
}

void __124__WGWidgetHostingViewControllerAccessibility__requestInsertionOfRemoteViewAfterViewWillAppearForSequence_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }

  if ([v5 safeIntegerForKey:@"currentState"] == 4)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end