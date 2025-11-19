@interface SBAppLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SBAppLayoutAccessibility)initWithItems:(id)a3 centerItem:(id)a4 floatingItem:(id)a5 configuration:(int64_t)a6 centerConfiguration:(int64_t)a7 environment:(int64_t)a8 hidden:(BOOL)a9 preferredDisplayOrdinal:(int64_t)a10;
- (id)_axAllHandlesInCall:(id)a3;
- (id)_axBundleIdentifier;
- (id)_axContactForHandle:(id)a3;
- (id)_axDisplayName;
- (id)_axGetFirstCall;
- (id)_axGetHandlesAndLoadFirstDestinationInCall:(id)a3;
- (id)_axLabelForInCallService;
- (id)_axLabelWithFirstIconTitle:(id)a3 secondIconTitle:(id)a4;
- (id)_axPredicateForHandle:(id)a3;
- (void)_axLoadFirstDestinationIfNecessary;
@end

@implementation SBAppLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBAppLayout" hasInstanceMethod:@"allItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBAppLayout" hasInstanceMethod:@"type" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBAppLayout" hasInstanceMethod:@"initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:" withFullSignature:{"@", "@", "@", "@", "q", "q", "q", "B", "q", 0}];
  [v3 validateClass:@"SBDisplayItem"];
  [v3 validateClass:@"SBDisplayItem" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBContinuityDisplayItem"];
  [v3 validateClass:@"SBContinuityDisplayItem" hasInstanceMethod:@"appSuggestion" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBBestAppSuggestion"];
  [v3 validateClass:@"SBBestAppSuggestion" hasInstanceMethod:@"originatingDeviceType" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBBestAppSuggestion" hasInstanceMethod:@"isLocallyGeneratedSuggestion" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithBundleIdentifier:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPhoneNumber" hasClassMethod:@"phoneNumberWithDigits:countryCode:" withFullSignature:{"@", "@", "@", 0}];
}

- (SBAppLayoutAccessibility)initWithItems:(id)a3 centerItem:(id)a4 floatingItem:(id)a5 configuration:(int64_t)a6 centerConfiguration:(int64_t)a7 environment:(int64_t)a8 hidden:(BOOL)a9 preferredDisplayOrdinal:(int64_t)a10
{
  v15.receiver = self;
  v15.super_class = SBAppLayoutAccessibility;
  v10 = [(SBAppLayoutAccessibility *)&v15 initWithItems:a3 centerItem:a4 floatingItem:a5 configuration:a6 centerConfiguration:a7 environment:a8 hidden:a9 preferredDisplayOrdinal:a10];
  v11 = v10;
  if (v10)
  {
    v12 = [(SBAppLayoutAccessibility *)v10 _axBundleIdentifier];
    if ([v12 isEqualToString:*MEMORY[0x29EDBD600]])
    {
      [(SBAppLayoutAccessibility *)v11 _axLoadFirstDestinationIfNecessary];
    }
  }

  return v11;
}

- (id)_axLabelWithFirstIconTitle:(id)a3 secondIconTitle:(id)a4
{
  v40 = *MEMORY[0x29EDCA608];
  v34 = a3;
  v6 = a4;
  v7 = [(SBAppLayoutAccessibility *)self _axAppLayoutType];
  if (v7 == 2)
  {
    v10 = [(SBAppLayoutAccessibility *)self _axBundleIdentifier];
    if ([v10 isEqualToString:*MEMORY[0x29EDBD600]])
    {
      v9 = [(SBAppLayoutAccessibility *)self _axLabelForInCallService];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_54;
  }

  v8 = v7;
  if (v7 == 1)
  {
    v9 = accessibilityLocalizedString(@"home");
    goto LABEL_54;
  }

  v33 = v6;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = [(SBAppLayoutAccessibility *)self _axDisplayItems];
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v12)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v13 = v12;
  v14 = 0;
  v9 = 0;
  v15 = *v36;
  while (2)
  {
    v16 = 0;
    v32 = v14 + v13;
    do
    {
      v17 = v9;
      if (*v36 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v35 + 1) + 8 * v16);
      if (v8 == 4)
      {
        v22 = [v18 safeValueForKey:@"appSuggestion"];
        v23 = [v22 safeValueForKey:@"originatingDeviceType"];
        v24 = v22;
        v25 = [v24 safeBoolForKey:@"isLocallyGeneratedSuggestion"];
        v26 = [v24 safeValueForKey:@"originatingDeviceType"];

        if (v25)
        {
          v27 = 0;
          v6 = v33;
LABEL_47:

          if (v23)
          {
            v29 = v27 == 0;
          }

          else
          {
            v29 = 1;
          }

          if (v29)
          {
            v30 = 0;
          }

          else
          {
            v30 = __UIAXStringForVariables();
          }

          v9 = __AXStringForVariables();

          goto LABEL_54;
        }

        v6 = v33;
        if ([v26 length])
        {
          if ([v26 isEqualToString:@"com.apple.macbookair"])
          {
            v28 = @"continuity.device.macbook-air";
LABEL_45:
            v27 = accessibilityLocalizedString(v28);
            goto LABEL_47;
          }

          if ([v26 isEqualToString:@"com.apple.mac.laptop"])
          {
            v28 = @"continuity.device.macbook-pro";
            goto LABEL_45;
          }

          if ([v26 isEqualToString:@"com.apple.macmini"])
          {
            v28 = @"continuity.device.mac-mini";
            goto LABEL_45;
          }

          if ([v26 isEqualToString:@"com.apple.mac"])
          {
            v28 = @"continuity.device.mac";
            goto LABEL_45;
          }

          if ([v26 isEqualToString:@"com.apple.watch"])
          {
            v28 = @"continuity.device.watch";
            goto LABEL_45;
          }

          if ([v26 isEqualToString:@"com.apple.iphone"])
          {
            v28 = @"continuity.device.iphone";
            goto LABEL_45;
          }

          if ([v26 isEqualToString:@"com.apple.ipad"])
          {
            v28 = @"continuity.device.ipad";
            goto LABEL_45;
          }

          if ([v26 isEqualToString:@"com.apple.ipod"])
          {
            v28 = @"continuity.device.ipod";
            goto LABEL_45;
          }

          if ([v26 isEqualToString:@"com.apple.apple-tv"])
          {
            v28 = @"continuity.device.tv";
            goto LABEL_45;
          }
        }

        v27 = 0;
        goto LABEL_47;
      }

      v19 = [v18 accessibilityLabel];
      if ([v19 length])
      {
        goto LABEL_17;
      }

      v20 = v34;
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_17;
        }

        v20 = v33;
      }

      v21 = v20;

      v19 = v21;
LABEL_17:
      v9 = __UIAXStringForVariables();

      ++v14;
      ++v16;
    }

    while (v13 != v16);
    v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:{16, v19, @"__AXStringForVariablesSentinel"}];
    v14 = v32;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v6 = v33;
