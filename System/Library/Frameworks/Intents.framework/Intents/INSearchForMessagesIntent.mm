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
- (INSearchForMessagesIntent)initWithRecipients:(id)recipients senders:(id)senders contents:(id)contents attributes:(unint64_t)attributes dateTimeRange:(id)range identifiers:(id)identifiers;
- (INSearchForMessagesIntent)initWithRecipients:(id)recipients senders:(id)senders contents:(id)contents attributes:(unint64_t)attributes dateTimeRange:(id)range identifiers:(id)identifiers notificationIdentifiers:(id)notificationIdentifiers;
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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAttributes:(unint64_t)attributes;
- (void)setConversationIdentifiers:(id)identifiers;
- (void)setDateTimeRange:(id)range;
- (void)setGroupNames:(id)names;
- (void)setIdentifiers:(id)identifiers;
- (void)setNotificationIdentifiers:(id)identifiers;
- (void)setRecipients:(id)recipients;
- (void)setSearchTerms:(id)terms;
- (void)setSenders:(id)senders;
- (void)setSpeakableGroupNames:(id)names;
@end

@implementation INSearchForMessagesIntent

- (id)_metadata
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
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

- (id)_dictionaryRepresentation
{
  v33[9] = *MEMORY[0x1E69E9840];
  v32[0] = @"recipients";
  recipients = [(INSearchForMessagesIntent *)self recipients];
  v4 = recipients;
  if (!recipients)
  {
    recipients = [MEMORY[0x1E695DFB0] null];
  }

  v28 = recipients;
  v33[0] = recipients;
  v32[1] = @"senders";
  senders = [(INSearchForMessagesIntent *)self senders];
  v6 = senders;
  if (!senders)
  {
    senders = [MEMORY[0x1E695DFB0] null];
  }

  v27 = senders;
  v33[1] = senders;
  v32[2] = @"searchTerms";
  searchTerms = [(INSearchForMessagesIntent *)self searchTerms];
  v8 = searchTerms;
  if (!searchTerms)
  {
    searchTerms = [MEMORY[0x1E695DFB0] null];
  }

  v26 = searchTerms;
  v33[2] = searchTerms;
  v32[3] = @"attributes";
  null = INMessageAttributeOptionsGetNames([(INSearchForMessagesIntent *)self attributes]);
  v10 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v33[3] = null;
  v32[4] = @"dateTimeRange";
  dateTimeRange = [(INSearchForMessagesIntent *)self dateTimeRange];
  v12 = dateTimeRange;
  if (!dateTimeRange)
  {
    dateTimeRange = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v24 = dateTimeRange;
  v33[4] = dateTimeRange;
  v32[5] = @"identifiers";
  identifiers = [(INSearchForMessagesIntent *)self identifiers];
  v14 = identifiers;
  if (!identifiers)
  {
    identifiers = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v6;
  v23 = identifiers;
  v33[5] = identifiers;
  v32[6] = @"notificationIdentifiers";
  notificationIdentifiers = [(INSearchForMessagesIntent *)self notificationIdentifiers];
  null2 = notificationIdentifiers;
  if (!notificationIdentifiers)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33[6] = null2;
  v32[7] = @"speakableGroupNames";
  speakableGroupNames = [(INSearchForMessagesIntent *)self speakableGroupNames];
  null3 = speakableGroupNames;
  if (!speakableGroupNames)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v33[7] = null3;
  v32[8] = @"conversationIdentifiers";
  conversationIdentifiers = [(INSearchForMessagesIntent *)self conversationIdentifiers];
  null4 = conversationIdentifiers;
  if (!conversationIdentifiers)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33[8] = null4;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:9];
  if (!conversationIdentifiers)
  {
  }

  if (!speakableGroupNames)
  {
  }

  if (!notificationIdentifiers)
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
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  recipient = [_typedBackingStore recipient];

  contacts = [recipient contacts];
  v5 = INIntentSlotValueTransformFromContacts(contacts);

  return v5;
}

- (NSArray)searchTerms
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  searchTerm = [_typedBackingStore searchTerm];

  dataStrings = [searchTerm dataStrings];
  v5 = INIntentSlotValueTransformFromStrings(dataStrings);

  return v5;
}

