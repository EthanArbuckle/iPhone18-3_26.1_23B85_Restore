@interface TVShowPlayBarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityPerformMoreAction:(id)action;
- (BOOL)_accessibilityPerformPlayAction:(id)action;
- (id)_axContextActionButton;
- (id)_axPlayButton;
- (id)accessibilityCustomActions;
- (id)automationElements;
@end

@implementation TVShowPlayBarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.TVShowPlayBarView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.TVShowPlayBarView" hasInstanceMethod:@"accessibilityPlayButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.TVShowPlayBarView" hasInstanceMethod:@"accessibilityContextualActionsButton" withFullSignature:{"@", 0}];
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

- (BOOL)_accessibilityPerformMoreAction:(id)action
{
  _axContextActionButton = [(TVShowPlayBarViewAccessibility *)self _axContextActionButton];
  [_axContextActionButton accessibilityActivate];

  return 1;
}

- (BOOL)_accessibilityPerformPlayAction:(id)action
{
  _axPlayButton = [(TVShowPlayBarViewAccessibility *)self _axPlayButton];
  [_axPlayButton accessibilityActivate];

  return 1;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  _axPlayButton = [(TVShowPlayBarViewAccessibility *)self _axPlayButton];

  if (_axPlayButton)
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityMusicLocalizedString(@"play.button");
    v7 = [v5 initWithName:v6 target:self selector:sel__accessibilityPerformPlayAction_];

    [array addObject:v7];
  }

  _axContextActionButton = [(TVShowPlayBarViewAccessibility *)self _axContextActionButton];

  if (_axContextActionButton)
  {
    v9 = objc_alloc(MEMORY[0x29EDC78E0]);
    v10 = accessibilityMusicLocalizedString(@"more.button");
    v11 = [v9 initWithName:v10 target:self selector:sel__accessibilityPerformMoreAction_];

    [array addObject:v11];
  }

  v15.receiver = self;
  v15.super_class = TVShowPlayBarViewAccessibility;
  accessibilityCustomActions = [(TVShowPlayBarViewAccessibility *)&v15 accessibilityCustomActions];
  v13 = [array arrayByAddingObjectsFromArray:accessibilityCustomActions];

  return v13;
}

- (id)automationElements
{
  v11.receiver = self;
  v11.super_class = TVShowPlayBarViewAccessibility;
  automationElements = [(TVShowPlayBarViewAccessibility *)&v11 automationElements];
  v4 = [automationElements mutableCopy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = array;

  _axPlayButton = [(TVShowPlayBarViewAccessibility *)self _axPlayButton];
  [v7 axSafelyAddObject:_axPlayButton];

  _axContextActionButton = [(TVShowPlayBarViewAccessibility *)self _axContextActionButton];
  [v7 axSafelyAddObject:_axContextActionButton];

  return v7;
}

@end