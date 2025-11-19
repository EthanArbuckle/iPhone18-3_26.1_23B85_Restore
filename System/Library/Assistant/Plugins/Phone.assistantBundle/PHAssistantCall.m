@interface PHAssistantCall
+ (BOOL)isEmergencyNumberOrIsWhiteListed:(id)a3 forProvider:(id)a4;
- (BOOL)isCarPlayActive;
- (BOOL)shouldApplyInternationalAssist;
- (CNContact)backingContact;
- (PHAssistantCall)initWithDictionary:(id)a3;
- (TUHandle)destinationHandle;
- (id)ISOCountryCode;
- (id)_copyExceptionsForCountryCode:(id)a3;
- (id)_validate;
- (id)_voiceDialBundle;
- (id)appPunchOutDialRequestWithEndpointIDSDestinationURI:(id)a3;
- (id)destinationID;
- (void)_addFaceTimeAvailabilityListener;
- (void)_performAppPunchOutWithDialRequest:(id)a3 withServiceHelper:(id)a4 completion:(id)a5;
- (void)_removeFaceTimeAvailabilityListener;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation PHAssistantCall

- (PHAssistantCall)initWithDictionary:(id)a3
{
  v16.receiver = self;
  v16.super_class = PHAssistantCall;
  v3 = [(PHAssistantCall *)&v16 initWithDictionary:a3];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 bundleIdentifier];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 stringWithFormat:@"%@.%@", v6, v8];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v10;

    v12 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v3->_serialQueue];
    telephonyClient = v3->_telephonyClient;
    v3->_telephonyClient = v12;

    voiceDialBundle = v3->_voiceDialBundle;
    v3->_voiceDialBundle = 0;

    [(PHAssistantCall *)v3 _addFaceTimeAvailabilityListener];
  }

  return v3;
}

- (CNContact)backingContact
{
  v23 = *MEMORY[0x277D85DE8];
  if (!self->_hasComputedBackingContact)
  {
    self->_hasComputedBackingContact = 1;
    v3 = [(SAPhoneCall *)self callRecipient];
    v4 = [v3 object];
    v5 = [v4 identifier];

    v6 = PHDefaultLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 138412290;
        v22 = v5;
        _os_log_impl(&dword_233521000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to find contact with Siri URL: %@", buf, 0xCu);
      }

      v8 = [MEMORY[0x277CFBC50] contactIDFromAssistantID:v5];
      v9 = *MEMORY[0x277CBCFC0];
      v20[0] = *MEMORY[0x277CBD018];
      v20[1] = v9;
      v20[2] = *MEMORY[0x277CBD098];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
      v11 = +[PHAssistantServices sharedContactStore];
      v19 = 0;
      v12 = [v11 unifiedContactWithIdentifier:v8 keysToFetch:v10 error:&v19];
      v6 = v19;

      if (v12)
      {
        v13 = PHDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138739971;
          v22 = v12;
          _os_log_impl(&dword_233521000, v13, OS_LOG_TYPE_DEFAULT, "Found contact: %{sensitive}@", buf, 0xCu);
        }

        v14 = v12;
        p_super = &self->_backingContact->super;
        self->_backingContact = v14;
      }

      else if (v6 && [v6 code]== 200)
      {
        p_super = PHDefaultLog();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138739971;
          v22 = v8;
          _os_log_impl(&dword_233521000, p_super, OS_LOG_TYPE_DEFAULT, "[WARN] No contact found with identifier: %{sensitive}@", buf, 0xCu);
        }
      }

      else
      {
        p_super = PHDefaultLog();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          sub_233527284();
        }
      }
    }

    else
    {
      if (!v7)
      {
LABEL_19:

        goto LABEL_20;
      }

      v8 = [(SAPhoneCall *)self callRecipient];
      v10 = [v8 object];
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_233521000, v6, OS_LOG_TYPE_DEFAULT, "[WARN] No URL found for SAPerson: %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

LABEL_20:
  backingContact = self->_backingContact;
  v17 = *MEMORY[0x277D85DE8];

  return backingContact;
}

