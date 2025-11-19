@interface CHFriendDetailCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CHFriendDetailCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHFriendDetailCollectionViewController" hasInstanceVariable:@"_isMe" withType:"B"];
  [v3 validateClass:@"CHFriendDetailCollectionViewController" hasInstanceMethod:@"_sendMessageButtonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CHFriendDetailCollectionViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CHFriendDetailCollectionViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19.receiver = self;
  v19.super_class = CHFriendDetailCollectionViewControllerAccessibility;
  [(CHFriendDetailCollectionViewControllerAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  if (([(CHFriendDetailCollectionViewControllerAccessibility *)self safeBoolForKey:@"_isMe"]& 1) == 0)
  {
    v18 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [v3 navigationItem];
    v5 = [v4 rightBarButtonItems];

    v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 action];
          if (v11 == NSSelectorFromString(@"_sendMessageButtonTapped:"))
          {
            v12 = accessibilityLocalizedString(@"messages");
            [v10 setAccessibilityLabel:v12];

            v13 = accessibilityLocalizedString(@"messages.hint");
            [v10 setAccessibilityHint:v13];

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CHFriendDetailCollectionViewControllerAccessibility;
  [(CHFriendDetailCollectionViewControllerAccessibility *)&v3 viewDidLoad];
  [(CHFriendDetailCollectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end