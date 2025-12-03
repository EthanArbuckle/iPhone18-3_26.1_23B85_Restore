@interface INStartCallIntent
- (INCallAudioRoute)audioRoute;
- (INCallCapability)callCapability;
- (INCallDestinationType)destinationType;
- (INCallRecord)callRecordToCallBack;
- (INCallRecordFilter)callRecordFilter;
- (INCallRecordType)recordTypeForRedialing;
- (INStartCallIntent)initWithAudioRoute:(int64_t)route destinationType:(int64_t)type preferredCallProvider:(int64_t)provider contacts:(id)contacts recordTypeForRedialing:(int64_t)redialing ttyType:(int64_t)ttyType callCapability:(int64_t)capability;
- (INStartCallIntent)initWithCallRecordFilter:(INCallRecordFilter *)callRecordFilter callRecordToCallBack:(INCallRecord *)callRecordToCallBack audioRoute:(INCallAudioRoute)audioRoute destinationType:(INCallDestinationType)destinationType contacts:(NSArray *)contacts callCapability:(INCallCapability)callCapability;
- (INStartCallIntent)initWithCallRecordFilter:(id)filter callRecordToCallBack:(id)back audioRoute:(int64_t)route destinationType:(int64_t)type preferredCallProvider:(int64_t)provider contacts:(id)contacts ttyType:(int64_t)ttyType callCapability:(int64_t)self0;
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
- (id)_subtitleWithLocalizer:(id)localizer fromBundleURL:(id)l;
- (id)_titleWithLocalizer:(id)localizer fromBundleURL:(id)l;
- (id)_typedBackingStore;
- (id)_validParameterCombinationsWithSchema:(id)schema;
- (int64_t)preferredCallProvider;
- (int64_t)ttyType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAudioRoute:(int64_t)route;
- (void)setCallCapability:(int64_t)capability;
- (void)setCallGroups:(id)groups;
- (void)setCallRecordFilter:(id)filter;
- (void)setCallRecordToCallBack:(id)back;
- (void)setCallRequestMetadata:(id)metadata;
- (void)setContacts:(id)contacts;
- (void)setDestinationType:(int64_t)type;
- (void)setFaceTimeLink:(id)link;
- (void)setIsGroupCall:(id)call;
- (void)setNotificationThreadIdentifier:(id)identifier;
- (void)setPreferredCallProvider:(int64_t)provider;
- (void)setRecordTypeForRedialing:(int64_t)redialing;
- (void)setTTYType:(int64_t)type;
@end

@implementation INStartCallIntent

- (id)_metadata
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
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

- (int64_t)preferredCallProvider
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  hasPreferredCallProvider = [_typedBackingStore hasPreferredCallProvider];
  _typedBackingStore2 = [(INStartCallIntent *)self _typedBackingStore];
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

- (id)_dictionaryRepresentation
{
  v24[6] = *MEMORY[0x1E69E9840];
  v23[0] = @"callRecordFilter";
  callRecordFilter = [(INStartCallIntent *)self callRecordFilter];
  null = callRecordFilter;
  if (!callRecordFilter)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24[0] = null;
  v23[1] = @"callRecordToCallBack";
  callRecordToCallBack = [(INStartCallIntent *)self callRecordToCallBack];
  null2 = callRecordToCallBack;
  if (!callRecordToCallBack)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  v23[2] = @"audioRoute";
  audioRoute = [(INStartCallIntent *)self audioRoute];
  v8 = @"speakerphoneAudioRoute";
  v9 = @"heySiriAudioRoute";
  v10 = @"unknown";
  if (audioRoute == INCallAudioRouteBluetoothAudioRoute)
  {
    v10 = @"bluetoothAudioRoute";
  }

  if (audioRoute != 1000)
  {
    v9 = v10;
  }

  if (audioRoute != INCallAudioRouteSpeakerphoneAudioRoute)
  {
    v8 = v9;
  }

  v11 = v8;
  v24[2] = v11;
  v23[3] = @"destinationType";
  destinationType = [(INStartCallIntent *)self destinationType];
  if ((destinationType - 1) > 4)
  {
    v13 = @"unknown";
  }

  else
  {
    v13 = off_1E727FF40[destinationType - 1];
  }

  v14 = v13;
  v24[3] = v14;
  v23[4] = @"contacts";
  contacts = [(INStartCallIntent *)self contacts];
  null3 = contacts;
  if (!contacts)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null3;
  v23[5] = @"callCapability";
  callCapability = [(INStartCallIntent *)self callCapability];
  v18 = @"unknown";
  if (callCapability == INCallCapabilityVideoCall)
  {
    v18 = @"videoCall";
  }

  if (callCapability == INCallCapabilityAudioCall)
  {
    v18 = @"audioCall";
  }

  v19 = v18;
  v24[5] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:6];

  if (!contacts)
  {
  }

  if (!callRecordToCallBack)
  {
  }

  if (!callRecordFilter)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (INCallRecordFilter)callRecordFilter
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  callRecordFilter = [_typedBackingStore callRecordFilter];
  v4 = INIntentSlotValueTransformFromCallRecordFilter(callRecordFilter);

  return v4;
}

