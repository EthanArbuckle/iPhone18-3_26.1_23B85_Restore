@interface INSendMessageIntent
- (BOOL)_isValidSubProducer:(id)producer;
- (INOutgoingMessageType)outgoingMessageType;
- (INPerson)sender;
- (INSendMessageIntent)initWithRecipients:(NSArray *)recipients content:(NSString *)content groupName:(NSString *)groupName serviceName:(NSString *)serviceName sender:(INPerson *)sender;
- (INSendMessageIntent)initWithRecipients:(NSArray *)recipients outgoingMessageType:(INOutgoingMessageType)outgoingMessageType content:(NSString *)content speakableGroupName:(INSpeakableString *)speakableGroupName conversationIdentifier:(NSString *)conversationIdentifier serviceName:(NSString *)serviceName sender:(INPerson *)sender attachments:(NSArray *)attachments;
- (INSpeakableString)speakableGroupName;
- (NSArray)attachments;
- (NSArray)recipients;
- (NSNumber)shouldHideSiriAttribution;
- (NSString)alternativeConversationIdentifier;
- (NSString)content;
- (NSString)conversationIdentifier;
- (NSString)groupName;
- (NSString)notificationThreadIdentifier;
- (NSString)serviceName;
- (id)_currentParameterCombination;
- (id)_dictionaryRepresentation;
- (id)_keyCodableAttributes;
- (id)_metadata;
- (id)_redactedDictionaryRepresentation;
- (id)_typedBackingStore;
- (id)_validParameterCombinationsWithSchema:(id)schema;
- (int64_t)effect;
- (void)_intents_resolveOutgoingMessageTypeWithCompletionHandler:(id)handler;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAlternativeConversationIdentifier:(id)identifier;
- (void)setAttachments:(id)attachments;
- (void)setContent:(id)content;
- (void)setConversationIdentifier:(id)identifier;
- (void)setEffect:(int64_t)effect;
- (void)setGroupName:(id)name;
- (void)setNotificationThreadIdentifier:(id)identifier;
- (void)setOutgoingMessageType:(int64_t)type;
- (void)setRecipients:(id)recipients;
- (void)setSender:(id)sender;
- (void)setServiceName:(id)name;
- (void)setShouldHideSiriAttribution:(id)attribution;
- (void)setSpeakableGroupName:(id)name;
@end

@implementation INSendMessageIntent

- (INSpeakableString)speakableGroupName
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  speakableGroupName = [_typedBackingStore speakableGroupName];
  v4 = INIntentSlotValueTransformFromDataString(speakableGroupName);

  return v4;
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
  v29[8] = *MEMORY[0x1E69E9840];
  v28[0] = @"recipients";
  recipients = [(INSendMessageIntent *)self recipients];
  v4 = recipients;
  if (!recipients)
  {
    recipients = [MEMORY[0x1E695DFB0] null];
  }

  v25 = recipients;
  v29[0] = recipients;
  v28[1] = @"outgoingMessageType";
  outgoingMessageType = [(INSendMessageIntent *)self outgoingMessageType];
  v6 = @"unknown";
  if (outgoingMessageType == INOutgoingMessageTypeOutgoingMessageAudio)
  {
    v6 = @"outgoingMessageAudio";
  }

  if (outgoingMessageType == INOutgoingMessageTypeOutgoingMessageText)
  {
    v6 = @"outgoingMessageText";
  }

  v26 = v6;
  v29[1] = v26;
  v28[2] = @"content";
  content = [(INSendMessageIntent *)self content];
  v8 = content;
  if (!content)
  {
    content = [MEMORY[0x1E695DFB0] null];
  }

  v24 = content;
  v29[2] = content;
  v28[3] = @"speakableGroupName";
  speakableGroupName = [(INSendMessageIntent *)self speakableGroupName];
  v10 = speakableGroupName;
  if (!speakableGroupName)
  {
    speakableGroupName = [MEMORY[0x1E695DFB0] null];
  }

  v23 = speakableGroupName;
  v29[3] = speakableGroupName;
  v28[4] = @"conversationIdentifier";
  conversationIdentifier = [(INSendMessageIntent *)self conversationIdentifier];
  v12 = conversationIdentifier;
  if (!conversationIdentifier)
  {
    conversationIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = conversationIdentifier;
  v28[5] = @"serviceName";
  serviceName = [(INSendMessageIntent *)self serviceName];
  null = serviceName;
  if (!serviceName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v29[5] = null;
  v28[6] = @"sender";
  sender = [(INSendMessageIntent *)self sender];
  null2 = sender;
  if (!sender)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null2;
  v28[7] = @"attachments";
  attachments = [(INSendMessageIntent *)self attachments];
  null3 = attachments;
  if (!attachments)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = null3;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (!attachments)
  {
  }

  if (!sender)
  {
  }

  if (!serviceName)
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

  if (!v27)
  {
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_metadata
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (NSArray)recipients
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  recipients = [_typedBackingStore recipients];
  v4 = INIntentSlotValueTransformFromContacts(recipients);

  return v4;
}

- (NSString)conversationIdentifier
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  conversationIdentifier = [_typedBackingStore conversationIdentifier];
  v4 = [conversationIdentifier copy];

  return v4;
}

- (int64_t)effect
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  hasEffect = [_typedBackingStore hasEffect];
  _typedBackingStore2 = [(INSendMessageIntent *)self _typedBackingStore];
  effect = [_typedBackingStore2 effect];
  if (((effect - 1 < 0xD) & hasEffect) != 0)
  {
    v7 = effect;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)notificationThreadIdentifier
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  notificationThreadIdentifier = [_typedBackingStore notificationThreadIdentifier];
  v4 = [notificationThreadIdentifier copy];

  return v4;
}

