@interface CHWorkoutFormattingManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)formattedDurationForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (void)_fetchIconForConnectedGymWorkout:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_fetchIconForFirstPartyWorkout:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_fetchIconForHiddenAppWorkout:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_fetchIconForThirdPartyWorkout:(id)a3 context:(id)a4 completion:(id)a5;
@end

@implementation CHWorkoutFormattingManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"formattedDurationForWorkout:workoutActivity:context:" withFullSignature:{"@", "@", "@", "@", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"_fetchIconForConnectedGymWorkout:context:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"_fetchIconForHiddenAppWorkout:context:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"_fetchIconForFirstPartyWorkout:context:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"_fetchIconForThirdPartyWorkout:context:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"HKWorkout" hasInstanceMethod:@"shouldUseCircularGradientImage" withFullSignature:{"B", 0}];
  [v3 validateClass:@"HKWorkout" hasInstanceMethod:@"fiui_completionFactor" withFullSignature:{"d", 0}];
}

- (id)formattedDurationForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = CHWorkoutFormattingManagerAccessibility;
  v11 = [(CHWorkoutFormattingManagerAccessibility *)&v22 formattedDurationForWorkout:v8 workoutActivity:v9 context:v10];
  v21 = 0;
  objc_opt_class();
  v20.receiver = self;
  v20.super_class = CHWorkoutFormattingManagerAccessibility;
  v12 = [(CHWorkoutFormattingManagerAccessibility *)&v20 formattedDurationForWorkout:v8 workoutActivity:v9 context:v10];
  v13 = __UIAccessibilityCastAsClass();

  if (v21 == 1)
  {
    abort();
  }

  v14 = [v13 string];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [AXAttributedString alloc];
    v17 = [v13 string];
    v18 = [v16 initWithString:v17];

    [v18 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenDurationTimeHHMMSS];
    [v13 setAccessibilityLabel:v18];
  }

  return v13;
}

- (void)_fetchIconForConnectedGymWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __95__CHWorkoutFormattingManagerAccessibility__fetchIconForConnectedGymWorkout_context_completion___block_invoke;
  v11[3] = &unk_1C500;
  v12 = a3;
  v13 = a5;
  v10.receiver = self;
  v10.super_class = CHWorkoutFormattingManagerAccessibility;
  v8 = v13;
  v9 = v12;
  [(CHWorkoutFormattingManagerAccessibility *)&v10 _fetchIconForConnectedGymWorkout:v9 context:a4 completion:v11];
}

void __95__CHWorkoutFormattingManagerAccessibility__fetchIconForConnectedGymWorkout_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) device];
  v4 = [v3 name];
  [v6 setAccessibilityLabel:v4];

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (void)_fetchIconForHiddenAppWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __92__CHWorkoutFormattingManagerAccessibility__fetchIconForHiddenAppWorkout_context_completion___block_invoke;
  v10[3] = &unk_1C528;
  v11 = a5;
  v9.receiver = self;
  v9.super_class = CHWorkoutFormattingManagerAccessibility;
  v8 = v11;
  [(CHWorkoutFormattingManagerAccessibility *)&v9 _fetchIconForHiddenAppWorkout:a3 context:a4 completion:v10];
}

void __92__CHWorkoutFormattingManagerAccessibility__fetchIconForHiddenAppWorkout_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = AXAppNameForBundleId();
  [v5 setAccessibilityLabel:v3];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)_fetchIconForFirstPartyWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __93__CHWorkoutFormattingManagerAccessibility__fetchIconForFirstPartyWorkout_context_completion___block_invoke;
  v11[3] = &unk_1C500;
  v12 = a3;
  v13 = a5;
  v10.receiver = self;
  v10.super_class = CHWorkoutFormattingManagerAccessibility;
  v8 = v13;
  v9 = v12;
  [(CHWorkoutFormattingManagerAccessibility *)&v10 _fetchIconForFirstPartyWorkout:v9 context:a4 completion:v11];
}

uint64_t __93__CHWorkoutFormattingManagerAccessibility__fetchIconForFirstPartyWorkout_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([*(a1 + 32) safeBoolForKey:@"shouldUseCircularGradientImage"] & 1) == 0)
  {
    v3 = accessibilityDescriptionForGoalType([*(a1 + 32) _goalType]);
    if ([*(a1 + 32) _goalType])
    {
      [*(a1 + 32) safeDoubleForKey:@"fiui_completionFactor"];
      v4 = UIAXFormatFloatWithPercentage();
    }

    else
    {
      v4 = 0;
    }

    v5 = __UIAXStringForVariables();
    [v8 setAccessibilityLabel:{v5, v4, @"__AXStringForVariablesSentinel"}];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
  }

  return _objc_release_x1();
}

- (void)_fetchIconForThirdPartyWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __93__CHWorkoutFormattingManagerAccessibility__fetchIconForThirdPartyWorkout_context_completion___block_invoke;
  v11[3] = &unk_1C500;
  v12 = a3;
  v13 = a5;
  v10.receiver = self;
  v10.super_class = CHWorkoutFormattingManagerAccessibility;
  v8 = v13;
  v9 = v12;
  [(CHWorkoutFormattingManagerAccessibility *)&v10 _fetchIconForThirdPartyWorkout:v9 context:a4 completion:v11];
}

void __93__CHWorkoutFormattingManagerAccessibility__fetchIconForThirdPartyWorkout_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) sourceRevision];
  v4 = [v3 source];
  v5 = [v4 name];
  [v7 setAccessibilityLabel:v5];

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

@end