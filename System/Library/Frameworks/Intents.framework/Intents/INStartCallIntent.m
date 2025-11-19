@interface INStartCallIntent
- (INCallAudioRoute)audioRoute;
- (INCallCapability)callCapability;
- (INCallDestinationType)destinationType;
- (INCallRecord)callRecordToCallBack;
- (INCallRecordFilter)callRecordFilter;
- (INCallRecordType)recordTypeForRedialing;
- (INStartCallIntent)initWithAudioRoute:(int64_t)a3 destinationType:(int64_t)a4 preferredCallProvider:(int64_t)a5 contacts:(id)a6 recordTypeForRedialing:(int64_t)a7 ttyType:(int64_t)a8 callCapability:(int64_t)a9;
- (INStartCallIntent)initWithCallRecordFilter:(INCallRecordFilter *)callRecordFilter callRecordToCallBack:(INCallRecord *)callRecordToCallBack audioRoute:(INCallAudioRoute)audioRoute destinationType:(INCallDestinationType)destinationType contacts:(NSArray *)contacts callCapability:(INCallCapability)callCapability;
- (INStartCallIntent)initWithCallRecordFilter:(id)a3 callRecordToCallBack:(id)a4 audioRoute:(int64_t)a5 destinationType:(int64_t)a6 preferredCallProvider:(int64_t)a7 contacts:(id)a8 ttyType:(int64_t)a9 callCapability:(int64_t)a10;
- (INStartCallRequestMetadata)callRequestMetadata;
- (NSArray)callGroups;
- (NSArray)contacts;
- (NSNumber)isGroupCall;
- (NSString)faceTimeLink;
- (NSString)notificationThreadIdentifier;
- (id)_currentParameterCombination;
- (id)_dictionaryRepresentation;
- (id)_emptyCopy;
- (id)_metadata;
- (id)_subtitleWithLocalizer:(id)a3 fromBundleURL:(id)a4;
- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4;
- (id)_typedBackingStore;
- (id)_validParameterCombinationsWithSchema:(id)a3;
- (int64_t)preferredCallProvider;
- (int64_t)ttyType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAudioRoute:(int64_t)a3;
- (void)setCallCapability:(int64_t)a3;
- (void)setCallGroups:(id)a3;
- (void)setCallRecordFilter:(id)a3;
- (void)setCallRecordToCallBack:(id)a3;
- (void)setCallRequestMetadata:(id)a3;
- (void)setContacts:(id)a3;
- (void)setDestinationType:(int64_t)a3;
- (void)setFaceTimeLink:(id)a3;
- (void)setIsGroupCall:(id)a3;
- (void)setNotificationThreadIdentifier:(id)a3;
- (void)setPreferredCallProvider:(int64_t)a3;
- (void)setRecordTypeForRedialing:(int64_t)a3;
- (void)setTTYType:(int64_t)a3;
@end

@implementation INStartCallIntent

