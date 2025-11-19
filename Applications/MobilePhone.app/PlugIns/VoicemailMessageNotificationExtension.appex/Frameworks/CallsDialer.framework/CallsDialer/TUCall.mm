@interface TUCall
- (BOOL)disconnectedReasonRequiresCallBackUI;
- (BOOL)hasSendCustomMessageCapability;
- (BOOL)hasSendMessageCapability;
- (BOOL)shouldPlayInCallSounds;
- (BOOL)shouldShowAutomaticTelephonyCallFallback;
- (BOOL)shouldShowFailureAlert;
- (BOOL)supportsSendMessageIntent;
- (id)sendMessageIntentExtension;
@end

@implementation TUCall

- (BOOL)hasSendMessageCapability
{
  v3 = [(TUCall *)self provider];
  if ([v3 isSystemProvider])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TUCall *)self sendMessageIntentExtension];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)disconnectedReasonRequiresCallBackUI
{
  v3 = [(TUCall *)self disconnectedReason];
  v4 = 0;
  if (v3 > 0x18 || ((1 << v3) & 0x1C2C020) == 0)
  {
    return v4 & 1;
  }

  v5 = +[TUCallCenter sharedInstance];
  v6 = [v5 activeConversationForCall:self];

  if (v6)
  {
    v7 = [v6 isOneToOneModeEnabled];
  }

  else
  {
    v8 = [(TUCall *)self remoteParticipantHandles];
    v7 = [v8 count] == &dword_0 + 1;
  }

  v9 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked];
  if (![(TUCall *)self isIncoming])
  {
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v4 = [(TUCall *)self isConversation]^ 1 | v7;
    goto LABEL_11;
  }

  if (!(v9 & 1 | (([(TUCall *)self isConnecting]& 1) == 0)))
  {
    goto LABEL_10;
  }

LABEL_8:
  v4 = 0;
LABEL_11:
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110912;
    v13 = v4 & 1;
    v14 = 1024;
    v15 = [(TUCall *)self disconnectedReason];
    v16 = 1024;
    v17 = [(TUCall *)self isIncoming];
    v18 = 1024;
    v19 = [(TUCall *)self isConnecting];
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = [(TUCall *)self isConversation];
    v24 = 1024;
    v25 = v7;
    v26 = 1024;
    v27 = v6 == 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "disconnectedReasonRequiresCallBackUI = %d (disconnectedReason: %d, isIncoming: %d, isConnecting: %d, isSpringBoardPasscodeLocked: %d, isConversation: %d, isOneToOneModeEnabled: %d, conversationIsNil: %d)", buf, 0x32u);
  }

  return v4 & 1;
}

- (BOOL)shouldShowFailureAlert
{
  if ([(TUCall *)self status]== 6)
  {
    v3 = [(TUCall *)self errorAlertTitle];
    if (v3)
    {
      v4 = ![(TUCall *)self shouldShowAutomaticTelephonyCallFallback];
    }

    else
    {
      v5 = [(TUCall *)self errorAlertMessage];
      if (v5)
      {
        v4 = ![(TUCall *)self shouldShowAutomaticTelephonyCallFallback];
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)shouldShowAutomaticTelephonyCallFallback
{
  v3 = [(TUCall *)self disconnectedReason];
  v4 = [(TUCall *)self provider];
  if ([v4 isFaceTimeProvider] && (-[TUCall isVideo](self, "isVideo") & 1) == 0)
  {
    v6 = [(TUCall *)self remoteParticipantHandles];
    if ([v6 count] == &dword_0 + 1 && (v3 == 49 || v3 == 30))
    {
      v5 = TUDefaultAppsEnabled();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldPlayInCallSounds
{
  v3 = [(TUCall *)self needsManualInCallSounds];
  if (v3)
  {

    LOBYTE(v3) = [(TUCall *)self isEndpointOnCurrentDevice];
  }

  return v3;
}

- (BOOL)supportsSendMessageIntent
{
  v2 = [(TUCall *)self provider];
  v3 = [v2 bundleIdentifier];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [v4 applicationsForUserActivityType:@"INSendMessageIntent"];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = PHDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v10;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "application %@", buf, 0xCu);
        }

        v12 = [v10 bundleIdentifier];
        v13 = [v12 isEqualToString:v3];

        if (v13)
        {
          LOBYTE(v7) = 1;
          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (BOOL)hasSendCustomMessageCapability
{
  v3 = [(TUCall *)self provider];
  if ([v3 isSystemProvider])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(TUCall *)self supportsSendMessageIntent];
  }

  return v4;
}

- (id)sendMessageIntentExtension
{
  v3 = [(TUCall *)self provider];
  if ([v3 isSystemProvider])
  {

LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  v4 = [(TUCall *)self provider];
  v5 = [v4 bundleURL];

  if (!v5)
  {
    goto LABEL_13;
  }

  if (sendMessageIntentExtension_onceToken != -1)
  {
    [TUCall(PHUIUtilities) sendMessageIntentExtension];
  }

  if (([sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache containsObject:self] & 1) == 0)
  {
    [sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache addObject:self];
    v35 = @"INSendMessageIntent";
    v6 = [NSArray arrayWithObjects:&v35 count:1];
    v7 = [NSExtension _intents_extensionMatchingAttributesForIntents:v6];
    v8 = [v7 mutableCopy];

    v9 = [(TUCall *)self provider];
    v10 = [v9 bundleURL];
    v11 = [v10 path];
    [v8 setObject:v11 forKeyedSubscript:NSExtensionContainingAppName];

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    v12 = dispatch_semaphore_create(0);
    v13 = PHDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v8;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Looking up send message intent extension using attributes: %@", buf, 0xCu);
    }

    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke_38;
    v22 = &unk_4C838;
    v24 = &v25;
    v14 = v12;
    v23 = v14;
    [NSExtension extensionsWithMatchingAttributes:v8 completion:&v19];
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = PHDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v26[5];
      *buf = 138412546;
      v32 = v16;
      v33 = 2112;
      v34 = self;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Found send message intent extension %@ for call %@", buf, 0x16u);
    }

    [sendMessageIntentExtension_sendMessageIntentExtensionsCache setObject:v26[5] forKey:{self, v19, v20, v21, v22}];
    _Block_object_dispose(&v25, 8);
  }

  v17 = [sendMessageIntentExtension_sendMessageIntentExtensionsCache objectForKey:self];
LABEL_14:

  return v17;
}

void __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke(id a1)
{
  v1 = +[NSHashTable weakObjectsHashTable];
  v2 = sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache;
  sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache = v1;

  sendMessageIntentExtension_sendMessageIntentExtensionsCache = +[NSMapTable weakToStrongObjectsMapTable];

  _objc_release_x1();
}

void __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke_38_cold_1();
    }
  }

  else
  {
    v7 = [a2 firstObject];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end