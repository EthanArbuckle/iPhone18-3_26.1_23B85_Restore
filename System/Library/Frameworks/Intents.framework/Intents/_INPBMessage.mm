@interface _INPBMessage
- (BOOL)isEqual:(id)equal;
- (_INPBMessage)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAttributes:(id)attributes;
- (int)StringAsEffect:(id)effect;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)addAttachmentFile:(id)file;
- (void)addAttribute:(int)attribute;
- (void)addInlineGlyphContent:(id)content;
- (void)addRecipient:(id)recipient;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAttachmentFiles:(id)files;
- (void)setContent:(id)content;
- (void)setConversationIdentifier:(id)identifier;
- (void)setEffect:(int)effect;
- (void)setFileExtension:(id)extension;
- (void)setGroupName:(id)name;
- (void)setHasType:(BOOL)type;
- (void)setIdentifier:(id)identifier;
- (void)setInlineGlyphContents:(id)contents;
- (void)setLocationName:(id)name;
- (void)setRecipients:(id)recipients;
- (void)setServiceName:(id)name;
- (void)setTranslatedToLanguage:(id)language;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBMessage

- (void)dealloc
{
  [(_INPBMessage *)self clearAttributes];
  v3.receiver = self;
  v3.super_class = _INPBMessage;
  [(_INPBMessage *)&v3 dealloc];
}