- (NSString)alternativeConversationIdentifier
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  alternativeConversationIdentifier = [_typedBackingStore alternativeConversationIdentifier];
  v4 = [alternativeConversationIdentifier copy];

  return v4;
}

- (INOutgoingMessageType)outgoingMessageType
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  hasOutgoingMessageType = [_typedBackingStore hasOutgoingMessageType];
  _typedBackingStore2 = [(INSendMessageIntent *)self _typedBackingStore];
  outgoingMessageType = [_typedBackingStore2 outgoingMessageType];
  v7 = 2 * (outgoingMessageType == 2);
  if (outgoingMessageType == 1)
  {
    v7 = 1;
  }

  if (hasOutgoingMessageType)
  {
    v8 = v7;
  }

  else
  {
    v8 = INOutgoingMessageTypeUnknown;
  }

  return v8;
}

- (NSString)content
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  content = [_typedBackingStore content];
  v4 = INIntentSlotValueTransformFromString(content);

  return v4;
}

- (INPerson)sender
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  sender = [_typedBackingStore sender];
  v4 = INIntentSlotValueTransformFromContact(sender);

  return v4;
}

- (NSString)serviceName
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  serviceName = [_typedBackingStore serviceName];
  v4 = [serviceName copy];

  return v4;
}

- (NSArray)attachments
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  attachments = [_typedBackingStore attachments];
  v4 = INIntentSlotValueTransformFromSendMessageAttachments(attachments);

  return v4;
}

- (id)_redactedDictionaryRepresentation
{
  _dictionaryRepresentation = [(INSendMessageIntent *)self _dictionaryRepresentation];
  v3 = [_dictionaryRepresentation mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"content"];

  return v3;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  v7 = [[INSpeakableString alloc] initWithSpokenPhrase:nameCopy];

  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  v6 = INIntentSlotValueTransformToDataString(v7);
  [_typedBackingStore setSpeakableGroupName:v6];
}

- (NSString)groupName
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  speakableGroupName = [_typedBackingStore speakableGroupName];
  v4 = INIntentSlotValueTransformFromDataString(speakableGroupName);

  spokenPhrase = [v4 spokenPhrase];
  v6 = [spokenPhrase copy];

  return v6;
}

- (INSendMessageIntent)initWithRecipients:(NSArray *)recipients content:(NSString *)content groupName:(NSString *)groupName serviceName:(NSString *)serviceName sender:(INPerson *)sender
{
  v12 = recipients;
  v13 = content;
  v14 = groupName;
  v15 = serviceName;
  v16 = sender;
  if (v14)
  {
    v17 = [[INSpeakableString alloc] initWithSpokenPhrase:v14];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(INSendMessageIntent *)self initWithRecipients:v12 outgoingMessageType:0 content:v13 speakableGroupName:v17 conversationIdentifier:0 serviceName:v15 sender:v16];

  return v18;
}

