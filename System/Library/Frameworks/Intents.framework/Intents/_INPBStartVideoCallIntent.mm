@interface _INPBStartVideoCallIntent
- (BOOL)isEqual:(id)equal;
- (_INPBStartVideoCallIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)route;
- (unint64_t)hash;
- (void)addContact:(id)contact;
- (void)addTargetContacts:(id)contacts;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioRoute:(int)route;
- (void)setContacts:(id)contacts;
- (void)setTargetContacts:(id)contacts;
- (void)writeTo:(id)to;
@end

@implementation _INPBStartVideoCallIntent

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartVideoCallIntent *)self hasAudioRoute])
  {
    audioRoute = [(_INPBStartVideoCallIntent *)self audioRoute];
    if ((audioRoute - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", audioRoute];
    }

    else
    {
      v5 = off_1E727F7F0[(audioRoute - 2)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  callRequestMetadata = [(_INPBStartVideoCallIntent *)self callRequestMetadata];
  dictionaryRepresentation = [callRequestMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"callRequestMetadata"];

  if ([(NSArray *)self->_contacts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = self->_contacts;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"contact"];
  }

  intentMetadata = [(_INPBStartVideoCallIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_targetContacts count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = self->_targetContacts;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation4 = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation4];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"targetContacts"];
  }

  v24 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBStartVideoCallIntent *)self hasAudioRoute])
  {
    v3 = 2654435761 * self->_audioRoute;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBStartCallRequestMetadata *)self->_callRequestMetadata hash]^ v3;
  v5 = [(NSArray *)self->_contacts hash];
  v6 = v4 ^ v5 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
  return v6 ^ [(NSArray *)self->_targetContacts hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  hasAudioRoute = [(_INPBStartVideoCallIntent *)self hasAudioRoute];
  if (hasAudioRoute != [equalCopy hasAudioRoute])
  {
    goto LABEL_26;
  }

  if ([(_INPBStartVideoCallIntent *)self hasAudioRoute])
  {
    if ([equalCopy hasAudioRoute])
    {
      audioRoute = self->_audioRoute;
      if (audioRoute != [equalCopy audioRoute])
      {
        goto LABEL_26;
      }
    }
  }

  callRequestMetadata = [(_INPBStartVideoCallIntent *)self callRequestMetadata];
  callRequestMetadata2 = [equalCopy callRequestMetadata];
  if ((callRequestMetadata != 0) == (callRequestMetadata2 == 0))
  {
    goto LABEL_25;
  }

  callRequestMetadata3 = [(_INPBStartVideoCallIntent *)self callRequestMetadata];
  if (callRequestMetadata3)
  {
    v10 = callRequestMetadata3;
    callRequestMetadata4 = [(_INPBStartVideoCallIntent *)self callRequestMetadata];
    callRequestMetadata5 = [equalCopy callRequestMetadata];
    v13 = [callRequestMetadata4 isEqual:callRequestMetadata5];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  callRequestMetadata = [(_INPBStartVideoCallIntent *)self contacts];
  callRequestMetadata2 = [equalCopy contacts];
  if ((callRequestMetadata != 0) == (callRequestMetadata2 == 0))
  {
    goto LABEL_25;
  }

  contacts = [(_INPBStartVideoCallIntent *)self contacts];
  if (contacts)
  {
    v15 = contacts;
    contacts2 = [(_INPBStartVideoCallIntent *)self contacts];
    contacts3 = [equalCopy contacts];
    v18 = [contacts2 isEqual:contacts3];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  callRequestMetadata = [(_INPBStartVideoCallIntent *)self intentMetadata];
  callRequestMetadata2 = [equalCopy intentMetadata];
  if ((callRequestMetadata != 0) == (callRequestMetadata2 == 0))
  {
    goto LABEL_25;
  }

  intentMetadata = [(_INPBStartVideoCallIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v20 = intentMetadata;
    intentMetadata2 = [(_INPBStartVideoCallIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v23 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  callRequestMetadata = [(_INPBStartVideoCallIntent *)self targetContacts];
  callRequestMetadata2 = [equalCopy targetContacts];
  if ((callRequestMetadata != 0) != (callRequestMetadata2 == 0))
  {
    targetContacts = [(_INPBStartVideoCallIntent *)self targetContacts];
    if (!targetContacts)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = targetContacts;
    targetContacts2 = [(_INPBStartVideoCallIntent *)self targetContacts];
    targetContacts3 = [equalCopy targetContacts];
    v28 = [targetContacts2 isEqual:targetContacts3];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBStartVideoCallIntent allocWithZone:](_INPBStartVideoCallIntent init];
  if ([(_INPBStartVideoCallIntent *)self hasAudioRoute])
  {
    [(_INPBStartVideoCallIntent *)v5 setAudioRoute:[(_INPBStartVideoCallIntent *)self audioRoute]];
  }

  v6 = [(_INPBStartCallRequestMetadata *)self->_callRequestMetadata copyWithZone:zone];
  [(_INPBStartVideoCallIntent *)v5 setCallRequestMetadata:v6];

  v7 = [(NSArray *)self->_contacts copyWithZone:zone];
  [(_INPBStartVideoCallIntent *)v5 setContacts:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBStartVideoCallIntent *)v5 setIntentMetadata:v8];

  v9 = [(NSArray *)self->_targetContacts copyWithZone:zone];
  [(_INPBStartVideoCallIntent *)v5 setTargetContacts:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBStartVideoCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBStartVideoCallIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBStartVideoCallIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v33 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBStartVideoCallIntent *)self hasAudioRoute])
  {
    audioRoute = self->_audioRoute;
    PBDataWriterWriteInt32Field();
  }

  callRequestMetadata = [(_INPBStartVideoCallIntent *)self callRequestMetadata];

  if (callRequestMetadata)
  {
    callRequestMetadata2 = [(_INPBStartVideoCallIntent *)self callRequestMetadata];
    PBDataWriterWriteSubmessage();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_contacts;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  intentMetadata = [(_INPBStartVideoCallIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBStartVideoCallIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_targetContacts;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
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