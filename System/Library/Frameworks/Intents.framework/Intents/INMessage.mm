@interface INMessage
- (BOOL)_intents_enumerateObjectsOfClass:(Class)class withBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (INImage)_keyImage;
- (INMessage)initWithCoder:(id)coder;
- (INMessage)initWithIdentifier:(NSString *)identifier conversationIdentifier:(NSString *)conversationIdentifier content:(NSString *)content dateSent:(NSDate *)dateSent sender:(INPerson *)sender recipients:(NSArray *)recipients groupName:(INSpeakableString *)groupName messageType:(INMessageType)messageType;
- (INMessage)initWithIdentifier:(NSString *)identifier conversationIdentifier:(NSString *)conversationIdentifier content:(NSString *)content dateSent:(NSDate *)dateSent sender:(INPerson *)sender recipients:(NSArray *)recipients groupName:(INSpeakableString *)groupName messageType:(INMessageType)messageType serviceName:(NSString *)serviceName;
- (INMessage)initWithIdentifier:(NSString *)identifier conversationIdentifier:(NSString *)conversationIdentifier content:(NSString *)content dateSent:(NSDate *)dateSent sender:(INPerson *)sender recipients:(NSArray *)recipients groupName:(INSpeakableString *)groupName messageType:(INMessageType)messageType serviceName:(NSString *)serviceName attachmentFiles:(NSArray *)attachmentFiles;
- (INMessage)initWithIdentifier:(NSString *)identifier conversationIdentifier:(NSString *)conversationIdentifier content:(NSString *)content dateSent:(NSDate *)dateSent sender:(INPerson *)sender recipients:(NSArray *)recipients groupName:(INSpeakableString *)groupName messageType:(INMessageType)messageType serviceName:(NSString *)serviceName audioMessageFile:(INFile *)audioMessageFile;
- (INMessage)initWithIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier content:(id)content dateSent:(id)sent sender:(id)sender recipients:(id)recipients groupName:(id)name dateMessageWasLastRead:(id)self0 numberOfAttachments:(id)self1 messageType:(int64_t)self2 messageEffectType:(int64_t)self3 referencedMessage:(id)self4 serviceName:(id)self5 attachmentFiles:(id)self6 location:(id)self7 linkMetadata:(id)self8 reaction:(id)self9 sticker:(id)sticker;
- (INMessage)initWithIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier content:(id)content dateSent:(id)sent sender:(id)sender recipients:(id)recipients groupName:(id)name dateMessageWasLastRead:(id)self0 numberOfAttachments:(id)self1 messageType:(int64_t)self2 messageEffectType:(int64_t)self3 referencedMessage:(id)self4 serviceName:(id)self5 attachmentFiles:(id)self6 location:(id)self7 linkMetadata:(id)self8 reaction:(id)self9 sticker:(id)sticker inlineGlyphContent:(id)glyphContent;
- (INMessage)initWithIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier content:(id)content dateSent:(id)sent sender:(id)sender recipients:(id)recipients groupName:(id)name dateMessageWasLastRead:(id)self0 numberOfAttachments:(id)self1 messageType:(int64_t)self2 messageEffectType:(int64_t)self3 referencedMessage:(id)self4 serviceName:(id)self5 attachmentFiles:(id)self6 location:(id)self7 linkMetadata:(id)self8 reaction:(id)self9 sticker:(id)sticker inlineGlyphContent:(id)glyphContent translatedToLanguage:(id)language;
- (INMessage)initWithIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier content:(id)content dateSent:(id)sent sender:(id)sender recipients:(id)recipients groupName:(id)name dateMessageWasLastRead:(id)self0 numberOfAttachments:(id)self1 messageType:(int64_t)self2 messageEffectType:(int64_t)self3 referencedMessage:(id)self4 serviceName:(id)self5 audioMessageFile:(id)self6;
- (INMessage)initWithIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier content:(id)content dateSent:(id)sent sender:(id)sender recipients:(id)recipients groupName:(id)name dateMessageWasLastRead:(id)self0 numberOfAttachments:(id)self1 messageType:(int64_t)self2 messageEffectType:(int64_t)self3 referencedMessage:(id)self4 serviceName:(id)self5 reaction:(id)self6 attachmentFiles:(id)self7 location:(id)self8 linkMetadata:(id)self9;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_redactedDictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (int64_t)_compareSubProducerOne:(id)one subProducerTwo:(id)two;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INMessage

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_conversationIdentifier hash]^ v3;
  v5 = [(NSString *)self->_content hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_dateSent hash];
  v7 = [(INPerson *)self->_sender hash];
  v8 = v7 ^ [(NSArray *)self->_recipients hash];
  v9 = v6 ^ v8 ^ [(INSpeakableString *)self->_groupName hash];
  v10 = [(NSDate *)self->_dateMessageWasLastRead hash];
  v11 = v10 ^ [(NSNumber *)self->_numberOfAttachments hash];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_messageType];
  v13 = v9 ^ v11 ^ [v12 hash];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_messageEffectType];
  v15 = [v14 hash];
  v16 = v15 ^ [(INMessage *)self->_referencedMessage hash];
  v17 = v13 ^ v16 ^ [(NSString *)self->_serviceName hash];
  v18 = [(NSArray *)self->_attachmentFiles hash];
  v19 = v18 ^ [(INMessageReaction *)self->_reaction hash];
  v20 = v19 ^ [(CLPlacemark *)self->_location hash];
  v21 = v20 ^ [(INMessageLinkMetadata *)self->_linkMetadata hash];

  return v17 ^ v21;
}

