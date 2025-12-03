@interface AFUISiriSessionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsAddViewsCommandAllowed:(id)allowed;
- (BOOL)_axIsAppInClarity:(id)clarity;
- (void)assistantConnection:(id)connection receivedCommand:(id)command completion:(id)completion;
- (void)cancelRequest;
@end

@implementation AFUISiriSessionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AFUISiriSession" hasInstanceMethod:@"cancelRequest" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AFUISiriSession" hasInstanceMethod:@"_connection" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AFUISiriSession" hasInstanceMethod:@"_stateHandler" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AFUISiriSession" hasInstanceMethod:@"assistantConnection:receivedCommand:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
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

- (void)assistantConnection:(id)connection receivedCommand:(id)command completion:(id)completion
{
  v23 = *MEMORY[0x29EDCA608];
  connectionCopy = connection;
  commandCopy = command;
  completionCopy = completion;
  v11 = objc_opt_new();
  isClarityBoardEnabled = [v11 isClarityBoardEnabled];

  if (isClarityBoardEnabled && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![(AFUISiriSessionAccessibility *)self _axIsAddViewsCommandAllowed:commandCopy])
  {
    v14 = AXLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = commandCopy;
      _os_log_impl(&dword_29BB96000, v14, OS_LOG_TYPE_DEFAULT, "Command %@ is unallowed in custom accessibility mode", buf, 0xCu);
    }

    v16 = MEMORY[0x29EDCA5F8];
    v17 = 3221225472;
    v18 = __79__AFUISiriSessionAccessibility_assistantConnection_receivedCommand_completion___block_invoke;
    v19 = &unk_29F2A28B0;
    selfCopy = self;
    AXPerformSafeBlock();
  }

  else
  {
    v15.receiver = self;
    v15.super_class = AFUISiriSessionAccessibility;
    [(AFUISiriSessionAccessibility *)&v15 assistantConnection:connectionCopy receivedCommand:commandCopy completion:completionCopy];
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

- (BOOL)_axIsAddViewsCommandAllowed:(id)allowed
{
  v43 = *MEMORY[0x29EDCA608];
  allowedCopy = allowed;
  v5 = MEMORY[0x29EDB8DC0];
  v6 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:@"UnallowedSiriCommands" ofType:@"plist"];
  v8 = [v5 dictionaryWithContentsOfFile:v7];

  v9 = [v8 objectForKey:@"SAUIAddViewsUnallowedSiriCommands"];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  views = [allowedCopy views];
  v11 = [views countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    selfCopy = self;
    v34 = v8;
    v13 = 0x29EDC6000uLL;
    v14 = @"StartCall";
    v37 = *v39;
    v35 = allowedCopy;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(views);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = *(v13 + 1328);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = *(v13 + 1328);
          objc_opt_class();
          v19 = __UIAccessibilityCastAsClass();
          dialogIdentifier = [v19 dialogIdentifier];
        }

        else
        {
          dialogIdentifier = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = i;
          v21 = v12;
          v22 = views;
          v23 = v14;
          v24 = v9;
          v25 = v13;
          objc_opt_class();
          v26 = __UIAccessibilityCastAsClass();
          sash = [v26 sash];
          applicationBundleIdentifier = [sash applicationBundleIdentifier];

          v13 = v25;
          v9 = v24;
          v14 = v23;
          views = v22;
          v12 = v21;
          i = v36;
        }

        else
        {
          applicationBundleIdentifier = 0;
        }

        if ([dialogIdentifier containsString:{v14, selfCopy}])
        {
          v30 = @"com.apple.mobilephone";
          goto LABEL_33;
        }

        if ([dialogIdentifier containsString:@"ReadMail"] & 1) != 0 || (objc_msgSend(dialogIdentifier, "containsString:", @"SendMail"))
        {
          v30 = @"com.apple.mobilemail";
          goto LABEL_33;
        }

        if ([dialogIdentifier containsString:@"FindEvents"] & 1) != 0 || (objc_msgSend(dialogIdentifier, "containsString:", @"CreateEvent"))
        {
          v30 = @"com.apple.mobilecal";
          goto LABEL_33;
        }

        if ([dialogIdentifier containsString:@"WEBINDEX"])
        {
          v30 = @"com.apple.mobilesafari";
          goto LABEL_33;
        }

        if ([dialogIdentifier containsString:@"STOCKS"])
        {
          v30 = @"com.apple.stocks";
          goto LABEL_33;
        }

        if ([v9 containsObject:dialogIdentifier])
        {
          v29 = 0;
          goto LABEL_34;
        }

        if (applicationBundleIdentifier && ([(__CFString *)applicationBundleIdentifier isEqualToString:@"com.apple.weather"]& 1) == 0)
        {
          v30 = applicationBundleIdentifier;
LABEL_33:
          v29 = [(AFUISiriSessionAccessibility *)selfCopy _axIsAppInClarity:v30];
LABEL_34:
          allowedCopy = v35;

          v8 = v34;
          goto LABEL_35;
        }
      }

      v12 = [views countByEnumeratingWithState:&v38 objects:v42 count:16];
      v29 = 1;
      v8 = v34;
      allowedCopy = v35;
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

- (BOOL)_axIsAppInClarity:(id)clarity
{
  clarityCopy = clarity;
  mEMORY[0x29EDC0B48] = [MEMORY[0x29EDC0B48] sharedInstance];
  applicationBundleIdentifiers = [mEMORY[0x29EDC0B48] applicationBundleIdentifiers];
  if ([applicationBundleIdentifiers containsObject:clarityCopy])
  {
    v6 = 1;
  }

  else
  {
    v6 = [clarityCopy isEqualToString:@"com.apple.siri"];
  }

  return v6;
}

@end