- (id)_metadata
{
  v2 = [(INStartCallIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (int64_t)preferredCallProvider
{
  v3 = [(INStartCallIntent *)self _typedBackingStore];
  v4 = [v3 hasPreferredCallProvider];
  v5 = [(INStartCallIntent *)self _typedBackingStore];
  v6 = [v5 preferredCallProvider];
  if ((((v6 - 2) < 3) & v4) != 0)
  {
    v7 = (v6 - 1);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_dictionaryRepresentation
{
  v24[6] = *MEMORY[0x1E69E9840];
  v23[0] = @"callRecordFilter";
  v3 = [(INStartCallIntent *)self callRecordFilter];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[0] = v4;
  v23[1] = @"callRecordToCallBack";
  v5 = [(INStartCallIntent *)self callRecordToCallBack];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = v6;
  v23[2] = @"audioRoute";
  v7 = [(INStartCallIntent *)self audioRoute];
  v8 = @"speakerphoneAudioRoute";
  v9 = @"heySiriAudioRoute";
  v10 = @"unknown";
  if (v7 == INCallAudioRouteBluetoothAudioRoute)
  {
    v10 = @"bluetoothAudioRoute";
  }

  if (v7 != 1000)
  {
    v9 = v10;
  }

  if (v7 != INCallAudioRouteSpeakerphoneAudioRoute)
  {
    v8 = v9;
  }

  v11 = v8;
  v24[2] = v11;
  v23[3] = @"destinationType";
  v12 = [(INStartCallIntent *)self destinationType];
  if ((v12 - 1) > 4)
  {
    v13 = @"unknown";
  }

  else
  {
    v13 = off_1E727FF40[v12 - 1];
  }

  v14 = v13;
  v24[3] = v14;
  v23[4] = @"contacts";
  v15 = [(INStartCallIntent *)self contacts];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = v16;
  v23[5] = @"callCapability";
  v17 = [(INStartCallIntent *)self callCapability];
  v18 = @"unknown";
  if (v17 == INCallCapabilityVideoCall)
  {
    v18 = @"videoCall";
  }

  if (v17 == INCallCapabilityAudioCall)
  {
    v18 = @"audioCall";
  }

  v19 = v18;
  v24[5] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:6];

  if (!v15)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (INCallRecordFilter)callRecordFilter
{
  v2 = [(INStartCallIntent *)self _typedBackingStore];
  v3 = [v2 callRecordFilter];
  v4 = INIntentSlotValueTransformFromCallRecordFilter(v3);

  return v4;
}

- (INCallRecord)callRecordToCallBack
{
  v2 = [(INStartCallIntent *)self _typedBackingStore];
  v3 = [v2 callRecordToCallBack];
  v4 = INIntentSlotValueTransformFromCallRecordValue(v3);

  return v4;
}

- (INCallAudioRoute)audioRoute
{
  v3 = [(INStartCallIntent *)self _typedBackingStore];
  v4 = [v3 hasAudioRoute];
  v5 = [(INStartCallIntent *)self _typedBackingStore];
  v6 = [v5 audioRoute];
  if (v4 && (v6 - 2) <= 2)
  {
    v7 = qword_18EE5EFD0[v6 - 2];
  }

  else
  {
    v7 = INCallAudioRouteUnknown;
  }

  return v7;
}

- (INCallDestinationType)destinationType
{
  v3 = [(INStartCallIntent *)self _typedBackingStore];
  v4 = [v3 hasDestinationType];
  v5 = [(INStartCallIntent *)self _typedBackingStore];
  v6 = [v5 destinationType];
  if (((v6 - 1 < 5) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INCallDestinationTypeUnknown;
  }

  return v7;
}

- (NSArray)contacts
{
  v2 = [(INStartCallIntent *)self _typedBackingStore];
  v3 = [v2 contacts];
  v4 = INIntentSlotValueTransformFromContacts(v3);

  return v4;
}

- (INCallCapability)callCapability
{
  v3 = [(INStartCallIntent *)self _typedBackingStore];
  v4 = [v3 hasCallCapability];
  v5 = [(INStartCallIntent *)self _typedBackingStore];
  v6 = [v5 callCapability];
  v7 = 2 * (v6 == 2);
  if (v6 == 1)
  {
    v7 = 1;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = INCallCapabilityUnknown;
  }

  return v8;
}

- (int64_t)ttyType
{
  v3 = [(INStartCallIntent *)self _typedBackingStore];
  v4 = [v3 hasTtyType];
  v5 = [(INStartCallIntent *)self _typedBackingStore];
  v6 = [v5 ttyType];
  if (((v6 < 3) & v4) != 0)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)isGroupCall
{
  v3 = [(INStartCallIntent *)self _typedBackingStore];
  if ([v3 hasIsGroupCall])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INStartCallIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "isGroupCall")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)callGroups
{
  v2 = [(INStartCallIntent *)self _typedBackingStore];
  v3 = [v2 callGroups];
  v4 = INIntentSlotValueTransformFromCallGroups(v3);

  return v4;
}

- (NSString)notificationThreadIdentifier
{
  v2 = [(INStartCallIntent *)self _typedBackingStore];
  v3 = [v2 notificationThreadIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (NSString)faceTimeLink
{
  v2 = [(INStartCallIntent *)self _typedBackingStore];
  v3 = [v2 faceTimeLink];
  v4 = [v3 copy];

  return v4;
}

- (INStartCallRequestMetadata)callRequestMetadata
{
  v2 = [(INStartCallIntent *)self _typedBackingStore];
  v3 = [v2 callRequestMetadata];
  v4 = INIntentSlotValueTransformFromStartCallRequestMetadata(v3);

  return v4;
}

- (id)_subtitleWithLocalizer:(id)a3 fromBundleURL:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(INStartCallIntent *)self callCapability]== INCallCapabilityVideoCall)
  {
    goto LABEL_2;
  }

  v8 = [(INStartCallIntent *)self preferredCallProvider];
  if ((v8 - 2) < 2 || !v8)
  {
    [(INIntent *)&v41 _subtitleWithLocalizer:v6 fromBundleURL:v7, v40.receiver, v40.super_class, self, INStartCallIntent, v42.receiver, v42.super_class, v43.receiver, v43.super_class];
    goto LABEL_20;
  }

  if (v8 != 1)
  {
LABEL_2:
    [(INIntent *)&v40 _subtitleWithLocalizer:v6 fromBundleURL:v7, self, INStartCallIntent, v41.receiver, v41.super_class, v42.receiver, v42.super_class, v43.receiver, v43.super_class];
    v27 = LABEL_20:;
    goto LABEL_21;
  }

  v9 = [(INStartCallIntent *)self contacts];
  if ([v9 count] != 1)
  {

    goto LABEL_25;
  }

  v10 = [(INStartCallIntent *)self contacts];
  v11 = [v10 firstObject];
  v12 = [v11 personHandle];
  v13 = [v12 type];

  if (v13 != 2)
  {
LABEL_25:
    [(INIntent *)&v42 _subtitleWithLocalizer:v6 fromBundleURL:v7, v40.receiver, v40.super_class, v41.receiver, v41.super_class, self, INStartCallIntent, v43.receiver, v43.super_class];
    goto LABEL_20;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = [(INStartCallIntent *)self contacts];
  v15 = [v14 firstObject];
  v16 = [v15 aliases];

  v17 = [v16 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v17)
  {

LABEL_27:
    [(INIntent *)&v43 _subtitleWithLocalizer:v6 fromBundleURL:v7, v40.receiver, v40.super_class, v41.receiver, v41.super_class, v42.receiver, v42.super_class, self, INStartCallIntent];
    goto LABEL_20;
  }

  v18 = v17;
  v19 = 0;
  v20 = *v45;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v45 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v19 |= [*(*(&v44 + 1) + 8 * i) type] == 2;
    }

    v18 = [v16 countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v18);

  if ((v19 & 1) == 0)
  {
    goto LABEL_27;
  }

  v22 = [(INStartCallIntent *)self contacts];
  v23 = [v22 firstObject];
  v24 = [v23 personHandle];
  v25 = [v24 label];

  if (!v25)
  {
    v30 = [v6 locale];
    v31 = [v30 regionCode];
    v26 = [v31 lowercaseString];

    if (!v26)
    {
      v32 = CPPhoneNumberCopyNetworkCountryCode();
      if (!v32)
      {
        v32 = CPPhoneNumberCopyHomeCountryCode();
      }

      v26 = v32;
    }

    v33 = [(INStartCallIntent *)self contacts];
    v34 = [v33 firstObject];
    v35 = [v34 personHandle];
    [v35 value];
    v36 = PNCreateFormattedStringWithCountry();

    if ([v36 length])
    {
      v27 = v36;
    }

    else
    {
      v37 = [(INStartCallIntent *)self contacts];
      v38 = [v37 firstObject];
      v39 = [v38 personHandle];
      v27 = [v39 value];
    }

    goto LABEL_37;
  }

  if ([v25 hasPrefix:@"com.apple.intents.PersonHandleLabel."])
  {
    v26 = [v25 substringFromIndex:{objc_msgSend(@"com.apple.intents.PersonHandleLabel.", "length")}];
    v27 = INLocalizedStringWithLocalizer(v25, v26, v6);
LABEL_37:

    goto LABEL_38;
  }

  v27 = v25;
LABEL_38:

LABEL_21:
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(INStartCallIntent *)self callCapability]== INCallCapabilityVideoCall && [(INStartCallIntent *)self preferredCallProvider]== 2)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = INLocalizedStringWithLocalizer(@"FaceTime %@", @"FaceTime %@", v6);
    v10 = [(INStartCallIntent *)self contacts];
    v11 = [v10 _intents_readableTitleWithLocalizer:v6];
    v12 = [v8 stringWithFormat:v9, v11];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = INStartCallIntent;
    v12 = [(INIntent *)&v14 _titleWithLocalizer:v6 fromBundleURL:v7];
  }

  return v12;
}

- (void)setRecordTypeForRedialing:(int64_t)a3
{
  v3 = 0x7FFFFFFFLL;
  if ((a3 - 1) <= 7)
  {
    v3 = dword_18EE5EA60[a3 - 1];
  }

  v4 = [(INStartCallIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 == 0x7FFFFFFF)
  {
    [v4 setHasRecordTypeForRedialing:0];
  }

  else
  {
    [v4 setRecordTypeForRedialing:v3];
  }
}

- (INCallRecordType)recordTypeForRedialing
{
  v3 = [(INStartCallIntent *)self _typedBackingStore];
  v4 = [v3 hasRecordTypeForRedialing];
  v5 = [(INStartCallIntent *)self _typedBackingStore];
  v6 = [v5 recordTypeForRedialing];
  if (v4 && (v6 - 2) <= 8)
  {
    v7 = qword_18EE5EA80[v6 - 2];
  }

  else
  {
    v7 = INCallRecordTypeUnknown;
  }

  return v7;
}

- (INStartCallIntent)initWithAudioRoute:(int64_t)a3 destinationType:(int64_t)a4 preferredCallProvider:(int64_t)a5 contacts:(id)a6 recordTypeForRedialing:(int64_t)a7 ttyType:(int64_t)a8 callCapability:(int64_t)a9
{
  v10 = [(INStartCallIntent *)self initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:a3 destinationType:a4 preferredCallProvider:a5 contacts:a6 ttyType:a8 callCapability:a9];
  v11 = v10;
  if (v10)
  {
    [(INStartCallIntent *)v10 setRecordTypeForRedialing:a7];
  }

  return v11;
}

- (id)_currentParameterCombination
{
  v3 = [(INIntent *)self _nonNilParameters];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"audioRoute", @"destinationType", @"ttyType", @"recordTypeForRedialing", @"callCapability", 0}];
  [v4 minusSet:v5];

  v6 = [(INIntent *)self _nonNilParameters];
  v7 = [v6 containsObject:@"preferredCallProvider"];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [(INIntent *)self _parameterCombinations];
  v9 = [v8 objectForKey:v4];

  if (!v9)
  {
    [v4 removeObject:@"preferredCallProvider"];
    v10 = [(INIntent *)self _parameterCombinations];
    v9 = [v10 objectForKey:v4];

    if (!v9)
    {
LABEL_4:
      v12.receiver = self;
      v12.super_class = INStartCallIntent;
      v9 = [(INIntent *)&v12 _currentParameterCombination];
    }
  }

  return v9;
}

