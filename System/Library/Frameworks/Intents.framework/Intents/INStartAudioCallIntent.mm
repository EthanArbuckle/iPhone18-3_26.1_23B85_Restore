@interface INStartAudioCallIntent
- (INCallDestinationType)destinationType;
- (INStartAudioCallIntent)initWithDestinationType:(INCallDestinationType)destinationType contacts:(NSArray *)contacts;
- (INStartCallRequestMetadata)callRequestMetadata;
- (NSArray)contacts;
- (id)_currentParameterCombination;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_subtitleWithLocalizer:(id)localizer fromBundleURL:(id)l;
- (id)_typedBackingStore;
- (id)_validParameterCombinationsWithSchema:(id)schema;
- (int64_t)audioRoute;
- (int64_t)preferredCallProvider;
- (int64_t)recordTypeForRedialing;
- (int64_t)ttyType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAudioRoute:(int64_t)route;
- (void)setCallRequestMetadata:(id)metadata;
- (void)setContacts:(id)contacts;
- (void)setDestinationType:(int64_t)type;
- (void)setPreferredCallProvider:(int64_t)provider;
- (void)setRecordTypeForRedialing:(int64_t)redialing;
- (void)setTTYType:(int64_t)type;
- (void)setUseSpeaker:(BOOL)speaker;
@end

@implementation INStartAudioCallIntent

- (id)_subtitleWithLocalizer:(id)localizer fromBundleURL:(id)l
{
  v49 = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  lCopy = l;
  preferredCallProvider = [(INStartAudioCallIntent *)self preferredCallProvider];
  if ((preferredCallProvider - 2) < 2 || !preferredCallProvider)
  {
    [(INIntent *)&v41 _subtitleWithLocalizer:localizerCopy fromBundleURL:lCopy, self, INStartAudioCallIntent, v42.receiver, v42.super_class, v43.receiver, v43.super_class];
    value = LABEL_18:;
    goto LABEL_19;
  }

  if (preferredCallProvider != 1)
  {
    goto LABEL_19;
  }

  contacts = [(INStartAudioCallIntent *)self contacts];
  if ([contacts count] != 1)
  {

    goto LABEL_23;
  }

  contacts2 = [(INStartAudioCallIntent *)self contacts];
  firstObject = [contacts2 firstObject];
  personHandle = [firstObject personHandle];
  type = [personHandle type];

  if (type != 2)
  {
LABEL_23:
    [(INIntent *)&v42 _subtitleWithLocalizer:localizerCopy fromBundleURL:lCopy, v41.receiver, v41.super_class, self, INStartAudioCallIntent, v43.receiver, v43.super_class];
    goto LABEL_18;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  contacts3 = [(INStartAudioCallIntent *)self contacts];
  firstObject2 = [contacts3 firstObject];
  aliases = [firstObject2 aliases];

  v18 = [aliases countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v18)
  {

LABEL_25:
    [(INIntent *)&v43 _subtitleWithLocalizer:localizerCopy fromBundleURL:lCopy, v41.receiver, v41.super_class, v42.receiver, v42.super_class, self, INStartAudioCallIntent];
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
        objc_enumerationMutation(aliases);
      }

      v20 |= [*(*(&v44 + 1) + 8 * i) type] == 2;
    }

    v19 = [aliases countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v19);

  if ((v20 & 1) == 0)
  {
    goto LABEL_25;
  }

  contacts4 = [(INStartAudioCallIntent *)self contacts];
  firstObject3 = [contacts4 firstObject];
  personHandle2 = [firstObject3 personHandle];
  label = [personHandle2 label];

  if (label)
  {
    if ([label hasPrefix:@"com.apple.intents.PersonHandleLabel."])
    {
      v27 = [label substringFromIndex:{objc_msgSend(@"com.apple.intents.PersonHandleLabel.", "length")}];
      value = INLocalizedStringWithLocalizer(label, v27, localizerCopy);
    }

    else
    {
      value = label;
    }
  }

  else
  {
    locale = [localizerCopy locale];
    regionCode = [locale regionCode];
    lowercaseString = [regionCode lowercaseString];

    if (!lowercaseString)
    {
      v33 = CPPhoneNumberCopyNetworkCountryCode();
      if (!v33)
      {
        v33 = CPPhoneNumberCopyHomeCountryCode();
      }

      lowercaseString = v33;
    }

    contacts5 = [(INStartAudioCallIntent *)self contacts];
    firstObject4 = [contacts5 firstObject];
    personHandle3 = [firstObject4 personHandle];
    [personHandle3 value];
    v37 = PNCreateFormattedStringWithCountry();

    if ([v37 length])
    {
      value = v37;
    }

    else
    {
      contacts6 = [(INStartAudioCallIntent *)self contacts];
      firstObject5 = [contacts6 firstObject];
      personHandle4 = [firstObject5 personHandle];
      value = [personHandle4 value];
    }
  }

LABEL_19:
  v28 = *MEMORY[0x1E69E9840];

  return value;
}

