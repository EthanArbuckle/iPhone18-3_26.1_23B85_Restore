@interface INStartAudioCallIntent
- (INCallDestinationType)destinationType;
- (INStartAudioCallIntent)initWithDestinationType:(INCallDestinationType)destinationType contacts:(NSArray *)contacts;
- (INStartCallRequestMetadata)callRequestMetadata;
- (NSArray)contacts;
- (id)_currentParameterCombination;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_subtitleWithLocalizer:(id)a3 fromBundleURL:(id)a4;
- (id)_typedBackingStore;
- (id)_validParameterCombinationsWithSchema:(id)a3;
- (int64_t)audioRoute;
- (int64_t)preferredCallProvider;
- (int64_t)recordTypeForRedialing;
- (int64_t)ttyType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAudioRoute:(int64_t)a3;
- (void)setCallRequestMetadata:(id)a3;
- (void)setContacts:(id)a3;
- (void)setDestinationType:(int64_t)a3;
- (void)setPreferredCallProvider:(int64_t)a3;
- (void)setRecordTypeForRedialing:(int64_t)a3;
- (void)setTTYType:(int64_t)a3;
- (void)setUseSpeaker:(BOOL)a3;
@end

@implementation INStartAudioCallIntent

- (id)_subtitleWithLocalizer:(id)a3 fromBundleURL:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(INStartAudioCallIntent *)self preferredCallProvider];
  if ((v9 - 2) < 2 || !v9)
  {
    [(INIntent *)&v41 _subtitleWithLocalizer:v7 fromBundleURL:v8, self, INStartAudioCallIntent, v42.receiver, v42.super_class, v43.receiver, v43.super_class];
    v4 = LABEL_18:;
    goto LABEL_19;
  }

  if (v9 != 1)
  {
    goto LABEL_19;
  }

  v10 = [(INStartAudioCallIntent *)self contacts];
  if ([v10 count] != 1)
  {

    goto LABEL_23;
  }

  v11 = [(INStartAudioCallIntent *)self contacts];
  v12 = [v11 firstObject];
  v13 = [v12 personHandle];
  v14 = [v13 type];

  if (v14 != 2)
  {
LABEL_23:
    [(INIntent *)&v42 _subtitleWithLocalizer:v7 fromBundleURL:v8, v41.receiver, v41.super_class, self, INStartAudioCallIntent, v43.receiver, v43.super_class];
    goto LABEL_18;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = [(INStartAudioCallIntent *)self contacts];
  v16 = [v15 firstObject];
  v17 = [v16 aliases];

  v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v18)
  {

LABEL_25:
    [(INIntent *)&v43 _subtitleWithLocalizer:v7 fromBundleURL:v8, v41.receiver, v41.super_class, v42.receiver, v42.super_class, self, INStartAudioCallIntent];
    goto LABEL_18;
  }

  v19 = v18;
  v20 = 0;
  v21 = *v45;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v45 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v20 |= [*(*(&v44 + 1) + 8 * i) type] == 2;
    }

    v19 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v19);

  if ((v20 & 1) == 0)
  {
    goto LABEL_25;
  }

  v23 = [(INStartAudioCallIntent *)self contacts];
  v24 = [v23 firstObject];
  v25 = [v24 personHandle];
  v26 = [v25 label];

  if (v26)
  {
    if ([v26 hasPrefix:@"com.apple.intents.PersonHandleLabel."])
    {
      v27 = [v26 substringFromIndex:{objc_msgSend(@"com.apple.intents.PersonHandleLabel.", "length")}];
      v4 = INLocalizedStringWithLocalizer(v26, v27, v7);
    }

    else
    {
      v4 = v26;
    }
  }

  else
  {
    v30 = [v7 locale];
    v31 = [v30 regionCode];
    v32 = [v31 lowercaseString];

    if (!v32)
    {
      v33 = CPPhoneNumberCopyNetworkCountryCode();
      if (!v33)
      {
        v33 = CPPhoneNumberCopyHomeCountryCode();
      }

      v32 = v33;
    }

    v34 = [(INStartAudioCallIntent *)self contacts];
    v35 = [v34 firstObject];
    v36 = [v35 personHandle];
    [v36 value];
    v37 = PNCreateFormattedStringWithCountry();

    if ([v37 length])
    {
      v4 = v37;
    }

    else
    {
      v38 = [(INStartAudioCallIntent *)self contacts];
      v39 = [v38 firstObject];
      v40 = [v39 personHandle];
      v4 = [v40 value];
    }
  }

LABEL_19:
  v28 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_currentParameterCombination
{
  v3 = [(INIntent *)self _nonNilParameters];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"audioRoute", @"destinationType", @"ttyType", 0}];
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
      v12.super_class = INStartAudioCallIntent;
      v9 = [(INIntent *)&v12 _currentParameterCombination];
    }
  }

  return v9;
}

