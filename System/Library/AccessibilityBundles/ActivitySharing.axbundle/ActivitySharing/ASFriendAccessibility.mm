@interface ASFriendAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (ASFriendAccessibility)initWithActivitySnapshots:(id)a3 friendAchievements:(id)a4 friendWorkouts:(id)a5 contact:(id)a6 competitions:(id)a7;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ASFriendAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ASFriend" hasInstanceVariable:@"_competitions" withType:"NSArray"];
  [v3 validateClass:@"ASFriend" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASFriend" hasInstanceMethod:@"initWithActivitySnapshots:friendAchievements:friendWorkouts:contact:competitions:" withFullSignature:{"@", "@", "@", "@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = ASFriendAccessibility;
  [(ASFriendAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v3 = [(ASFriendAccessibility *)self safeStringForKey:@"displayName"];
  if ([v3 length])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(ASFriendAccessibility *)self safeArrayForKey:@"_competitions", 0];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) _accessibilitySetRetainedValue:v3 forKey:@"kAXFriendDisplayNameForCompetition"];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (ASFriendAccessibility)initWithActivitySnapshots:(id)a3 friendAchievements:(id)a4 friendWorkouts:(id)a5 contact:(id)a6 competitions:(id)a7
{
  v9.receiver = self;
  v9.super_class = ASFriendAccessibility;
  v7 = [(ASFriendAccessibility *)&v9 initWithActivitySnapshots:a3 friendAchievements:a4 friendWorkouts:a5 contact:a6 competitions:a7];
  [(ASFriendAccessibility *)v7 _accessibilityLoadAccessibilityInformation];

  return v7;
}

@end