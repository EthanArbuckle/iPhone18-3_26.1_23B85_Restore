@interface PHAssistantCall
+ (BOOL)isEmergencyNumberOrIsWhiteListed:(id)listed forProvider:(id)provider;
- (BOOL)isCarPlayActive;
- (BOOL)shouldApplyInternationalAssist;
- (CNContact)backingContact;
- (PHAssistantCall)initWithDictionary:(id)dictionary;
- (TUHandle)destinationHandle;
- (id)ISOCountryCode;
- (id)_copyExceptionsForCountryCode:(id)code;
- (id)_validate;
- (id)_voiceDialBundle;
- (id)appPunchOutDialRequestWithEndpointIDSDestinationURI:(id)i;
- (id)destinationID;
- (void)_addFaceTimeAvailabilityListener;
- (void)_performAppPunchOutWithDialRequest:(id)request withServiceHelper:(id)helper completion:(id)completion;
- (void)_removeFaceTimeAvailabilityListener;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation PHAssistantCall

- (PHAssistantCall)initWithDictionary:(id)dictionary
{
  v16.receiver = self;
  v16.super_class = PHAssistantCall;
  v3 = [(PHAssistantCall *)&v16 initWithDictionary:dictionary];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 stringWithFormat:@"%@.%@", bundleIdentifier, v8];
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
    callRecipient = [(SAPhoneCall *)self callRecipient];
    object = [callRecipient object];
    identifier = [object identifier];

    v6 = PHDefaultLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (identifier)
    {
      if (v7)
      {
        *buf = 138412290;
        v22 = identifier;
        _os_log_impl(&dword_233521000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to find contact with Siri URL: %@", buf, 0xCu);
      }

      callRecipient2 = [MEMORY[0x277CFBC50] contactIDFromAssistantID:identifier];
      v9 = *MEMORY[0x277CBCFC0];
      v20[0] = *MEMORY[0x277CBD018];
      v20[1] = v9;
      v20[2] = *MEMORY[0x277CBD098];
      object2 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
      v11 = +[PHAssistantServices sharedContactStore];
      v19 = 0;
      v12 = [v11 unifiedContactWithIdentifier:callRecipient2 keysToFetch:object2 error:&v19];
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
          v22 = callRecipient2;
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

      callRecipient2 = [(SAPhoneCall *)self callRecipient];
      object2 = [callRecipient2 object];
      *buf = 138412290;
      v22 = object2;
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
    callRecipient = [(SAPhoneCall *)self callRecipient];
    typedData = [callRecipient typedData];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    label = [typedData label];
    backingContact = [(PHAssistantCall *)self backingContact];
    v9 = backingContact;
    if (isKindOfClass)
    {
      v61 = 0uLL;
      v62 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      emailAddresses = [backingContact emailAddresses];
      v11 = [emailAddresses countByEnumeratingWithState:&v59 objects:v68 count:16];
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
              objc_enumerationMutation(emailAddresses);
            }

            v15 = *(*(&v59 + 1) + 8 * i);
            label2 = [v15 label];
            v17 = [label2 isEqualToString:label];

            if (v17)
            {
              v26 = PHDefaultLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                value = [v15 value];
                *buf = 138412546;
                v65 = label;
                v66 = 2112;
                v67 = value;
                _os_log_impl(&dword_233521000, v26, OS_LOG_TYPE_DEFAULT, "Found email address with matching label %@: %@", buf, 0x16u);
              }

              value2 = [v15 value];
              goto LABEL_28;
            }
          }

          v12 = [emailAddresses countByEnumeratingWithState:&v59 objects:v68 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

LABEL_20:
        value2 = 0;
        v3 = 0x27DE0E000;
        v9 = v54;
LABEL_29:
        isKindOfClass = v53;
LABEL_30:

        if (value2)
        {
          goto LABEL_50;
        }

        v32 = PHDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = typedData;
          _os_log_impl(&dword_233521000, v32, OS_LOG_TYPE_DEFAULT, "Could not determine a destination ID from the backing contact. Checking if a destination ID was explicitly encoded in typed data: %@", buf, 0xCu);
        }

        v33 = typedData;
        v34 = v33;
        if (isKindOfClass)
        {
          emailAddress = [v33 emailAddress];

          v36 = PHDefaultLog();
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          if (emailAddress)
          {
            if (v37)
            {
              emailAddress2 = [v34 emailAddress];
              *buf = 138412290;
              v65 = emailAddress2;
              _os_log_impl(&dword_233521000, v36, OS_LOG_TYPE_DEFAULT, "Explicit destinationID was encoded in the SAEmail: %@", buf, 0xCu);
            }

            emailAddress3 = [v34 emailAddress];
LABEL_42:
            value2 = emailAddress3;
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
          number = [v33 number];

          v36 = PHDefaultLog();
          v41 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          if (number)
          {
            if (v41)
            {
              number2 = [v34 number];
              *buf = 138412290;
              v65 = number2;
              _os_log_impl(&dword_233521000, v36, OS_LOG_TYPE_DEFAULT, "Explicit destinationID was encoded in the SAPhone: %@", buf, 0xCu);
            }

            emailAddress3 = [v34 number];
            goto LABEL_42;
          }

          if (v41)
          {
            *buf = 0;
            v43 = "No destinationID was explicitly encoded in the SAPhone";
            goto LABEL_47;
          }
        }

        value2 = 0;
LABEL_49:

        if (!value2)
        {
          value2 = PHDefaultLog();
          if (os_log_type_enabled(value2, OS_LOG_TYPE_DEFAULT))
          {
            callRecipient2 = [(SAPhoneCall *)self callRecipient];
            typedData2 = [callRecipient2 typedData];
            *buf = 138412290;
            v65 = typedData2;
            _os_log_impl(&dword_233521000, value2, OS_LOG_TYPE_DEFAULT, "[WARN] No destination found for %@", buf, 0xCu);
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

        v45 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:v44 value:value2];
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
      emailAddresses = [backingContact phoneNumbers];
      v18 = [emailAddresses countByEnumeratingWithState:&v55 objects:v63 count:16];
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
              objc_enumerationMutation(emailAddresses);
            }

            v22 = *(*(&v55 + 1) + 8 * j);
            label3 = [v22 label];
            v24 = [label3 isEqualToString:label];

            if (v24)
            {
              v28 = PHDefaultLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                value3 = [v22 value];
                stringValue = [value3 stringValue];
                *buf = 138412546;
                v65 = label;
                v66 = 2112;
                v67 = stringValue;
                _os_log_impl(&dword_233521000, v28, OS_LOG_TYPE_DEFAULT, "Found phone number with matching label %@: %@", buf, 0x16u);
              }

              value4 = [v22 value];
              value2 = [value4 stringValue];

LABEL_28:
              v3 = 0x27DE0E000uLL;
              v9 = v54;
              goto LABEL_29;
            }
          }

          v19 = [emailAddresses countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v19)
          {
            continue;
          }

          goto LABEL_20;
        }
      }
    }

    value2 = 0;
    goto LABEL_30;
  }

