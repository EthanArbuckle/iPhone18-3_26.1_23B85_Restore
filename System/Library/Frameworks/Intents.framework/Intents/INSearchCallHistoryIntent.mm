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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setCallCapabilities:(unint64_t)a3;
- (void)setCallTypes:(unint64_t)a3;
- (void)setDateCreated:(id)a3;
- (void)setPreferredCallProvider:(int64_t)a3;
- (void)setRecipient:(id)a3;
- (void)setUnseen:(id)a3;
@end

@implementation INSearchCallHistoryIntent

- (INCallRecordType)callType
{
  v2 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  if ([v2 callTypesCount] && (v3 = objc_msgSend(v2, "callTypesAtIndex:", 0) - 2, v3 <= 8))
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

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v13 = v6;
  v8 = [v7 copy];
  v9 = [v7 dateCreated];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v9, a3);
  [v8 setDateCreated:v10];

  v11 = [v7 recipient];
  v12 = INIntentSlotValueRedactedContactFromContact(v11, a3, v13);

  [v8 setRecipient:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"dateCreated";
  v3 = [(INSearchCallHistoryIntent *)self dateCreated];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v3;
  v17[1] = @"recipient";
  v5 = [(INSearchCallHistoryIntent *)self recipient];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v6;
  v17[2] = @"callCapabilities";
  v7 = INCallCapabilityOptionsGetNames([(INSearchCallHistoryIntent *)self callCapabilities]);
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v8;
  v17[3] = @"callTypes";
  v9 = INCallRecordTypeOptionsGetNames([(INSearchCallHistoryIntent *)self callTypes]);
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v10;
  v17[4] = @"unseen";
  v11 = [(INSearchCallHistoryIntent *)self unseen];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v4)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setUnseen:(id)a3
{
  v5 = a3;
  v4 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setUnseen:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasUnseen:0];
  }
}

- (NSNumber)unseen
{
  v3 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  if ([v3 hasUnseen])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "unseen")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPreferredCallProvider:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
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
  v3 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v4 = [v3 hasPreferredCallProvider];
  v5 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
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

- (void)setCallTypes:(unint64_t)a3
{
  v5 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  [v5 clearCallTypes];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__INSearchCallHistoryIntent_setCallTypes___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INCallRecordTypeOptionsEnumerateBackingTypes(a3, v6);
}

void __42__INSearchCallHistoryIntent_setCallTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addCallTypes:a2];
}

- (INCallRecordTypeOptions)callTypes
{
  v8 = 0;
  v3 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v4 = [v3 callTypesCount];

  if (!v4)
  {
    return 0;
  }

  for (i = 0; i != v4; ++i)
  {
    v6 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
    INCallRecordTypeOptionsAddBackingType(&v8, [v6 callTypesAtIndex:i]);
  }

  return v8;
}

- (void)setCallCapabilities:(unint64_t)a3
{
  v5 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  [v5 clearCallCapabilities];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__INSearchCallHistoryIntent_setCallCapabilities___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INCallCapabilityOptionsEnumerateBackingTypes(a3, v6);
}

void __49__INSearchCallHistoryIntent_setCallCapabilities___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addCallCapabilities:a2];
}

- (INCallCapabilityOptions)callCapabilities
{
  v3 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v4 = [v3 callCapabilitiesCount];

  v5 = 0;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
      v8 = [v7 callCapabilitiesAtIndex:i];
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

- (void)setRecipient:(id)a3
{
  v4 = a3;
  v6 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContact(v4);

  [v6 setRecipient:v5];
}

- (INPerson)recipient
{
  v2 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v3 = [v2 recipient];
  v4 = INIntentSlotValueTransformFromContact(v3);

  return v4;
}

- (void)setDateCreated:(id)a3
{
  v4 = a3;
  v6 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setDateCreated:v5];
}

- (INDateComponentsRange)dateCreated
{
  v2 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  v3 = [v2 dateCreated];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSearchCallHistoryIntent *)self _typedBackingStore];
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

@end