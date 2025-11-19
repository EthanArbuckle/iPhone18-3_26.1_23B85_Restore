@interface ETGLSketchViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)animateOutWithCompletion:(id)a3;
@end

@implementation ETGLSketchViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ETGLSketchView"];
  [v3 validateClass:@"ETGLSketchView" hasInstanceMethod:@"setPaused:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"ETGLSketchView" hasInstanceMethod:@"animateOutWithCompletion:" withFullSignature:{"v", "@?", 0}];
}

id __41__ETGLSketchViewAccessibility_setPaused___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = ETGLSketchViewAccessibility;
  return objc_msgSendSuper2(&v3, sel_setPaused_, v1);
}

- (void)animateOutWithCompletion:(id)a3
{
  v4 = a3;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ETGLSketchViewAccessibility;
    [(ETGLSketchViewAccessibility *)&v5 animateOutWithCompletion:v4];
  }
}

@end