- (TUHandle)destinationHandle
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = 0x27DE0E000;
  if (!self->_hasComputedDestinationHandle)
  {
    self->_hasComputedDestinationHandle = 1;
    v4 = [(SAPhoneCall *)self callRecipient];
    v5 = [v4 typedData];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = [v5 label];
    v8 = [(PHAssistantCall *)self backingContact];
    v9 = v8;
    if (isKindOfClass)
    {
      v61 = 0uLL;
      v62 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      v10 = [v8 emailAddresses];
      v11 = [v10 countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (v11)
      {
        v12 = v11;
        v53 = isKindOfClass;
        v54 = v9;
        v13 = *v60;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v60 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v59 + 1) + 8 * i);
            v16 = [v15 label];
            v17 = [v16 isEqualToString:v7];

            if (v17)
            {
              v26 = PHDefaultLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [v15 value];
                *buf = 138412546;
                v65 = v7;
                v66 = 2112;
                v67 = v27;
                _os_log_impl(&dword_233521000, v26, OS_LOG_TYPE_DEFAULT, "Found email address with matching label %@: %@", buf, 0x16u);
              }

              v25 = [v15 value];
              goto LABEL_28;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v59 objects:v68 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

LABEL_20:
        v25 = 0;
        v3 = 0x27DE0E000;
        v9 = v54;
LABEL_29:
        isKindOfClass = v53;
LABEL_30:

        if (v25)
        {
          goto LABEL_50;
        }

        v32 = PHDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v5;
          _os_log_impl(&dword_233521000, v32, OS_LOG_TYPE_DEFAULT, "Could not determine a destination ID from the backing contact. Checking if a destination ID was explicitly encoded in typed data: %@", buf, 0xCu);
        }

        v33 = v5;
        v34 = v33;
        if (isKindOfClass)
        {
          v35 = [v33 emailAddress];

          v36 = PHDefaultLog();
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          if (v35)
          {
            if (v37)
            {
              v38 = [v34 emailAddress];
              *buf = 138412290;
              v65 = v38;
              _os_log_impl(&dword_233521000, v36, OS_LOG_TYPE_DEFAULT, "Explicit destinationID was encoded in the SAEmail: %@", buf, 0xCu);
            }

            v39 = [v34 emailAddress];
LABEL_42:
            v25 = v39;
            goto LABEL_49;
          }

          if (v37)
          {
            *buf = 0;
            v43 = "No destinationID was explicitly encoded in the SAEmail";
LABEL_47:
            _os_log_impl(&dword_233521000, v36, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
          }
        }

        else
        {
          v40 = [v33 number];

          v36 = PHDefaultLog();
          v41 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          if (v40)
          {
            if (v41)
            {
              v42 = [v34 number];
              *buf = 138412290;
              v65 = v42;
              _os_log_impl(&dword_233521000, v36, OS_LOG_TYPE_DEFAULT, "Explicit destinationID was encoded in the SAPhone: %@", buf, 0xCu);
            }

            v39 = [v34 number];
            goto LABEL_42;
          }

          if (v41)
          {
            *buf = 0;
            v43 = "No destinationID was explicitly encoded in the SAPhone";
            goto LABEL_47;
          }
        }

        v25 = 0;
LABEL_49:

        if (!v25)
        {
          v25 = PHDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v51 = [(SAPhoneCall *)self callRecipient];
            v52 = [v51 typedData];
            *buf = 138412290;
            v65 = v52;
            _os_log_impl(&dword_233521000, v25, OS_LOG_TYPE_DEFAULT, "[WARN] No destination found for %@", buf, 0xCu);
          }

          goto LABEL_54;
        }

LABEL_50:
        if (isKindOfClass)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        v45 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:v44 value:v25];
        v46 = *(v3 + 1976);
        v47 = *(&self->super.super.super.super.super.super.isa + v46);
        *(&self->super.super.super.super.super.super.isa + v46) = v45;

