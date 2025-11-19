@interface INSearchForMessagesIntent
- (INConditionalOperator)conversationIdentifiersOperator;
- (INConditionalOperator)groupNamesOperator;
- (INConditionalOperator)identifiersOperator;
- (INConditionalOperator)notificationIdentifiersOperator;
- (INConditionalOperator)recipientsOperator;
- (INConditionalOperator)searchTermsOperator;
- (INConditionalOperator)sendersOperator;
- (INConditionalOperator)speakableGroupNamesOperator;
- (INDateComponentsRange)dateTimeRange;
- (INMessageAttributeOptions)attributes;
- (INSearchForMessagesIntent)initWithRecipients:(NSArray *)recipients senders:(NSArray *)senders searchTerms:(NSArray *)searchTerms attributes:(INMessageAttributeOptions)attributes dateTimeRange:(INDateComponentsRange *)dateTimeRange identifiers:(NSArray *)identifiers notificationIdentifiers:(NSArray *)notificationIdentifiers groupNames:(NSArray *)groupNames;
- (INSearchForMessagesIntent)initWithRecipients:(NSArray *)recipients senders:(NSArray *)senders searchTerms:(NSArray *)searchTerms attributes:(INMessageAttributeOptions)attributes dateTimeRange:(INDateComponentsRange *)dateTimeRange identifiers:(NSArray *)identifiers notificationIdentifiers:(NSArray *)notificationIdentifiers speakableGroupNames:(NSArray *)speakableGroupNames conversationIdentifiers:(NSArray *)conversationIdentifiers;
- (INSearchForMessagesIntent)initWithRecipients:(id)a3 senders:(id)a4 contents:(id)a5 attributes:(unint64_t)a6 dateTimeRange:(id)a7 identifiers:(id)a8;
- (INSearchForMessagesIntent)initWithRecipients:(id)a3 senders:(id)a4 contents:(id)a5 attributes:(unint64_t)a6 dateTimeRange:(id)a7 identifiers:(id)a8 notificationIdentifiers:(id)a9;
- (NSArray)conversationIdentifiers;
- (NSArray)groupNames;
- (NSArray)identifiers;
- (NSArray)notificationIdentifiers;
- (NSArray)recipients;
- (NSArray)searchTerms;
- (NSArray)senders;
- (NSArray)speakableGroupNames;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAttributes:(unint64_t)a3;
- (void)setConversationIdentifiers:(id)a3;
- (void)setDateTimeRange:(id)a3;
- (void)setGroupNames:(id)a3;
- (void)setIdentifiers:(id)a3;
- (void)setNotificationIdentifiers:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setSearchTerms:(id)a3;
- (void)setSenders:(id)a3;
- (void)setSpeakableGroupNames:(id)a3;
@end

@implementation INSearchForMessagesIntent

- (id)_metadata
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
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

- (id)_dictionaryRepresentation
{
  v33[9] = *MEMORY[0x1E69E9840];
  v32[0] = @"recipients";
  v3 = [(INSearchForMessagesIntent *)self recipients];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v33[0] = v3;
  v32[1] = @"senders";
  v5 = [(INSearchForMessagesIntent *)self senders];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v5;
  v33[1] = v5;
  v32[2] = @"searchTerms";
  v7 = [(INSearchForMessagesIntent *)self searchTerms];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v7;
  v33[2] = v7;
  v32[3] = @"attributes";
  v9 = INMessageAttributeOptionsGetNames([(INSearchForMessagesIntent *)self attributes]);
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v9;
  v33[3] = v9;
  v32[4] = @"dateTimeRange";
  v11 = [(INSearchForMessagesIntent *)self dateTimeRange];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v24 = v11;
  v33[4] = v11;
  v32[5] = @"identifiers";
  v13 = [(INSearchForMessagesIntent *)self identifiers];
  v14 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v6;
  v23 = v13;
  v33[5] = v13;
  v32[6] = @"notificationIdentifiers";
  v15 = [(INSearchForMessagesIntent *)self notificationIdentifiers];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v33[6] = v16;
  v32[7] = @"speakableGroupNames";
  v17 = [(INSearchForMessagesIntent *)self speakableGroupNames];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v33[7] = v18;
  v32[8] = @"conversationIdentifiers";
  v19 = [(INSearchForMessagesIntent *)self conversationIdentifiers];
  v20 = v19;
  if (!v19)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v33[8] = v20;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:9];
  if (!v19)
  {
  }

  if (!v17)
  {
  }

  if (!v15)
  {
  }

  if (!v14)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v30)
  {
  }

  if (!v31)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v29;
}

