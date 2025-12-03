@interface _INPBSearchCallHistoryIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSearchCallHistoryIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsCallCapabilities:(id)capabilities;
- (int)StringAsCallType:(id)type;
- (int)StringAsCallTypes:(id)types;
- (int)StringAsCapabilities:(id)capabilities;
- (int)StringAsPreferredCallProvider:(id)provider;
- (unint64_t)hash;
- (void)addCallCapabilities:(int)capabilities;
- (void)addCallTypes:(int)types;
- (void)addCapabilities:(int)capabilities;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCallType:(int)type;
- (void)setHasPreferredCallProvider:(BOOL)provider;
- (void)setHasUnseen:(BOOL)unseen;
- (void)setPreferredCallProvider:(int)provider;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchCallHistoryIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_callCapabilities.count)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSearchCallHistoryIntent callCapabilitiesCount](self, "callCapabilitiesCount")}];
    if ([(_INPBSearchCallHistoryIntent *)self callCapabilitiesCount])
    {
      v5 = 0;
      do
      {
        v6 = self->_callCapabilities.list[v5];
        if (v6 == 1)
        {
          v7 = @"AUDIO_CALL";
        }

        else if (v6 == 2)
        {
          v7 = @"VIDEO_CALL";
        }

        else
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_callCapabilities.list[v5]];
        }

        [v4 addObject:v7];

        ++v5;
      }

      while (v5 < [(_INPBSearchCallHistoryIntent *)self callCapabilitiesCount]);
    }

    [dictionary setObject:v4 forKeyedSubscript:@"callCapabilities"];
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasCallType])
  {
    callType = [(_INPBSearchCallHistoryIntent *)self callType];
    v9 = callType - 2;
    if (callType - 2) < 9 && ((0x1EFu >> v9))
    {
      v10 = off_1E72828F8[v9];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", callType];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"callType"];
  }

  if (self->_callTypes.count)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSearchCallHistoryIntent callTypesCount](self, "callTypesCount")}];
    if ([(_INPBSearchCallHistoryIntent *)self callTypesCount])
    {
      v12 = 0;
      do
      {
        v13 = self->_callTypes.list[v12] - 2;
        if (v13 < 9 && ((0x1EFu >> v13) & 1) != 0)
        {
          v14 = off_1E72828F8[v13];
        }

        else
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_callTypes.list[v12]];
        }

        [v11 addObject:v14];

        ++v12;
      }

      while (v12 < [(_INPBSearchCallHistoryIntent *)self callTypesCount]);
    }

    [dictionary setObject:v11 forKeyedSubscript:@"callTypes"];
  }

  if (self->_capabilities.count)
  {
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSearchCallHistoryIntent capabilitiesCount](self, "capabilitiesCount")}];
    if ([(_INPBSearchCallHistoryIntent *)self capabilitiesCount])
    {
      v16 = 0;
      do
      {
        v17 = self->_capabilities.list[v16];
        if (v17 == 1)
        {
          v18 = @"AUDIO_CALL";
        }

        else if (v17 == 2)
        {
          v18 = @"VIDEO_CALL";
        }

        else
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_capabilities.list[v16]];
        }

        [v15 addObject:v18];

        ++v16;
      }

      while (v16 < [(_INPBSearchCallHistoryIntent *)self capabilitiesCount]);
    }

    [dictionary setObject:v15 forKeyedSubscript:@"capabilities"];
  }

  dateCreated = [(_INPBSearchCallHistoryIntent *)self dateCreated];
  dictionaryRepresentation = [dateCreated dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dateCreated"];

  intentMetadata = [(_INPBSearchCallHistoryIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider])
  {
    preferredCallProvider = [(_INPBSearchCallHistoryIntent *)self preferredCallProvider];
    if ((preferredCallProvider - 2) >= 3)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", preferredCallProvider];
    }

    else
    {
      v24 = off_1E7282940[(preferredCallProvider - 2)];
    }

    [dictionary setObject:v24 forKeyedSubscript:@"preferredCallProvider"];
  }

  recipient = [(_INPBSearchCallHistoryIntent *)self recipient];
  dictionaryRepresentation3 = [recipient dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"recipient"];

  targetContact = [(_INPBSearchCallHistoryIntent *)self targetContact];
  dictionaryRepresentation4 = [targetContact dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"targetContact"];

  if ([(_INPBSearchCallHistoryIntent *)self hasUnseen])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSearchCallHistoryIntent unseen](self, "unseen")}];
    [dictionary setObject:v29 forKeyedSubscript:@"unseen"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v13 = PBRepeatedInt32Hash();
  if ([(_INPBSearchCallHistoryIntent *)self hasCallType])
  {
    v3 = 2654435761 * self->_callType;
  }

  else
  {
    v3 = 0;
  }

  v4 = PBRepeatedInt32Hash();
  v5 = PBRepeatedInt32Hash();
  v6 = [(_INPBDateTimeRange *)self->_dateCreated hash];
  v7 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider])
  {
    v8 = 2654435761 * self->_preferredCallProvider;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(_INPBContact *)self->_recipient hash];
  v10 = [(_INPBContact *)self->_targetContact hash];
  if ([(_INPBSearchCallHistoryIntent *)self hasUnseen])
  {
    v11 = 2654435761 * self->_unseen;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_33;
  }

  hasCallType = [(_INPBSearchCallHistoryIntent *)self hasCallType];
  if (hasCallType != [equalCopy hasCallType])
  {
    goto LABEL_33;
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasCallType])
  {
    if ([equalCopy hasCallType])
    {
      callType = self->_callType;
      if (callType != [equalCopy callType])
      {
        goto LABEL_33;
      }
    }
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_33;
  }

  dateCreated = [(_INPBSearchCallHistoryIntent *)self dateCreated];
  dateCreated2 = [equalCopy dateCreated];
  if ((dateCreated != 0) == (dateCreated2 == 0))
  {
    goto LABEL_32;
  }

  dateCreated3 = [(_INPBSearchCallHistoryIntent *)self dateCreated];
  if (dateCreated3)
  {
    v10 = dateCreated3;
    dateCreated4 = [(_INPBSearchCallHistoryIntent *)self dateCreated];
    dateCreated5 = [equalCopy dateCreated];
    v13 = [dateCreated4 isEqual:dateCreated5];

    if (!v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  dateCreated = [(_INPBSearchCallHistoryIntent *)self intentMetadata];
  dateCreated2 = [equalCopy intentMetadata];
  if ((dateCreated != 0) == (dateCreated2 == 0))
  {
    goto LABEL_32;
  }

  intentMetadata = [(_INPBSearchCallHistoryIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v15 = intentMetadata;
    intentMetadata2 = [(_INPBSearchCallHistoryIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v18 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v18)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  hasPreferredCallProvider = [(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider];
  if (hasPreferredCallProvider != [equalCopy hasPreferredCallProvider])
  {
    goto LABEL_33;
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider])
  {
    if ([equalCopy hasPreferredCallProvider])
    {
      preferredCallProvider = self->_preferredCallProvider;
      if (preferredCallProvider != [equalCopy preferredCallProvider])
      {
        goto LABEL_33;
      }
    }
  }

  dateCreated = [(_INPBSearchCallHistoryIntent *)self recipient];
  dateCreated2 = [equalCopy recipient];
  if ((dateCreated != 0) == (dateCreated2 == 0))
  {
    goto LABEL_32;
  }

  recipient = [(_INPBSearchCallHistoryIntent *)self recipient];
  if (recipient)
  {
    v22 = recipient;
    recipient2 = [(_INPBSearchCallHistoryIntent *)self recipient];
    recipient3 = [equalCopy recipient];
    v25 = [recipient2 isEqual:recipient3];

    if (!v25)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  dateCreated = [(_INPBSearchCallHistoryIntent *)self targetContact];
  dateCreated2 = [equalCopy targetContact];
  if ((dateCreated != 0) == (dateCreated2 == 0))
  {
LABEL_32:

    goto LABEL_33;
  }

  targetContact = [(_INPBSearchCallHistoryIntent *)self targetContact];
  if (targetContact)
  {
    v27 = targetContact;
    targetContact2 = [(_INPBSearchCallHistoryIntent *)self targetContact];
    targetContact3 = [equalCopy targetContact];
    v30 = [targetContact2 isEqual:targetContact3];

    if (!v30)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  hasUnseen = [(_INPBSearchCallHistoryIntent *)self hasUnseen];
  if (hasUnseen == [equalCopy hasUnseen])
  {
    if (!-[_INPBSearchCallHistoryIntent hasUnseen](self, "hasUnseen") || ![equalCopy hasUnseen] || (unseen = self->_unseen, unseen == objc_msgSend(equalCopy, "unseen")))
    {
      v31 = 1;
      goto LABEL_34;
    }
  }

LABEL_33:
  v31 = 0;
LABEL_34:

  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchCallHistoryIntent allocWithZone:](_INPBSearchCallHistoryIntent init];
  PBRepeatedInt32Copy();
  if ([(_INPBSearchCallHistoryIntent *)self hasCallType])
  {
    [(_INPBSearchCallHistoryIntent *)v5 setCallType:[(_INPBSearchCallHistoryIntent *)self callType]];
  }

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v6 = [(_INPBDateTimeRange *)self->_dateCreated copyWithZone:zone];
  [(_INPBSearchCallHistoryIntent *)v5 setDateCreated:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSearchCallHistoryIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider])
  {
    [(_INPBSearchCallHistoryIntent *)v5 setPreferredCallProvider:[(_INPBSearchCallHistoryIntent *)self preferredCallProvider]];
  }

  v8 = [(_INPBContact *)self->_recipient copyWithZone:zone];
  [(_INPBSearchCallHistoryIntent *)v5 setRecipient:v8];

  v9 = [(_INPBContact *)self->_targetContact copyWithZone:zone];
  [(_INPBSearchCallHistoryIntent *)v5 setTargetContact:v9];

  if ([(_INPBSearchCallHistoryIntent *)self hasUnseen])
  {
    [(_INPBSearchCallHistoryIntent *)v5 setUnseen:[(_INPBSearchCallHistoryIntent *)self unseen]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchCallHistoryIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchCallHistoryIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchCallHistoryIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBSearchCallHistoryIntent *)self clearCallCapabilities];
  [(_INPBSearchCallHistoryIntent *)self clearCallTypes];
  [(_INPBSearchCallHistoryIntent *)self clearCapabilities];
  v3.receiver = self;
  v3.super_class = _INPBSearchCallHistoryIntent;
  [(_INPBSearchCallHistoryIntent *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  p_callCapabilities = &self->_callCapabilities;
  toCopy = to;
  if (self->_callCapabilities.count)
  {
    v5 = 0;
    do
    {
      v6 = p_callCapabilities->list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_callCapabilities.count);
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasCallType])
  {
    callType = self->_callType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_callTypes.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_callTypes.list[v8];
      PBDataWriterWriteInt32Field();
      ++v8;
    }

    while (v8 < self->_callTypes.count);
  }

  if (self->_capabilities.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_capabilities.list[v10];
      PBDataWriterWriteInt32Field();
      ++v10;
    }

    while (v10 < self->_capabilities.count);
  }

  dateCreated = [(_INPBSearchCallHistoryIntent *)self dateCreated];

  if (dateCreated)
  {
    dateCreated2 = [(_INPBSearchCallHistoryIntent *)self dateCreated];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBSearchCallHistoryIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSearchCallHistoryIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider])
  {
    preferredCallProvider = self->_preferredCallProvider;
    PBDataWriterWriteInt32Field();
  }

  recipient = [(_INPBSearchCallHistoryIntent *)self recipient];

  if (recipient)
  {
    recipient2 = [(_INPBSearchCallHistoryIntent *)self recipient];
    PBDataWriterWriteSubmessage();
  }

  targetContact = [(_INPBSearchCallHistoryIntent *)self targetContact];

  if (targetContact)
  {
    targetContact2 = [(_INPBSearchCallHistoryIntent *)self targetContact];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasUnseen])
  {
    unseen = self->_unseen;
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasUnseen:(BOOL)unseen
{
  if (unseen)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsPreferredCallProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy isEqualToString:@"TELEPHONY_PROVIDER"])
  {
    v4 = 2;
  }

  else if ([providerCopy isEqualToString:@"FACETIME_PROVIDER"])
  {
    v4 = 3;
  }

  else if ([providerCopy isEqualToString:@"THIRD_PARTY_PROVIDER"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setHasPreferredCallProvider:(BOOL)provider
{
  if (provider)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setPreferredCallProvider:(int)provider
{
  has = self->_has;
  if (provider == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_preferredCallProvider = provider;
  }
}

- (int)StringAsCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v4 = 1;
  if (([capabilitiesCopy isEqualToString:@"AUDIO_CALL"] & 1) == 0)
  {
    if ([capabilitiesCopy isEqualToString:@"VIDEO_CALL"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)addCapabilities:(int)capabilities
{
  if (capabilities != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsCallTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"OUTGOING"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"MISSED"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"RECEIVED"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"LATEST"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"VOICEMAIL"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"RINGING"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"ON_HOLD"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)addCallTypes:(int)types
{
  if (types != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsCallType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"OUTGOING"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"MISSED"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"RECEIVED"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"LATEST"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"VOICEMAIL"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"RINGING"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"ON_HOLD"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setCallType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_callType = type;
  }
}

- (int)StringAsCallCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v4 = 1;
  if (([capabilitiesCopy isEqualToString:@"AUDIO_CALL"] & 1) == 0)
  {
    if ([capabilitiesCopy isEqualToString:@"VIDEO_CALL"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)addCallCapabilities:(int)capabilities
{
  if (capabilities != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end