LABEL_54:
        goto LABEL_55;
      }
    }

    else
    {
      v57 = 0uLL;
      v58 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
      v10 = [v8 phoneNumbers];
      v18 = [v10 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v18)
      {
        v19 = v18;
        v53 = isKindOfClass;
        v54 = v9;
        v20 = *v56;
        while (2)
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v56 != v20)
            {
              objc_enumerationMutation(v10);
            }

            v22 = *(*(&v55 + 1) + 8 * j);
            v23 = [v22 label];
            v24 = [v23 isEqualToString:v7];

            if (v24)
            {
              v28 = PHDefaultLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [v22 value];
                v30 = [v29 stringValue];
                *buf = 138412546;
                v65 = v7;
                v66 = 2112;
                v67 = v30;
                _os_log_impl(&dword_233521000, v28, OS_LOG_TYPE_DEFAULT, "Found phone number with matching label %@: %@", buf, 0x16u);
              }

              v31 = [v22 value];
              v25 = [v31 stringValue];

LABEL_28:
              v3 = 0x27DE0E000uLL;
              v9 = v54;
              goto LABEL_29;
            }
          }

          v19 = [v10 countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v19)
          {
            continue;
          }

          goto LABEL_20;
        }
      }
    }

    v25 = 0;
    goto LABEL_30;
  }

LABEL_55:
  v48 = *(&self->super.super.super.super.super.super.isa + *(v3 + 1976));
  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)destinationID
{
  v2 = [(PHAssistantCall *)self destinationHandle];
  v3 = [v2 value];

  return v3;
}

- (void)_addFaceTimeAvailabilityListener
{
  v2 = [MEMORY[0x277D07D70] sharedInstance];
  [v2 addListenerID:@"com.apple.assistant" forService:2];

  v3 = [MEMORY[0x277D07D70] sharedInstance];
  [v3 addListenerID:@"com.apple.assistant" forService:0];
}

- (void)_removeFaceTimeAvailabilityListener
{
  v2 = [MEMORY[0x277D07D70] sharedInstance];
  [v2 removeListenerID:@"com.apple.assistant" forService:2];

  v3 = [MEMORY[0x277D07D70] sharedInstance];
  [v3 removeListenerID:@"com.apple.assistant" forService:0];
}

- (BOOL)shouldApplyInternationalAssist
{
  v2 = [(SAPhoneCall *)self callRecipient];
  v3 = [v2 object];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isCarPlayActive
{
  v2 = [MEMORY[0x277D759A0] _carScreen];
  v3 = v2 != 0;

  return v3;
}

- (id)_voiceDialBundle
{
  voiceDialBundle = self->_voiceDialBundle;
  if (!voiceDialBundle)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/VoiceServices/PlugIns/VoiceDial.vsplugin"];
    v5 = self->_voiceDialBundle;
    self->_voiceDialBundle = v4;

    voiceDialBundle = self->_voiceDialBundle;
  }

  return voiceDialBundle;
}

- (id)ISOCountryCode
{
  if ([(PHAssistantCall *)self shouldApplyInternationalAssist]|| (v2 = CPPhoneNumberCopyNetworkCountryCode()) == 0)
  {
    v2 = CPPhoneNumberCopyHomeCountryCode();
  }

  return v2;
}