- (BOOL)_isValidSubProducer:(id)producer
{
  producerCopy = producer;
  sender = [(INSendMessageIntent *)self sender];
  v6 = [producerCopy isEqual:sender];

  return v6 ^ 1;
}

- (id)_currentParameterCombination
{
  _nonNilParameters = [(INIntent *)self _nonNilParameters];
  v4 = [_nonNilParameters mutableCopy];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"serviceName", @"sender", @"effect", @"attachments", @"messageType", 0}];
  [v4 minusSet:v5];

  _nonNilParameters2 = [(INIntent *)self _nonNilParameters];
  v7 = [_nonNilParameters2 containsObject:@"conversationIdentifier"];

  if (!v7)
  {
    goto LABEL_4;
  }

  _parameterCombinations = [(INIntent *)self _parameterCombinations];
  _currentParameterCombination = [_parameterCombinations objectForKey:v4];

  if (!_currentParameterCombination)
  {
    [v4 removeObject:@"conversationIdentifier"];
    _parameterCombinations2 = [(INIntent *)self _parameterCombinations];
    _currentParameterCombination = [_parameterCombinations2 objectForKey:v4];

    if (!_currentParameterCombination)
    {
LABEL_4:
      v12.receiver = self;
      v12.super_class = INSendMessageIntent;
      _currentParameterCombination = [(INIntent *)&v12 _currentParameterCombination];
    }
  }

  return _currentParameterCombination;
}

- (id)_validParameterCombinationsWithSchema:(id)schema
{
  v32 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = INSendMessageIntent;
  v4 = [(INIntent *)&v28 _validParameterCombinationsWithSchema:schema];
  _nonNilParameters = [(INIntent *)self _nonNilParameters];
  if ([_nonNilParameters containsObject:@"speakableGroupName"] && objc_msgSend(_nonNilParameters, "containsObject:", @"recipients"))
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = v4;
    v8 = [v6 alloc];
    allKeys = [v7 allKeys];
    v10 = [v8 initWithArray:allKeys];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __INCoalesceValidMessagingParameterCombinations_block_invoke;
    v29[3] = &unk_1E7281E68;
    v30 = v10;
    v11 = v10;
    v4 = INDictionaryWithObjectsForKeysPassingTest(v7, v29);
  }

  if ([_nonNilParameters containsObject:@"conversationIdentifier"] && ((objc_msgSend(_nonNilParameters, "containsObject:", @"speakableGroupName") & 1) != 0 || objc_msgSend(_nonNilParameters, "containsObject:", @"recipients")))
  {
    v23 = _nonNilParameters;
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    allKeys2 = [v4 allKeys];
    v14 = [allKeys2 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(allKeys2);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          if (([v18 containsObject:@"speakableGroupName"] & 1) != 0 || objc_msgSend(v18, "containsObject:", @"recipients"))
          {
            v19 = [v4 objectForKey:v18];
            v20 = [v18 setByAddingObject:@"conversationIdentifier"];
            [v12 setObject:v19 forKey:v20];
          }
        }

        v15 = [allKeys2 countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v15);
    }

    _nonNilParameters = v23;
  }

  else
  {
    v12 = v4;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_keyCodableAttributes
{
  _codableDescription = [(INIntent *)self _codableDescription];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [_codableDescription attributeByName:@"speakableGroupName"];
  keyAttribute = [_codableDescription keyAttribute];
  v6 = [v3 arrayWithObjects:{v4, keyAttribute, 0}];

  return v6;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  v15 = idCopy;
  v8 = [_typedBackingStore copy];
  recipients = [_typedBackingStore recipients];
  v10 = INIntentSlotValueRedactedContactsFromContacts(recipients, options, v15);

  [v8 setRecipients:v10];
  content = [_typedBackingStore content];
  v12 = INIntentSlotValueRedactedStringFromString(content, options, v15);
  [v8 setContent:v12];

  sender = [_typedBackingStore sender];
  v14 = INIntentSlotValueRedactedContactFromContact(sender, options, v15);

  [v8 setSender:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (void)setShouldHideSiriAttribution:(id)attribution
{
  attributionCopy = attribution;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  if (attributionCopy)
  {
    [_typedBackingStore setShouldHideSiriAttribution:{objc_msgSend(attributionCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasShouldHideSiriAttribution:0];
  }
}

- (NSNumber)shouldHideSiriAttribution
{
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasShouldHideSiriAttribution])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSendMessageIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "shouldHideSiriAttribution")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAlternativeConversationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  [_typedBackingStore setAlternativeConversationIdentifier:identifierCopy];
}

- (void)setNotificationThreadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  [_typedBackingStore setNotificationThreadIdentifier:identifierCopy];
}

- (void)setAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSendMessageAttachments(attachmentsCopy);

  [_typedBackingStore setAttachments:v5];
}