- (NSArray)senders
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  sender = [_typedBackingStore sender];

  contacts = [sender contacts];
  v5 = INIntentSlotValueTransformFromContacts(contacts);

  return v5;
}

- (INMessageAttributeOptions)attributes
{
  v8 = 0;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  attributesCount = [_typedBackingStore attributesCount];

  if (!attributesCount)
  {
    return 0;
  }

  for (i = 0; i != attributesCount; ++i)
  {
    _typedBackingStore2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    INMessageAttributeOptionsAddBackingType(&v8, [_typedBackingStore2 attributeAtIndex:i]);
  }

  return v8;
}

- (INDateComponentsRange)dateTimeRange
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  dateTimeRange = [_typedBackingStore dateTimeRange];
  v4 = INIntentSlotValueTransformFromDateTimeRange(dateTimeRange);

  return v4;
}

- (NSArray)identifiers
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  identifier = [_typedBackingStore identifier];

  dataStrings = [identifier dataStrings];
  v5 = INIntentSlotValueTransformFromStrings(dataStrings);

  return v5;
}

- (NSArray)notificationIdentifiers
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  notificationIdentifier = [_typedBackingStore notificationIdentifier];

  dataStrings = [notificationIdentifier dataStrings];
  v5 = INIntentSlotValueTransformFromStrings(dataStrings);

  return v5;
}

- (NSArray)speakableGroupNames
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  speakableGroupName = [_typedBackingStore speakableGroupName];

  dataStrings = [speakableGroupName dataStrings];
  v5 = INIntentSlotValueTransformFromDataStrings(dataStrings);

  return v5;
}

- (NSArray)conversationIdentifiers
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  conversationIdentifier = [_typedBackingStore conversationIdentifier];

  dataStrings = [conversationIdentifier dataStrings];
  v5 = INIntentSlotValueTransformFromStrings(dataStrings);

  return v5;
}

- (INSearchForMessagesIntent)initWithRecipients:(id)recipients senders:(id)senders contents:(id)contents attributes:(unint64_t)attributes dateTimeRange:(id)range identifiers:(id)identifiers notificationIdentifiers:(id)notificationIdentifiers
{
  notificationIdentifiersCopy = notificationIdentifiers;
  identifiersCopy = identifiers;
  rangeCopy = range;
  contentsCopy = contents;
  sendersCopy = senders;
  recipientsCopy = recipients;
  v22 = [[INDateComponentsRange alloc] initWithDateInterval:rangeCopy onCalendar:0 inTimeZone:0];

  v23 = [(INSearchForMessagesIntent *)self initWithRecipients:recipientsCopy senders:sendersCopy searchTerms:contentsCopy attributes:attributes dateTimeRange:v22 identifiers:identifiersCopy notificationIdentifiers:notificationIdentifiersCopy speakableGroupNames:0];
  return v23;
}

- (INSearchForMessagesIntent)initWithRecipients:(id)recipients senders:(id)senders contents:(id)contents attributes:(unint64_t)attributes dateTimeRange:(id)range identifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  rangeCopy = range;
  contentsCopy = contents;
  sendersCopy = senders;
  recipientsCopy = recipients;
  v19 = [[INDateComponentsRange alloc] initWithDateInterval:rangeCopy onCalendar:0 inTimeZone:0];

  v20 = [(INSearchForMessagesIntent *)self initWithRecipients:recipientsCopy senders:sendersCopy searchTerms:contentsCopy attributes:attributes dateTimeRange:v19 identifiers:identifiersCopy notificationIdentifiers:0 speakableGroupNames:0];
  return v20;
}

- (INConditionalOperator)groupNamesOperator
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  speakableGroupName = [_typedBackingStore speakableGroupName];

  conditionType = [speakableGroupName conditionType];
  v5 = INIntentSlotValueTransformFromCondition(conditionType);

  return v5;
}