- (id)_intents_cacheableObjects
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  sender = [(INMessage *)self sender];
  v5 = sender;
  if (sender)
  {
    _intents_cacheableObjects = [sender _intents_cacheableObjects];
    if ([_intents_cacheableObjects count])
    {
      [v3 unionSet:_intents_cacheableObjects];
    }
  }

  recipients = [(INMessage *)self recipients];
  if ([recipients count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = recipients;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          _intents_cacheableObjects2 = [*(*(&v18 + 1) + 8 * v12) _intents_cacheableObjects];
          if ([_intents_cacheableObjects2 count])
          {
            [v3 unionSet:_intents_cacheableObjects2];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  if ([v3 count])
  {
    v14 = v3;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_intents_updateContainerWithCache:(id)cache
{
  v17 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  sender = [(INMessage *)self sender];
  [sender _intents_updateContainerWithCache:cacheCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  recipients = [(INMessage *)self recipients];
  v7 = [recipients countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(recipients);
        }

        [*(*(&v12 + 1) + 8 * v10++) _intents_updateContainerWithCache:cacheCopy];
      }

      while (v8 != v10);
      v8 = [recipients countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_dictionaryRepresentation
{
  v28[8] = *MEMORY[0x1E69E9840];
  identifier = self->_identifier;
  null = identifier;
  v27[0] = @"identifier";
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28[0] = null;
  v27[1] = @"conversationIdentifier";
  conversationIdentifier = self->_conversationIdentifier;
  v24 = conversationIdentifier;
  if (!conversationIdentifier)
  {
    conversationIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v23 = conversationIdentifier;
  v28[1] = conversationIdentifier;
  v27[2] = @"content";
  content = self->_content;
  null2 = content;
  if (!content)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null2;
  v28[2] = null2;
  v27[3] = @"dateSent";
  dateSent = self->_dateSent;
  null3 = dateSent;
  if (!dateSent)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v21 = null3;
  v28[3] = null3;
  v27[4] = @"sender";
  sender = self->_sender;
  null4 = sender;
  if (!sender)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null4;
  v28[4] = null4;
  v27[5] = @"recipients";
  recipients = self->_recipients;
  null5 = recipients;
  if (!recipients)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null5;
  v27[6] = @"groupName";
  groupName = self->_groupName;
  null6 = groupName;
  if (!groupName)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = null6;
  v27[7] = @"linkMetadata";
  linkMetadata = self->_linkMetadata;
  null7 = linkMetadata;
  if (!linkMetadata)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (linkMetadata)
  {
    if (groupName)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (groupName)
    {
LABEL_19:
      if (recipients)
      {
        goto LABEL_20;
      }

LABEL_32:

      if (sender)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }
  }

  if (!recipients)
  {
    goto LABEL_32;
  }

LABEL_20:
  if (sender)
  {
    goto LABEL_21;
  }

LABEL_33:

LABEL_21:
  if (dateSent)
  {
    if (content)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (content)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if (!v24)
  {
  }

  if (!identifier)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMessage;
  v6 = [(INMessage *)&v11 description];
  _redactedDictionaryRepresentation = [(INMessage *)self _redactedDictionaryRepresentation];
  v8 = [_redactedDictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_redactedDictionaryRepresentation
{
  _dictionaryRepresentation = [(INMessage *)self _dictionaryRepresentation];
  v3 = [_dictionaryRepresentation mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"content"];

  return v3;
}

- (INMessage)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationIdentifier"];
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateSent"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v4 = MEMORY[0x1E695DFD8];
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v6 = [v4 setWithArray:v5];
  v24 = [coderCopy decodeObjectOfClasses:v6 forKey:@"recipients"];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateMessageWasLastRead"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfAttachments"];
  v20 = [coderCopy decodeIntegerForKey:@"messageType"];
  v8 = [coderCopy decodeIntegerForKey:@"messageEffectType"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referencedMessage"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioMessageFile"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachmentFiles"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reaction"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkMetadata"];

  if (v11)
  {
    v16 = [MEMORY[0x1E695DEC8] arrayWithObject:v11];
    v17 = [(INMessage *)self initWithIdentifier:v29 conversationIdentifier:v28 content:v27 dateSent:v26 sender:v25 recipients:v24 groupName:v23 dateMessageWasLastRead:v22 numberOfAttachments:v7 messageType:v20 messageEffectType:v8 referencedMessage:v9 serviceName:v10 reaction:v13 attachmentFiles:v16 location:v14 linkMetadata:v15];
  }

  else
  {
    v17 = [(INMessage *)self initWithIdentifier:v29 conversationIdentifier:v28 content:v27 dateSent:v26 sender:v25 recipients:v24 groupName:v23 dateMessageWasLastRead:v22 numberOfAttachments:v7 messageType:v20 messageEffectType:v8 referencedMessage:v9 serviceName:v10 reaction:v13 attachmentFiles:v12 location:v14 linkMetadata:v15];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_conversationIdentifier forKey:@"conversationIdentifier"];
  [coderCopy encodeObject:self->_content forKey:@"content"];
  [coderCopy encodeObject:self->_dateSent forKey:@"dateSent"];
  [coderCopy encodeObject:self->_sender forKey:@"sender"];
  [coderCopy encodeObject:self->_recipients forKey:@"recipients"];
  [coderCopy encodeObject:self->_groupName forKey:@"groupName"];
  [coderCopy encodeObject:self->_dateMessageWasLastRead forKey:@"dateMessageWasLastRead"];
  [coderCopy encodeObject:self->_numberOfAttachments forKey:@"numberOfAttachments"];
  [coderCopy encodeInteger:self->_messageType forKey:@"messageType"];
  [coderCopy encodeInteger:self->_messageEffectType forKey:@"messageEffectType"];
  [coderCopy encodeObject:self->_referencedMessage forKey:@"referencedMessage"];
  [coderCopy encodeObject:self->_serviceName forKey:@"serviceName"];
  [coderCopy encodeObject:self->_reaction forKey:@"reaction"];
  [coderCopy encodeObject:self->_attachmentFiles forKey:@"attachmentFiles"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_linkMetadata forKey:@"linkMetadata"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      if (identifier != v5->_identifier && ![(NSString *)identifier isEqual:?])
      {
        goto LABEL_38;
      }

      conversationIdentifier = self->_conversationIdentifier;
      if (conversationIdentifier != v5->_conversationIdentifier && ![(NSString *)conversationIdentifier isEqual:?])
      {
        goto LABEL_38;
      }

      content = self->_content;
      if (content != v5->_content && ![(NSString *)content isEqual:?])
      {
        goto LABEL_38;
      }

      dateSent = self->_dateSent;
      if (dateSent != v5->_dateSent && ![(NSDate *)dateSent isEqual:?])
      {
        goto LABEL_38;
      }

      sender = self->_sender;
      if (sender != v5->_sender && ![(INPerson *)sender isEqual:?])
      {
        goto LABEL_38;
      }

      recipients = self->_recipients;
      if (recipients != v5->_recipients && ![(NSArray *)recipients isEqual:?])
      {
        goto LABEL_38;
      }

      groupName = self->_groupName;
      if (groupName != v5->_groupName && ![(INSpeakableString *)groupName isEqual:?])
      {
        goto LABEL_38;
      }

      dateMessageWasLastRead = self->_dateMessageWasLastRead;
      if (dateMessageWasLastRead != v5->_dateMessageWasLastRead && ![(NSDate *)dateMessageWasLastRead isEqual:?])
      {
        goto LABEL_38;
      }

      if (((numberOfAttachments = self->_numberOfAttachments, numberOfAttachments == v5->_numberOfAttachments) || [(NSNumber *)numberOfAttachments isEqual:?]) && self->_messageType == v5->_messageType && self->_messageEffectType == v5->_messageEffectType && ((referencedMessage = self->_referencedMessage, referencedMessage == v5->_referencedMessage) || [(INMessage *)referencedMessage isEqual:?]) && ((serviceName = self->_serviceName, serviceName == v5->_serviceName) || [(NSString *)serviceName isEqual:?]) && ((reaction = self->_reaction, reaction == v5->_reaction) || [(INMessageReaction *)reaction isEqual:?]) && ((attachmentFiles = self->_attachmentFiles, attachmentFiles == v5->_attachmentFiles) || [(NSArray *)attachmentFiles isEqual:?]) && ((location = self->_location, location == v5->_location) || [(CLPlacemark *)location isEqual:?]) && ((linkMetadata = self->_linkMetadata, linkMetadata == v5->_linkMetadata) || [(INMessageLinkMetadata *)linkMetadata isEqual:?]))
      {
        v21 = 1;
      }

      else
      {
LABEL_38:
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (INMessage)initWithIdentifier:(NSString *)identifier conversationIdentifier:(NSString *)conversationIdentifier content:(NSString *)content dateSent:(NSDate *)dateSent sender:(INPerson *)sender recipients:(NSArray *)recipients groupName:(INSpeakableString *)groupName messageType:(INMessageType)messageType serviceName:(NSString *)serviceName attachmentFiles:(NSArray *)attachmentFiles
{
  v29 = MEMORY[0x1E696AD98];
  v18 = attachmentFiles;
  v19 = serviceName;
  v20 = groupName;
  v21 = recipients;
  v22 = sender;
  v23 = dateSent;
  v24 = content;
  v25 = conversationIdentifier;
  v26 = identifier;
  v27 = [v29 numberWithUnsignedLong:{-[NSArray count](v18, "count")}];
  v31 = [(INMessage *)self initWithIdentifier:v26 conversationIdentifier:v25 content:v24 dateSent:v23 sender:v22 recipients:v21 groupName:v20 dateMessageWasLastRead:0 numberOfAttachments:v27 messageType:messageType messageEffectType:0 referencedMessage:0 serviceName:v19 reaction:0 attachmentFiles:v18 location:0 linkMetadata:0];

  return v31;
}

- (INMessage)initWithIdentifier:(NSString *)identifier conversationIdentifier:(NSString *)conversationIdentifier content:(NSString *)content dateSent:(NSDate *)dateSent sender:(INPerson *)sender recipients:(NSArray *)recipients groupName:(INSpeakableString *)groupName messageType:(INMessageType)messageType serviceName:(NSString *)serviceName audioMessageFile:(INFile *)audioMessageFile
{
  v18 = identifier;
  v19 = conversationIdentifier;
  v20 = v18;
  v21 = v19;
  v22 = content;
  v23 = v21;
  v24 = v22;
  v25 = dateSent;
  v26 = v24;
  v27 = v25;
  v28 = sender;
  v29 = v27;
  v30 = v28;
  v31 = recipients;
  v32 = groupName;
  v33 = serviceName;
  v34 = audioMessageFile;
  v65.receiver = self;
  v65.super_class = INMessage;
  v35 = [(INMessage *)&v65 init];
  if (v35)
  {
    v64 = v32;
    v36 = [(NSString *)v20 copy];
    v37 = v35->_identifier;
    v35->_identifier = v36;

    v38 = [(NSString *)v23 copy];
    v39 = v35->_conversationIdentifier;
    v35->_conversationIdentifier = v38;

    v40 = [(NSString *)v26 copy];
    v41 = v35->_content;
    v35->_content = v40;

    v42 = [(NSDate *)v29 copy];
    v43 = v35->_dateSent;
    v35->_dateSent = v42;

    v44 = [(INPerson *)v30 copy];
    v45 = v35->_sender;
    v35->_sender = v44;

    v63 = v31;
    v46 = [(NSArray *)v31 copy];
    v47 = v35->_recipients;
    v35->_recipients = v46;

    v48 = [(INSpeakableString *)v32 copy];
    v49 = v35->_groupName;
    v35->_groupName = v48;

    v35->_messageType = messageType;
    v35->_messageEffectType = 0;
    v50 = [(NSString *)v33 copy];
    v51 = v35->_serviceName;
    v35->_serviceName = v50;

    if (v34)
    {
      v52 = v30;
      v53 = v29;
      v54 = v26;
      v55 = v23;
      v56 = v20;
      v57 = MEMORY[0x1E695DEC8];
      v58 = [(INFile *)v34 copy];
      v59 = v57;
      v20 = v56;
      v23 = v55;
      v26 = v54;
      v29 = v53;
      v30 = v52;
      v32 = v64;
      v60 = [v59 arrayWithObject:v58];
      attachmentFiles = v35->_attachmentFiles;
      v35->_attachmentFiles = v60;
    }

    else
    {
      v58 = v35->_attachmentFiles;
      v35->_attachmentFiles = 0;
    }

    v31 = v63;
  }

  return v35;
}

- (INMessage)initWithIdentifier:(NSString *)identifier conversationIdentifier:(NSString *)conversationIdentifier content:(NSString *)content dateSent:(NSDate *)dateSent sender:(INPerson *)sender recipients:(NSArray *)recipients groupName:(INSpeakableString *)groupName messageType:(INMessageType)messageType serviceName:(NSString *)serviceName
{
  v17 = identifier;
  v18 = conversationIdentifier;
  v19 = content;
  v20 = dateSent;
  v21 = sender;
  v22 = recipients;
  v23 = groupName;
  v24 = serviceName;
  v43.receiver = self;
  v43.super_class = INMessage;
  v25 = [(INMessage *)&v43 init];
  if (v25)
  {
    v26 = [(NSString *)v17 copy];
    v27 = v25->_identifier;
    v25->_identifier = v26;

    v28 = [(NSString *)v18 copy];
    v29 = v25->_conversationIdentifier;
    v25->_conversationIdentifier = v28;

    v30 = [(NSString *)v19 copy];
    v31 = v25->_content;
    v25->_content = v30;

    v32 = [(NSDate *)v20 copy];
    v33 = v25->_dateSent;
    v25->_dateSent = v32;

    v34 = [(INPerson *)v21 copy];
    v35 = v25->_sender;
    v25->_sender = v34;

    v36 = [(NSArray *)v22 copy];
    v37 = v25->_recipients;
    v25->_recipients = v36;

    v38 = [(INSpeakableString *)v23 copy];
    v39 = v25->_groupName;
    v25->_groupName = v38;

    v25->_messageType = messageType;
    v25->_messageEffectType = 0;
    v40 = [(NSString *)v24 copy];
    v41 = v25->_serviceName;
    v25->_serviceName = v40;
  }

  return v25;
}

- (INMessage)initWithIdentifier:(NSString *)identifier conversationIdentifier:(NSString *)conversationIdentifier content:(NSString *)content dateSent:(NSDate *)dateSent sender:(INPerson *)sender recipients:(NSArray *)recipients groupName:(INSpeakableString *)groupName messageType:(INMessageType)messageType
{
  v16 = identifier;
  v17 = conversationIdentifier;
  v18 = content;
  v19 = dateSent;
  v20 = sender;
  v21 = recipients;
  v22 = groupName;
  v39.receiver = self;
  v39.super_class = INMessage;
  v23 = [(INMessage *)&v39 init];
  if (v23)
  {
    v24 = [(NSString *)v16 copy];
    v25 = v23->_identifier;
    v23->_identifier = v24;

    v26 = [(NSString *)v17 copy];
    v27 = v23->_conversationIdentifier;
    v23->_conversationIdentifier = v26;

    v28 = [(NSString *)v18 copy];
    v29 = v23->_content;
    v23->_content = v28;

    v30 = [(NSDate *)v19 copy];
    v31 = v23->_dateSent;
    v23->_dateSent = v30;

    v32 = [(INPerson *)v20 copy];
    v33 = v23->_sender;
    v23->_sender = v32;

    v34 = [(NSArray *)v21 copy];
    v35 = v23->_recipients;
    v23->_recipients = v34;

    v36 = [(INSpeakableString *)v22 copy];
    v37 = v23->_groupName;
    v23->_groupName = v36;

    v23->_messageType = messageType;
    v23->_messageEffectType = 0;
  }

  return v23;
}

- (INMessage)initWithIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier content:(id)content dateSent:(id)sent sender:(id)sender recipients:(id)recipients groupName:(id)name dateMessageWasLastRead:(id)self0 numberOfAttachments:(id)self1 messageType:(int64_t)self2 messageEffectType:(int64_t)self3 referencedMessage:(id)self4 serviceName:(id)self5 audioMessageFile:(id)self6
{
  identifierCopy = identifier;
  conversationIdentifierCopy = conversationIdentifier;
  contentCopy = content;
  sentCopy = sent;
  senderCopy = sender;
  recipientsCopy = recipients;
  nameCopy = name;
  readCopy = read;
  attachmentsCopy = attachments;
  messageCopy = message;
  serviceNameCopy = serviceName;
  fileCopy = file;
  v64.receiver = self;
  v64.super_class = INMessage;
  v30 = [(INMessage *)&v64 init];
  if (v30)
  {
    v31 = [identifierCopy copy];
    identifier = v30->_identifier;
    v30->_identifier = v31;

    v33 = [conversationIdentifierCopy copy];
    conversationIdentifier = v30->_conversationIdentifier;
    v30->_conversationIdentifier = v33;

    v35 = [contentCopy copy];
    content = v30->_content;
    v30->_content = v35;

    v37 = [sentCopy copy];
    dateSent = v30->_dateSent;
    v30->_dateSent = v37;

    v39 = [senderCopy copy];
    sender = v30->_sender;
    v30->_sender = v39;

    v59 = recipientsCopy;
    v41 = [recipientsCopy copy];
    recipients = v30->_recipients;
    v30->_recipients = v41;

    v43 = [nameCopy copy];
    groupName = v30->_groupName;
    v30->_groupName = v43;

    v58 = readCopy;
    v45 = [readCopy copy];
    dateMessageWasLastRead = v30->_dateMessageWasLastRead;
    v30->_dateMessageWasLastRead = v45;

    v47 = [attachmentsCopy copy];
    numberOfAttachments = v30->_numberOfAttachments;
    v30->_numberOfAttachments = v47;

    v30->_messageType = type;
    v30->_messageEffectType = effectType;
    v49 = [messageCopy copy];
    referencedMessage = v30->_referencedMessage;
    v30->_referencedMessage = v49;

    v51 = [serviceNameCopy copy];
    serviceName = v30->_serviceName;
    v30->_serviceName = v51;

    if (fileCopy)
    {
      v53 = MEMORY[0x1E695DEC8];
      v54 = [fileCopy copy];
      v55 = [v53 arrayWithObject:v54];
      attachmentFiles = v30->_attachmentFiles;
      v30->_attachmentFiles = v55;
    }

    else
    {
      v54 = v30->_attachmentFiles;
      v30->_attachmentFiles = 0;
    }

    recipientsCopy = v59;
    readCopy = v58;
  }

  return v30;
}

- (INMessage)initWithIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier content:(id)content dateSent:(id)sent sender:(id)sender recipients:(id)recipients groupName:(id)name dateMessageWasLastRead:(id)self0 numberOfAttachments:(id)self1 messageType:(int64_t)self2 messageEffectType:(int64_t)self3 referencedMessage:(id)self4 serviceName:(id)self5 reaction:(id)self6 attachmentFiles:(id)self7 location:(id)self8 linkMetadata:(id)self9
{
  identifierCopy = identifier;
  conversationIdentifierCopy = conversationIdentifier;
  contentCopy = content;
  sentCopy = sent;
  senderCopy = sender;
  recipientsCopy = recipients;
  nameCopy = name;
  readCopy = read;
  attachmentsCopy = attachments;
  messageCopy = message;
  serviceNameCopy = serviceName;
  reactionCopy = reaction;
  filesCopy = files;
  locationCopy = location;
  metadataCopy = metadata;
  v72.receiver = self;
  v72.super_class = INMessage;
  v32 = [(INMessage *)&v72 init];
  if (v32)
  {
    v33 = [identifierCopy copy];
    identifier = v32->_identifier;
    v32->_identifier = v33;

    v35 = [conversationIdentifierCopy copy];
    conversationIdentifier = v32->_conversationIdentifier;
    v32->_conversationIdentifier = v35;

    v37 = [contentCopy copy];
    content = v32->_content;
    v32->_content = v37;

    v39 = [sentCopy copy];
    dateSent = v32->_dateSent;
    v32->_dateSent = v39;

    v41 = [senderCopy copy];
    sender = v32->_sender;
    v32->_sender = v41;

    v43 = [recipientsCopy copy];
    recipients = v32->_recipients;
    v32->_recipients = v43;

    v45 = [nameCopy copy];
    groupName = v32->_groupName;
    v32->_groupName = v45;

    v47 = [readCopy copy];
    dateMessageWasLastRead = v32->_dateMessageWasLastRead;
    v32->_dateMessageWasLastRead = v47;

    v49 = [attachmentsCopy copy];
    numberOfAttachments = v32->_numberOfAttachments;
    v32->_numberOfAttachments = v49;

    v32->_messageType = type;
    v32->_messageEffectType = effectType;
    v51 = [messageCopy copy];
    referencedMessage = v32->_referencedMessage;
    v32->_referencedMessage = v51;

    v53 = [serviceNameCopy copy];
    serviceName = v32->_serviceName;
    v32->_serviceName = v53;

    v55 = [reactionCopy copy];
    reaction = v32->_reaction;
    v32->_reaction = v55;

    v57 = [filesCopy copy];
    attachmentFiles = v32->_attachmentFiles;
    v32->_attachmentFiles = v57;

    v59 = [locationCopy copy];
    location = v32->_location;
    v32->_location = v59;

    v61 = [metadataCopy copy];
    linkMetadata = v32->_linkMetadata;
    v32->_linkMetadata = v61;
  }

  return v32;
}

- (INMessage)initWithIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier content:(id)content dateSent:(id)sent sender:(id)sender recipients:(id)recipients groupName:(id)name dateMessageWasLastRead:(id)self0 numberOfAttachments:(id)self1 messageType:(int64_t)self2 messageEffectType:(int64_t)self3 referencedMessage:(id)self4 serviceName:(id)self5 attachmentFiles:(id)self6 location:(id)self7 linkMetadata:(id)self8 reaction:(id)self9 sticker:(id)sticker
{
  identifierCopy = identifier;
  conversationIdentifierCopy = conversationIdentifier;
  contentCopy = content;
  sentCopy = sent;
  senderCopy = sender;
  recipientsCopy = recipients;
  nameCopy = name;
  readCopy = read;
  attachmentsCopy = attachments;
  messageCopy = message;
  serviceNameCopy = serviceName;
  filesCopy = files;
  locationCopy = location;
  metadataCopy = metadata;
  reactionCopy = reaction;
  stickerCopy = sticker;
  v76.receiver = self;
  v76.super_class = INMessage;
  v34 = [(INMessage *)&v76 init];
  if (v34)
  {
    v35 = [identifierCopy copy];
    identifier = v34->_identifier;
    v34->_identifier = v35;

    v37 = [conversationIdentifierCopy copy];
    conversationIdentifier = v34->_conversationIdentifier;
    v34->_conversationIdentifier = v37;

    v39 = [contentCopy copy];
    content = v34->_content;
    v34->_content = v39;

    v41 = [sentCopy copy];
    dateSent = v34->_dateSent;
    v34->_dateSent = v41;

    v43 = [senderCopy copy];
    sender = v34->_sender;
    v34->_sender = v43;

    v45 = [recipientsCopy copy];
    recipients = v34->_recipients;
    v34->_recipients = v45;

    v47 = [nameCopy copy];
    groupName = v34->_groupName;
    v34->_groupName = v47;

    v49 = [readCopy copy];
    dateMessageWasLastRead = v34->_dateMessageWasLastRead;
    v34->_dateMessageWasLastRead = v49;

    v51 = [attachmentsCopy copy];
    numberOfAttachments = v34->_numberOfAttachments;
    v34->_numberOfAttachments = v51;

    v34->_messageType = type;
    v34->_messageEffectType = effectType;
    v53 = [messageCopy copy];
    referencedMessage = v34->_referencedMessage;
    v34->_referencedMessage = v53;

    v55 = [serviceNameCopy copy];
    serviceName = v34->_serviceName;
    v34->_serviceName = v55;

    v57 = [filesCopy copy];
    attachmentFiles = v34->_attachmentFiles;
    v34->_attachmentFiles = v57;

    v59 = [locationCopy copy];
    location = v34->_location;
    v34->_location = v59;

    v61 = [metadataCopy copy];
    linkMetadata = v34->_linkMetadata;
    v34->_linkMetadata = v61;

    v63 = [reactionCopy copy];
    reaction = v34->_reaction;
    v34->_reaction = v63;

    v65 = [stickerCopy copy];
    sticker = v34->_sticker;
    v34->_sticker = v65;
  }

  return v34;
}

- (INMessage)initWithIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier content:(id)content dateSent:(id)sent sender:(id)sender recipients:(id)recipients groupName:(id)name dateMessageWasLastRead:(id)self0 numberOfAttachments:(id)self1 messageType:(int64_t)self2 messageEffectType:(int64_t)self3 referencedMessage:(id)self4 serviceName:(id)self5 attachmentFiles:(id)self6 location:(id)self7 linkMetadata:(id)self8 reaction:(id)self9 sticker:(id)sticker inlineGlyphContent:(id)glyphContent
{
  identifierCopy = identifier;
  conversationIdentifierCopy = conversationIdentifier;
  contentCopy = content;
  sentCopy = sent;
  senderCopy = sender;
  recipientsCopy = recipients;
  nameCopy = name;
  readCopy = read;
  attachmentsCopy = attachments;
  messageCopy = message;
  serviceNameCopy = serviceName;
  filesCopy = files;
  locationCopy = location;
  metadataCopy = metadata;
  reactionCopy = reaction;
  stickerCopy = sticker;
  glyphContentCopy = glyphContent;
  v80.receiver = self;
  v80.super_class = INMessage;
  v35 = [(INMessage *)&v80 init];
  if (v35)
  {
    v36 = [identifierCopy copy];
    identifier = v35->_identifier;
    v35->_identifier = v36;

    v38 = [conversationIdentifierCopy copy];
    conversationIdentifier = v35->_conversationIdentifier;
    v35->_conversationIdentifier = v38;

    v40 = [contentCopy copy];
    content = v35->_content;
    v35->_content = v40;

    v42 = [sentCopy copy];
    dateSent = v35->_dateSent;
    v35->_dateSent = v42;

    v44 = [senderCopy copy];
    sender = v35->_sender;
    v35->_sender = v44;

    v46 = [recipientsCopy copy];
    recipients = v35->_recipients;
    v35->_recipients = v46;

    v48 = [nameCopy copy];
    groupName = v35->_groupName;
    v35->_groupName = v48;

    v50 = [readCopy copy];
    dateMessageWasLastRead = v35->_dateMessageWasLastRead;
    v35->_dateMessageWasLastRead = v50;

    v52 = [attachmentsCopy copy];
    numberOfAttachments = v35->_numberOfAttachments;
    v35->_numberOfAttachments = v52;

    v35->_messageType = type;
    v35->_messageEffectType = effectType;
    v54 = [messageCopy copy];
    referencedMessage = v35->_referencedMessage;
    v35->_referencedMessage = v54;

    v56 = [serviceNameCopy copy];
    serviceName = v35->_serviceName;
    v35->_serviceName = v56;

    v58 = [filesCopy copy];
    attachmentFiles = v35->_attachmentFiles;
    v35->_attachmentFiles = v58;

    v60 = [locationCopy copy];
    location = v35->_location;
    v35->_location = v60;

    v62 = [metadataCopy copy];
    linkMetadata = v35->_linkMetadata;
    v35->_linkMetadata = v62;

    v64 = [reactionCopy copy];
    reaction = v35->_reaction;
    v35->_reaction = v64;

    v66 = [stickerCopy copy];
    sticker = v35->_sticker;
    v35->_sticker = v66;

    v68 = [glyphContentCopy copy];
    inlineGlyphContent = v35->_inlineGlyphContent;
    v35->_inlineGlyphContent = v68;
  }

  return v35;
}

- (INMessage)initWithIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier content:(id)content dateSent:(id)sent sender:(id)sender recipients:(id)recipients groupName:(id)name dateMessageWasLastRead:(id)self0 numberOfAttachments:(id)self1 messageType:(int64_t)self2 messageEffectType:(int64_t)self3 referencedMessage:(id)self4 serviceName:(id)self5 attachmentFiles:(id)self6 location:(id)self7 linkMetadata:(id)self8 reaction:(id)self9 sticker:(id)sticker inlineGlyphContent:(id)glyphContent translatedToLanguage:(id)language
{
  identifierCopy = identifier;
  conversationIdentifierCopy = conversationIdentifier;
  contentCopy = content;
  sentCopy = sent;
  senderCopy = sender;
  recipientsCopy = recipients;
  nameCopy = name;
  readCopy = read;
  attachmentsCopy = attachments;
  messageCopy = message;
  serviceNameCopy = serviceName;
  filesCopy = files;
  locationCopy = location;
  metadataCopy = metadata;
  reactionCopy = reaction;
  stickerCopy = sticker;
  glyphContentCopy = glyphContent;
  languageCopy = language;
  v84.receiver = self;
  v84.super_class = INMessage;
  v36 = [(INMessage *)&v84 init];
  if (v36)
  {
    v37 = [identifierCopy copy];
    identifier = v36->_identifier;
    v36->_identifier = v37;

    v39 = [conversationIdentifierCopy copy];
    conversationIdentifier = v36->_conversationIdentifier;
    v36->_conversationIdentifier = v39;

    v41 = [contentCopy copy];
    content = v36->_content;
    v36->_content = v41;

    v43 = [sentCopy copy];
    dateSent = v36->_dateSent;
    v36->_dateSent = v43;

    v45 = [senderCopy copy];
    sender = v36->_sender;
    v36->_sender = v45;

    v47 = [recipientsCopy copy];
    recipients = v36->_recipients;
    v36->_recipients = v47;

    v49 = [nameCopy copy];
    groupName = v36->_groupName;
    v36->_groupName = v49;

    v51 = [readCopy copy];
    dateMessageWasLastRead = v36->_dateMessageWasLastRead;
    v36->_dateMessageWasLastRead = v51;

    v53 = [attachmentsCopy copy];
    numberOfAttachments = v36->_numberOfAttachments;
    v36->_numberOfAttachments = v53;

    v36->_messageType = type;
    v36->_messageEffectType = effectType;
    v55 = [messageCopy copy];
    referencedMessage = v36->_referencedMessage;
    v36->_referencedMessage = v55;

    v57 = [serviceNameCopy copy];
    serviceName = v36->_serviceName;
    v36->_serviceName = v57;

    v59 = [filesCopy copy];
    attachmentFiles = v36->_attachmentFiles;
    v36->_attachmentFiles = v59;

    v61 = [locationCopy copy];
    location = v36->_location;
    v36->_location = v61;

    v63 = [metadataCopy copy];
    linkMetadata = v36->_linkMetadata;
    v36->_linkMetadata = v63;

    v65 = [reactionCopy copy];
    reaction = v36->_reaction;
    v36->_reaction = v65;

    v67 = [stickerCopy copy];
    sticker = v36->_sticker;
    v36->_sticker = v67;

    v69 = [glyphContentCopy copy];
    inlineGlyphContent = v36->_inlineGlyphContent;
    v36->_inlineGlyphContent = v69;

    v71 = [languageCopy copy];
    translatedToLanguage = v36->_translatedToLanguage;
    v36->_translatedToLanguage = v71;
  }

  return v36;
}

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [(INMessage *)self copy];
    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v10 = INImageProxyInjectionQueue();
    [v9 setUnderlyingQueue:v10];

    [v9 setMaxConcurrentOperationCount:1];
    [v9 setSuspended:1];
    v11 = MEMORY[0x1E696AAE0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__INMessage_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
    v19[3] = &unk_1E7287140;
    v19[4] = v8;
    v20 = completionCopy;
    v12 = [v11 blockOperationWithBlock:v19];
    recipients = [(INMessage *)self recipients];
    if (recipients)
    {
      v14 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v14 setInjector:recipients];
      [(INImageProxyInjectionOperation *)v14 setImageProxyRequestBlock:imagesCopy];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __71__INMessage_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2;
      v18[3] = &unk_1E7285B78;
      v18[4] = v8;
      [(INImageProxyInjectionOperation *)v14 setCopyReturnBlock:v18];
      [v12 addDependency:v14];
      [v9 addOperation:v14];
    }

    sender = [(INMessage *)self sender];
    if (sender)
    {
      v16 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v16 setInjector:sender];
      [(INImageProxyInjectionOperation *)v16 setImageProxyRequestBlock:imagesCopy];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __71__INMessage_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3;
      v17[3] = &unk_1E7285B78;
      v17[4] = v8;
      [(INImageProxyInjectionOperation *)v16 setCopyReturnBlock:v17];
      [v12 addDependency:v16];
      [v9 addOperation:v16];
    }

    [v9 addOperation:v12];
    [v9 setSuspended:0];
  }
}

uint64_t __71__INMessage_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setRecipients:a2];
  }

  return result;
}

uint64_t __71__INMessage_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setSender:a2];
  }

  return result;
}

- (int64_t)_compareSubProducerOne:(id)one subProducerTwo:(id)two
{
  twoCopy = two;
  oneCopy = one;
  v8 = INKeyImageUtilitiesDefaultCompareSubProducers(oneCopy, twoCopy);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__INMessage_INKeyImageProducing___compareSubProducerOne_subProducerTwo___block_invoke;
  v15[3] = &unk_1E7283208;
  v15[4] = self;
  v9 = MEMORY[0x193AD7780](v15);
  v10 = (v9)[2](v9, oneCopy);

  v11 = (v9)[2](v9, twoCopy);
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    v8 = [v12 compare:v13];
  }

  return v8;
}

uint64_t __72__INMessage_INKeyImageProducing___compareSubProducerOne_subProducerTwo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) recipients];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([*(a1 + 32) recipients], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v3), v7, (v8))
    {
      v6 = 2;
    }

    else
    {
      v9 = [*(a1 + 32) sender];
      v10 = [v3 isEqual:v9];

      v6 = v10;
    }
  }

  return v6;
}

- (INImage)_keyImage
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  recipients = [(INMessage *)self recipients];

  if (recipients)
  {
    recipients2 = [(INMessage *)self recipients];
    [v3 addObjectsFromArray:recipients2];

    recipients3 = [(INMessage *)self recipients];
    [v3 addObject:recipients3];
  }

  v7 = INKeyImageUtilitiesKeyImageBySubProducerComparison(self, v3);

  return v7;
}

- (BOOL)_intents_enumerateObjectsOfClass:(Class)class withBlock:(id)block
{
  blockCopy = block;
  audioMessageFile = [(INMessage *)self audioMessageFile];
  v8 = [audioMessageFile _intents_enumerateObjectsOfClass:class withBlock:blockCopy];

  if (v8 & 1) != 0 || (-[INMessage attachmentFiles](self, "attachmentFiles"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 _intents_enumerateObjectsOfClass:class withBlock:blockCopy], v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = INMessage;
    v11 = [&v13 _intents_enumerateObjectsOfClass:class withBlock:blockCopy];
  }

  return v11;
}

@end