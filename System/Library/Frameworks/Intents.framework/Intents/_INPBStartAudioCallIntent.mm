@interface _INPBStartAudioCallIntent
- (BOOL)isEqual:(id)equal;
- (_INPBStartAudioCallIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)route;
- (int)StringAsDestinationType:(id)type;
- (int)StringAsPreferredCallProvider:(id)provider;
- (int)StringAsRecordTypeForRedialing:(id)redialing;
- (int)StringAsTTYType:(id)type;
- (unint64_t)hash;
- (void)addContact:(id)contact;
- (void)addTargetContacts:(id)contacts;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioRoute:(int)route;
- (void)setContacts:(id)contacts;
- (void)setDestinationType:(int)type;
- (void)setHasDestinationType:(BOOL)type;
- (void)setHasPreferredCallProvider:(BOOL)provider;
- (void)setHasRecordTypeForRedialing:(BOOL)redialing;
- (void)setHasTtyType:(BOOL)type;
- (void)setPreferredCallProvider:(int)provider;
- (void)setRecordTypeForRedialing:(int)redialing;
- (void)setTargetContacts:(id)contacts;
- (void)setTtyType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBStartAudioCallIntent

- (id)dictionaryRepresentation
{
  v45 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartAudioCallIntent *)self hasAudioRoute])
  {
    audioRoute = [(_INPBStartAudioCallIntent *)self audioRoute];
    if ((audioRoute - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", audioRoute];
    }

    else
    {
      v5 = off_1E7283470[(audioRoute - 2)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  callRequestMetadata = [(_INPBStartAudioCallIntent *)self callRequestMetadata];
  dictionaryRepresentation = [callRequestMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"callRequestMetadata"];

  if ([(NSArray *)self->_contacts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = self->_contacts;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"contact"];
  }

  if ([(_INPBStartAudioCallIntent *)self hasDestinationType])
  {
    destinationType = [(_INPBStartAudioCallIntent *)self destinationType];
    if ((destinationType - 1) >= 5)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", destinationType];
    }

    else
    {
      v16 = off_1E7283488[(destinationType - 1)];
    }

    [dictionary setObject:v16 forKeyedSubscript:@"destinationType"];
  }

  intentMetadata = [(_INPBStartAudioCallIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBStartAudioCallIntent *)self hasPreferredCallProvider])
  {
    preferredCallProvider = [(_INPBStartAudioCallIntent *)self preferredCallProvider];
    if ((preferredCallProvider - 2) >= 3)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", preferredCallProvider];
    }

    else
    {
      v20 = off_1E72834B0[(preferredCallProvider - 2)];
    }

    [dictionary setObject:v20 forKeyedSubscript:@"preferredCallProvider"];
  }

  if ([(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing])
  {
    recordTypeForRedialing = [(_INPBStartAudioCallIntent *)self recordTypeForRedialing];
    v22 = recordTypeForRedialing - 2;
    if (recordTypeForRedialing - 2) < 9 && ((0x1EFu >> v22))
    {
      v23 = off_1E72834C8[v22];
    }

    else
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", recordTypeForRedialing];
    }

    [dictionary setObject:v23 forKeyedSubscript:@"recordTypeForRedialing"];
  }

  if ([(NSArray *)self->_targetContacts count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = self->_targetContacts;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          dictionaryRepresentation4 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation4];
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v27);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"targetContacts"];
  }

  if ([(_INPBStartAudioCallIntent *)self hasTtyType])
  {
    ttyType = [(_INPBStartAudioCallIntent *)self ttyType];
    if (ttyType >= 3)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", ttyType];
    }

    else
    {
      v32 = off_1E7283510[ttyType];
    }

    [dictionary setObject:v32 forKeyedSubscript:@"ttyType"];
  }

  v33 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBStartAudioCallIntent *)self hasAudioRoute])
  {
    v3 = 2654435761 * self->_audioRoute;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBStartCallRequestMetadata *)self->_callRequestMetadata hash];
  v5 = [(NSArray *)self->_contacts hash];
  if ([(_INPBStartAudioCallIntent *)self hasDestinationType])
  {
    v6 = 2654435761 * self->_destinationType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBStartAudioCallIntent *)self hasPreferredCallProvider])
  {
    v8 = 2654435761 * self->_preferredCallProvider;
  }

  else
  {
    v8 = 0;
  }

  if ([(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing])
  {
    v9 = 2654435761 * self->_recordTypeForRedialing;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSArray *)self->_targetContacts hash];
  if ([(_INPBStartAudioCallIntent *)self hasTtyType])
  {
    v11 = 2654435761 * self->_ttyType;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  hasAudioRoute = [(_INPBStartAudioCallIntent *)self hasAudioRoute];
  if (hasAudioRoute != [equalCopy hasAudioRoute])
  {
    goto LABEL_38;
  }

  if ([(_INPBStartAudioCallIntent *)self hasAudioRoute])
  {
    if ([equalCopy hasAudioRoute])
    {
      audioRoute = self->_audioRoute;
      if (audioRoute != [equalCopy audioRoute])
      {
        goto LABEL_38;
      }
    }
  }

  callRequestMetadata = [(_INPBStartAudioCallIntent *)self callRequestMetadata];
  callRequestMetadata2 = [equalCopy callRequestMetadata];
  if ((callRequestMetadata != 0) == (callRequestMetadata2 == 0))
  {
    goto LABEL_37;
  }

  callRequestMetadata3 = [(_INPBStartAudioCallIntent *)self callRequestMetadata];
  if (callRequestMetadata3)
  {
    v10 = callRequestMetadata3;
    callRequestMetadata4 = [(_INPBStartAudioCallIntent *)self callRequestMetadata];
    callRequestMetadata5 = [equalCopy callRequestMetadata];
    v13 = [callRequestMetadata4 isEqual:callRequestMetadata5];

    if (!v13)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  callRequestMetadata = [(_INPBStartAudioCallIntent *)self contacts];
  callRequestMetadata2 = [equalCopy contacts];
  if ((callRequestMetadata != 0) == (callRequestMetadata2 == 0))
  {
    goto LABEL_37;
  }

  contacts = [(_INPBStartAudioCallIntent *)self contacts];
  if (contacts)
  {
    v15 = contacts;
    contacts2 = [(_INPBStartAudioCallIntent *)self contacts];
    contacts3 = [equalCopy contacts];
    v18 = [contacts2 isEqual:contacts3];

    if (!v18)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  hasDestinationType = [(_INPBStartAudioCallIntent *)self hasDestinationType];
  if (hasDestinationType != [equalCopy hasDestinationType])
  {
    goto LABEL_38;
  }

  if ([(_INPBStartAudioCallIntent *)self hasDestinationType])
  {
    if ([equalCopy hasDestinationType])
    {
      destinationType = self->_destinationType;
      if (destinationType != [equalCopy destinationType])
      {
        goto LABEL_38;
      }
    }
  }

  callRequestMetadata = [(_INPBStartAudioCallIntent *)self intentMetadata];
  callRequestMetadata2 = [equalCopy intentMetadata];
  if ((callRequestMetadata != 0) == (callRequestMetadata2 == 0))
  {
    goto LABEL_37;
  }

  intentMetadata = [(_INPBStartAudioCallIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v22 = intentMetadata;
    intentMetadata2 = [(_INPBStartAudioCallIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v25 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v25)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  hasPreferredCallProvider = [(_INPBStartAudioCallIntent *)self hasPreferredCallProvider];
  if (hasPreferredCallProvider != [equalCopy hasPreferredCallProvider])
  {
    goto LABEL_38;
  }

  if ([(_INPBStartAudioCallIntent *)self hasPreferredCallProvider])
  {
    if ([equalCopy hasPreferredCallProvider])
    {
      preferredCallProvider = self->_preferredCallProvider;
      if (preferredCallProvider != [equalCopy preferredCallProvider])
      {
        goto LABEL_38;
      }
    }
  }

  hasRecordTypeForRedialing = [(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing];
  if (hasRecordTypeForRedialing != [equalCopy hasRecordTypeForRedialing])
  {
    goto LABEL_38;
  }

  if ([(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing])
  {
    if ([equalCopy hasRecordTypeForRedialing])
    {
      recordTypeForRedialing = self->_recordTypeForRedialing;
      if (recordTypeForRedialing != [equalCopy recordTypeForRedialing])
      {
        goto LABEL_38;
      }
    }
  }

  callRequestMetadata = [(_INPBStartAudioCallIntent *)self targetContacts];
  callRequestMetadata2 = [equalCopy targetContacts];
  if ((callRequestMetadata != 0) == (callRequestMetadata2 == 0))
  {
LABEL_37:

    goto LABEL_38;
  }

  targetContacts = [(_INPBStartAudioCallIntent *)self targetContacts];
  if (targetContacts)
  {
    v31 = targetContacts;
    targetContacts2 = [(_INPBStartAudioCallIntent *)self targetContacts];
    targetContacts3 = [equalCopy targetContacts];
    v34 = [targetContacts2 isEqual:targetContacts3];

    if (!v34)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  hasTtyType = [(_INPBStartAudioCallIntent *)self hasTtyType];
  if (hasTtyType == [equalCopy hasTtyType])
  {
    if (!-[_INPBStartAudioCallIntent hasTtyType](self, "hasTtyType") || ![equalCopy hasTtyType] || (ttyType = self->_ttyType, ttyType == objc_msgSend(equalCopy, "ttyType")))
    {
      v35 = 1;
      goto LABEL_39;
    }
  }

LABEL_38:
  v35 = 0;
LABEL_39:

  return v35;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBStartAudioCallIntent allocWithZone:](_INPBStartAudioCallIntent init];
  if ([(_INPBStartAudioCallIntent *)self hasAudioRoute])
  {
    [(_INPBStartAudioCallIntent *)v5 setAudioRoute:[(_INPBStartAudioCallIntent *)self audioRoute]];
  }

  v6 = [(_INPBStartCallRequestMetadata *)self->_callRequestMetadata copyWithZone:zone];
  [(_INPBStartAudioCallIntent *)v5 setCallRequestMetadata:v6];

  v7 = [(NSArray *)self->_contacts copyWithZone:zone];
  [(_INPBStartAudioCallIntent *)v5 setContacts:v7];

  if ([(_INPBStartAudioCallIntent *)self hasDestinationType])
  {
    [(_INPBStartAudioCallIntent *)v5 setDestinationType:[(_INPBStartAudioCallIntent *)self destinationType]];
  }

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBStartAudioCallIntent *)v5 setIntentMetadata:v8];

  if ([(_INPBStartAudioCallIntent *)self hasPreferredCallProvider])
  {
    [(_INPBStartAudioCallIntent *)v5 setPreferredCallProvider:[(_INPBStartAudioCallIntent *)self preferredCallProvider]];
  }

  if ([(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing])
  {
    [(_INPBStartAudioCallIntent *)v5 setRecordTypeForRedialing:[(_INPBStartAudioCallIntent *)self recordTypeForRedialing]];
  }

  v9 = [(NSArray *)self->_targetContacts copyWithZone:zone];
  [(_INPBStartAudioCallIntent *)v5 setTargetContacts:v9];

  if ([(_INPBStartAudioCallIntent *)self hasTtyType])
  {
    [(_INPBStartAudioCallIntent *)v5 setTtyType:[(_INPBStartAudioCallIntent *)self ttyType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBStartAudioCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBStartAudioCallIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBStartAudioCallIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBStartAudioCallIntent *)self hasAudioRoute])
  {
    audioRoute = self->_audioRoute;
    PBDataWriterWriteInt32Field();
  }

  callRequestMetadata = [(_INPBStartAudioCallIntent *)self callRequestMetadata];

  if (callRequestMetadata)
  {
    callRequestMetadata2 = [(_INPBStartAudioCallIntent *)self callRequestMetadata];
    PBDataWriterWriteSubmessage();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = self->_contacts;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  if ([(_INPBStartAudioCallIntent *)self hasDestinationType])
  {
    destinationType = self->_destinationType;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBStartAudioCallIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBStartAudioCallIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBStartAudioCallIntent *)self hasPreferredCallProvider])
  {
    preferredCallProvider = self->_preferredCallProvider;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing])
  {
    recordTypeForRedialing = self->_recordTypeForRedialing;
    PBDataWriterWriteInt32Field();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self->_targetContacts;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v27 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v21);
  }

  if ([(_INPBStartAudioCallIntent *)self hasTtyType])
  {
    ttyType = self->_ttyType;
    PBDataWriterWriteInt32Field();
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (int)StringAsTTYType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Direct"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Relay"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTtyType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setTtyType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_ttyType = type;
  }
}

- (void)addTargetContacts:(id)contacts
{
  contactsCopy = contacts;
  targetContacts = self->_targetContacts;
  v8 = contactsCopy;
  if (!targetContacts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_targetContacts;
    self->_targetContacts = array;

    contactsCopy = v8;
    targetContacts = self->_targetContacts;
  }

  [(NSArray *)targetContacts addObject:contactsCopy];
}

- (void)setTargetContacts:(id)contacts
{
  v4 = [contacts mutableCopy];
  targetContacts = self->_targetContacts;
  self->_targetContacts = v4;

  MEMORY[0x1EEE66BB8](v4, targetContacts);
}

- (int)StringAsRecordTypeForRedialing:(id)redialing
{
  redialingCopy = redialing;
  if ([redialingCopy isEqualToString:@"OUTGOING"])
  {
    v4 = 2;
  }

  else if ([redialingCopy isEqualToString:@"MISSED"])
  {
    v4 = 3;
  }

  else if ([redialingCopy isEqualToString:@"RECEIVED"])
  {
    v4 = 4;
  }

  else if ([redialingCopy isEqualToString:@"LATEST"])
  {
    v4 = 5;
  }

  else if ([redialingCopy isEqualToString:@"VOICEMAIL"])
  {
    v4 = 7;
  }

  else if ([redialingCopy isEqualToString:@"RINGING"])
  {
    v4 = 8;
  }

  else if ([redialingCopy isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 9;
  }

  else if ([redialingCopy isEqualToString:@"ON_HOLD"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setHasRecordTypeForRedialing:(BOOL)redialing
{
  if (redialing)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setRecordTypeForRedialing:(int)redialing
{
  has = self->_has;
  if (redialing == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_recordTypeForRedialing = redialing;
  }
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setPreferredCallProvider:(int)provider
{
  has = self->_has;
  if (provider == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_preferredCallProvider = provider;
  }
}

- (int)StringAsDestinationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NORMAL_DESTINATION"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"EMERGENCY_DESTINATION"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"VOICEMAIL_DESTINATION"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"REDIAL_DESTINATION"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CALL_BACK_DESTINATION"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasDestinationType:(BOOL)type
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

- (void)setDestinationType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_destinationType = type;
  }
}

- (void)addContact:(id)contact
{
  contactCopy = contact;
  contacts = self->_contacts;
  v8 = contactCopy;
  if (!contacts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_contacts;
    self->_contacts = array;

    contactCopy = v8;
    contacts = self->_contacts;
  }

  [(NSArray *)contacts addObject:contactCopy];
}

- (void)setContacts:(id)contacts
{
  v4 = [contacts mutableCopy];
  contacts = self->_contacts;
  self->_contacts = v4;

  MEMORY[0x1EEE66BB8](v4, contacts);
}

- (int)StringAsAudioRoute:(id)route
{
  routeCopy = route;
  if ([routeCopy isEqualToString:@"SPEAKERPHONE_AUDIO_ROUTE"])
  {
    v4 = 2;
  }

  else if ([routeCopy isEqualToString:@"BLUETOOTH_AUDIO_ROUTE"])
  {
    v4 = 3;
  }

  else if ([routeCopy isEqualToString:@"HEY_SIRI_AUDIO_ROUTE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setAudioRoute:(int)route
{
  has = self->_has;
  if (route == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_audioRoute = route;
  }
}

@end