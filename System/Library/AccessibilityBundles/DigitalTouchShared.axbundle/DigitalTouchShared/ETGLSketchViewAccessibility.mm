@interface ETGLSketchViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)animateOutWithCompletion:(id)completion;
@end

@implementation ETGLSketchViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETGLSketchView"];
  [validationsCopy validateClass:@"ETGLSketchView" hasInstanceMethod:@"setPaused:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"ETGLSketchView" hasInstanceMethod:@"animateOutWithCompletion:" withFullSignature:{"v", "@?", 0}];
}

id __41__ETGLSketchViewAccessibility_setPaused___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = ETGLSketchViewAccessibility;
  return objc_msgSendSuper2(&v3, sel_setPaused_, v1);
}

- (void)animateOutWithCompletion:(id)completion
{
  completionCopy = completion;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ETGLSketchViewAccessibility;
    [(ETGLSketchViewAccessibility *)&v5 animateOutWithCompletion:completionCopy];
  }
}

@end