@interface _INPBStartAudioCallIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBStartAudioCallIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)route;
- (unint64_t)hash;
- (void)addTargetContacts:(id)contacts;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioRoute:(int)route;
- (void)setStatus:(id)status;
- (void)setTargetContacts:(id)contacts;
- (void)writeTo:(id)to;
@end

@implementation _INPBStartAudioCallIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartAudioCallIntentResponse *)self hasAudioRoute])
  {
    audioRoute = [(_INPBStartAudioCallIntentResponse *)self audioRoute];
    if ((audioRoute - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", audioRoute];
    }

    else
    {
      v5 = off_1E7281FA0[(audioRoute - 2)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  metrics = [(_INPBStartAudioCallIntentResponse *)self metrics];
  dictionaryRepresentation = [metrics dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"metrics"];

  if (self->_status)
  {
    status = [(_INPBStartAudioCallIntentResponse *)self status];
    v9 = [status copy];
    [dictionary setObject:v9 forKeyedSubscript:@"status"];
  }

  if (self->_targetContacts)
  {
    targetContacts = [(_INPBStartAudioCallIntentResponse *)self targetContacts];
    v11 = [targetContacts copy];
    [dictionary setObject:v11 forKeyedSubscript:@"targetContacts"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBStartAudioCallIntentResponse *)self hasAudioRoute])
  {
    v3 = 2654435761 * self->_audioRoute;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBCallMetrics *)self->_metrics hash]^ v3;
  v5 = [(NSString *)self->_status hash];
  return v4 ^ v5 ^ [(NSArray *)self->_targetContacts hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  hasAudioRoute = [(_INPBStartAudioCallIntentResponse *)self hasAudioRoute];
  if (hasAudioRoute != [equalCopy hasAudioRoute])
  {
    goto LABEL_21;
  }

  if ([(_INPBStartAudioCallIntentResponse *)self hasAudioRoute])
  {
    if ([equalCopy hasAudioRoute])
    {
      audioRoute = self->_audioRoute;
      if (audioRoute != [equalCopy audioRoute])
      {
        goto LABEL_21;
      }
    }
  }

  metrics = [(_INPBStartAudioCallIntentResponse *)self metrics];
  metrics2 = [equalCopy metrics];
  if ((metrics != 0) == (metrics2 == 0))
  {
    goto LABEL_20;
  }

  metrics3 = [(_INPBStartAudioCallIntentResponse *)self metrics];
  if (metrics3)
  {
    v10 = metrics3;
    metrics4 = [(_INPBStartAudioCallIntentResponse *)self metrics];
    metrics5 = [equalCopy metrics];
    v13 = [metrics4 isEqual:metrics5];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  metrics = [(_INPBStartAudioCallIntentResponse *)self status];
  metrics2 = [equalCopy status];
  if ((metrics != 0) == (metrics2 == 0))
  {
    goto LABEL_20;
  }

  status = [(_INPBStartAudioCallIntentResponse *)self status];
  if (status)
  {
    v15 = status;
    status2 = [(_INPBStartAudioCallIntentResponse *)self status];
    status3 = [equalCopy status];
    v18 = [status2 isEqual:status3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  metrics = [(_INPBStartAudioCallIntentResponse *)self targetContacts];
  metrics2 = [equalCopy targetContacts];
  if ((metrics != 0) != (metrics2 == 0))
  {
    targetContacts = [(_INPBStartAudioCallIntentResponse *)self targetContacts];
    if (!targetContacts)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = targetContacts;
    targetContacts2 = [(_INPBStartAudioCallIntentResponse *)self targetContacts];
    targetContacts3 = [equalCopy targetContacts];
    v23 = [targetContacts2 isEqual:targetContacts3];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBStartAudioCallIntentResponse allocWithZone:](_INPBStartAudioCallIntentResponse init];
  if ([(_INPBStartAudioCallIntentResponse *)self hasAudioRoute])
  {
    [(_INPBStartAudioCallIntentResponse *)v5 setAudioRoute:[(_INPBStartAudioCallIntentResponse *)self audioRoute]];
  }

  v6 = [(_INPBCallMetrics *)self->_metrics copyWithZone:zone];
  [(_INPBStartAudioCallIntentResponse *)v5 setMetrics:v6];

  v7 = [(NSString *)self->_status copyWithZone:zone];
  [(_INPBStartAudioCallIntentResponse *)v5 setStatus:v7];

  v8 = [(NSArray *)self->_targetContacts copyWithZone:zone];
  [(_INPBStartAudioCallIntentResponse *)v5 setTargetContacts:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBStartAudioCallIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBStartAudioCallIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBStartAudioCallIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBStartAudioCallIntentResponse *)self hasAudioRoute])
  {
    audioRoute = self->_audioRoute;
    PBDataWriterWriteInt32Field();
  }

  metrics = [(_INPBStartAudioCallIntentResponse *)self metrics];

  if (metrics)
  {
    metrics2 = [(_INPBStartAudioCallIntentResponse *)self metrics];
    PBDataWriterWriteSubmessage();
  }

  status = [(_INPBStartAudioCallIntentResponse *)self status];

  if (status)
  {
    status = self->_status;
    PBDataWriterWriteStringField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_targetContacts;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
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

- (void)setStatus:(id)status
{
  v4 = [status copy];
  status = self->_status;
  self->_status = v4;

  MEMORY[0x1EEE66BB8](v4, status);
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