- (INCallRecord)callRecordToCallBack
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  callRecordToCallBack = [_typedBackingStore callRecordToCallBack];
  v4 = INIntentSlotValueTransformFromCallRecordValue(callRecordToCallBack);

  return v4;
}

- (INCallAudioRoute)audioRoute
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  hasAudioRoute = [_typedBackingStore hasAudioRoute];
  _typedBackingStore2 = [(INStartCallIntent *)self _typedBackingStore];
  audioRoute = [_typedBackingStore2 audioRoute];
  if (hasAudioRoute && (audioRoute - 2) <= 2)
  {
    v7 = qword_18EE5EFD0[audioRoute - 2];
  }

  else
  {
    v7 = INCallAudioRouteUnknown;
  }

  return v7;
}

- (INCallDestinationType)destinationType
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  hasDestinationType = [_typedBackingStore hasDestinationType];
  _typedBackingStore2 = [(INStartCallIntent *)self _typedBackingStore];
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

- (NSArray)contacts
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  contacts = [_typedBackingStore contacts];
  v4 = INIntentSlotValueTransformFromContacts(contacts);

  return v4;
}

- (INCallCapability)callCapability
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  hasCallCapability = [_typedBackingStore hasCallCapability];
  _typedBackingStore2 = [(INStartCallIntent *)self _typedBackingStore];
  callCapability = [_typedBackingStore2 callCapability];
  v7 = 2 * (callCapability == 2);
  if (callCapability == 1)
  {
    v7 = 1;
  }

  if (hasCallCapability)
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
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  hasTtyType = [_typedBackingStore hasTtyType];
  _typedBackingStore2 = [(INStartCallIntent *)self _typedBackingStore];
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

- (NSNumber)isGroupCall
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasIsGroupCall])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INStartCallIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "isGroupCall")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)callGroups
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  callGroups = [_typedBackingStore callGroups];
  v4 = INIntentSlotValueTransformFromCallGroups(callGroups);

  return v4;
}

- (NSString)notificationThreadIdentifier
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  notificationThreadIdentifier = [_typedBackingStore notificationThreadIdentifier];
  v4 = [notificationThreadIdentifier copy];

  return v4;
}

- (NSString)faceTimeLink
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  faceTimeLink = [_typedBackingStore faceTimeLink];
  v4 = [faceTimeLink copy];

  return v4;
}

- (INStartCallRequestMetadata)callRequestMetadata
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  callRequestMetadata = [_typedBackingStore callRequestMetadata];
  v4 = INIntentSlotValueTransformFromStartCallRequestMetadata(callRequestMetadata);

  return v4;
}