- (id)dictionaryRepresentation
{
  v90 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_attachmentFiles count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v5 = self->_attachmentFiles;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v84;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v84 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v83 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"attachmentFile"];
  }

  if (self->_attributes.count)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBMessage attributesCount](self, "attributesCount")}];
    if ([(_INPBMessage *)self attributesCount])
    {
      v12 = 0;
      do
      {
        v13 = self->_attributes.list[v12] - 1;
        if (v13 >= 5)
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_attributes.list[v12]];
        }

        else
        {
          v14 = *(&off_1E727E7A8 + v13);
        }

        [v11 addObject:v14];

        ++v12;
      }

      while (v12 < [(_INPBMessage *)self attributesCount]);
    }

    [dictionary setObject:v11 forKeyedSubscript:@"attribute"];
  }

  audioMessageFile = [(_INPBMessage *)self audioMessageFile];
  dictionaryRepresentation2 = [audioMessageFile dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"audioMessageFile"];

  if (self->_content)
  {
    content = [(_INPBMessage *)self content];
    v18 = [content copy];
    [dictionary setObject:v18 forKeyedSubscript:@"content"];
  }

  if (self->_conversationIdentifier)
  {
    conversationIdentifier = [(_INPBMessage *)self conversationIdentifier];
    v20 = [conversationIdentifier copy];
    [dictionary setObject:v20 forKeyedSubscript:@"conversationIdentifier"];
  }

  dateLastMessageRead = [(_INPBMessage *)self dateLastMessageRead];
  dictionaryRepresentation3 = [dateLastMessageRead dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"dateLastMessageRead"];

  dateSent = [(_INPBMessage *)self dateSent];
  dictionaryRepresentation4 = [dateSent dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"dateSent"];

  if ([(_INPBMessage *)self hasEffect])
  {
    effect = [(_INPBMessage *)self effect];
    if ((effect - 1) >= 0xD)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", effect];
    }

    else
    {
      v26 = *(&off_1E727E7D0 + (effect - 1));
    }

    [dictionary setObject:v26 forKeyedSubscript:@"effect"];
  }

  if (self->_fileExtension)
  {
    fileExtension = [(_INPBMessage *)self fileExtension];
    v28 = [fileExtension copy];
    [dictionary setObject:v28 forKeyedSubscript:@"fileExtension"];
  }

  if (self->_groupName)
  {
    groupName = [(_INPBMessage *)self groupName];
    v30 = [groupName copy];
    [dictionary setObject:v30 forKeyedSubscript:@"groupName"];
  }

  if (self->_identifier)
  {
    identifier = [(_INPBMessage *)self identifier];
    v32 = [identifier copy];
    [dictionary setObject:v32 forKeyedSubscript:@"identifier"];
  }

  if ([(NSArray *)self->_inlineGlyphContents count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v34 = self->_inlineGlyphContents;
    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v80;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v80 != v37)
          {
            objc_enumerationMutation(v34);
          }

          dictionaryRepresentation5 = [*(*(&v79 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation5];
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v36);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"inlineGlyphContent"];
  }

  linkMetadata = [(_INPBMessage *)self linkMetadata];
  dictionaryRepresentation6 = [linkMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"linkMetadata"];

  location = [(_INPBMessage *)self location];
  dictionaryRepresentation7 = [location dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"location"];

  if (self->_locationName)
  {
    locationName = [(_INPBMessage *)self locationName];
    v45 = [locationName copy];
    [dictionary setObject:v45 forKeyedSubscript:@"locationName"];
  }

  numberOfAttachments = [(_INPBMessage *)self numberOfAttachments];
  dictionaryRepresentation8 = [numberOfAttachments dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"numberOfAttachments"];

  paymentAmount = [(_INPBMessage *)self paymentAmount];
  dictionaryRepresentation9 = [paymentAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"paymentAmount"];

  reaction = [(_INPBMessage *)self reaction];
  dictionaryRepresentation10 = [reaction dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"reaction"];

  if ([(NSArray *)self->_recipients count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v53 = self->_recipients;
    v54 = [(NSArray *)v53 countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v76;
      do
      {
        for (k = 0; k != v55; ++k)
        {
          if (*v76 != v56)
          {
            objc_enumerationMutation(v53);
          }

          dictionaryRepresentation11 = [*(*(&v75 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation11];
        }

        v55 = [(NSArray *)v53 countByEnumeratingWithState:&v75 objects:v87 count:16];
      }

      while (v55);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"recipient"];
  }

  referencedMessage = [(_INPBMessage *)self referencedMessage];
  dictionaryRepresentation12 = [referencedMessage dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"referencedMessage"];

  sender = [(_INPBMessage *)self sender];
  dictionaryRepresentation13 = [sender dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"sender"];

  if (self->_serviceName)
  {
    serviceName = [(_INPBMessage *)self serviceName];
    v64 = [serviceName copy];
    [dictionary setObject:v64 forKeyedSubscript:@"serviceName"];
  }

  speakableGroupName = [(_INPBMessage *)self speakableGroupName];
  dictionaryRepresentation14 = [speakableGroupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"speakableGroupName"];

  sticker = [(_INPBMessage *)self sticker];
  dictionaryRepresentation15 = [sticker dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"sticker"];

  if (self->_translatedToLanguage)
  {
    translatedToLanguage = [(_INPBMessage *)self translatedToLanguage];
    v70 = [translatedToLanguage copy];
    [dictionary setObject:v70 forKeyedSubscript:@"translatedToLanguage"];
  }

  if ([(_INPBMessage *)self hasType])
  {
    type = [(_INPBMessage *)self type];
    if ((type - 1) >= 0x23)
    {
      v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v72 = *(&off_1E727E838 + (type - 1));
    }

    [dictionary setObject:v72 forKeyedSubscript:@"type"];
  }

  v73 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v29 = [(NSArray *)self->_attachmentFiles hash];
  v28 = PBRepeatedInt32Hash();
  v27 = [(_INPBFile *)self->_audioMessageFile hash];
  v26 = [(NSString *)self->_content hash];
  v25 = [(NSString *)self->_conversationIdentifier hash];
  v24 = [(_INPBDateTime *)self->_dateLastMessageRead hash];
  v23 = [(_INPBDateTime *)self->_dateSent hash];
  if ([(_INPBMessage *)self hasEffect])
  {
    v22 = 2654435761 * self->_effect;
  }

  else
  {
    v22 = 0;
  }

  v21 = [(NSString *)self->_fileExtension hash];
  v20 = [(NSString *)self->_groupName hash];
  v19 = [(NSString *)self->_identifier hash];
  v18 = [(NSArray *)self->_inlineGlyphContents hash];
  v17 = [(_INPBMessageLinkMetadata *)self->_linkMetadata hash];
  v16 = [(_INPBLocation *)self->_location hash];
  v15 = [(NSString *)self->_locationName hash];
  v14 = [(_INPBInteger *)self->_numberOfAttachments hash];
  v3 = [(_INPBCurrencyAmountValue *)self->_paymentAmount hash];
  v4 = [(_INPBMessageReaction *)self->_reaction hash];
  v5 = [(NSArray *)self->_recipients hash];
  v6 = [(_INPBMessage *)self->_referencedMessage hash];
  v7 = [(_INPBContact *)self->_sender hash];
  v8 = [(NSString *)self->_serviceName hash];
  v9 = [(_INPBDataString *)self->_speakableGroupName hash];
  v10 = [(_INPBSticker *)self->_sticker hash];
  v11 = [(NSString *)self->_translatedToLanguage hash];
  if ([(_INPBMessage *)self hasType])
  {
    v12 = 2654435761 * self->_type;
  }

  else
  {
    v12 = 0;
  }

  return v28 ^ v29 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_122;
  }

  attachmentFiles = [(_INPBMessage *)self attachmentFiles];
  attachmentFiles2 = [equalCopy attachmentFiles];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  attachmentFiles3 = [(_INPBMessage *)self attachmentFiles];
  if (attachmentFiles3)
  {
    v8 = attachmentFiles3;
    attachmentFiles4 = [(_INPBMessage *)self attachmentFiles];
    attachmentFiles5 = [equalCopy attachmentFiles];
    v11 = [attachmentFiles4 isEqual:attachmentFiles5];

    if (!v11)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_122;
  }

  attachmentFiles = [(_INPBMessage *)self audioMessageFile];
  attachmentFiles2 = [equalCopy audioMessageFile];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  audioMessageFile = [(_INPBMessage *)self audioMessageFile];
  if (audioMessageFile)
  {
    v13 = audioMessageFile;
    audioMessageFile2 = [(_INPBMessage *)self audioMessageFile];
    audioMessageFile3 = [equalCopy audioMessageFile];
    v16 = [audioMessageFile2 isEqual:audioMessageFile3];

    if (!v16)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self content];
  attachmentFiles2 = [equalCopy content];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  content = [(_INPBMessage *)self content];
  if (content)
  {
    v18 = content;
    content2 = [(_INPBMessage *)self content];
    content3 = [equalCopy content];
    v21 = [content2 isEqual:content3];

    if (!v21)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self conversationIdentifier];
  attachmentFiles2 = [equalCopy conversationIdentifier];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  conversationIdentifier = [(_INPBMessage *)self conversationIdentifier];
  if (conversationIdentifier)
  {
    v23 = conversationIdentifier;
    conversationIdentifier2 = [(_INPBMessage *)self conversationIdentifier];
    conversationIdentifier3 = [equalCopy conversationIdentifier];
    v26 = [conversationIdentifier2 isEqual:conversationIdentifier3];

    if (!v26)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self dateLastMessageRead];
  attachmentFiles2 = [equalCopy dateLastMessageRead];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  dateLastMessageRead = [(_INPBMessage *)self dateLastMessageRead];
  if (dateLastMessageRead)
  {
    v28 = dateLastMessageRead;
    dateLastMessageRead2 = [(_INPBMessage *)self dateLastMessageRead];
    dateLastMessageRead3 = [equalCopy dateLastMessageRead];
    v31 = [dateLastMessageRead2 isEqual:dateLastMessageRead3];

    if (!v31)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self dateSent];
  attachmentFiles2 = [equalCopy dateSent];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  dateSent = [(_INPBMessage *)self dateSent];
  if (dateSent)
  {
    v33 = dateSent;
    dateSent2 = [(_INPBMessage *)self dateSent];
    dateSent3 = [equalCopy dateSent];
    v36 = [dateSent2 isEqual:dateSent3];

    if (!v36)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  hasEffect = [(_INPBMessage *)self hasEffect];
  if (hasEffect != [equalCopy hasEffect])
  {
    goto LABEL_122;
  }

  if ([(_INPBMessage *)self hasEffect])
  {
    if ([equalCopy hasEffect])
    {
      effect = self->_effect;
      if (effect != [equalCopy effect])
      {
        goto LABEL_122;
      }
    }
  }

  attachmentFiles = [(_INPBMessage *)self fileExtension];
  attachmentFiles2 = [equalCopy fileExtension];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  fileExtension = [(_INPBMessage *)self fileExtension];
  if (fileExtension)
  {
    v40 = fileExtension;
    fileExtension2 = [(_INPBMessage *)self fileExtension];
    fileExtension3 = [equalCopy fileExtension];
    v43 = [fileExtension2 isEqual:fileExtension3];

    if (!v43)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self groupName];
  attachmentFiles2 = [equalCopy groupName];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  groupName = [(_INPBMessage *)self groupName];
  if (groupName)
  {
    v45 = groupName;
    groupName2 = [(_INPBMessage *)self groupName];
    groupName3 = [equalCopy groupName];
    v48 = [groupName2 isEqual:groupName3];

    if (!v48)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self identifier];
  attachmentFiles2 = [equalCopy identifier];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  identifier = [(_INPBMessage *)self identifier];
  if (identifier)
  {
    v50 = identifier;
    identifier2 = [(_INPBMessage *)self identifier];
    identifier3 = [equalCopy identifier];
    v53 = [identifier2 isEqual:identifier3];

    if (!v53)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self inlineGlyphContents];
  attachmentFiles2 = [equalCopy inlineGlyphContents];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  inlineGlyphContents = [(_INPBMessage *)self inlineGlyphContents];
  if (inlineGlyphContents)
  {
    v55 = inlineGlyphContents;
    inlineGlyphContents2 = [(_INPBMessage *)self inlineGlyphContents];
    inlineGlyphContents3 = [equalCopy inlineGlyphContents];
    v58 = [inlineGlyphContents2 isEqual:inlineGlyphContents3];

    if (!v58)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self linkMetadata];
  attachmentFiles2 = [equalCopy linkMetadata];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  linkMetadata = [(_INPBMessage *)self linkMetadata];
  if (linkMetadata)
  {
    v60 = linkMetadata;
    linkMetadata2 = [(_INPBMessage *)self linkMetadata];
    linkMetadata3 = [equalCopy linkMetadata];
    v63 = [linkMetadata2 isEqual:linkMetadata3];

    if (!v63)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self location];
  attachmentFiles2 = [equalCopy location];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  location = [(_INPBMessage *)self location];
  if (location)
  {
    v65 = location;
    location2 = [(_INPBMessage *)self location];
    location3 = [equalCopy location];
    v68 = [location2 isEqual:location3];

    if (!v68)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self locationName];
  attachmentFiles2 = [equalCopy locationName];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  locationName = [(_INPBMessage *)self locationName];
  if (locationName)
  {
    v70 = locationName;
    locationName2 = [(_INPBMessage *)self locationName];
    locationName3 = [equalCopy locationName];
    v73 = [locationName2 isEqual:locationName3];

    if (!v73)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self numberOfAttachments];
  attachmentFiles2 = [equalCopy numberOfAttachments];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  numberOfAttachments = [(_INPBMessage *)self numberOfAttachments];
  if (numberOfAttachments)
  {
    v75 = numberOfAttachments;
    numberOfAttachments2 = [(_INPBMessage *)self numberOfAttachments];
    numberOfAttachments3 = [equalCopy numberOfAttachments];
    v78 = [numberOfAttachments2 isEqual:numberOfAttachments3];

    if (!v78)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self paymentAmount];
  attachmentFiles2 = [equalCopy paymentAmount];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  paymentAmount = [(_INPBMessage *)self paymentAmount];
  if (paymentAmount)
  {
    v80 = paymentAmount;
    paymentAmount2 = [(_INPBMessage *)self paymentAmount];
    paymentAmount3 = [equalCopy paymentAmount];
    v83 = [paymentAmount2 isEqual:paymentAmount3];

    if (!v83)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self reaction];
  attachmentFiles2 = [equalCopy reaction];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  reaction = [(_INPBMessage *)self reaction];
  if (reaction)
  {
    v85 = reaction;
    reaction2 = [(_INPBMessage *)self reaction];
    reaction3 = [equalCopy reaction];
    v88 = [reaction2 isEqual:reaction3];

    if (!v88)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self recipients];
  attachmentFiles2 = [equalCopy recipients];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  recipients = [(_INPBMessage *)self recipients];
  if (recipients)
  {
    v90 = recipients;
    recipients2 = [(_INPBMessage *)self recipients];
    recipients3 = [equalCopy recipients];
    v93 = [recipients2 isEqual:recipients3];

    if (!v93)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self referencedMessage];
  attachmentFiles2 = [equalCopy referencedMessage];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  referencedMessage = [(_INPBMessage *)self referencedMessage];
  if (referencedMessage)
  {
    v95 = referencedMessage;
    referencedMessage2 = [(_INPBMessage *)self referencedMessage];
    referencedMessage3 = [equalCopy referencedMessage];
    v98 = [referencedMessage2 isEqual:referencedMessage3];

    if (!v98)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self sender];
  attachmentFiles2 = [equalCopy sender];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  sender = [(_INPBMessage *)self sender];
  if (sender)
  {
    v100 = sender;
    sender2 = [(_INPBMessage *)self sender];
    sender3 = [equalCopy sender];
    v103 = [sender2 isEqual:sender3];

    if (!v103)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self serviceName];
  attachmentFiles2 = [equalCopy serviceName];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  serviceName = [(_INPBMessage *)self serviceName];
  if (serviceName)
  {
    v105 = serviceName;
    serviceName2 = [(_INPBMessage *)self serviceName];
    serviceName3 = [equalCopy serviceName];
    v108 = [serviceName2 isEqual:serviceName3];

    if (!v108)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self speakableGroupName];
  attachmentFiles2 = [equalCopy speakableGroupName];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  speakableGroupName = [(_INPBMessage *)self speakableGroupName];
  if (speakableGroupName)
  {
    v110 = speakableGroupName;
    speakableGroupName2 = [(_INPBMessage *)self speakableGroupName];
    speakableGroupName3 = [equalCopy speakableGroupName];
    v113 = [speakableGroupName2 isEqual:speakableGroupName3];

    if (!v113)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self sticker];
  attachmentFiles2 = [equalCopy sticker];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
    goto LABEL_121;
  }

  sticker = [(_INPBMessage *)self sticker];
  if (sticker)
  {
    v115 = sticker;
    sticker2 = [(_INPBMessage *)self sticker];
    sticker3 = [equalCopy sticker];
    v118 = [sticker2 isEqual:sticker3];

    if (!v118)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  attachmentFiles = [(_INPBMessage *)self translatedToLanguage];
  attachmentFiles2 = [equalCopy translatedToLanguage];
  if ((attachmentFiles != 0) == (attachmentFiles2 == 0))
  {
LABEL_121:

    goto LABEL_122;
  }

  translatedToLanguage = [(_INPBMessage *)self translatedToLanguage];
  if (translatedToLanguage)
  {
    v120 = translatedToLanguage;
    translatedToLanguage2 = [(_INPBMessage *)self translatedToLanguage];
    translatedToLanguage3 = [equalCopy translatedToLanguage];
    v123 = [translatedToLanguage2 isEqual:translatedToLanguage3];

    if (!v123)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  hasType = [(_INPBMessage *)self hasType];
  if (hasType == [equalCopy hasType])
  {
    if (!-[_INPBMessage hasType](self, "hasType") || ![equalCopy hasType] || (type = self->_type, type == objc_msgSend(equalCopy, "type")))
    {
      v124 = 1;
      goto LABEL_123;
    }
  }

LABEL_122:
  v124 = 0;
LABEL_123:

  return v124;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBMessage allocWithZone:](_INPBMessage init];
  v6 = [(NSArray *)self->_attachmentFiles copyWithZone:zone];
  [(_INPBMessage *)v5 setAttachmentFiles:v6];

  PBRepeatedInt32Copy();
  v7 = [(_INPBFile *)self->_audioMessageFile copyWithZone:zone];
  [(_INPBMessage *)v5 setAudioMessageFile:v7];

  v8 = [(NSString *)self->_content copyWithZone:zone];
  [(_INPBMessage *)v5 setContent:v8];

  v9 = [(NSString *)self->_conversationIdentifier copyWithZone:zone];
  [(_INPBMessage *)v5 setConversationIdentifier:v9];

  v10 = [(_INPBDateTime *)self->_dateLastMessageRead copyWithZone:zone];
  [(_INPBMessage *)v5 setDateLastMessageRead:v10];

  v11 = [(_INPBDateTime *)self->_dateSent copyWithZone:zone];
  [(_INPBMessage *)v5 setDateSent:v11];

  if ([(_INPBMessage *)self hasEffect])
  {
    [(_INPBMessage *)v5 setEffect:[(_INPBMessage *)self effect]];
  }

  v12 = [(NSString *)self->_fileExtension copyWithZone:zone];
  [(_INPBMessage *)v5 setFileExtension:v12];

  v13 = [(NSString *)self->_groupName copyWithZone:zone];
  [(_INPBMessage *)v5 setGroupName:v13];

  v14 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBMessage *)v5 setIdentifier:v14];

  v15 = [(NSArray *)self->_inlineGlyphContents copyWithZone:zone];
  [(_INPBMessage *)v5 setInlineGlyphContents:v15];

  v16 = [(_INPBMessageLinkMetadata *)self->_linkMetadata copyWithZone:zone];
  [(_INPBMessage *)v5 setLinkMetadata:v16];

  v17 = [(_INPBLocation *)self->_location copyWithZone:zone];
  [(_INPBMessage *)v5 setLocation:v17];

  v18 = [(NSString *)self->_locationName copyWithZone:zone];
  [(_INPBMessage *)v5 setLocationName:v18];

  v19 = [(_INPBInteger *)self->_numberOfAttachments copyWithZone:zone];
  [(_INPBMessage *)v5 setNumberOfAttachments:v19];

  v20 = [(_INPBCurrencyAmountValue *)self->_paymentAmount copyWithZone:zone];
  [(_INPBMessage *)v5 setPaymentAmount:v20];

  v21 = [(_INPBMessageReaction *)self->_reaction copyWithZone:zone];
  [(_INPBMessage *)v5 setReaction:v21];

  v22 = [(NSArray *)self->_recipients copyWithZone:zone];
  [(_INPBMessage *)v5 setRecipients:v22];

  v23 = [(_INPBMessage *)self->_referencedMessage copyWithZone:zone];
  [(_INPBMessage *)v5 setReferencedMessage:v23];

  v24 = [(_INPBContact *)self->_sender copyWithZone:zone];
  [(_INPBMessage *)v5 setSender:v24];

  v25 = [(NSString *)self->_serviceName copyWithZone:zone];
  [(_INPBMessage *)v5 setServiceName:v25];

  v26 = [(_INPBDataString *)self->_speakableGroupName copyWithZone:zone];
  [(_INPBMessage *)v5 setSpeakableGroupName:v26];

  v27 = [(_INPBSticker *)self->_sticker copyWithZone:zone];
  [(_INPBMessage *)v5 setSticker:v27];

  v28 = [(NSString *)self->_translatedToLanguage copyWithZone:zone];
  [(_INPBMessage *)v5 setTranslatedToLanguage:v28];

  if ([(_INPBMessage *)self hasType])
  {
    [(_INPBMessage *)v5 setType:[(_INPBMessage *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBMessage *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBMessage *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v83 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v5 = self->_attachmentFiles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v77;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v77 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v76 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v7);
  }

  if (self->_attributes.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_attributes.list[v11];
      PBDataWriterWriteInt32Field();
      ++v11;
    }

    while (v11 < self->_attributes.count);
  }

  audioMessageFile = [(_INPBMessage *)self audioMessageFile];

  if (audioMessageFile)
  {
    audioMessageFile2 = [(_INPBMessage *)self audioMessageFile];
    PBDataWriterWriteSubmessage();
  }

  content = [(_INPBMessage *)self content];

  if (content)
  {
    content = self->_content;
    PBDataWriterWriteStringField();
  }

  conversationIdentifier = [(_INPBMessage *)self conversationIdentifier];

  if (conversationIdentifier)
  {
    conversationIdentifier = self->_conversationIdentifier;
    PBDataWriterWriteStringField();
  }

  dateLastMessageRead = [(_INPBMessage *)self dateLastMessageRead];

  if (dateLastMessageRead)
  {
    dateLastMessageRead2 = [(_INPBMessage *)self dateLastMessageRead];
    PBDataWriterWriteSubmessage();
  }

  dateSent = [(_INPBMessage *)self dateSent];

  if (dateSent)
  {
    dateSent2 = [(_INPBMessage *)self dateSent];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBMessage *)self hasEffect])
  {
    effect = self->_effect;
    PBDataWriterWriteInt32Field();
  }

  fileExtension = [(_INPBMessage *)self fileExtension];

  if (fileExtension)
  {
    fileExtension = self->_fileExtension;
    PBDataWriterWriteStringField();
  }

  groupName = [(_INPBMessage *)self groupName];

  if (groupName)
  {
    groupName = self->_groupName;
    PBDataWriterWriteStringField();
  }

  identifier = [(_INPBMessage *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v30 = self->_inlineGlyphContents;
  v31 = [(NSArray *)v30 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v73;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v73 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v72 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v32 = [(NSArray *)v30 countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v32);
  }

  linkMetadata = [(_INPBMessage *)self linkMetadata];

  if (linkMetadata)
  {
    linkMetadata2 = [(_INPBMessage *)self linkMetadata];
    PBDataWriterWriteSubmessage();
  }

  location = [(_INPBMessage *)self location];

  if (location)
  {
    location2 = [(_INPBMessage *)self location];
    PBDataWriterWriteSubmessage();
  }

  locationName = [(_INPBMessage *)self locationName];

  if (locationName)
  {
    locationName = self->_locationName;
    PBDataWriterWriteStringField();
  }

  numberOfAttachments = [(_INPBMessage *)self numberOfAttachments];

  if (numberOfAttachments)
  {
    numberOfAttachments2 = [(_INPBMessage *)self numberOfAttachments];
    PBDataWriterWriteSubmessage();
  }

  paymentAmount = [(_INPBMessage *)self paymentAmount];

  if (paymentAmount)
  {
    paymentAmount2 = [(_INPBMessage *)self paymentAmount];
    PBDataWriterWriteSubmessage();
  }

  reaction = [(_INPBMessage *)self reaction];

  if (reaction)
  {
    reaction2 = [(_INPBMessage *)self reaction];
    PBDataWriterWriteSubmessage();
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v48 = self->_recipients;
  v49 = [(NSArray *)v48 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v69;
    do
    {
      for (k = 0; k != v50; ++k)
      {
        if (*v69 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v68 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v50 = [(NSArray *)v48 countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v50);
  }

  referencedMessage = [(_INPBMessage *)self referencedMessage];

  if (referencedMessage)
  {
    referencedMessage2 = [(_INPBMessage *)self referencedMessage];
    PBDataWriterWriteSubmessage();
  }

  sender = [(_INPBMessage *)self sender];

  if (sender)
  {
    sender2 = [(_INPBMessage *)self sender];
    PBDataWriterWriteSubmessage();
  }

  serviceName = [(_INPBMessage *)self serviceName];

  if (serviceName)
  {
    serviceName = self->_serviceName;
    PBDataWriterWriteStringField();
  }

  speakableGroupName = [(_INPBMessage *)self speakableGroupName];

  if (speakableGroupName)
  {
    speakableGroupName2 = [(_INPBMessage *)self speakableGroupName];
    PBDataWriterWriteSubmessage();
  }

  sticker = [(_INPBMessage *)self sticker];

  if (sticker)
  {
    sticker2 = [(_INPBMessage *)self sticker];
    PBDataWriterWriteSubmessage();
  }

  translatedToLanguage = [(_INPBMessage *)self translatedToLanguage];

  if (translatedToLanguage)
  {
    translatedToLanguage = self->_translatedToLanguage;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBMessage *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v67 = *MEMORY[0x1E69E9840];
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"TEXT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"AUDIO"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"DIGITAL_TOUCH"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"HANDWRITING"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"STICKER"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_LIKED"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_DISLIKED"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_EMPHASIZED"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_LOVED"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_QUESTIONED"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_LAUGHED"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"MEDIA_TYPE_CALENDAR"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"MEDIA_TYPE_LOCATION"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"MEDIA_TYPE_ADDRESS_CARD"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"MEDIA_TYPE_IMAGE"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"MEDIA_TYPE_VIDEO"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"MEDIA_TYPE_PASS"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"MEDIA_TYPE_AUDIO"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"PAYMENT_SENT"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"PAYMENT_REQUEST"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"PAYMENT_NOTE"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"ANIMOJI"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"ACTIVITY_SNIPPET"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"FILE"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"LINK"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"MESSAGE_REACTION"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"SAFETY_MONITOR"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"LOCATION_REQUEST"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"SHARED_LOCATION"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"FIND_MY"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"SCREEN_TIME_REQUEST"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"ASK_TO"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"MEDIA_TYPE_ANIMATED_IMAGE"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"THIRD_PARTY_ATTACHMENT"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"POLL"])
  {
    v4 = 35;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_type = type;
  }
}

- (void)setTranslatedToLanguage:(id)language
{
  v4 = [language copy];
  translatedToLanguage = self->_translatedToLanguage;
  self->_translatedToLanguage = v4;

  MEMORY[0x1EEE66BB8](v4, translatedToLanguage);
}

- (void)setServiceName:(id)name
{
  v4 = [name copy];
  serviceName = self->_serviceName;
  self->_serviceName = v4;

  MEMORY[0x1EEE66BB8](v4, serviceName);
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  recipients = self->_recipients;
  v8 = recipientCopy;
  if (!recipients)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_recipients;
    self->_recipients = array;

    recipientCopy = v8;
    recipients = self->_recipients;
  }

  [(NSArray *)recipients addObject:recipientCopy];
}

- (void)setRecipients:(id)recipients
{
  v4 = [recipients mutableCopy];
  recipients = self->_recipients;
  self->_recipients = v4;

  MEMORY[0x1EEE66BB8](v4, recipients);
}

- (void)setLocationName:(id)name
{
  v4 = [name copy];
  locationName = self->_locationName;
  self->_locationName = v4;

  MEMORY[0x1EEE66BB8](v4, locationName);
}

- (void)addInlineGlyphContent:(id)content
{
  contentCopy = content;
  inlineGlyphContents = self->_inlineGlyphContents;
  v8 = contentCopy;
  if (!inlineGlyphContents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_inlineGlyphContents;
    self->_inlineGlyphContents = array;

    contentCopy = v8;
    inlineGlyphContents = self->_inlineGlyphContents;
  }

  [(NSArray *)inlineGlyphContents addObject:contentCopy];
}

- (void)setInlineGlyphContents:(id)contents
{
  v4 = [contents mutableCopy];
  inlineGlyphContents = self->_inlineGlyphContents;
  self->_inlineGlyphContents = v4;

  MEMORY[0x1EEE66BB8](v4, inlineGlyphContents);
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)setGroupName:(id)name
{
  v4 = [name copy];
  groupName = self->_groupName;
  self->_groupName = v4;

  MEMORY[0x1EEE66BB8](v4, groupName);
}

- (void)setFileExtension:(id)extension
{
  v4 = [extension copy];
  fileExtension = self->_fileExtension;
  self->_fileExtension = v4;

  MEMORY[0x1EEE66BB8](v4, fileExtension);
}

- (int)StringAsEffect:(id)effect
{
  effectCopy = effect;
  if ([effectCopy isEqualToString:@"HAPPY_BIRTHDAY"])
  {
    v4 = 1;
  }

  else if ([effectCopy isEqualToString:@"CONFETTI"])
  {
    v4 = 2;
  }

  else if ([effectCopy isEqualToString:@"LASERS"])
  {
    v4 = 3;
  }

  else if ([effectCopy isEqualToString:@"FIREWORKS"])
  {
    v4 = 4;
  }

  else if ([effectCopy isEqualToString:@"SHOOTING_STAR"])
  {
    v4 = 5;
  }

  else if ([effectCopy isEqualToString:@"INVISBLE_INK"])
  {
    v4 = 6;
  }

  else if ([effectCopy isEqualToString:@"GENTLE"])
  {
    v4 = 7;
  }

  else if ([effectCopy isEqualToString:@"LOUD"])
  {
    v4 = 8;
  }

  else if ([effectCopy isEqualToString:@"IMPACT"])
  {
    v4 = 9;
  }

  else if ([effectCopy isEqualToString:@"SPARKLES"])
  {
    v4 = 10;
  }

  else if ([effectCopy isEqualToString:@"HEART"])
  {
    v4 = 11;
  }

  else if ([effectCopy isEqualToString:@"ECHO"])
  {
    v4 = 12;
  }

  else if ([effectCopy isEqualToString:@"SPOTLIGHT"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setEffect:(int)effect
{
  has = self->_has;
  if (effect == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_effect = effect;
  }
}

- (void)setConversationIdentifier:(id)identifier
{
  v4 = [identifier copy];
  conversationIdentifier = self->_conversationIdentifier;
  self->_conversationIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, conversationIdentifier);
}

- (void)setContent:(id)content
{
  v4 = [content copy];
  content = self->_content;
  self->_content = v4;

  MEMORY[0x1EEE66BB8](v4, content);
}

- (int)StringAsAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([attributesCopy isEqualToString:@"READ"])
  {
    v4 = 1;
  }

  else if ([attributesCopy isEqualToString:@"UNREAD"])
  {
    v4 = 2;
  }

  else if ([attributesCopy isEqualToString:@"FLAGGED"])
  {
    v4 = 3;
  }

  else if ([attributesCopy isEqualToString:@"UNFLAGGED"])
  {
    v4 = 4;
  }

  else if ([attributesCopy isEqualToString:@"PLAYED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addAttribute:(int)attribute
{
  if (attribute != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addAttachmentFile:(id)file
{
  fileCopy = file;
  attachmentFiles = self->_attachmentFiles;
  v8 = fileCopy;
  if (!attachmentFiles)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_attachmentFiles;
    self->_attachmentFiles = array;

    fileCopy = v8;
    attachmentFiles = self->_attachmentFiles;
  }

  [(NSArray *)attachmentFiles addObject:fileCopy];
}

- (void)setAttachmentFiles:(id)files
{
  v4 = [files mutableCopy];
  attachmentFiles = self->_attachmentFiles;
  self->_attachmentFiles = v4;

  MEMORY[0x1EEE66BB8](v4, attachmentFiles);
}

@end