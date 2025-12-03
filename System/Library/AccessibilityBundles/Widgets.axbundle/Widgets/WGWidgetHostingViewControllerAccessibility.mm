@interface WGWidgetHostingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:(id)sequence completionHandler:(id)handler;
@end

@implementation WGWidgetHostingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WGWidgetHostingViewController" hasInstanceMethod:@"_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:completionHandler:" withFullSignature:{"v", "@", "@?", 0}];
  [validationsCopy validateClass:@"WGWidgetLifeCycleSequence" hasInstanceMethod:@"currentState" withFullSignature:{"q", 0}];
}

- (void)_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:(id)sequence completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __124__WGWidgetHostingViewControllerAccessibility__requestInsertionOfRemoteViewAfterViewWillAppearForSequence_completionHandler___block_invoke;
  v11[3] = &unk_29F322938;
  v12 = handlerCopy;
  v7 = handlerCopy;
  sequenceCopy = sequence;
  v9 = MEMORY[0x29ED42C50](v11);
  v10.receiver = self;
  v10.super_class = WGWidgetHostingViewControllerAccessibility;
  [(WGWidgetHostingViewControllerAccessibility *)&v10 _requestInsertionOfRemoteViewAfterViewWillAppearForSequence:sequenceCopy completionHandler:v9];
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