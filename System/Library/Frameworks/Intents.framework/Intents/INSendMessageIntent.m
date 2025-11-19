@interface INSendMessageIntent
- (BOOL)_isValidSubProducer:(id)a3;
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
- (id)_validParameterCombinationsWithSchema:(id)a3;
- (int64_t)effect;
- (void)_intents_resolveOutgoingMessageTypeWithCompletionHandler:(id)a3;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAlternativeConversationIdentifier:(id)a3;
- (void)setAttachments:(id)a3;
- (void)setContent:(id)a3;
- (void)setConversationIdentifier:(id)a3;
- (void)setEffect:(int64_t)a3;
- (void)setGroupName:(id)a3;
- (void)setNotificationThreadIdentifier:(id)a3;
- (void)setOutgoingMessageType:(int64_t)a3;
- (void)setRecipients:(id)a3;
- (void)setSender:(id)a3;
- (void)setServiceName:(id)a3;
- (void)setShouldHideSiriAttribution:(id)a3;
- (void)setSpeakableGroupName:(id)a3;
@end

@implementation INSendMessageIntent

- (INSpeakableString)speakableGroupName
{
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 speakableGroupName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
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
  v29[8] = *MEMORY[0x1E69E9840];
  v28[0] = @"recipients";
  v3 = [(INSendMessageIntent *)self recipients];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v3;
  v29[0] = v3;
  v28[1] = @"outgoingMessageType";
  v5 = [(INSendMessageIntent *)self outgoingMessageType];
  v6 = @"unknown";
  if (v5 == INOutgoingMessageTypeOutgoingMessageAudio)
  {
    v6 = @"outgoingMessageAudio";
  }

  if (v5 == INOutgoingMessageTypeOutgoingMessageText)
  {
    v6 = @"outgoingMessageText";
  }

  v26 = v6;
  v29[1] = v26;
  v28[2] = @"content";
  v7 = [(INSendMessageIntent *)self content];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v7;
  v29[2] = v7;
  v28[3] = @"speakableGroupName";
  v9 = [(INSendMessageIntent *)self speakableGroupName];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v9;
  v29[3] = v9;
  v28[4] = @"conversationIdentifier";
  v11 = [(INSendMessageIntent *)self conversationIdentifier];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = v11;
  v28[5] = @"serviceName";
  v13 = [(INSendMessageIntent *)self serviceName];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v29[5] = v14;
  v28[6] = @"sender";
  v15 = [(INSendMessageIntent *)self sender];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = v16;
  v28[7] = @"attachments";
  v17 = [(INSendMessageIntent *)self attachments];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (!v17)
  {
  }

  if (!v15)
  {
  }

  if (!v13)
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
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (NSArray)recipients
{
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 recipients];
  v4 = INIntentSlotValueTransformFromContacts(v3);

  return v4;
}