LABEL_54:

  return v9;
}

- (id)_axDisplayName
{
  v3 = [(SBAppLayoutAccessibility *)self _axDisplayItems];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SBAppLayoutAccessibility *)self _axDisplayItems];
    v6 = [v5 firstObject];

    v7 = AXSBApplicationControllerSharedInstance();
    v8 = [v6 safeStringForKey:@"bundleIdentifier"];
    v9 = [v7 applicationWithBundleIdentifier:v8];

    v10 = [v9 safeStringForKey:@"displayName"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_axBundleIdentifier
{
  v2 = [(SBAppLayoutAccessibility *)self _axDisplayItems];
  v3 = [v2 firstObject];

  v4 = [v3 safeValueForKey:@"bundleIdentifier"];

  return v4;
}

- (id)_axLabelForInCallService
{
  v4 = [(SBAppLayoutAccessibility *)self _axGetFirstCall];
  v5 = [(SBAppLayoutAccessibility *)self _axGetHandlesAndLoadFirstDestinationInCall:v4];
  v6 = [v5 count];
  v7 = [v4 service];
  if (v7 <= 3)
  {
    v2 = accessibilityLocalizedString(off_29F2FBDB8[v7]);
  }

  v8 = [(SBAppLayoutAccessibility *)self _axGetFirstDestination];
  if (!v8)
  {
    v11 = v2;
    goto LABEL_11;
  }

  v9 = MEMORY[0x29EDBA0F8];
  if (v6 == 2)
  {
    v10 = accessibilityLocalizedString(@"in.call.service.title.format.multiple.single");
    v12 = AXFormatInteger();
    v11 = [v9 stringWithFormat:v10, v2, v8, v12];

    goto LABEL_9;
  }

  if (v6 == 1)
  {
    v10 = accessibilityLocalizedString(@"in.call.service.title.format.single");
    v11 = [v9 stringWithFormat:v10, v2, v8];
LABEL_9:

    goto LABEL_11;
  }

  v13 = accessibilityLocalizedString(@"in.call.service.title.format.multiple.plural");
  v14 = AXFormatInteger();
  v11 = [v9 stringWithFormat:v13, v2, v8, v14];

LABEL_11:

  return v11;
}

- (void)_axLoadFirstDestinationIfNecessary
{
  v4 = [(SBAppLayoutAccessibility *)self _axGetFirstCall];
  v3 = [(SBAppLayoutAccessibility *)self _axGetHandlesAndLoadFirstDestinationInCall:v4];
}

- (id)_axGetHandlesAndLoadFirstDestinationInCall:(id)a3
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = [(SBAppLayoutAccessibility *)self _axAllHandlesInCall:a3];
  v5 = [(SBAppLayoutAccessibility *)self _axGetFirstDestinationHandleValue];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v7)
  {

LABEL_11:
    if ([v6 count])
    {
      v14 = [v6 anyObject];
      v15 = [v14 value];
      [(SBAppLayoutAccessibility *)self _axSetFirstDestinationHandleValue:v15];

      objc_initWeak(&location, self);
      v16 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __71__SBAppLayoutAccessibility__axGetHandlesAndLoadFirstDestinationInCall___block_invoke;
      block[3] = &unk_29F2FBD70;
      objc_copyWeak(&v21, &location);
      v20 = v14;
      v17 = v14;
      dispatch_async(v16, block);

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    goto LABEL_13;
  }

  v8 = v7;
  v9 = *v24;
  v10 = 1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = [*(*(&v23 + 1) + 8 * i) value];
      v13 = [v12 isEqualToString:v5];

      v10 &= v13 ^ 1;
    }

    v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v8);

  if (v10)
  {
    goto LABEL_11;
  }