- (id)_validParameterCombinationsWithSchema:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = INStartCallIntent;
  v4 = [(INIntent *)&v21 _validParameterCombinationsWithSchema:a3];
  v5 = [MEMORY[0x1E695DFA8] set];
  if ([(INStartCallIntent *)self preferredCallProvider])
  {
    [v5 addObject:@"preferredCallProvider"];
  }

  if ([(INStartCallIntent *)self destinationType])
  {
    [v5 addObject:@"destinationType"];
  }

  if ([(INStartCallIntent *)self callCapability])
  {
    [v5 addObject:@"callCapability"];
  }

  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v4 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v4 objectForKey:v12];
          v14 = [v12 setByAddingObjectsFromSet:v5];
          [v6 setObject:v13 forKey:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = v4;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INStartCallIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 contacts];
  v10 = INIntentSlotValueRedactedContactsFromContacts(v9, a3, v11);

  [v8 setContacts:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (void)setCallRequestMetadata:(id)a3
{
  v4 = a3;
  v6 = [(INStartCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStartCallRequestMetadata(v4);

  [v6 setCallRequestMetadata:v5];
}

- (void)setFaceTimeLink:(id)a3
{
  v4 = a3;
  v5 = [(INStartCallIntent *)self _typedBackingStore];
  [v5 setFaceTimeLink:v4];
}

- (void)setNotificationThreadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INStartCallIntent *)self _typedBackingStore];
  [v5 setNotificationThreadIdentifier:v4];
}