LABEL_55:
  v48 = *(&self->super.super.super.super.super.super.isa + *(v3 + 1976));
  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)destinationID
{
  destinationHandle = [(PHAssistantCall *)self destinationHandle];
  value = [destinationHandle value];

  return value;
}

- (void)_addFaceTimeAvailabilityListener
{
  mEMORY[0x277D07D70] = [MEMORY[0x277D07D70] sharedInstance];
  [mEMORY[0x277D07D70] addListenerID:@"com.apple.assistant" forService:2];

  mEMORY[0x277D07D70]2 = [MEMORY[0x277D07D70] sharedInstance];
  [mEMORY[0x277D07D70]2 addListenerID:@"com.apple.assistant" forService:0];
}

- (void)_removeFaceTimeAvailabilityListener
{
  mEMORY[0x277D07D70] = [MEMORY[0x277D07D70] sharedInstance];
  [mEMORY[0x277D07D70] removeListenerID:@"com.apple.assistant" forService:2];

  mEMORY[0x277D07D70]2 = [MEMORY[0x277D07D70] sharedInstance];
  [mEMORY[0x277D07D70]2 removeListenerID:@"com.apple.assistant" forService:0];
}

- (BOOL)shouldApplyInternationalAssist
{
  callRecipient = [(SAPhoneCall *)self callRecipient];
  object = [callRecipient object];
  v4 = object != 0;

  return v4;
}

