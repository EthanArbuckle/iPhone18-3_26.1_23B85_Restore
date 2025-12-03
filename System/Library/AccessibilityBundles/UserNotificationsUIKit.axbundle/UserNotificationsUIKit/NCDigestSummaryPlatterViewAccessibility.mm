@interface NCDigestSummaryPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation NCDigestSummaryPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCDigestSummaryPlatterView" hasInstanceMethod:@"heading" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCDigestSummaryPlatterView" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCDigestSummaryPlatterView" hasInstanceMethod:@"count" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"NCDigestSummaryPlatterView" hasInstanceMethod:@"featuredNotificationContentProviders" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCDigestFeaturedNotificationContentProvider" hasInstanceMethod:@"defaultActionBlock" withFullSignature:{"@?", 0}];
  [validationsCopy validateClass:@"NCDigestFeaturedNotificationContentProvider" isKindOfClass:@"NCNotificationRequestContentProvider"];
  [validationsCopy validateClass:@"NCNotificationRequestContentProvider" hasInstanceMethod:@"notificationRequest" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationRequest" hasInstanceMethod:@"content" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationRequest" hasInstanceMethod:@"options" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationContent" hasInstanceMethod:@"defaultHeader" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationContent" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationContent" hasInstanceMethod:@"message" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationContent" hasInstanceMethod:@"attachmentImage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCDigestSummaryPlatterView" hasInstanceVariable:@"_summaryView" withType:"NCDigestSummaryView"];
  [validationsCopy validateClass:@"NCDigestSummaryView" hasInstanceVariable:@"_timeStampLabel" withType:"UILabel<BSUIDateLabel>"];
  [validationsCopy validateClass:@"NCDigestSummaryView" hasInstanceVariable:@"_headingLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"NCNotificationOptions" hasInstanceMethod:@"suppressesTitleWhenLocked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NCNotificationOptions" hasInstanceMethod:@"suppressesSubtitleWhenLocked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NCNotificationOptions" hasInstanceMethod:@"suppressesBodyWhenLocked" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v36 = *MEMORY[0x29EDCA608];
  v3 = [(NCDigestSummaryPlatterViewAccessibility *)self safeStringForKey:@"heading"];
  v4 = [(NCDigestSummaryPlatterViewAccessibility *)self safeValueForKeyPath:@"_summaryView._timeStampLabel"];
  if ([(NCDigestSummaryPlatterViewAccessibility *)self safeUnsignedIntegerForKey:@"count"])
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"digest.notification.count");
    v7 = [v5 localizedStringWithFormat:v6, -[NCDigestSummaryPlatterViewAccessibility safeUnsignedIntegerForKey:](self, "safeUnsignedIntegerForKey:", @"count"];

    v8 = [(NCDigestSummaryPlatterViewAccessibility *)self safeArrayForKey:@"featuredNotificationContentProviders"];
    if ([v8 count])
    {
      v25 = v7;
      array = [MEMORY[0x29EDB8DE8] array];
      v26 = v4;
      v27 = v3;
      v10 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v3, v4}];
      [array axSafelyAddObjectsFromArray:v10];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v24 = v8;
      obj = v8;
      v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v30)
      {
        v29 = *v32;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v32 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v31 + 1) + 8 * i);
            v13 = [v12 safeValueForKeyPath:@"notificationRequest.content"];
            v14 = [v12 safeValueForKeyPath:@"notificationRequest.options"];
            v15 = [v13 safeStringForKey:@"defaultHeader"];
            v16 = [v13 safeStringForKey:@"title"];
            v17 = [v13 safeStringForKey:@"subtitle"];
            v18 = [v13 safeStringForKey:@"message"];
            v19 = [v13 safeValueForKey:@"attachmentImage"];
            if (v19)
            {
              v20 = accessibilityLocalizedString(@"attachment.label");
            }

            else
            {
              v20 = 0;
            }

            [array axSafelyAddObject:v15];
            if (!_isDevicePasscodeLocked() || ([v14 safeBoolForKey:@"suppressesTitleWhenLocked"] & 1) == 0)
            {
              [array axSafelyAddObject:v16];
            }

            if (!_isDevicePasscodeLocked() || ([v14 safeBoolForKey:@"suppressesSubtitleWhenLocked"] & 1) == 0)
            {
              [array axSafelyAddObject:v17];
            }

            if (!_isDevicePasscodeLocked() || ([v14 safeBoolForKey:@"suppressesBodyWhenLocked"] & 1) == 0)
            {
              [array axSafelyAddObject:v18];
              [array axSafelyAddObject:v20];
            }
          }

          v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v30);
      }

      v21 = MEMORY[0x29ED3E8D0](array);

      v4 = v26;
      v3 = v27;
      v8 = v24;
      v7 = v25;
    }

    else
    {
      v21 = __UIAXStringForVariables();
    }
  }

  else
  {
    v21 = __UIAXStringForVariables();
  }

  v22 = *MEMORY[0x29EDCA608];

  return v21;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(NCDigestSummaryPlatterViewAccessibility *)self safeValueForKeyPath:@"_summaryView._headingLabel"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityCustomActions
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = [(NCDigestSummaryPlatterViewAccessibility *)self safeArrayForKey:@"featuredNotificationContentProviders"];
  array = [MEMORY[0x29EDB8DE8] array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v2;
  v20 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v20)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v25 + 1) + 8 * i);
        v5 = [v4 safeValueForKeyPath:@"notificationRequest.content"];
        v21 = [v5 safeStringForKey:@"defaultHeader"];
        v6 = [v5 safeStringForKey:@"title"];
        v7 = [v5 safeStringForKey:@"message"];
        v8 = [v5 safeValueForKey:@"attachmentImage"];
        if (v8)
        {
          v9 = accessibilityLocalizedString(@"attachment.label");
        }

        else
        {
          v9 = 0;
        }

        v10 = [MEMORY[0x29EDB8DE8] axArrayByIgnoringNilElementsWithCount:{1, v21}];
        v11 = [v4 safeValueForKeyPath:@"notificationRequest.options"];
        if (!_isDevicePasscodeLocked() || ([v11 safeBoolForKey:@"suppressesTitleWhenLocked"] & 1) == 0)
        {
          [v10 axSafelyAddObject:v6];
        }

        if (!_isDevicePasscodeLocked() || ([v11 safeBoolForKey:@"suppressesBodyWhenLocked"] & 1) == 0)
        {
          [v10 axSafelyAddObject:v7];
          [v10 axSafelyAddObject:v9];
        }

        v12 = MEMORY[0x29ED3E8D0](v10);
        objc_initWeak(&location, v4);
        v13 = objc_alloc(MEMORY[0x29EDC78E0]);
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 3221225472;
        v22[2] = __69__NCDigestSummaryPlatterViewAccessibility_accessibilityCustomActions__block_invoke;
        v22[3] = &unk_29F316FB0;
        objc_copyWeak(&v23, &location);
        v14 = [v13 initWithName:v12 actionHandler:v22];
        [array axSafelyAddObject:v14];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  v15 = *MEMORY[0x29EDCA608];

  return array;
}

uint64_t __69__NCDigestSummaryPlatterViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"defaultActionBlock"];

  if (v2)
  {
    v2[2](v2);
  }

  return 1;
}

@end