- (void)setCallGroups:(id)a3
{
  v4 = a3;
  v6 = [(INStartCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCallGroups(v4);

  [v6 setCallGroups:v5];
}

- (void)setIsGroupCall:(id)a3
{
  v5 = a3;
  v4 = [(INStartCallIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setIsGroupCall:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasIsGroupCall:0];
  }
}

- (void)setCallCapability:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(INStartCallIntent *)self _typedBackingStore];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasCallCapability:0];
  }

  else
  {
    [v5 setCallCapability:v4];
  }
}

- (void)setTTYType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INStartCallIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasTtyType:0];
  }

  else
  {
    [v4 setTtyType:v3];
  }
}

- (void)setContacts:(id)a3
{
  v4 = a3;
  v6 = [(INStartCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(v4);

  [v6 setContacts:v5];
}

- (void)setPreferredCallProvider:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INStartCallIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasPreferredCallProvider:0];
  }

  else
  {
    [v4 setPreferredCallProvider:?];
  }
}

- (void)setDestinationType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INStartCallIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 4)
  {
    [v4 setHasDestinationType:0];
  }

  else
  {
    [v4 setDestinationType:?];
  }
}

- (void)setAudioRoute:(int64_t)a3
{
  switch(a3)
  {
    case 1:
      v3 = 2;
      goto LABEL_7;
    case 1000:
      v3 = 4;
      goto LABEL_7;
    case 2:
      v3 = 3;
LABEL_7:
      v4 = [(INStartCallIntent *)self _typedBackingStore];
      [v4 setAudioRoute:v3];
      goto LABEL_9;
  }

  v4 = [(INStartCallIntent *)self _typedBackingStore];
  [v4 setHasAudioRoute:0];
LABEL_9:
}

