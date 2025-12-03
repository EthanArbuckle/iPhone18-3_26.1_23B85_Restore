@interface INSearchCallHistoryIntent
- (INCallCapabilityOptions)callCapabilities;
- (INCallRecordType)callType;
- (INCallRecordTypeOptions)callTypes;
- (INDateComponentsRange)dateCreated;
- (INPerson)recipient;
- (INSearchCallHistoryIntent)initWithCallType:(INCallRecordType)callType dateCreated:(INDateComponentsRange *)dateCreated recipient:(INPerson *)recipient callCapabilities:(INCallCapabilityOptions)callCapabilities;
- (INSearchCallHistoryIntent)initWithDateCreated:(INDateComponentsRange *)dateCreated recipient:(INPerson *)recipient callCapabilities:(INCallCapabilityOptions)callCapabilities callTypes:(INCallRecordTypeOptions)callTypes unseen:(NSNumber *)unseen;
- (NSNumber)unseen;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)preferredCallProvider;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCallCapabilities:(unint64_t)capabilities;
- (void)setCallTypes:(unint64_t)types;
- (void)setDateCreated:(id)created;
- (void)setPreferredCallProvider:(int64_t)provider;
- (void)setRecipient:(id)recipient;
- (void)setUnseen:(id)unseen;
@end

@implementation INSearchCallHistoryIntent

- (INCallRecordType)callType
{
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  if ([_typedBackingStore callTypesCount] && (v3 = objc_msgSend(_typedBackingStore, "callTypesAtIndex:", 0) - 2, v3 <= 8))
  {
    v4 = qword_18EE5EA80[v3];
  }

  else
  {
    v4 = INCallRecordTypeUnknown;
  }

  return v4;
}

- (INSearchCallHistoryIntent)initWithCallType:(INCallRecordType)callType dateCreated:(INDateComponentsRange *)dateCreated recipient:(INPerson *)recipient callCapabilities:(INCallCapabilityOptions)callCapabilities
{
  if ((callType - 1) > 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_18EE5EF00[callType - 1];
  }

  return [(INSearchCallHistoryIntent *)self initWithDateCreated:dateCreated recipient:recipient callCapabilities:callCapabilities callTypes:v7];
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v13 = idCopy;
  v8 = [_typedBackingStore copy];
  dateCreated = [_typedBackingStore dateCreated];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(dateCreated, options);
  [v8 setDateCreated:v10];

  recipient = [_typedBackingStore recipient];
  v12 = INIntentSlotValueRedactedContactFromContact(recipient, options, v13);

  [v8 setRecipient:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"dateCreated";
  dateCreated = [(INSearchCallHistoryIntent *)self dateCreated];
  v4 = dateCreated;
  if (!dateCreated)
  {
    dateCreated = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = dateCreated;
  v17[1] = @"recipient";
  recipient = [(INSearchCallHistoryIntent *)self recipient];
  null = recipient;
  if (!recipient)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null;
  v17[2] = @"callCapabilities";
  v7 = INCallCapabilityOptionsGetNames([(INSearchCallHistoryIntent *)self callCapabilities]);
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null2;
  v17[3] = @"callTypes";
  v9 = INCallRecordTypeOptionsGetNames([(INSearchCallHistoryIntent *)self callTypes]);
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null3;
  v17[4] = @"unseen";
  unseen = [(INSearchCallHistoryIntent *)self unseen];
  null4 = unseen;
  if (!unseen)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!unseen)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!recipient)
  {
  }

  if (!v4)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setUnseen:(id)unseen
{
  unseenCopy = unseen;
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  if (unseenCopy)
  {
    [_typedBackingStore setUnseen:{objc_msgSend(unseenCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasUnseen:0];
  }
}

- (NSNumber)unseen
{
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasUnseen])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "unseen")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPreferredCallProvider:(int64_t)provider
{
  v3 = provider - 1;
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
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
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  hasPreferredCallProvider = [_typedBackingStore hasPreferredCallProvider];
  _typedBackingStore2 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
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

- (void)setCallTypes:(unint64_t)types
{
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  [_typedBackingStore clearCallTypes];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__INSearchCallHistoryIntent_setCallTypes___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INCallRecordTypeOptionsEnumerateBackingTypes(types, v6);
}

void __42__INSearchCallHistoryIntent_setCallTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addCallTypes:a2];
}

- (INCallRecordTypeOptions)callTypes
{
  v8 = 0;
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  callTypesCount = [_typedBackingStore callTypesCount];

  if (!callTypesCount)
  {
    return 0;
  }

  for (i = 0; i != callTypesCount; ++i)
  {
    _typedBackingStore2 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
    INCallRecordTypeOptionsAddBackingType(&v8, [_typedBackingStore2 callTypesAtIndex:i]);
  }

  return v8;
}

- (void)setCallCapabilities:(unint64_t)capabilities
{
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  [_typedBackingStore clearCallCapabilities];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__INSearchCallHistoryIntent_setCallCapabilities___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INCallCapabilityOptionsEnumerateBackingTypes(capabilities, v6);
}

void __49__INSearchCallHistoryIntent_setCallCapabilities___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addCallCapabilities:a2];
}

- (INCallCapabilityOptions)callCapabilities
{
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  callCapabilitiesCount = [_typedBackingStore callCapabilitiesCount];

  v5 = 0;
  if (callCapabilitiesCount)
  {
    for (i = 0; i != callCapabilitiesCount; ++i)
    {
      _typedBackingStore2 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
      v8 = [_typedBackingStore2 callCapabilitiesAtIndex:i];
      v9 = v5 | 1;
      if (v8 != 1)
      {
        v9 = v5;
      }

      if (v8 == 2)
      {
        v5 |= 2uLL;
      }

      else
      {
        v5 = v9;
      }
    }
  }

  return v5;
}

- (void)setRecipient:(id)recipient
{
  recipientCopy = recipient;
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContact(recipientCopy);

  [_typedBackingStore setRecipient:v5];
}

- (INPerson)recipient
{
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  recipient = [_typedBackingStore recipient];
  v4 = INIntentSlotValueTransformFromContact(recipient);

  return v4;
}

- (void)setDateCreated:(id)created
{
  createdCopy = created;
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(createdCopy);

  [_typedBackingStore setDateCreated:v5];
}

- (INDateComponentsRange)dateCreated
{
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  dateCreated = [_typedBackingStore dateCreated];
  v4 = INIntentSlotValueTransformFromDateTimeRange(dateCreated);

  return v4;
}

- (INSearchCallHistoryIntent)initWithDateCreated:(INDateComponentsRange *)dateCreated recipient:(INPerson *)recipient callCapabilities:(INCallCapabilityOptions)callCapabilities callTypes:(INCallRecordTypeOptions)callTypes unseen:(NSNumber *)unseen
{
  v12 = dateCreated;
  v13 = recipient;
  v14 = unseen;
  v18.receiver = self;
  v18.super_class = INSearchCallHistoryIntent;
  v15 = [(INIntent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(INSearchCallHistoryIntent *)v15 setDateCreated:v12];
    [(INSearchCallHistoryIntent *)v16 setRecipient:v13];
    [(INSearchCallHistoryIntent *)v16 setCallCapabilities:callCapabilities];
    [(INSearchCallHistoryIntent *)v16 setCallTypes:callTypes];
    [(INSearchCallHistoryIntent *)v16 setUnseen:v14];
  }

  return v16;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSearchCallHistoryIntent *)self _typedBackingStore];
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

@end