- (id)_currentParameterCombination
{
  _nonNilParameters = [(INIntent *)self _nonNilParameters];
  v4 = [_nonNilParameters mutableCopy];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"audioRoute", @"destinationType", @"ttyType", 0}];
  [v4 minusSet:v5];

  _nonNilParameters2 = [(INIntent *)self _nonNilParameters];
  v7 = [_nonNilParameters2 containsObject:@"preferredCallProvider"];

  if (!v7)
  {
    goto LABEL_4;
  }

  _parameterCombinations = [(INIntent *)self _parameterCombinations];
  _currentParameterCombination = [_parameterCombinations objectForKey:v4];

  if (!_currentParameterCombination)
  {
    [v4 removeObject:@"preferredCallProvider"];
    _parameterCombinations2 = [(INIntent *)self _parameterCombinations];
    _currentParameterCombination = [_parameterCombinations2 objectForKey:v4];

    if (!_currentParameterCombination)
    {
LABEL_4:
      v12.receiver = self;
      v12.super_class = INStartAudioCallIntent;
      _currentParameterCombination = [(INIntent *)&v12 _currentParameterCombination];
    }
  }

  return _currentParameterCombination;
}

- (id)_validParameterCombinationsWithSchema:(id)schema
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = INStartAudioCallIntent;
  v4 = [(INIntent *)&v21 _validParameterCombinationsWithSchema:schema];
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
    allKeys = [v4 allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v4 objectForKey:v12];
          v14 = [v12 setByAddingObjectsFromSet:v5];
          [v6 setObject:v13 forKey:v14];
        }

        v9 = [allKeys countByEnumeratingWithState:&v17 objects:v22 count:16];
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

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  contacts = [_typedBackingStore contacts];
  v10 = INIntentSlotValueRedactedDialingContactsFromDialingContacts(contacts, options, v11);

  [v8 setContacts:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"destinationType";
  destinationType = [(INStartAudioCallIntent *)self destinationType];
  if ((destinationType - 1) > 4)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E727FF40[destinationType - 1];
  }

  v5 = v4;
  v11[1] = @"contacts";
  v12[0] = v5;
  contacts = [(INStartAudioCallIntent *)self contacts];
  null = contacts;
  if (!contacts)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!contacts)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setCallRequestMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStartCallRequestMetadata(metadataCopy);

  [_typedBackingStore setCallRequestMetadata:v5];
}

- (INStartCallRequestMetadata)callRequestMetadata
{
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  callRequestMetadata = [_typedBackingStore callRequestMetadata];
  v4 = INIntentSlotValueTransformFromStartCallRequestMetadata(callRequestMetadata);

  return v4;
}

- (void)setTTYType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasTtyType:0];
  }

  else
  {
    [_typedBackingStore setTtyType:v3];
  }
}