- (id)_copyExceptionsForCountryCode:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exceptions-%@", a3];
  v5 = [(PHAssistantCall *)self _voiceDialBundle];
  v6 = [v5 URLForResource:v4 withExtension:@"plist" subdirectory:@"DigitDialExceptions"];

  if (v6)
  {
    v11 = 0;
    v7 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:v6 error:&v11];
    v8 = v11;
    if (!v7)
    {
      v9 = PHDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_2335272EC();
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isEmergencyNumberOrIsWhiteListed:(id)a3 forProvider:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D6EF38]);
  v8 = [v6 prioritizedSenderIdentities];
  v9 = [v8 count];
  v10 = PHDefaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_233521000, v10, OS_LOG_TYPE_DEFAULT, "Checking whether the digits %@ are an emergency or whitelisted telephone number.", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v21 = v6;
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; i = (i + 1))
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v16 UUID];
          v18 = [v7 isWhitelistedEmergencyNumberForDigits:v5 senderIdentityUUID:v17];

          if (v18)
          {
            v13 = PHDefaultLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v27 = v5;
              v28 = 2112;
              v29 = v16;
              _os_log_impl(&dword_233521000, v13, OS_LOG_TYPE_DEFAULT, "Digits %@ are an emergency or whitelisted telephone number for sender identity %@.", buf, 0x16u);
            }

            LOBYTE(v13) = 1;
            goto LABEL_16;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_16:
      v6 = v21;
    }
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_233521000, v10, OS_LOG_TYPE_DEFAULT, "Checking whether the digits %@ is an emergency or whitelisted telephone number for nil sender identity.", buf, 0xCu);
    }

    LOBYTE(v13) = [v7 isWhitelistedEmergencyNumberForDigits:v5 senderIdentityUUID:0];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_validate
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = [(SAPhoneCall *)self emergencyCall];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233521000, v5, OS_LOG_TYPE_DEFAULT, "[PHAssistantCall _validate]: Call is an emergency call, passing validation", buf, 2u);
    }

    goto LABEL_5;
  }

  v7 = [(SAPhoneCall *)self callRecipient];

  if (!v7)
  {
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_23352763C();
    }

    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = @"No recipient was specified";
    goto LABEL_21;
  }

  v8 = [(PHAssistantCall *)self destinationID];

  if (!v8)
  {
    v13 = PHDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_233527608();
    }

    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = @"No destination ID was specified";
    goto LABEL_21;
  }

  if ([(SAPhoneCall *)self faceTime])
  {
    if ([MEMORY[0x277D6EDE8] supportsDisplayingFaceTimeVideoCalls])
    {
      if ([MEMORY[0x277D6EDE8] supportsFaceTimeVideoCalls])
      {
        if ([(PHAssistantCall *)self isCarPlayActive])
        {
          v9 = PHDefaultLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_2335275D4();
          }

          v10 = objc_alloc(MEMORY[0x277D47208]);
          v11 = @"FaceTime video not supported in CarPlay";
LABEL_21:
          v14 = [v10 initWithReason:v11];
LABEL_45:
          v6 = v14;
          goto LABEL_46;
        }

        goto LABEL_72;
      }

      v15 = PHDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_233527504();
      }

      goto LABEL_37;
    }

    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_2335274D0();
    }

LABEL_40:

    v20 = objc_alloc(MEMORY[0x277D47208]);
    v21 = MEMORY[0x277D47CA0];
    goto LABEL_44;
  }

  if (![(SAPhoneCall *)self faceTimeAudio])
  {
    if (([MEMORY[0x277D6EDE8] supportsTelephonyCalls] & 1) == 0)
    {
      v22 = PHDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_233527354();
      }

      v20 = objc_alloc(MEMORY[0x277D47208]);
      v21 = MEMORY[0x277D48778];
      goto LABEL_44;
    }

    if ([MEMORY[0x277D6EDE8] canAttemptTelephonyCallsWithoutCellularConnection])
    {
      goto LABEL_72;
    }

    v17 = objc_alloc_init(MEMORY[0x277CEC5D0]);
    if ([v17 airplaneMode])
    {
      v18 = PHDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_233527434();
      }

      v19 = MEMORY[0x277D48760];