- (void)setEffect:(int64_t)effect
{
  v3 = effect - 1;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 0xC)
  {
    [_typedBackingStore setHasEffect:0];
  }

  else
  {
    [_typedBackingStore setEffect:?];
  }
}

- (void)setSender:(id)sender
{
  senderCopy = sender;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContact(senderCopy);

  [_typedBackingStore setSender:v5];
}

- (void)setServiceName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  [_typedBackingStore setServiceName:nameCopy];
}

- (void)setConversationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  [_typedBackingStore setConversationIdentifier:identifierCopy];
}

- (void)setSpeakableGroupName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setSpeakableGroupName:v5];
}

- (void)setContent:(id)content
{
  contentCopy = content;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(contentCopy);

  [_typedBackingStore setContent:v5];
}

- (void)setOutgoingMessageType:(int64_t)type
{
  if (type == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (type == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  v6 = _typedBackingStore;
  if (v4 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasOutgoingMessageType:0];
  }

  else
  {
    [_typedBackingStore setOutgoingMessageType:v4];
  }
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(recipientsCopy);

  [_typedBackingStore setRecipients:v5];
}

- (INSendMessageIntent)initWithRecipients:(NSArray *)recipients outgoingMessageType:(INOutgoingMessageType)outgoingMessageType content:(NSString *)content speakableGroupName:(INSpeakableString *)speakableGroupName conversationIdentifier:(NSString *)conversationIdentifier serviceName:(NSString *)serviceName sender:(INPerson *)sender attachments:(NSArray *)attachments
{
  v16 = recipients;
  v17 = content;
  v18 = speakableGroupName;
  v19 = conversationIdentifier;
  v20 = serviceName;
  v21 = sender;
  v22 = attachments;
  v26.receiver = self;
  v26.super_class = INSendMessageIntent;
  v23 = [(INIntent *)&v26 init];
  v24 = v23;
  if (v23)
  {
    [(INSendMessageIntent *)v23 setRecipients:v16];
    [(INSendMessageIntent *)v24 setOutgoingMessageType:outgoingMessageType];
    [(INSendMessageIntent *)v24 setContent:v17];
    [(INSendMessageIntent *)v24 setSpeakableGroupName:v18];
    [(INSendMessageIntent *)v24 setConversationIdentifier:v19];
    [(INSendMessageIntent *)v24 setServiceName:v20];
    [(INSendMessageIntent *)v24 setSender:v21];
    [(INSendMessageIntent *)v24 setAttachments:v22];
  }

  return v24;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSendMessageIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (void)_intents_resolveOutgoingMessageTypeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  outgoingMessageType = [(INSendMessageIntent *)self outgoingMessageType];
  if (outgoingMessageType == INOutgoingMessageTypeOutgoingMessageAudio)
  {
    v6 = +[INIntentResolutionResult unsupported];
    goto LABEL_7;
  }

  if (outgoingMessageType == INOutgoingMessageTypeOutgoingMessageText)
  {
    v6 = [INOutgoingMessageTypeResolutionResult successWithResolvedOutgoingMessageType:1];
LABEL_7:
    v7 = v6;
    handlerCopy[2](handlerCopy, v6);

    goto LABEL_8;
  }

  v5 = handlerCopy;
  if (outgoingMessageType)
  {
    goto LABEL_9;
  }

  outgoingMessageType = (handlerCopy[2])(handlerCopy, 0);
LABEL_8:
  v5 = handlerCopy;
LABEL_9:

  MEMORY[0x1EEE66BB8](outgoingMessageType, v5);
}

@end