- (void)setGroupNames:(id)names
{
  v23 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = namesCopy;
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
        [array addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v15 = INIntentSlotValueTransformToDataStringList(array);
  v16 = [v15 mutableCopy];
  [_typedBackingStore setSpeakableGroupName:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (NSArray)groupNames
{
  v20 = *MEMORY[0x1E69E9840];
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  speakableGroupName = [_typedBackingStore speakableGroupName];
  v4 = INIntentSlotValueTransformFromDataStringList(speakableGroupName);

  array = [MEMORY[0x1E695DF70] array];
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

        spokenPhrase = [*(*(&v15 + 1) + 8 * i) spokenPhrase];
        v12 = [spokenPhrase copy];

        [array addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
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
  array = [MEMORY[0x1E695DF70] array];
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
        [array addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);
  }

  v25 = [array copy];
  v26 = [(INSearchForMessagesIntent *)self initWithRecipients:v33 senders:v32 searchTerms:v31 attributes:attributes dateTimeRange:v14 identifiers:v15 notificationIdentifiers:v16 speakableGroupNames:v25];

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v31 = idCopy;
  v26 = _typedBackingStore;
  v8 = [_typedBackingStore copy];
  recipient = [v8 recipient];
  contacts = [recipient contacts];
  v28 = INIntentSlotValueRedactedContactsFromContacts(contacts, options, v31);

  [recipient setContacts:v28];
  sender = [v8 sender];
  contacts2 = [sender contacts];
  v27 = INIntentSlotValueRedactedContactsFromContacts(contacts2, options, v31);

  [sender setContacts:v27];
  searchTerm = [v8 searchTerm];
  dataStrings = [searchTerm dataStrings];
  v25 = INIntentSlotValueRedactedStringsFromStrings(dataStrings, options, v31);

  [searchTerm setDataStrings:v25];
  dateTimeRange = [_typedBackingStore dateTimeRange];
  v15 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(dateTimeRange, options);
  [v8 setDateTimeRange:v15];

  identifier = [v8 identifier];
  dataStrings2 = [identifier dataStrings];
  v18 = INIntentSlotValueRedactedStringsFromStrings(dataStrings2, options, v31);

  [identifier setDataStrings:v18];
  notificationIdentifier = [v8 notificationIdentifier];
  dataStrings3 = [notificationIdentifier dataStrings];
  v21 = INIntentSlotValueRedactedStringsFromStrings(dataStrings3, options, v31);

  [notificationIdentifier setDataStrings:v21];
  conversationIdentifier = [v8 conversationIdentifier];
  dataStrings4 = [conversationIdentifier dataStrings];
  v24 = INIntentSlotValueRedactedStringsFromStrings(dataStrings4, options, v31);

  [conversationIdentifier setDataStrings:v24];
  [(INIntent *)self setBackingStore:v8];
}

- (void)setConversationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  conversationIdentifier = [_typedBackingStore conversationIdentifier];

  if (!conversationIdentifier)
  {
    conversationIdentifier = objc_alloc_init(_INPBStringList);
    _typedBackingStore2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [_typedBackingStore2 setConversationIdentifier:conversationIdentifier];
  }

  v7 = INIntentSlotValueTransformToStrings(identifiersCopy);
  [(_INPBStringList *)conversationIdentifier setDataStrings:v7];
}

- (INConditionalOperator)conversationIdentifiersOperator
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  conversationIdentifier = [_typedBackingStore conversationIdentifier];

  conditionType = [conversationIdentifier conditionType];
  v5 = INIntentSlotValueTransformFromCondition(conditionType);

  return v5;
}

- (void)setSpeakableGroupNames:(id)names
{
  namesCopy = names;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  speakableGroupName = [_typedBackingStore speakableGroupName];

  if (!speakableGroupName)
  {
    speakableGroupName = objc_alloc_init(_INPBDataStringList);
    _typedBackingStore2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [_typedBackingStore2 setSpeakableGroupName:speakableGroupName];
  }

  v7 = INIntentSlotValueTransformToDataStrings(namesCopy);
  [(_INPBDataStringList *)speakableGroupName setDataStrings:v7];
}

- (INConditionalOperator)speakableGroupNamesOperator
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  speakableGroupName = [_typedBackingStore speakableGroupName];

  conditionType = [speakableGroupName conditionType];
  v5 = INIntentSlotValueTransformFromCondition(conditionType);

  return v5;
}