- (id)_validParameterCombinationsWithSchema:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = INStartAudioCallIntent;
  v4 = [(INIntent *)&v21 _validParameterCombinationsWithSchema:a3];
  v5 = [MEMORY[0x1E695DFA8] set];
  if ([(INStartAudioCallIntent *)self preferredCallProvider])
  {
    [v5 addObject:@"preferredCallProvider"];
  }

  if ([(INStartAudioCallIntent *)self destinationType])
  {
    [v5 addObject:@"destinationType"];
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
  v7 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 contacts];
  v10 = INIntentSlotValueRedactedDialingContactsFromDialingContacts(v9, a3, v11);

  [v8 setContacts:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"destinationType";
  v3 = [(INStartAudioCallIntent *)self destinationType];
  if ((v3 - 1) > 4)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E727FF40[v3 - 1];
  }

  v5 = v4;
  v11[1] = @"contacts";
  v12[0] = v5;
  v6 = [(INStartAudioCallIntent *)self contacts];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!v6)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setCallRequestMetadata:(id)a3
{
  v4 = a3;
  v6 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStartCallRequestMetadata(v4);

  [v6 setCallRequestMetadata:v5];
}

- (INStartCallRequestMetadata)callRequestMetadata
{
  v2 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v3 = [v2 callRequestMetadata];
  v4 = INIntentSlotValueTransformFromStartCallRequestMetadata(v3);

  return v4;
}

- (void)setTTYType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INStartAudioCallIntent *)self _typedBackingStore];
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

- (int64_t)ttyType
{
  v3 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v4 = [v3 hasTtyType];
  v5 = [(INStartAudioCallIntent *)self _typedBackingStore];
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

- (void)setRecordTypeForRedialing:(int64_t)a3
{
  v3 = 0x7FFFFFFFLL;
  if ((a3 - 1) <= 7)
  {
    v3 = dword_18EE5EA60[a3 - 1];
  }

  v4 = [(INStartAudioCallIntent *)self _typedBackingStore];
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

- (int64_t)recordTypeForRedialing
{
  v3 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v4 = [v3 hasRecordTypeForRedialing];
  v5 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v6 = [v5 recordTypeForRedialing];
  if (v4 && (v6 - 2) <= 8)
  {
    v7 = qword_18EE5EA80[v6 - 2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setContacts:(id)a3
{
  v4 = a3;
  v6 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDialingContacts(v4);

  [v6 setContacts:v5];
}

- (NSArray)contacts
{
  v2 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v3 = [v2 contacts];
  v4 = INIntentSlotValueTransformFromDialingContacts(v3);

  return v4;
}

- (void)setPreferredCallProvider:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INStartAudioCallIntent *)self _typedBackingStore];
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

- (int64_t)preferredCallProvider
{
  v3 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v4 = [v3 hasPreferredCallProvider];
  v5 = [(INStartAudioCallIntent *)self _typedBackingStore];
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

- (void)setDestinationType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INStartAudioCallIntent *)self _typedBackingStore];
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

- (INCallDestinationType)destinationType
{
  v3 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v4 = [v3 hasDestinationType];
  v5 = [(INStartAudioCallIntent *)self _typedBackingStore];
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
      v4 = [(INStartAudioCallIntent *)self _typedBackingStore];
      [v4 setAudioRoute:v3];
      goto LABEL_9;
  }

  v4 = [(INStartAudioCallIntent *)self _typedBackingStore];
  [v4 setHasAudioRoute:0];
LABEL_9:
}

- (int64_t)audioRoute
{
  v3 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v4 = [v3 hasAudioRoute];
  v5 = [(INStartAudioCallIntent *)self _typedBackingStore];
  v6 = [v5 audioRoute];
  if (v4 && (v6 - 2) <= 2)
  {
    v7 = qword_18EE5EFD0[v6 - 2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (INStartAudioCallIntent)initWithDestinationType:(INCallDestinationType)destinationType contacts:(NSArray *)contacts
{
  v6 = contacts;
  v10.receiver = self;
  v10.super_class = INStartAudioCallIntent;
  v7 = [(INIntent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(INStartAudioCallIntent *)v7 setDestinationType:destinationType];
    [(INStartAudioCallIntent *)v8 setContacts:v6];
  }

  return v8;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INStartAudioCallIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INStartAudioCallIntent *)self _typedBackingStore];
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

- (void)setUseSpeaker:(BOOL)a3
{
  v3 = a3;
  if ([(INStartAudioCallIntent *)self useSpeaker]!= a3)
  {

    [(INStartAudioCallIntent *)self setAudioRoute:v3];
  }
}

@end