@interface SRSiriViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)siriDidDeactivateWithCompletion:(id)a3;
- (void)siriSessionDidTransitionFromState:(int64_t)a3 toState:(int64_t)a4 event:(int64_t)a5 machAbsoluteTransitionTime:(double)a6;
- (void)speechSynthesisDidStartSpeakingWithIdentifier:(id)a3;
- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)a3 queueIsEmpty:(BOOL)a4;
@end

@implementation SRSiriViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SRSiriViewController" hasInstanceMethod:@"speechSynthesisDidStopSpeakingWithIdentifier:queueIsEmpty:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"SRSiriViewController" hasInstanceMethod:@"speechSynthesisDidStartSpeakingWithIdentifier:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SRSiriViewController" hasInstanceMethod:@"siriDidDeactivateWithCompletion:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"SRSiriViewController" hasInstanceMethod:@"siriSessionDidTransitionFromState:toState:event:machAbsoluteTransitionTime:" withFullSignature:{"v", "q", "q", "q", "d", 0}];
}

- (void)siriDidDeactivateWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __69__SRSiriViewControllerAccessibility_siriDidDeactivateWithCompletion___block_invoke;
  v7[3] = &unk_29F2F8968;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SRSiriViewControllerAccessibility;
  v5 = v4;
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

- (void)speechSynthesisDidStartSpeakingWithIdentifier:(id)a3
{
  v3.receiver = self;
  v3.super_class = SRSiriViewControllerAccessibility;
  [(SRSiriViewControllerAccessibility *)&v3 speechSynthesisDidStartSpeakingWithIdentifier:a3];
  UIAccessibilityPostNotification(0x1644u, 0);
}

- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)a3 queueIsEmpty:(BOOL)a4
{
  v4 = a4;
  v5.receiver = self;
  v5.super_class = SRSiriViewControllerAccessibility;
  [(SRSiriViewControllerAccessibility *)&v5 speechSynthesisDidStopSpeakingWithIdentifier:a3 queueIsEmpty:?];
  if (v4)
  {
    UIAccessibilityPostNotification(0x1645u, 0);
  }
}

- (void)siriSessionDidTransitionFromState:(int64_t)a3 toState:(int64_t)a4 event:(int64_t)a5 machAbsoluteTransitionTime:(double)a6
{
  v9.receiver = self;
  v9.super_class = SRSiriViewControllerAccessibility;
  [(SRSiriViewControllerAccessibility *)&v9 siriSessionDidTransitionFromState:a3 toState:a4 event:a5 machAbsoluteTransitionTime:a6];
  if (a4 == 1)
  {
    v8 = 5702;
  }

  else
  {
    if (a3 != 1)
    {
      return;
    }

    v8 = 5703;
  }

  UIAccessibilityPostNotification(v8, 0);
}

@end