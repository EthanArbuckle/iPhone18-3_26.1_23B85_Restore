@interface CKAutoloopMovieBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axBalloonViewCustomActions;
- (id)accessibilityValue;
@end

@implementation CKAutoloopMovieBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKAutoloopMovieBalloonView" hasInstanceVariable:@"_isMuted" withType:"B"];
  [v3 validateClass:@"CKAutoloopMovieBalloonView" hasInstanceMethod:@"setIsMuted:" withFullSignature:{"v", "B", 0}];
}

- (id)accessibilityValue
{
  if ([(CKAutoloopMovieBalloonViewAccessibility *)self safeBoolForKey:@"_isMuted"])
  {
    v3 = @"autoloop.movie.muted";
  }

  else
  {
    v3 = @"autoloop.movie.unmuted";
  }

  v4 = accessibilityLocalizedString(v3);
  v8.receiver = self;
  v8.super_class = CKAutoloopMovieBalloonViewAccessibility;
  v7 = [(CKAutoloopMovieBalloonViewAccessibility *)&v8 accessibilityValue];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (id)_axBalloonViewCustomActions
{
  v3 = MEMORY[0x29EDB8DE8];
  v13.receiver = self;
  v13.super_class = CKAutoloopMovieBalloonViewAccessibility;
  v4 = [(CKAutoloopMovieBalloonViewAccessibility *)&v13 _axBalloonViewCustomActions];
  v5 = [v3 axArrayWithPossiblyNilArrays:{1, v4}];

  v6 = [(CKAutoloopMovieBalloonViewAccessibility *)self safeBoolForKey:@"_isMuted"];
  v7 = objc_alloc(MEMORY[0x29EDC78E0]);
  if (v6)
  {
    v8 = @"autoloop.movie.action.unmute";
  }

  else
  {
    v8 = @"autoloop.movie.action.mute";
  }

  if (v6)
  {
    v9 = &selRef__axUnmuteAutoloopMovie;
  }

  else
  {
    v9 = &selRef__axMuteAutoloopMovie;
  }

  v10 = accessibilityLocalizedString(v8);
  v11 = [v7 initWithName:v10 target:self selector:*v9];

  [v5 axSafelyAddObject:v11];

  return v5;
}

@end