- (NSArray)recipients
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 recipient];

  v4 = [v3 contacts];
  v5 = INIntentSlotValueTransformFromContacts(v4);

  return v5;
}

- (NSArray)searchTerms
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 searchTerm];

  v4 = [v3 dataStrings];
  v5 = INIntentSlotValueTransformFromStrings(v4);

  return v5;
}

- (NSArray)senders
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 sender];

  v4 = [v3 contacts];
  v5 = INIntentSlotValueTransformFromContacts(v4);

  return v5;
}

- (INMessageAttributeOptions)attributes
{
  v8 = 0;
  v3 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v4 = [v3 attributesCount];

  if (!v4)
  {
    return 0;
  }

  for (i = 0; i != v4; ++i)
  {
    v6 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    INMessageAttributeOptionsAddBackingType(&v8, [v6 attributeAtIndex:i]);
  }

  return v8;
}

- (INDateComponentsRange)dateTimeRange
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 dateTimeRange];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (NSArray)identifiers
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 identifier];

  v4 = [v3 dataStrings];
  v5 = INIntentSlotValueTransformFromStrings(v4);

  return v5;
}

- (NSArray)notificationIdentifiers
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 notificationIdentifier];

  v4 = [v3 dataStrings];
  v5 = INIntentSlotValueTransformFromStrings(v4);

  return v5;
}

- (NSArray)speakableGroupNames
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 speakableGroupName];

  v4 = [v3 dataStrings];
  v5 = INIntentSlotValueTransformFromDataStrings(v4);

  return v5;
}

- (NSArray)conversationIdentifiers
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 conversationIdentifier];

  v4 = [v3 dataStrings];
  v5 = INIntentSlotValueTransformFromStrings(v4);

  return v5;
}

- (INSearchForMessagesIntent)initWithRecipients:(id)a3 senders:(id)a4 contents:(id)a5 attributes:(unint64_t)a6 dateTimeRange:(id)a7 identifiers:(id)a8 notificationIdentifiers:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [[INDateComponentsRange alloc] initWithDateInterval:v18 onCalendar:0 inTimeZone:0];

  v23 = [(INSearchForMessagesIntent *)self initWithRecipients:v21 senders:v20 searchTerms:v19 attributes:a6 dateTimeRange:v22 identifiers:v17 notificationIdentifiers:v16 speakableGroupNames:0];
  return v23;
}

- (INSearchForMessagesIntent)initWithRecipients:(id)a3 senders:(id)a4 contents:(id)a5 attributes:(unint64_t)a6 dateTimeRange:(id)a7 identifiers:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[INDateComponentsRange alloc] initWithDateInterval:v15 onCalendar:0 inTimeZone:0];

  v20 = [(INSearchForMessagesIntent *)self initWithRecipients:v18 senders:v17 searchTerms:v16 attributes:a6 dateTimeRange:v19 identifiers:v14 notificationIdentifiers:0 speakableGroupNames:0];
  return v20;
}