- (int64_t)ttyType
{
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  hasTtyType = [_typedBackingStore hasTtyType];
  _typedBackingStore2 = [(INStartAudioCallIntent *)self _typedBackingStore];
  ttyType = [_typedBackingStore2 ttyType];
  if (((ttyType < 3) & hasTtyType) != 0)
  {
    v7 = ttyType + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setRecordTypeForRedialing:(int64_t)redialing
{
  v3 = 0x7FFFFFFFLL;
  if ((redialing - 1) <= 7)
  {
    v3 = dword_18EE5EA60[redialing - 1];
  }

  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasRecordTypeForRedialing:0];
  }

  else
  {
    [_typedBackingStore setRecordTypeForRedialing:v3];
  }
}

- (int64_t)recordTypeForRedialing
{
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  hasRecordTypeForRedialing = [_typedBackingStore hasRecordTypeForRedialing];
  _typedBackingStore2 = [(INStartAudioCallIntent *)self _typedBackingStore];
  recordTypeForRedialing = [_typedBackingStore2 recordTypeForRedialing];
  if (hasRecordTypeForRedialing && (recordTypeForRedialing - 2) <= 8)
  {
    v7 = qword_18EE5EA80[recordTypeForRedialing - 2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDialingContacts(contactsCopy);

  [_typedBackingStore setContacts:v5];
}

- (NSArray)contacts
{
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  contacts = [_typedBackingStore contacts];
  v4 = INIntentSlotValueTransformFromDialingContacts(contacts);

  return v4;
}

- (void)setPreferredCallProvider:(int64_t)provider
{
  v3 = provider - 1;
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasPreferredCallProvider:0];
  }

  else
  {
    [_typedBackingStore setPreferredCallProvider:?];
  }
}

- (int64_t)preferredCallProvider
{
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  hasPreferredCallProvider = [_typedBackingStore hasPreferredCallProvider];
  _typedBackingStore2 = [(INStartAudioCallIntent *)self _typedBackingStore];
  preferredCallProvider = [_typedBackingStore2 preferredCallProvider];
  if ((((preferredCallProvider - 2) < 3) & hasPreferredCallProvider) != 0)
  {
    v7 = (preferredCallProvider - 1);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setDestinationType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 4)
  {
    [_typedBackingStore setHasDestinationType:0];
  }

  else
  {
    [_typedBackingStore setDestinationType:?];
  }
}

- (INCallDestinationType)destinationType
{
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  hasDestinationType = [_typedBackingStore hasDestinationType];
  _typedBackingStore2 = [(INStartAudioCallIntent *)self _typedBackingStore];
  destinationType = [_typedBackingStore2 destinationType];
  if (((destinationType - 1 < 5) & hasDestinationType) != 0)
  {
    v7 = destinationType;
  }

  else
  {
    v7 = INCallDestinationTypeUnknown;
  }

  return v7;
}

- (void)setAudioRoute:(int64_t)route
{
  switch(route)
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
      _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
      [_typedBackingStore setAudioRoute:v3];
      goto LABEL_9;
  }

  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  [_typedBackingStore setHasAudioRoute:0];
LABEL_9:
}

- (int64_t)audioRoute
{
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  hasAudioRoute = [_typedBackingStore hasAudioRoute];
  _typedBackingStore2 = [(INStartAudioCallIntent *)self _typedBackingStore];
  audioRoute = [_typedBackingStore2 audioRoute];
  if (hasAudioRoute && (audioRoute - 2) <= 2)
  {
    v7 = qword_18EE5EFD0[audioRoute - 2];
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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INStartAudioCallIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setUseSpeaker:(BOOL)speaker
{
  speakerCopy = speaker;
  if ([(INStartAudioCallIntent *)self useSpeaker]!= speaker)
  {

    [(INStartAudioCallIntent *)self setAudioRoute:speakerCopy];
  }
}

@end