@interface NPLPeopleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityDialPersonViews;
- (id)_accessibilityElementsForDialPersonViews;
- (void)_accessibilityAssociateUIAXElement:(id)a3 withPersonView:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySwapPeopleAtIndex:(unint64_t)a3 andIndex:(unint64_t)a4;
- (void)_accessibilityUpdateDialViewElements;
- (void)viewDidLoad;
@end

@implementation NPLPeopleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NPLPeopleViewController"];
  [v3 validateClass:@"NPLPeopleViewController" hasInstanceMethod:@"friendGroup" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NPLPeopleViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"NPLPeopleViewController" hasInstanceVariable:@"_dialPersonViews" withType:"NSMutableArray"];
  [v3 validateClass:@"NPLPeopleViewController" hasInstanceVariable:@"_dialView" withType:"UIView"];
  [v3 validateClass:@"NPLPeopleViewController" hasInstanceMethod:@"_centerPersonView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NPLPeopleViewController" hasInstanceMethod:@"setEditing:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"NPLPersonView" hasInstanceMethod:@"person" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FKFriendGroup" hasInstanceVariable:@"_friendsManager" withType:"NSMutableArray"];
  [v3 validateClass:@"FKFriendGroup" hasInstanceVariable:@"_delegate" withType:"<FKFriendGroupDelegate>"];
  [v3 validateProtocol:@"FKFriendGroupDelegate" hasRequiredInstanceMethod:@"friendGroup: didMoveFriends:"];
  [v3 validateClass:@"FKFriendsManager"];
  [v3 validateClass:@"FKFriendsManager" hasClassMethod:@"managerForDomain:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"FKFriendsManager" hasInstanceMethod:@"syncFriendGroup:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = NPLPeopleViewControllerAccessibility;
  [(NPLPeopleViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(NPLPeopleViewControllerAccessibility *)self _accessibilityUpdateDialViewElements];
}

- (void)_accessibilitySwapPeopleAtIndex:(unint64_t)a3 andIndex:(unint64_t)a4
{
  v7 = [(NPLPeopleViewControllerAccessibility *)self safeValueForKey:@"friendGroup"];
  v8 = [(NPLPeopleViewControllerAccessibility *)self _accessibilityDialPersonViews];
  v9 = [v8 objectAtIndex:a3];
  v10 = [v8 objectAtIndex:a4];
  v11 = [v9 _accessibilityValueForKey:@"accessibilityFakeElement"];
  v12 = [v10 _accessibilityValueForKey:@"accessibilityFakeElement"];
  [(NPLPeopleViewControllerAccessibility *)self _accessibilityAssociateUIAXElement:v11 withPersonView:v10];
  [(NPLPeopleViewControllerAccessibility *)self _accessibilityAssociateUIAXElement:v12 withPersonView:v9];
  v20 = a3;
  v21 = a4;
  v13 = v7;
  v19 = v13;
  AXPerformSafeBlock();
  v14 = [v9 safeValueForKey:@"person"];

  if (v14)
  {
    if (a3 >= a4)
    {
      v15 = @"before.person";
    }

    else
    {
      v15 = @"after.person";
    }

    v16 = accessibilityLocalizedString(v15);
    v17 = [v9 accessibilityLabel];
    v18 = [NSString stringWithFormat:v16, v17, _NSConcreteStackBlock, 3221225472, __81__NPLPeopleViewControllerAccessibility__accessibilitySwapPeopleAtIndex_andIndex___block_invoke, &unk_82C0, v13, v20, v21];
    UIAccessibilitySpeakOrQueueIfNeeded();
  }

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, kAXPerformElementUpdateImmediatelyToken);
}

void __81__NPLPeopleViewControllerAccessibility__accessibilitySwapPeopleAtIndex_andIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  LOBYTE(v16) = 0;
  v4 = [*(a1 + 32) safeValueForKey:@"_friendsManager"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 objectAtIndex:v2];
  if (v2 <= v3)
  {
    v7 = v2;
  }

  else
  {
    v7 = v2 + 1;
  }

  if (v2 <= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = v2;
  }

  if (v3 <= v2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v3 + 1;
  }

  if (v3 >= v2)
  {
    v10 = v2;
  }

  else
  {
    v10 = v3;
  }

  [v5 insertObject:v6 atIndex:v9];

  [v5 removeObjectAtIndex:v7];
  v11 = objc_alloc_init(NSMutableArray);
  do
  {
    v12 = [v5 objectAtIndex:v10];
    AXSafeClassFromString();
    if (objc_opt_isKindOfClass())
    {
      [v11 addObject:v12];
    }

    ++v10;
  }

  while (v10 <= v8);
  if ([v11 count])
  {
    v13 = [*(a1 + 32) safeValueForKey:@"_delegate"];
    [v13 friendGroup:*(a1 + 32) didMoveFriends:v11];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    v15 = AXSafeClassFromString();
    AXPerformSafeBlock();
    v14 = v17[5];
    _Block_object_dispose(&v16, 8);

    [v14 syncFriendGroup:{*(a1 + 32), _NSConcreteStackBlock, 3221225472, __81__NPLPeopleViewControllerAccessibility__accessibilitySwapPeopleAtIndex_andIndex___block_invoke_351, &unk_8298, &v16, v15}];
  }
}

uint64_t __81__NPLPeopleViewControllerAccessibility__accessibilitySwapPeopleAtIndex_andIndex___block_invoke_351(uint64_t a1)
{
  v2 = [*(a1 + 40) managerForDomain:@"com.apple.ET"];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NPLPeopleViewControllerAccessibility;
  [(NPLPeopleViewControllerAccessibility *)&v3 viewDidLoad];
  [(NPLPeopleViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityUpdateDialViewElements
{
  v5 = [(NPLPeopleViewControllerAccessibility *)self safeValueForKey:@"_dialView"];
  v3 = [(NPLPeopleViewControllerAccessibility *)self _accessibilityElementsForDialPersonViews];
  v4 = [(NPLPeopleViewControllerAccessibility *)self _accessibilityCenterOfDialView];
  [v3 axSafelyAddObject:v4];

  [v5 setAccessibilityElements:v3];
  [v5 _accessibilitySetShouldHitTestFallBackToNearestChild:1];
}

- (id)_accessibilityElementsForDialPersonViews
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(NPLPeopleViewControllerAccessibility *)self _accessibilityDialPersonViews];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __80__NPLPeopleViewControllerAccessibility__accessibilityElementsForDialPersonViews__block_invoke;
  v9[3] = &unk_82E8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __80__NPLPeopleViewControllerAccessibility__accessibilityElementsForDialPersonViews__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 _accessibilityValueForKey:@"accessibilityFakeElement"];
  if (!v3)
  {
    v4 = [UIAccessibilityElement alloc];
    v5 = [*(a1 + 32) safeValueForKey:@"_dialView"];
    v3 = [v4 initWithAccessibilityContainer:v5];

    [*(a1 + 32) _accessibilityAssociateUIAXElement:v3 withPersonView:v6];
  }

  [*(a1 + 40) addObject:v3];
}

- (void)_accessibilityAssociateUIAXElement:(id)a3 withPersonView:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setAccessibilityDelegate:v5];
  [v5 _accessibilitySetValue:v6 forKey:@"accessibilityFakeElement" storageMode:0];
}

- (id)_accessibilityDialPersonViews
{
  objc_opt_class();
  v3 = [(NPLPeopleViewControllerAccessibility *)self safeValueForKey:@"_dialPersonViews"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end