- (INConditionalOperator)groupNamesOperator
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 speakableGroupName];

  v4 = [v3 conditionType];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (void)setGroupNames:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [INSpeakableString alloc];
        v13 = [(INSpeakableString *)v12 initWithSpokenPhrase:v11, v18];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v15 = INIntentSlotValueTransformToDataStringList(v5);
  v16 = [v15 mutableCopy];
  [v14 setSpeakableGroupName:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (NSArray)groupNames
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 speakableGroupName];
  v4 = INIntentSlotValueTransformFromDataStringList(v3);

  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) spokenPhrase];
        v12 = [v11 copy];

        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (INSearchForMessagesIntent)initWithRecipients:(NSArray *)recipients senders:(NSArray *)senders searchTerms:(NSArray *)searchTerms attributes:(INMessageAttributeOptions)attributes dateTimeRange:(INDateComponentsRange *)dateTimeRange identifiers:(NSArray *)identifiers notificationIdentifiers:(NSArray *)notificationIdentifiers groupNames:(NSArray *)groupNames
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = recipients;
  v32 = senders;
  v31 = searchTerms;
  v14 = dateTimeRange;
  v15 = identifiers;
  v16 = notificationIdentifiers;
  v17 = groupNames;
  v18 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v17;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      v23 = 0;
      do
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [[INSpeakableString alloc] initWithSpokenPhrase:*(*(&v34 + 1) + 8 * v23)];
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);
  }

  v25 = [v18 copy];
  v26 = [(INSearchForMessagesIntent *)self initWithRecipients:v33 senders:v32 searchTerms:v31 attributes:attributes dateTimeRange:v14 identifiers:v15 notificationIdentifiers:v16 speakableGroupNames:v25];

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v31 = v6;
  v26 = v7;
  v8 = [v7 copy];
  v29 = [v8 recipient];
  v9 = [v29 contacts];
  v28 = INIntentSlotValueRedactedContactsFromContacts(v9, a3, v31);

  [v29 setContacts:v28];
  v10 = [v8 sender];
  v11 = [v10 contacts];
  v27 = INIntentSlotValueRedactedContactsFromContacts(v11, a3, v31);

  [v10 setContacts:v27];
  v12 = [v8 searchTerm];
  v13 = [v12 dataStrings];
  v25 = INIntentSlotValueRedactedStringsFromStrings(v13, a3, v31);

  [v12 setDataStrings:v25];
  v14 = [v7 dateTimeRange];
  v15 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v14, a3);
  [v8 setDateTimeRange:v15];

  v16 = [v8 identifier];
  v17 = [v16 dataStrings];
  v18 = INIntentSlotValueRedactedStringsFromStrings(v17, a3, v31);

  [v16 setDataStrings:v18];
  v19 = [v8 notificationIdentifier];
  v20 = [v19 dataStrings];
  v21 = INIntentSlotValueRedactedStringsFromStrings(v20, a3, v31);

  [v19 setDataStrings:v21];
  v22 = [v8 conversationIdentifier];
  v23 = [v22 dataStrings];
  v24 = INIntentSlotValueRedactedStringsFromStrings(v23, a3, v31);

  [v22 setDataStrings:v24];
  [(INIntent *)self setBackingStore:v8];
}

- (void)setConversationIdentifiers:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v5 = [v4 conversationIdentifier];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBStringList);
    v6 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [v6 setConversationIdentifier:v5];
  }

  v7 = INIntentSlotValueTransformToStrings(v8);
  [(_INPBStringList *)v5 setDataStrings:v7];
}

- (INConditionalOperator)conversationIdentifiersOperator
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 conversationIdentifier];

  v4 = [v3 conditionType];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (void)setSpeakableGroupNames:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v5 = [v4 speakableGroupName];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBDataStringList);
    v6 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [v6 setSpeakableGroupName:v5];
  }

  v7 = INIntentSlotValueTransformToDataStrings(v8);
  [(_INPBDataStringList *)v5 setDataStrings:v7];
}

- (INConditionalOperator)speakableGroupNamesOperator
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 speakableGroupName];

  v4 = [v3 conditionType];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (void)setNotificationIdentifiers:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v5 = [v4 notificationIdentifier];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBStringList);
    v6 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [v6 setNotificationIdentifier:v5];
  }

  v7 = INIntentSlotValueTransformToStrings(v8);
  [(_INPBStringList *)v5 setDataStrings:v7];
}