LABEL_98:

      v6 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:*v19];
      goto LABEL_99;
    }

    if (![MEMORY[0x277D6EDE8] supportsPrimaryCalling])
    {
LABEL_71:

      goto LABEL_72;
    }

    v25 = [(PHAssistantCall *)self telephonyClient];
    v26 = objc_opt_respondsToSelector();

    if ((v26 & 1) == 0)
    {
LABEL_95:
      v18 = PHDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_233527400();
      }

      v19 = MEMORY[0x277D48790];
      goto LABEL_98;
    }

    v27 = [(PHAssistantCall *)self telephonyClient];
    v60 = 0;
    v28 = [v27 getSubscriptionInfoWithError:&v60];
    v29 = v60;

    if (v28)
    {
      v51 = v28;
      [v28 subscriptionsInUse];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v59 = 0u;
      v30 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v30)
      {
        v32 = v30;
        v33 = *v57;
        v53 = *MEMORY[0x277CC3E68];
        v52 = *MEMORY[0x277CC3E70];
        *&v31 = 138412546;
        v50 = v31;
        while (2)
        {
          v34 = 0;
          v35 = v29;
          do
          {
            if (*v57 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v56 + 1) + 8 * v34);
            if ([v36 isSimHidden])
            {
              v29 = v35;
            }

            else
            {
              v37 = [(PHAssistantCall *)self telephonyClient];
              v55 = v35;
              v38 = [v37 copyRegistrationStatus:v36 error:&v55];
              v29 = v55;

              if ([v38 isEqualToString:v53] & 1) != 0 || (objc_msgSend(v38, "isEqualToString:", v52))
              {

                goto LABEL_71;
              }

              if (!v38 && v29)
              {
                v39 = PHDefaultLog();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  *buf = v50;
                  v62 = v29;
                  v63 = 2112;
                  v64 = v36;
                  _os_log_error_impl(&dword_233521000, v39, OS_LOG_TYPE_ERROR, "Retrieving registration status failed with error %@ for subscription context %@.", buf, 0x16u);
                }
              }

              v35 = v29;
            }

            ++v34;
          }

          while (v32 != v34);
          v32 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      v40 = v51;
    }

    else
    {
      if (!v29)
      {
LABEL_94:

        goto LABEL_95;
      }

      v40 = PHDefaultLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_233527388(v29, v40);
      }
    }

    goto LABEL_94;
  }

  if (([MEMORY[0x277D6EDE8] supportsDisplayingFaceTimeAudioCalls] & 1) == 0)
  {
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_233527468();
    }

    goto LABEL_40;
  }

  if (([MEMORY[0x277D6EDE8] supportsFaceTimeAudioCalls] & 1) == 0)
  {
    v15 = PHDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23352749C();
    }

LABEL_37:

    v20 = objc_alloc(MEMORY[0x277D47208]);
    v21 = MEMORY[0x277D48788];
LABEL_44:
    v14 = [v20 initWithErrorCode:*v21];
    goto LABEL_45;
  }

LABEL_72:
  v17 = [(SAPhoneCall *)self callRecipient];
  if (!v17 || [(SAPhoneCall *)self faceTime])
  {
    goto LABEL_74;
  }

  v41 = [(SAPhoneCall *)self faceTimeAudio];

  if (v41)
  {
    goto LABEL_5;
  }

  v42 = [(PHAssistantCall *)self ISOCountryCode];
  if (!v42)
  {
    v47 = PHDefaultLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_2335275A0();
    }

    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = @"Device has no country code";
    goto LABEL_21;
  }

  v17 = v42;
  v43 = [(PHAssistantCall *)self destinationID];
  if (PNIsValidPhoneNumberForCountry())
  {
LABEL_83:

LABEL_74:
LABEL_5:
    v6 = 0;
    goto LABEL_46;
  }

  v44 = [(PHAssistantCall *)self _copyExceptionsForCountryCode:v17];
  v45 = v44;
  if (v44 && [v44 containsObject:v43])
  {
    v46 = PHDefaultLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v62 = v43;
      v63 = 2112;
      v64 = v17;
      _os_log_impl(&dword_233521000, v46, OS_LOG_TYPE_DEFAULT, "[PHAssistantCall _validate]: Destination ID %@ is an exception for country %@, passing validation", buf, 0x16u);
    }

    goto LABEL_83;
  }

  v48 = PHDefaultLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    sub_233527538();
  }

  v49 = objc_alloc(MEMORY[0x277D47208]);
  v6 = [v49 initWithErrorCode:*MEMORY[0x277D48780]];