- (id)_subtitleWithLocalizer:(id)localizer fromBundleURL:(id)l
{
  v49 = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  lCopy = l;
  if ([(INStartCallIntent *)self callCapability]== INCallCapabilityVideoCall)
  {
    goto LABEL_2;
  }

  preferredCallProvider = [(INStartCallIntent *)self preferredCallProvider];
  if ((preferredCallProvider - 2) < 2 || !preferredCallProvider)
  {
    [(INIntent *)&v41 _subtitleWithLocalizer:localizerCopy fromBundleURL:lCopy, v40.receiver, v40.super_class, self, INStartCallIntent, v42.receiver, v42.super_class, v43.receiver, v43.super_class];
    goto LABEL_20;
  }

  if (preferredCallProvider != 1)
  {
LABEL_2:
    [(INIntent *)&v40 _subtitleWithLocalizer:localizerCopy fromBundleURL:lCopy, self, INStartCallIntent, v41.receiver, v41.super_class, v42.receiver, v42.super_class, v43.receiver, v43.super_class];
    value = LABEL_20:;
    goto LABEL_21;
  }

  contacts = [(INStartCallIntent *)self contacts];
  if ([contacts count] != 1)
  {

    goto LABEL_25;
  }

  contacts2 = [(INStartCallIntent *)self contacts];
  firstObject = [contacts2 firstObject];
  personHandle = [firstObject personHandle];
  type = [personHandle type];

  if (type != 2)
  {
LABEL_25:
    [(INIntent *)&v42 _subtitleWithLocalizer:localizerCopy fromBundleURL:lCopy, v40.receiver, v40.super_class, v41.receiver, v41.super_class, self, INStartCallIntent, v43.receiver, v43.super_class];
    goto LABEL_20;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  contacts3 = [(INStartCallIntent *)self contacts];
  firstObject2 = [contacts3 firstObject];
  aliases = [firstObject2 aliases];

  v17 = [aliases countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v17)
  {

LABEL_27:
    [(INIntent *)&v43 _subtitleWithLocalizer:localizerCopy fromBundleURL:lCopy, v40.receiver, v40.super_class, v41.receiver, v41.super_class, v42.receiver, v42.super_class, self, INStartCallIntent];
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
        objc_enumerationMutation(aliases);
      }

      v19 |= [*(*(&v44 + 1) + 8 * i) type] == 2;
    }

    v18 = [aliases countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v18);

  if ((v19 & 1) == 0)
  {
    goto LABEL_27;
  }

  contacts4 = [(INStartCallIntent *)self contacts];
  firstObject3 = [contacts4 firstObject];
  personHandle2 = [firstObject3 personHandle];
  label = [personHandle2 label];

  if (!label)
  {
    locale = [localizerCopy locale];
    regionCode = [locale regionCode];
    lowercaseString = [regionCode lowercaseString];

    if (!lowercaseString)
    {
      v32 = CPPhoneNumberCopyNetworkCountryCode();
      if (!v32)
      {
        v32 = CPPhoneNumberCopyHomeCountryCode();
      }

      lowercaseString = v32;
    }

    contacts5 = [(INStartCallIntent *)self contacts];
    firstObject4 = [contacts5 firstObject];
    personHandle3 = [firstObject4 personHandle];
    [personHandle3 value];
    v36 = PNCreateFormattedStringWithCountry();

    if ([v36 length])
    {
      value = v36;
    }

    else
    {
      contacts6 = [(INStartCallIntent *)self contacts];
      firstObject5 = [contacts6 firstObject];
      personHandle4 = [firstObject5 personHandle];
      value = [personHandle4 value];
    }

    goto LABEL_37;
  }

  if ([label hasPrefix:@"com.apple.intents.PersonHandleLabel."])
  {
    lowercaseString = [label substringFromIndex:{objc_msgSend(@"com.apple.intents.PersonHandleLabel.", "length")}];
    value = INLocalizedStringWithLocalizer(label, lowercaseString, localizerCopy);
LABEL_37:

    goto LABEL_38;
  }

  value = label;
LABEL_38:

LABEL_21:
  v28 = *MEMORY[0x1E69E9840];

  return value;
}

- (id)_titleWithLocalizer:(id)localizer fromBundleURL:(id)l
{
  localizerCopy = localizer;
  lCopy = l;
  if ([(INStartCallIntent *)self callCapability]== INCallCapabilityVideoCall && [(INStartCallIntent *)self preferredCallProvider]== 2)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = INLocalizedStringWithLocalizer(@"FaceTime %@", @"FaceTime %@", localizerCopy);
    contacts = [(INStartCallIntent *)self contacts];
    v11 = [contacts _intents_readableTitleWithLocalizer:localizerCopy];
    v12 = [v8 stringWithFormat:v9, v11];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = INStartCallIntent;
    v12 = [(INIntent *)&v14 _titleWithLocalizer:localizerCopy fromBundleURL:lCopy];
  }

  return v12;
}