- (void)setCallRecordToCallBack:(id)a3
{
  v4 = a3;
  v6 = [(INStartCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCallRecordValue(v4);

  [v6 setCallRecordToCallBack:v5];
}

- (void)setCallRecordFilter:(id)a3
{
  v4 = a3;
  v6 = [(INStartCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCallRecordFilter(v4);

  [v6 setCallRecordFilter:v5];
}

- (id)_emptyCopy
{
  v5.receiver = self;
  v5.super_class = INStartCallIntent;
  v3 = [(INIntent *)&v5 _emptyCopy];
  [v3 setPreferredCallProvider:{-[INStartCallIntent preferredCallProvider](self, "preferredCallProvider")}];

  return v3;
}

- (INStartCallIntent)initWithCallRecordFilter:(id)a3 callRecordToCallBack:(id)a4 audioRoute:(int64_t)a5 destinationType:(int64_t)a6 preferredCallProvider:(int64_t)a7 contacts:(id)a8 ttyType:(int64_t)a9 callCapability:(int64_t)a10
{
  v11 = [(INStartCallIntent *)self initWithCallRecordFilter:a3 callRecordToCallBack:a4 audioRoute:a5 destinationType:a6 contacts:a8 callCapability:a10];
  v12 = v11;
  if (v11)
  {
    [(INStartCallIntent *)v11 setPreferredCallProvider:a7];
    [(INStartCallIntent *)v12 setTTYType:a9];
  }

  return v12;
}

- (INStartCallIntent)initWithCallRecordFilter:(INCallRecordFilter *)callRecordFilter callRecordToCallBack:(INCallRecord *)callRecordToCallBack audioRoute:(INCallAudioRoute)audioRoute destinationType:(INCallDestinationType)destinationType contacts:(NSArray *)contacts callCapability:(INCallCapability)callCapability
{
  v14 = callRecordFilter;
  v15 = callRecordToCallBack;
  v16 = contacts;
  v20.receiver = self;
  v20.super_class = INStartCallIntent;
  v17 = [(INIntent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(INStartCallIntent *)v17 setCallRecordFilter:v14];
    [(INStartCallIntent *)v18 setCallRecordToCallBack:v15];
    [(INStartCallIntent *)v18 setAudioRoute:audioRoute];
    [(INStartCallIntent *)v18 setDestinationType:destinationType];
    [(INStartCallIntent *)v18 setContacts:v16];
    [(INStartCallIntent *)v18 setCallCapability:callCapability];
  }

  return v18;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INStartCallIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

@end