@interface TVShowPlayBarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityPerformMoreAction:(id)a3;
- (BOOL)_accessibilityPerformPlayAction:(id)a3;
- (id)_axContextActionButton;
- (id)_axPlayButton;
- (id)accessibilityCustomActions;
- (id)automationElements;
@end

@implementation TVShowPlayBarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.TVShowPlayBarView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.TVShowPlayBarView" hasInstanceMethod:@"accessibilityPlayButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.TVShowPlayBarView" hasInstanceMethod:@"accessibilityContextualActionsButton" withFullSignature:{"@", 0}];
}

- (id)_axPlayButton
{
  objc_opt_class();
  v3 = [(TVShowPlayBarViewAccessibility *)self safeValueForKey:@"accessibilityPlayButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityMusicLocalizedString(@"play.button");
  [v4 setAccessibilityLabel:v5];

  return v4;
}

- (id)_axContextActionButton
{
  objc_opt_class();
  v3 = [(TVShowPlayBarViewAccessibility *)self safeValueForKey:@"accessibilityContextualActionsButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityMusicLocalizedString(@"more.button");
  [v4 setAccessibilityLabel:v5];

  return v4;
}

- (BOOL)_accessibilityPerformMoreAction:(id)a3
{
  v3 = [(TVShowPlayBarViewAccessibility *)self _axContextActionButton];
  [v3 accessibilityActivate];

  return 1;
}

- (BOOL)_accessibilityPerformPlayAction:(id)a3
{
  v3 = [(TVShowPlayBarViewAccessibility *)self _axPlayButton];
  [v3 accessibilityActivate];

  return 1;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(TVShowPlayBarViewAccessibility *)self _axPlayButton];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityMusicLocalizedString(@"play.button");
    v7 = [v5 initWithName:v6 target:self selector:sel__accessibilityPerformPlayAction_];

    [v3 addObject:v7];
  }

  v8 = [(TVShowPlayBarViewAccessibility *)self _axContextActionButton];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x29EDC78E0]);
    v10 = accessibilityMusicLocalizedString(@"more.button");
    v11 = [v9 initWithName:v10 target:self selector:sel__accessibilityPerformMoreAction_];

    [v3 addObject:v11];
  }

  v15.receiver = self;
  v15.super_class = TVShowPlayBarViewAccessibility;
  v12 = [(TVShowPlayBarViewAccessibility *)&v15 accessibilityCustomActions];
  v13 = [v3 arrayByAddingObjectsFromArray:v12];

  return v13;
}

- (id)automationElements
{
  v11.receiver = self;
  v11.super_class = TVShowPlayBarViewAccessibility;
  v3 = [(TVShowPlayBarViewAccessibility *)&v11 automationElements];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = v6;

  v8 = [(TVShowPlayBarViewAccessibility *)self _axPlayButton];
  [v7 axSafelyAddObject:v8];

  v9 = [(TVShowPlayBarViewAccessibility *)self _axContextActionButton];
  [v7 axSafelyAddObject:v9];

  return v7;
}

@end