- (void)setRecordTypeForRedialing:(int64_t)redialing
{
  v3 = 0x7FFFFFFFLL;
  if ((redialing - 1) <= 7)
  {
    v3 = dword_18EE5EA60[redialing - 1];
  }

  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
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

- (INCallRecordType)recordTypeForRedialing
{
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  hasRecordTypeForRedialing = [_typedBackingStore hasRecordTypeForRedialing];
  _typedBackingStore2 = [(INStartCallIntent *)self _typedBackingStore];
  recordTypeForRedialing = [_typedBackingStore2 recordTypeForRedialing];
  if (hasRecordTypeForRedialing && (recordTypeForRedialing - 2) <= 8)
  {
    v7 = qword_18EE5EA80[recordTypeForRedialing - 2];
  }

  else
  {
    v7 = INCallRecordTypeUnknown;
  }

  return v7;
}

- (INStartCallIntent)initWithAudioRoute:(int64_t)route destinationType:(int64_t)type preferredCallProvider:(int64_t)provider contacts:(id)contacts recordTypeForRedialing:(int64_t)redialing ttyType:(int64_t)ttyType callCapability:(int64_t)capability
{
  v10 = [(INStartCallIntent *)self initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:route destinationType:type preferredCallProvider:provider contacts:contacts ttyType:ttyType callCapability:capability];
  v11 = v10;
  if (v10)
  {
    [(INStartCallIntent *)v10 setRecordTypeForRedialing:redialing];
  }

  return v11;
}

- (id)_currentParameterCombination
{
  _nonNilParameters = [(INIntent *)self _nonNilParameters];
  v4 = [_nonNilParameters mutableCopy];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"audioRoute", @"destinationType", @"ttyType", @"recordTypeForRedialing", @"callCapability", 0}];
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
      v12.super_class = INStartCallIntent;
      _currentParameterCombination = [(INIntent *)&v12 _currentParameterCombination];
    }
  }

  return _currentParameterCombination;
}

- (id)_validParameterCombinationsWithSchema:(id)schema
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = INStartCallIntent;
  v4 = [(INIntent *)&v21 _validParameterCombinationsWithSchema:schema];
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
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  contacts = [_typedBackingStore contacts];
  v10 = INIntentSlotValueRedactedContactsFromContacts(contacts, options, v11);

  [v8 setContacts:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (void)setCallRequestMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStartCallRequestMetadata(metadataCopy);

  [_typedBackingStore setCallRequestMetadata:v5];
}

- (void)setFaceTimeLink:(id)link
{
  linkCopy = link;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  [_typedBackingStore setFaceTimeLink:linkCopy];
}

- (void)setNotificationThreadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  [_typedBackingStore setNotificationThreadIdentifier:identifierCopy];
}

- (void)setCallGroups:(id)groups
{
  groupsCopy = groups;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCallGroups(groupsCopy);

  [_typedBackingStore setCallGroups:v5];
}

- (void)setIsGroupCall:(id)call
{
  callCopy = call;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  if (callCopy)
  {
    [_typedBackingStore setIsGroupCall:{objc_msgSend(callCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasIsGroupCall:0];
  }
}

- (void)setCallCapability:(int64_t)capability
{
  if (capability == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (capability == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  v6 = _typedBackingStore;
  if (v4 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasCallCapability:0];
  }

  else
  {
    [_typedBackingStore setCallCapability:v4];
  }
}

- (void)setTTYType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
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

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(contactsCopy);

  [_typedBackingStore setContacts:v5];
}

- (void)setPreferredCallProvider:(int64_t)provider
{
  v3 = provider - 1;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
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

- (void)setDestinationType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
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
      _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
      [_typedBackingStore setAudioRoute:v3];
      goto LABEL_9;
  }

  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  [_typedBackingStore setHasAudioRoute:0];
LABEL_9:
}

- (void)setCallRecordToCallBack:(id)back
{
  backCopy = back;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCallRecordValue(backCopy);

  [_typedBackingStore setCallRecordToCallBack:v5];
}

- (void)setCallRecordFilter:(id)filter
{
  filterCopy = filter;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCallRecordFilter(filterCopy);

  [_typedBackingStore setCallRecordFilter:v5];
}

- (id)_emptyCopy
{
  v5.receiver = self;
  v5.super_class = INStartCallIntent;
  _emptyCopy = [(INIntent *)&v5 _emptyCopy];
  [_emptyCopy setPreferredCallProvider:{-[INStartCallIntent preferredCallProvider](self, "preferredCallProvider")}];

  return _emptyCopy;
}

- (INStartCallIntent)initWithCallRecordFilter:(id)filter callRecordToCallBack:(id)back audioRoute:(int64_t)route destinationType:(int64_t)type preferredCallProvider:(int64_t)provider contacts:(id)contacts ttyType:(int64_t)ttyType callCapability:(int64_t)self0
{
  v11 = [(INStartCallIntent *)self initWithCallRecordFilter:filter callRecordToCallBack:back audioRoute:route destinationType:type contacts:contacts callCapability:capability];
  v12 = v11;
  if (v11)
  {
    [(INStartCallIntent *)v11 setPreferredCallProvider:provider];
    [(INStartCallIntent *)v12 setTTYType:ttyType];
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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INStartCallIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

@end