LABEL_99:
LABEL_46:
  v23 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)appPunchOutDialRequestWithEndpointIDSDestinationURI:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D6EE28]);
  v6 = [(PHAssistantCall *)self destinationID];
  v7 = [(SAPhoneCall *)self emergencyCall];
  v8 = [v7 BOOLValue];

  if (!v8)
  {
    if ([(SAPhoneCall *)self faceTime]|| [(SAPhoneCall *)self faceTimeAudio])
    {
      v18 = [v5 faceTimeProvider];
    }

    else
    {
      v18 = [v5 telephonyProvider];
    }

    v17 = v18;
    v12 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:v18];
    [v12 setVideo:{-[SAPhoneCall faceTime](self, "faceTime")}];
    [v12 setDestinationID:v6];
    v19 = [(PHAssistantCall *)self backingContact];
    v20 = [v19 identifier];
    [v12 setContactIdentifier:v20];

    [v12 setPerformDialAssist:{-[PHAssistantCall shouldApplyInternationalAssist](self, "shouldApplyInternationalAssist")}];
LABEL_17:

    goto LABEL_18;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v6;
    _os_log_impl(&dword_233521000, v9, OS_LOG_TYPE_DEFAULT, "Siri punch out URL is handling an emergency call request, with destination ID %@", &v24, 0xCu);
  }

  v10 = objc_alloc(MEMORY[0x277D6EED0]);
  v11 = [v5 emergencyProvider];
  v12 = [v10 initWithProvider:v11];

  [v12 setPerformDialAssist:0];
  v13 = [v5 emergencyProvider];
  v14 = [PHAssistantCall isEmergencyNumberOrIsWhiteListed:v6 forProvider:v13];

  v15 = PHDefaultLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v6 && v14)
  {
    if (v16)
    {
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&dword_233521000, v15, OS_LOG_TYPE_DEFAULT, "The destinationID is whitelisted as an emergency number, so the punch out URL will contain the destinationID: %@", &v24, 0xCu);
    }

    v17 = [(PHAssistantCall *)self destinationHandle];
    [v12 setHandle:v17];
    goto LABEL_17;
  }

  if (v16)
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_233521000, v15, OS_LOG_TYPE_DEFAULT, "The destinationID is NOT whitelisted, so we will not include the destinationID in the URL but dial a generic emergency number", &v24, 2u);
  }

  [v12 setDialType:1];
LABEL_18:
  if ([(SAPhoneCall *)self speakerphoneCall])
  {
    [v12 setAudioSourceIdentifier:*MEMORY[0x277D6F0F0]];
  }

  [v12 setEndpointIDSDestinationURI:v4];
  [v12 setOriginatingUIType:11];
  v21 = PHDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v12;
    _os_log_impl(&dword_233521000, v21, OS_LOG_TYPE_DEFAULT, "Siri punch out URL created dial request %@", &v24, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_performAppPunchOutWithDialRequest:(id)a3 withServiceHelper:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_233521000, v11, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", buf, 0xCu);
  }

  v12 = [v8 URL];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277D479F0]);
    v14 = [(PHAssistantCall *)self refId];
    [v13 setRefId:v14];

    [v13 setPunchOutUri:v12];
    v15 = PHDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_233521000, v15, OS_LOG_TYPE_DEFAULT, "appPunchOut: %@", buf, 0xCu);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_233524870;
    v17[3] = &unk_2789DD7E8;
    v18 = v12;
    v19 = v8;
    v20 = v10;
    [v9 handleCommand:v13 completion:v17];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"Unable to call recipient"];
    (*(v10 + 2))(v10, v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_233524B44;
  v24 = sub_233524B54;
  v25 = [(PHAssistantCall *)self _validate];
  v8 = v21[5];
  if (!v8)
  {
    v10 = MEMORY[0x277D6EDF8];
    v11 = [(PHAssistantCall *)self serialQueue];
    v12 = [v10 callCenterWithQueue:v11];

    v13 = [(PHAssistantCall *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_233524B5C;
    block[3] = &unk_2789DD838;
    v15 = v12;
    v19 = &v20;
    v18 = v6;
    v16 = v7;
    v17 = self;
    v9 = v12;
    dispatch_sync(v13, block);

    goto LABEL_5;
  }

  if (v6)
  {
    v9 = [v8 dictionary];
    (*(v6 + 2))(v6, v9);
LABEL_5:
  }

  _Block_object_dispose(&v20, 8);
}

@end