- (INConditionalOperator)notificationIdentifiersOperator
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 notificationIdentifier];

  v4 = [v3 conditionType];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (void)setIdentifiers:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v5 = [v4 identifier];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBStringList);
    v6 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [v6 setIdentifier:v5];
  }

  v7 = INIntentSlotValueTransformToStrings(v8);
  [(_INPBStringList *)v5 setDataStrings:v7];
}

- (INConditionalOperator)identifiersOperator
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 identifier];

  v4 = [v3 conditionType];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (void)setDateTimeRange:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setDateTimeRange:v5];
}

- (void)setAttributes:(unint64_t)a3
{
  v5 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  [v5 clearAttributes];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__INSearchForMessagesIntent_setAttributes___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INMessageAttributeOptionsEnumerateBackingTypes(a3, v6);
}

void __43__INSearchForMessagesIntent_setAttributes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addAttribute:a2];
}

- (void)setSearchTerms:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v5 = [v4 searchTerm];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBStringList);
    v6 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [v6 setSearchTerm:v5];
  }

  v7 = INIntentSlotValueTransformToStrings(v8);
  [(_INPBStringList *)v5 setDataStrings:v7];
}

- (INConditionalOperator)searchTermsOperator
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 searchTerm];

  v4 = [v3 conditionType];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (void)setSenders:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v5 = [v4 sender];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBContactList);
    v6 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [v6 setSender:v5];
  }

  v7 = INIntentSlotValueTransformToContacts(v8);
  [(_INPBContactList *)v5 setContacts:v7];
}

- (INConditionalOperator)sendersOperator
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 sender];

  v4 = [v3 condition];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (void)setRecipients:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v5 = [v4 recipient];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBContactList);
    v6 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [v6 setRecipient:v5];
  }

  v7 = INIntentSlotValueTransformToContacts(v8);
  [(_INPBContactList *)v5 setContacts:v7];
}

- (INConditionalOperator)recipientsOperator
{
  v2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v3 = [v2 recipient];

  v4 = [v3 condition];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (INSearchForMessagesIntent)initWithRecipients:(NSArray *)recipients senders:(NSArray *)senders searchTerms:(NSArray *)searchTerms attributes:(INMessageAttributeOptions)attributes dateTimeRange:(INDateComponentsRange *)dateTimeRange identifiers:(NSArray *)identifiers notificationIdentifiers:(NSArray *)notificationIdentifiers speakableGroupNames:(NSArray *)speakableGroupNames conversationIdentifiers:(NSArray *)conversationIdentifiers
{
  v17 = recipients;
  v18 = senders;
  v19 = searchTerms;
  v20 = dateTimeRange;
  v21 = identifiers;
  v22 = notificationIdentifiers;
  v23 = speakableGroupNames;
  v24 = conversationIdentifiers;
  v28.receiver = self;
  v28.super_class = INSearchForMessagesIntent;
  v25 = [(INIntent *)&v28 init];
  v26 = v25;
  if (v25)
  {
    [(INSearchForMessagesIntent *)v25 setRecipients:v17];
    [(INSearchForMessagesIntent *)v26 setSenders:v18];
    [(INSearchForMessagesIntent *)v26 setSearchTerms:v19];
    [(INSearchForMessagesIntent *)v26 setAttributes:attributes];
    [(INSearchForMessagesIntent *)v26 setDateTimeRange:v20];
    [(INSearchForMessagesIntent *)v26 setIdentifiers:v21];
    [(INSearchForMessagesIntent *)v26 setNotificationIdentifiers:v22];
    [(INSearchForMessagesIntent *)v26 setSpeakableGroupNames:v23];
    [(INSearchForMessagesIntent *)v26 setConversationIdentifiers:v24];
  }

  return v26;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSearchForMessagesIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

@end