LABEL_13:

  return v6;
}

void __71__SBAppLayoutAccessibility__axGetHandlesAndLoadFirstDestinationInCall___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _axContactForHandle:*(a1 + 32)];

  objc_copyWeak(&v6, (a1 + 40));
  v4 = v3;
  v5 = *(a1 + 32);
  AXPerformBlockOnMainThread();

  objc_destroyWeak(&v6);
}

void __71__SBAppLayoutAccessibility__axGetHandlesAndLoadFirstDestinationInCall___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 givenName];
  }

  else
  {
    [*(a1 + 40) value];
  }
  v3 = ;
  [WeakRetained _axSetFirstDestination:v3];
}

- (id)_axGetFirstCall
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__2;
  v8 = __Block_byref_object_dispose__2;
  v9 = 0;
  AXPerformBlockSynchronouslyOnMainThread();
  v2 = [v5[5] firstObject];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __43__SBAppLayoutAccessibility__axGetFirstCall__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x29EDC6F78] sharedInstance];
  v2 = [v5 currentAudioAndVideoCalls];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_axAllHandlesInCall:(id)a3
{
  v3 = a3;
  v4 = [v3 handle];
  v5 = objc_alloc_init(MEMORY[0x29EDB8E20]);
  v6 = v5;
  if (v4)
  {
    [v5 addObject:v4];
  }

  objc_opt_class();
  v7 = [v3 safeValueForKey:@"remoteParticipantHandles"];
  v8 = __UIAccessibilityCastAsClass();

  if (v8)
  {
    [v6 unionSet:v8];
  }

  return v6;
}

- (id)_axContactForHandle:(id)a3
{
  v22[3] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  v5 = [(SBAppLayoutAccessibility *)self _axPredicateForHandle:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x29EDB8BA0]);
    v7 = [MEMORY[0x29EDB8BA8] descriptorForRequiredKeysForStyle:0];
    v8 = *MEMORY[0x29EDB8B78];
    v22[0] = v7;
    v22[1] = v8;
    v22[2] = *MEMORY[0x29EDB8B80];
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v22 count:3];
    v10 = [v6 initWithKeysToFetch:v9];

    [v10 setPredicate:v5];
    v11 = objc_alloc_init(MEMORY[0x29EDB8BB0]);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __48__SBAppLayoutAccessibility__axContactForHandle___block_invoke;
    v14[3] = &unk_29F2FBD98;
    v14[4] = &v16;
    v15 = 0;
    [v11 enumerateContactsWithFetchRequest:v10 error:&v15 usingBlock:v14];
  }

  v12 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v12;
}

- (id)_axPredicateForHandle:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_9;
  }

  if ([v3 type] == 3)
  {
    v5 = MEMORY[0x29EDB8B98];
    v6 = [v4 value];
    v7 = [v5 predicateForContactsMatchingEmailAddress:v6];
  }

  else
  {
    v9 = MEMORY[0x29EDB8BC0];
    v10 = [v4 value];
    v6 = [v9 phoneNumberWithDigits:v10 countryCode:0];

    if (!v6)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = [MEMORY[0x29EDB8B98] predicateForContactsMatchingPhoneNumber:v6];
  }

  v8 = v7;
LABEL_8:

LABEL_9:

  return v8;
}

@end