- (NSString)conversationIdentifier
{
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 conversationIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (int64_t)effect
{
  v3 = [(INSendMessageIntent *)self _typedBackingStore];
  v4 = [v3 hasEffect];
  v5 = [(INSendMessageIntent *)self _typedBackingStore];
  v6 = [v5 effect];
  if (((v6 - 1 < 0xD) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)notificationThreadIdentifier
{
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 notificationThreadIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (NSString)alternativeConversationIdentifier
{
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 alternativeConversationIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (INOutgoingMessageType)outgoingMessageType
{
  v3 = [(INSendMessageIntent *)self _typedBackingStore];
  v4 = [v3 hasOutgoingMessageType];
  v5 = [(INSendMessageIntent *)self _typedBackingStore];
  v6 = [v5 outgoingMessageType];
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
    v8 = INOutgoingMessageTypeUnknown;
  }

  return v8;
}

- (NSString)content
{
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 content];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (INPerson)sender
{
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 sender];
  v4 = INIntentSlotValueTransformFromContact(v3);

  return v4;
}

- (NSString)serviceName
{
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 serviceName];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)attachments
{
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 attachments];
  v4 = INIntentSlotValueTransformFromSendMessageAttachments(v3);

  return v4;
}

- (id)_redactedDictionaryRepresentation
{
  v2 = [(INSendMessageIntent *)self _dictionaryRepresentation];
  v3 = [v2 mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"content"];

  return v3;
}

- (void)setGroupName:(id)a3
{
  v4 = a3;
  v7 = [[INSpeakableString alloc] initWithSpokenPhrase:v4];

  v5 = [(INSendMessageIntent *)self _typedBackingStore];
  v6 = INIntentSlotValueTransformToDataString(v7);
  [v5 setSpeakableGroupName:v6];
}

- (NSString)groupName
{
  v2 = [(INSendMessageIntent *)self _typedBackingStore];
  v3 = [v2 speakableGroupName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  v5 = [v4 spokenPhrase];
  v6 = [v5 copy];

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

- (BOOL)_isValidSubProducer:(id)a3
{
  v4 = a3;
  v5 = [(INSendMessageIntent *)self sender];
  v6 = [v4 isEqual:v5];

  return v6 ^ 1;
}

- (id)_currentParameterCombination
{
  v3 = [(INIntent *)self _nonNilParameters];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"serviceName", @"sender", @"effect", @"attachments", @"messageType", 0}];
  [v4 minusSet:v5];

  v6 = [(INIntent *)self _nonNilParameters];
  v7 = [v6 containsObject:@"conversationIdentifier"];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [(INIntent *)self _parameterCombinations];
  v9 = [v8 objectForKey:v4];

  if (!v9)
  {
    [v4 removeObject:@"conversationIdentifier"];
    v10 = [(INIntent *)self _parameterCombinations];
    v9 = [v10 objectForKey:v4];

    if (!v9)
    {
LABEL_4:
      v12.receiver = self;
      v12.super_class = INSendMessageIntent;
      v9 = [(INIntent *)&v12 _currentParameterCombination];
    }
  }

  return v9;
}

- (id)_validParameterCombinationsWithSchema:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = INSendMessageIntent;
  v4 = [(INIntent *)&v28 _validParameterCombinationsWithSchema:a3];
  v5 = [(INIntent *)self _nonNilParameters];
  if ([v5 containsObject:@"speakableGroupName"] && objc_msgSend(v5, "containsObject:", @"recipients"))
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = v4;
    v8 = [v6 alloc];
    v9 = [v7 allKeys];
    v10 = [v8 initWithArray:v9];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __INCoalesceValidMessagingParameterCombinations_block_invoke;
    v29[3] = &unk_1E7281E68;
    v30 = v10;
    v11 = v10;
    v4 = INDictionaryWithObjectsForKeysPassingTest(v7, v29);
  }

  if ([v5 containsObject:@"conversationIdentifier"] && ((objc_msgSend(v5, "containsObject:", @"speakableGroupName") & 1) != 0 || objc_msgSend(v5, "containsObject:", @"recipients")))
  {
    v23 = v5;
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [v4 allKeys];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v31 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          if (([v18 containsObject:@"speakableGroupName"] & 1) != 0 || objc_msgSend(v18, "containsObject:", @"recipients"))
          {
            v19 = [v4 objectForKey:v18];
            v20 = [v18 setByAddingObject:@"conversationIdentifier"];
            [v12 setObject:v19 forKey:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v15);
    }

    v5 = v23;
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
  v2 = [(INIntent *)self _codableDescription];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [v2 attributeByName:@"speakableGroupName"];
  v5 = [v2 keyAttribute];
  v6 = [v3 arrayWithObjects:{v4, v5, 0}];

  return v6;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSendMessageIntent *)self _typedBackingStore];
  v15 = v6;
  v8 = [v7 copy];
  v9 = [v7 recipients];
  v10 = INIntentSlotValueRedactedContactsFromContacts(v9, a3, v15);

  [v8 setRecipients:v10];
  v11 = [v7 content];
  v12 = INIntentSlotValueRedactedStringFromString(v11, a3, v15);
  [v8 setContent:v12];

  v13 = [v7 sender];
  v14 = INIntentSlotValueRedactedContactFromContact(v13, a3, v15);

  [v8 setSender:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (void)setShouldHideSiriAttribution:(id)a3
{
  v5 = a3;
  v4 = [(INSendMessageIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setShouldHideSiriAttribution:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasShouldHideSiriAttribution:0];
  }
}

- (NSNumber)shouldHideSiriAttribution
{
  v3 = [(INSendMessageIntent *)self _typedBackingStore];
  if ([v3 hasShouldHideSiriAttribution])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSendMessageIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "shouldHideSiriAttribution")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAlternativeConversationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INSendMessageIntent *)self _typedBackingStore];
  [v5 setAlternativeConversationIdentifier:v4];
}

- (void)setNotificationThreadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INSendMessageIntent *)self _typedBackingStore];
  [v5 setNotificationThreadIdentifier:v4];
}

- (void)setAttachments:(id)a3
{
  v4 = a3;
  v6 = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSendMessageAttachments(v4);

  [v6 setAttachments:v5];
}

- (void)setEffect:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 0xC)
  {
    [v4 setHasEffect:0];
  }

  else
  {
    [v4 setEffect:?];
  }
}

- (void)setSender:(id)a3
{
  v4 = a3;
  v6 = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContact(v4);

  [v6 setSender:v5];
}

- (void)setServiceName:(id)a3
{
  v4 = a3;
  v5 = [(INSendMessageIntent *)self _typedBackingStore];
  [v5 setServiceName:v4];
}

- (void)setConversationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INSendMessageIntent *)self _typedBackingStore];
  [v5 setConversationIdentifier:v4];
}

- (void)setSpeakableGroupName:(id)a3
{
  v4 = a3;
  v6 = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setSpeakableGroupName:v5];
}

- (void)setContent:(id)a3
{
  v4 = a3;
  v6 = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setContent:v5];
}

- (void)setOutgoingMessageType:(int64_t)a3
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

  v5 = [(INSendMessageIntent *)self _typedBackingStore];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasOutgoingMessageType:0];
  }

  else
  {
    [v5 setOutgoingMessageType:v4];
  }
}

- (void)setRecipients:(id)a3
{
  v4 = a3;
  v6 = [(INSendMessageIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(v4);

  [v6 setRecipients:v5];
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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSendMessageIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (void)_intents_resolveOutgoingMessageTypeWithCompletionHandler:(id)a3
{
  v8 = a3;
  v4 = [(INSendMessageIntent *)self outgoingMessageType];
  if (v4 == INOutgoingMessageTypeOutgoingMessageAudio)
  {
    v6 = +[INIntentResolutionResult unsupported];
    goto LABEL_7;
  }

  if (v4 == INOutgoingMessageTypeOutgoingMessageText)
  {
    v6 = [INOutgoingMessageTypeResolutionResult successWithResolvedOutgoingMessageType:1];
LABEL_7:
    v7 = v6;
    v8[2](v8, v6);

    goto LABEL_8;
  }

  v5 = v8;
  if (v4)
  {
    goto LABEL_9;
  }

  v4 = (v8[2])(v8, 0);
LABEL_8:
  v5 = v8;
LABEL_9:

  MEMORY[0x1EEE66BB8](v4, v5);
}

@end