- (BOOL)isCarPlayActive
{
  _carScreen = [MEMORY[0x277D759A0] _carScreen];
  v3 = _carScreen != 0;

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

- (id)_copyExceptionsForCountryCode:(id)code
{
  if (!code)
  {
    return 0;
  }

  code = [MEMORY[0x277CCACA8] stringWithFormat:@"Exceptions-%@", code];
  _voiceDialBundle = [(PHAssistantCall *)self _voiceDialBundle];
  v6 = [_voiceDialBundle URLForResource:code withExtension:@"plist" subdirectory:@"DigitDialExceptions"];

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

+ (BOOL)isEmergencyNumberOrIsWhiteListed:(id)listed forProvider:(id)provider
{
  v31 = *MEMORY[0x277D85DE8];
  listedCopy = listed;
  providerCopy = provider;
  v7 = objc_alloc_init(MEMORY[0x277D6EF38]);
  prioritizedSenderIdentities = [providerCopy prioritizedSenderIdentities];
  v9 = [prioritizedSenderIdentities count];
  v10 = PHDefaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v27 = listedCopy;
      _os_log_impl(&dword_233521000, v10, OS_LOG_TYPE_DEFAULT, "Checking whether the digits %@ are an emergency or whitelisted telephone number.", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = prioritizedSenderIdentities;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v21 = providerCopy;
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
          uUID = [v16 UUID];
          v18 = [v7 isWhitelistedEmergencyNumberForDigits:listedCopy senderIdentityUUID:uUID];

          if (v18)
          {
            v13 = PHDefaultLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v27 = listedCopy;
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
      providerCopy = v21;
    }
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v27 = listedCopy;
      _os_log_impl(&dword_233521000, v10, OS_LOG_TYPE_DEFAULT, "Checking whether the digits %@ is an emergency or whitelisted telephone number for nil sender identity.", buf, 0xCu);
    }

    LOBYTE(v13) = [v7 isWhitelistedEmergencyNumberForDigits:listedCopy senderIdentityUUID:0];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_validate
{
  v66 = *MEMORY[0x277D85DE8];
  emergencyCall = [(SAPhoneCall *)self emergencyCall];
  bOOLValue = [emergencyCall BOOLValue];

  if (bOOLValue)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233521000, v5, OS_LOG_TYPE_DEFAULT, "[PHAssistantCall _validate]: Call is an emergency call, passing validation", buf, 2u);
    }

    goto LABEL_5;
  }

  callRecipient = [(SAPhoneCall *)self callRecipient];

  if (!callRecipient)
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

  destinationID = [(PHAssistantCall *)self destinationID];

  if (!destinationID)
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

    callRecipient2 = objc_alloc_init(MEMORY[0x277CEC5D0]);
    if ([callRecipient2 airplaneMode])
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

    telephonyClient = [(PHAssistantCall *)self telephonyClient];
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

    telephonyClient2 = [(PHAssistantCall *)self telephonyClient];
    v60 = 0;
    v28 = [telephonyClient2 getSubscriptionInfoWithError:&v60];
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
              telephonyClient3 = [(PHAssistantCall *)self telephonyClient];
              v55 = v35;
              v38 = [telephonyClient3 copyRegistrationStatus:v36 error:&v55];
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
  callRecipient2 = [(SAPhoneCall *)self callRecipient];
  if (!callRecipient2 || [(SAPhoneCall *)self faceTime])
  {
    goto LABEL_74;
  }

  faceTimeAudio = [(SAPhoneCall *)self faceTimeAudio];

  if (faceTimeAudio)
  {
    goto LABEL_5;
  }

  iSOCountryCode = [(PHAssistantCall *)self ISOCountryCode];
  if (!iSOCountryCode)
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

  callRecipient2 = iSOCountryCode;
  destinationID2 = [(PHAssistantCall *)self destinationID];
  if (PNIsValidPhoneNumberForCountry())
  {
LABEL_83:

LABEL_74:
LABEL_5:
    v6 = 0;
    goto LABEL_46;
  }

  v44 = [(PHAssistantCall *)self _copyExceptionsForCountryCode:callRecipient2];
  v45 = v44;
  if (v44 && [v44 containsObject:destinationID2])
  {
    v46 = PHDefaultLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v62 = destinationID2;
      v63 = 2112;
      v64 = callRecipient2;
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

- (id)appPunchOutDialRequestWithEndpointIDSDestinationURI:(id)i
{
  v26 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v5 = objc_alloc_init(MEMORY[0x277D6EE28]);
  destinationID = [(PHAssistantCall *)self destinationID];
  emergencyCall = [(SAPhoneCall *)self emergencyCall];
  bOOLValue = [emergencyCall BOOLValue];

  if (!bOOLValue)
  {
    if ([(SAPhoneCall *)self faceTime]|| [(SAPhoneCall *)self faceTimeAudio])
    {
      faceTimeProvider = [v5 faceTimeProvider];
    }

    else
    {
      faceTimeProvider = [v5 telephonyProvider];
    }

    destinationHandle = faceTimeProvider;
    v12 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:faceTimeProvider];
    [v12 setVideo:{-[SAPhoneCall faceTime](self, "faceTime")}];
    [v12 setDestinationID:destinationID];
    backingContact = [(PHAssistantCall *)self backingContact];
    identifier = [backingContact identifier];
    [v12 setContactIdentifier:identifier];

    [v12 setPerformDialAssist:{-[PHAssistantCall shouldApplyInternationalAssist](self, "shouldApplyInternationalAssist")}];
LABEL_17:

    goto LABEL_18;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = destinationID;
    _os_log_impl(&dword_233521000, v9, OS_LOG_TYPE_DEFAULT, "Siri punch out URL is handling an emergency call request, with destination ID %@", &v24, 0xCu);
  }

  v10 = objc_alloc(MEMORY[0x277D6EED0]);
  emergencyProvider = [v5 emergencyProvider];
  v12 = [v10 initWithProvider:emergencyProvider];

  [v12 setPerformDialAssist:0];
  emergencyProvider2 = [v5 emergencyProvider];
  v14 = [PHAssistantCall isEmergencyNumberOrIsWhiteListed:destinationID forProvider:emergencyProvider2];

  v15 = PHDefaultLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (destinationID && v14)
  {
    if (v16)
    {
      v24 = 138412290;
      v25 = destinationID;
      _os_log_impl(&dword_233521000, v15, OS_LOG_TYPE_DEFAULT, "The destinationID is whitelisted as an emergency number, so the punch out URL will contain the destinationID: %@", &v24, 0xCu);
    }

    destinationHandle = [(PHAssistantCall *)self destinationHandle];
    [v12 setHandle:destinationHandle];
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

  [v12 setEndpointIDSDestinationURI:iCopy];
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

- (void)_performAppPunchOutWithDialRequest:(id)request withServiceHelper:(id)helper completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  helperCopy = helper;
  completionCopy = completion;
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = requestCopy;
    _os_log_impl(&dword_233521000, v11, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", buf, 0xCu);
  }

  v12 = [requestCopy URL];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277D479F0]);
    refId = [(PHAssistantCall *)self refId];
    [v13 setRefId:refId];

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
    v19 = requestCopy;
    v20 = completionCopy;
    [helperCopy handleCommand:v13 completion:v17];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"Unable to call recipient"];
    (*(completionCopy + 2))(completionCopy, v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  helperCopy = helper;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_233524B44;
  v24 = sub_233524B54;
  _validate = [(PHAssistantCall *)self _validate];
  v8 = v21[5];
  if (!v8)
  {
    v10 = MEMORY[0x277D6EDF8];
    serialQueue = [(PHAssistantCall *)self serialQueue];
    v12 = [v10 callCenterWithQueue:serialQueue];

    serialQueue2 = [(PHAssistantCall *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_233524B5C;
    block[3] = &unk_2789DD838;
    v15 = v12;
    v19 = &v20;
    v18 = completionCopy;
    v16 = helperCopy;
    selfCopy = self;
    dictionary = v12;
    dispatch_sync(serialQueue2, block);

    goto LABEL_5;
  }

  if (completionCopy)
  {
    dictionary = [v8 dictionary];
    (*(completionCopy + 2))(completionCopy, dictionary);
LABEL_5:
  }

  _Block_object_dispose(&v20, 8);
}

@end