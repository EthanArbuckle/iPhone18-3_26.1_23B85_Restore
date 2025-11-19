@interface NCNotificationStructuredSectionListAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)axStringForRequest:(id)a3 label:(id)a4;
- (int64_t)insertNotificationRequest:(id)a3;
@end

@implementation NCNotificationStructuredSectionListAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationRootList" hasInstanceMethod:@"incomingSectionList" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"insertNotificationRequest:" withFullSignature:{"q", "@", 0}];
  [v3 validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"_existingIndexOfGroupForNotificationRequest:" withFullSignature:{"Q", "@", 0}];
  [v3 validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"_toggleHiddenNotificationsOnAuthenticationChange:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"removeNotificationGroupListsForMigrationPassingTest:filterRequestsPassingTest:animate:" withFullSignature:{"@", "@?", "@?", "B", 0}];
  [v3 validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"mergeNotificationGroups:reorderGroupNotifications:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"notificationGroups" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"deviceAuthenticated" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCNotificationListPresentableGroup" hasInstanceMethod:@"listView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"NCNotificationListViewDataSource" hasRequiredInstanceMethod:@"notificationListView:viewForItemAtIndex:"];
  [v3 validateClass:@"NCNotificationListCell" hasInstanceMethod:@"contentViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationViewController" hasInstanceMethod:@"_setupStaticContentProvider" withFullSignature:{"v", 0}];
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"notificationDispatcher" withFullSignature:{"@", 0}];
    [v3 validateClass:@"SBNCNotificationDispatcher" hasInstanceVariable:@"_dispatcher" withType:"NCNotificationDispatcher"];
    [v3 validateClass:@"SBNCAlertingController" hasInstanceMethod:@"screenController" withFullSignature:{"@", 0}];
    [v3 validateClass:@"SBNCScreenController" hasInstanceMethod:@"canTurnOnScreenForNotificationRequest:" withFullSignature:{"B", "@", 0}];
  }
}

- (int64_t)insertNotificationRequest:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = NCNotificationStructuredSectionListAccessibility;
  v5 = [(NCNotificationStructuredSectionListAccessibility *)&v26 insertNotificationRequest:v4];
  if (![(NCNotificationStructuredSectionListAccessibility *)self _axIgnoreNotification]&& ([(NCNotificationStructuredSectionListAccessibility *)self safeBoolForKey:@"deviceAuthenticated"]& 1) == 0)
  {
    v6 = [(NCNotificationStructuredSectionListAccessibility *)self safeValueForKey:@"delegate"];
    v7 = [v6 safeValueForKey:@"incomingSectionList"];

    if (v7 == self)
    {
      v8 = [(NCNotificationStructuredSectionListAccessibility *)self _existingIndexOfGroupForNotificationRequest:v4];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v8;
        v10 = [(NCNotificationStructuredSectionListAccessibility *)self safeArrayForKey:@"notificationGroups"];
        v11 = [v10 axSafeObjectAtIndex:v9];
        v12 = [v11 safeValueForKey:@"listView"];

        v20 = 0;
        v21 = &v20;
        v22 = 0x3032000000;
        v23 = __Block_byref_object_copy__0;
        v24 = __Block_byref_object_dispose__0;
        v25 = 0;
        v19 = v12;
        AXPerformSafeBlock();
        v13 = v21[5];

        _Block_object_dispose(&v20, 8);
        v18 = v13;
        v14 = v13;
        AXPerformSafeBlock();
        v15 = [v14 accessibilityLabel];
        v16 = [(NCNotificationStructuredSectionListAccessibility *)self axStringForRequest:v4 label:v15];

        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v16);
      }
    }
  }

  return v5;
}

void __78__NCNotificationStructuredSectionListAccessibility_insertNotificationRequest___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"dataSource"];
  v2 = [v5 notificationListView:*(a1 + 32) viewForItemAtIndex:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __78__NCNotificationStructuredSectionListAccessibility_insertNotificationRequest___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"contentViewController"];
  [v1 _setupStaticContentProvider];
}

- (id)axStringForRequest:(id)a3 label:(id)a4
{
  v5 = a3;
  v6 = a4;
  LOBYTE(v26) = 0;
  v30 = 0;
  v7 = *MEMORY[0x29EDC8008];
  v8 = __UIAccessibilitySafeClass();
  v9 = v8;
  v10 = [v8 safeValueForKey:@"notificationDispatcher"];
  v11 = __UIAccessibilitySafeClass();

  if (v26 == 1)
  {
    abort();
  }

  v12 = [v11 safeValueForKey:@"_dispatcher"];
  v13 = __UIAccessibilitySafeClass();

  v14 = [v13 safeValueForKey:@"alertingController"];
  v15 = __UIAccessibilitySafeClass();

  v16 = [v15 safeValueForKey:@"screenController"];
  v17 = __UIAccessibilitySafeClass();

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25 = MEMORY[0x29EDCA5F8];
  v18 = v17;
  v19 = v5;
  AXPerformSafeBlock();
  v20 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v6, v25, 3221225472, __77__NCNotificationStructuredSectionListAccessibility_axStringForRequest_label___block_invoke, &unk_29F3170B8}];
  [v20 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBDA00]];
  v21 = [v19 options];
  v22 = [v21 lockScreenPersistence];

  if (v22 == 2)
  {
    [v20 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
  }

  v23 = [MEMORY[0x29EDBA070] numberWithBool:*(v27 + 24)];
  [v20 setAttribute:v23 forKey:*MEMORY[0x29EDBD858]];

  _Block_object_dispose(&v26, 8);

  return v20;
}

uint64_t __77__NCNotificationStructuredSectionListAccessibility_axStringForRequest_label___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canTurnOnScreenForNotificationRequest:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end