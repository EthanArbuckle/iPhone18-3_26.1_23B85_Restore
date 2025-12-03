@interface SRSiriViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)siriDidDeactivateWithCompletion:(id)completion;
- (void)siriSessionDidTransitionFromState:(int64_t)state toState:(int64_t)toState event:(int64_t)event machAbsoluteTransitionTime:(double)time;
- (void)speechSynthesisDidStartSpeakingWithIdentifier:(id)identifier;
- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)identifier queueIsEmpty:(BOOL)empty;
@end

@implementation SRSiriViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SRSiriViewController" hasInstanceMethod:@"speechSynthesisDidStopSpeakingWithIdentifier:queueIsEmpty:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"SRSiriViewController" hasInstanceMethod:@"speechSynthesisDidStartSpeakingWithIdentifier:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SRSiriViewController" hasInstanceMethod:@"siriDidDeactivateWithCompletion:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SRSiriViewController" hasInstanceMethod:@"siriSessionDidTransitionFromState:toState:event:machAbsoluteTransitionTime:" withFullSignature:{"v", "q", "q", "q", "d", 0}];
}

- (void)siriDidDeactivateWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __69__SRSiriViewControllerAccessibility_siriDidDeactivateWithCompletion___block_invoke;
  v7[3] = &unk_29F2F8968;
  v8 = completionCopy;
  v6.receiver = self;
  v6.super_class = SRSiriViewControllerAccessibility;
  v5 = completionCopy;
  [(SRSiriViewControllerAccessibility *)&v6 siriDidDeactivateWithCompletion:v7];
}

void __69__SRSiriViewControllerAccessibility_siriDidDeactivateWithCompletion___block_invoke(uint64_t a1)
{
  UIAccessibilityPostNotification(0x1645u, 0);
  UIAccessibilityPostNotification(0x1647u, 0);
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v3, 0);
}

- (void)speechSynthesisDidStartSpeakingWithIdentifier:(id)identifier
{
  v3.receiver = self;
  v3.super_class = SRSiriViewControllerAccessibility;
  [(SRSiriViewControllerAccessibility *)&v3 speechSynthesisDidStartSpeakingWithIdentifier:identifier];
  UIAccessibilityPostNotification(0x1644u, 0);
}

- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)identifier queueIsEmpty:(BOOL)empty
{
  emptyCopy = empty;
  v5.receiver = self;
  v5.super_class = SRSiriViewControllerAccessibility;
  [(SRSiriViewControllerAccessibility *)&v5 speechSynthesisDidStopSpeakingWithIdentifier:identifier queueIsEmpty:?];
  if (emptyCopy)
  {
    UIAccessibilityPostNotification(0x1645u, 0);
  }
}

- (void)siriSessionDidTransitionFromState:(int64_t)state toState:(int64_t)toState event:(int64_t)event machAbsoluteTransitionTime:(double)time
{
  v9.receiver = self;
  v9.super_class = SRSiriViewControllerAccessibility;
  [(SRSiriViewControllerAccessibility *)&v9 siriSessionDidTransitionFromState:state toState:toState event:event machAbsoluteTransitionTime:time];
  if (toState == 1)
  {
    v8 = 5702;
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    v8 = 5703;
  }

  UIAccessibilityPostNotification(v8, 0);
}

@end