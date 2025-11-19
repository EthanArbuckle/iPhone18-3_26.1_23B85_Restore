@interface AFUISiriSessionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsAddViewsCommandAllowed:(id)a3;
- (BOOL)_axIsAppInClarity:(id)a3;
- (void)assistantConnection:(id)a3 receivedCommand:(id)a4 completion:(id)a5;
- (void)cancelRequest;
@end

@implementation AFUISiriSessionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AFUISiriSession" hasInstanceMethod:@"cancelRequest" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AFUISiriSession" hasInstanceMethod:@"_connection" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AFUISiriSession" hasInstanceMethod:@"_stateHandler" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AFUISiriSession" hasInstanceMethod:@"assistantConnection:receivedCommand:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
}

- (void)cancelRequest
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = [(AFUISiriSessionAccessibility *)self _accessibilityBoolValueForKey:@"VoiceOverCancelRequestInProgress"];
  v4 = [(AFUISiriSessionAccessibility *)self safeValueForKey:@"_connection"];
  if (AXIsInternalInstall())
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x29EDBA070] numberWithBool:v3];
      *buf = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_29BB96000, v5, OS_LOG_TYPE_DEFAULT, "Transferring voice cancel request in progress %@ to connection %@", buf, 0x16u);
    }
  }

  [v4 _accessibilitySetBoolValue:v3 forKey:@"VoiceOverCancelRequestInProgress"];
  v8.receiver = self;
  v8.super_class = AFUISiriSessionAccessibility;
  [(AFUISiriSessionAccessibility *)&v8 cancelRequest];
  [v4 _accessibilitySetBoolValue:0 forKey:@"VoiceOverCancelRequestInProgress"];

  v7 = *MEMORY[0x29EDCA608];
}

- (void)assistantConnection:(id)a3 receivedCommand:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [v11 isClarityBoardEnabled];

  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![(AFUISiriSessionAccessibility *)self _axIsAddViewsCommandAllowed:v9])
  {
    v14 = AXLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_29BB96000, v14, OS_LOG_TYPE_DEFAULT, "Command %@ is unallowed in custom accessibility mode", buf, 0xCu);
    }

    v16 = MEMORY[0x29EDCA5F8];
    v17 = 3221225472;
    v18 = __79__AFUISiriSessionAccessibility_assistantConnection_receivedCommand_completion___block_invoke;
    v19 = &unk_29F2A28B0;
    v20 = self;
    AXPerformSafeBlock();
  }

  else
  {
    v15.receiver = self;
    v15.super_class = AFUISiriSessionAccessibility;
    [(AFUISiriSessionAccessibility *)&v15 assistantConnection:v8 receivedCommand:v9 completion:v10];
  }

  v13 = *MEMORY[0x29EDCA608];
}

void __79__AFUISiriSessionAccessibility_assistantConnection_receivedCommand_completion___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) safeValueForKey:@"_stateHandler"];
  v3 = __UIAccessibilityCastAsClass();

  [v3 performTransitionForEvent:7];
}

- (BOOL)_axIsAddViewsCommandAllowed:(id)a3
{
  v43 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDB8DC0];
  v6 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:@"UnallowedSiriCommands" ofType:@"plist"];
  v8 = [v5 dictionaryWithContentsOfFile:v7];

  v9 = [v8 objectForKey:@"SAUIAddViewsUnallowedSiriCommands"];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = [v4 views];
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v33 = self;
    v34 = v8;
    v13 = 0x29EDC6000uLL;
    v14 = @"StartCall";
    v37 = *v39;
    v35 = v4;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = *(v13 + 1328);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = *(v13 + 1328);
          objc_opt_class();
          v19 = __UIAccessibilityCastAsClass();
          v20 = [v19 dialogIdentifier];
        }

        else
        {
          v20 = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = i;
          v21 = v12;
          v22 = v10;
          v23 = v14;
          v24 = v9;
          v25 = v13;
          objc_opt_class();
          v26 = __UIAccessibilityCastAsClass();
          v27 = [v26 sash];
          v28 = [v27 applicationBundleIdentifier];

          v13 = v25;
          v9 = v24;
          v14 = v23;
          v10 = v22;
          v12 = v21;
          i = v36;
        }

        else
        {
          v28 = 0;
        }

        if ([v20 containsString:{v14, v33}])
        {
          v30 = @"com.apple.mobilephone";
          goto LABEL_33;
        }

        if ([v20 containsString:@"ReadMail"] & 1) != 0 || (objc_msgSend(v20, "containsString:", @"SendMail"))
        {
          v30 = @"com.apple.mobilemail";
          goto LABEL_33;
        }

        if ([v20 containsString:@"FindEvents"] & 1) != 0 || (objc_msgSend(v20, "containsString:", @"CreateEvent"))
        {
          v30 = @"com.apple.mobilecal";
          goto LABEL_33;
        }

        if ([v20 containsString:@"WEBINDEX"])
        {
          v30 = @"com.apple.mobilesafari";
          goto LABEL_33;
        }

        if ([v20 containsString:@"STOCKS"])
        {
          v30 = @"com.apple.stocks";
          goto LABEL_33;
        }

        if ([v9 containsObject:v20])
        {
          v29 = 0;
          goto LABEL_34;
        }

        if (v28 && ([(__CFString *)v28 isEqualToString:@"com.apple.weather"]& 1) == 0)
        {
          v30 = v28;
LABEL_33:
          v29 = [(AFUISiriSessionAccessibility *)v33 _axIsAppInClarity:v30];
LABEL_34:
          v4 = v35;

          v8 = v34;
          goto LABEL_35;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
      v29 = 1;
      v8 = v34;
      v4 = v35;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v29 = 1;
  }

LABEL_35:

  v31 = *MEMORY[0x29EDCA608];
  return v29;
}

- (BOOL)_axIsAppInClarity:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x29EDC0B48] sharedInstance];
  v5 = [v4 applicationBundleIdentifiers];
  if ([v5 containsObject:v3])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 isEqualToString:@"com.apple.siri"];
  }

  return v6;
}

@end