- (void)setNotificationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  notificationIdentifier = [_typedBackingStore notificationIdentifier];

  if (!notificationIdentifier)
  {
    notificationIdentifier = objc_alloc_init(_INPBStringList);
    _typedBackingStore2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [_typedBackingStore2 setNotificationIdentifier:notificationIdentifier];
  }

  v7 = INIntentSlotValueTransformToStrings(identifiersCopy);
  [(_INPBStringList *)notificationIdentifier setDataStrings:v7];
}

- (INConditionalOperator)notificationIdentifiersOperator
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  notificationIdentifier = [_typedBackingStore notificationIdentifier];

  conditionType = [notificationIdentifier conditionType];
  v5 = INIntentSlotValueTransformFromCondition(conditionType);

  return v5;
}

- (void)setIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  identifier = [_typedBackingStore identifier];

  if (!identifier)
  {
    identifier = objc_alloc_init(_INPBStringList);
    _typedBackingStore2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [_typedBackingStore2 setIdentifier:identifier];
  }

  v7 = INIntentSlotValueTransformToStrings(identifiersCopy);
  [(_INPBStringList *)identifier setDataStrings:v7];
}

- (INConditionalOperator)identifiersOperator
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  identifier = [_typedBackingStore identifier];

  conditionType = [identifier conditionType];
  v5 = INIntentSlotValueTransformFromCondition(conditionType);

  return v5;
}

- (void)setDateTimeRange:(id)range
{
  rangeCopy = range;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(rangeCopy);

  [_typedBackingStore setDateTimeRange:v5];
}

- (void)setAttributes:(unint64_t)attributes
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  [_typedBackingStore clearAttributes];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__INSearchForMessagesIntent_setAttributes___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INMessageAttributeOptionsEnumerateBackingTypes(attributes, v6);
}

void __43__INSearchForMessagesIntent_setAttributes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addAttribute:a2];
}

- (void)setSearchTerms:(id)terms
{
  termsCopy = terms;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  searchTerm = [_typedBackingStore searchTerm];

  if (!searchTerm)
  {
    searchTerm = objc_alloc_init(_INPBStringList);
    _typedBackingStore2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [_typedBackingStore2 setSearchTerm:searchTerm];
  }

  v7 = INIntentSlotValueTransformToStrings(termsCopy);
  [(_INPBStringList *)searchTerm setDataStrings:v7];
}

- (INConditionalOperator)searchTermsOperator
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  searchTerm = [_typedBackingStore searchTerm];

  conditionType = [searchTerm conditionType];
  v5 = INIntentSlotValueTransformFromCondition(conditionType);

  return v5;
}

- (void)setSenders:(id)senders
{
  sendersCopy = senders;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  sender = [_typedBackingStore sender];

  if (!sender)
  {
    sender = objc_alloc_init(_INPBContactList);
    _typedBackingStore2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [_typedBackingStore2 setSender:sender];
  }

  v7 = INIntentSlotValueTransformToContacts(sendersCopy);
  [(_INPBContactList *)sender setContacts:v7];
}

- (INConditionalOperator)sendersOperator
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  sender = [_typedBackingStore sender];

  condition = [sender condition];
  v5 = INIntentSlotValueTransformFromCondition(condition);

  return v5;
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  recipient = [_typedBackingStore recipient];

  if (!recipient)
  {
    recipient = objc_alloc_init(_INPBContactList);
    _typedBackingStore2 = [(INSearchForMessagesIntent *)self _typedBackingStore];
    [_typedBackingStore2 setRecipient:recipient];
  }

  v7 = INIntentSlotValueTransformToContacts(recipientsCopy);
  [(_INPBContactList *)recipient setContacts:v7];
}

- (INConditionalOperator)recipientsOperator
{
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  recipient = [_typedBackingStore recipient];

  condition = [recipient condition];
  v5 = INIntentSlotValueTransformFromCondition(condition);

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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSearchForMessagesIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

@end