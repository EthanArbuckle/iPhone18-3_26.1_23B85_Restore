@interface _INPBStartAudioCallIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBStartAudioCallIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)a3;
- (unint64_t)hash;
- (void)addTargetContacts:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioRoute:(int)a3;
- (void)setStatus:(id)a3;
- (void)setTargetContacts:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBStartAudioCallIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartAudioCallIntentResponse *)self hasAudioRoute])
  {
    v4 = [(_INPBStartAudioCallIntentResponse *)self audioRoute];
    if ((v4 - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7281FA0[(v4 - 2)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  v6 = [(_INPBStartAudioCallIntentResponse *)self metrics];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"metrics"];

  if (self->_status)
  {
    v8 = [(_INPBStartAudioCallIntentResponse *)self status];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"status"];
  }

  if (self->_targetContacts)
  {
    v10 = [(_INPBStartAudioCallIntentResponse *)self targetContacts];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"targetContacts"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBStartAudioCallIntentResponse *)self hasAudioRoute];
  if (v5 != [v4 hasAudioRoute])
  {
    goto LABEL_21;
  }

  if ([(_INPBStartAudioCallIntentResponse *)self hasAudioRoute])
  {
    if ([v4 hasAudioRoute])
    {
      audioRoute = self->_audioRoute;
      if (audioRoute != [v4 audioRoute])
      {
        goto LABEL_21;
      }
    }
  }

  v7 = [(_INPBStartAudioCallIntentResponse *)self metrics];
  v8 = [v4 metrics];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v9 = [(_INPBStartAudioCallIntentResponse *)self metrics];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBStartAudioCallIntentResponse *)self metrics];
    v12 = [v4 metrics];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBStartAudioCallIntentResponse *)self status];
  v8 = [v4 status];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBStartAudioCallIntentResponse *)self status];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBStartAudioCallIntentResponse *)self status];
    v17 = [v4 status];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBStartAudioCallIntentResponse *)self targetContacts];
  v8 = [v4 targetContacts];
  if ((v7 != 0) != (v8 == 0))
  {
    v19 = [(_INPBStartAudioCallIntentResponse *)self targetContacts];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBStartAudioCallIntentResponse *)self targetContacts];
    v22 = [v4 targetContacts];
    v23 = [v21 isEqual:v22];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBStartAudioCallIntentResponse allocWithZone:](_INPBStartAudioCallIntentResponse init];
  if ([(_INPBStartAudioCallIntentResponse *)self hasAudioRoute])
  {
    [(_INPBStartAudioCallIntentResponse *)v5 setAudioRoute:[(_INPBStartAudioCallIntentResponse *)self audioRoute]];
  }

  v6 = [(_INPBCallMetrics *)self->_metrics copyWithZone:a3];
  [(_INPBStartAudioCallIntentResponse *)v5 setMetrics:v6];

  v7 = [(NSString *)self->_status copyWithZone:a3];
  [(_INPBStartAudioCallIntentResponse *)v5 setStatus:v7];

  v8 = [(NSArray *)self->_targetContacts copyWithZone:a3];
  [(_INPBStartAudioCallIntentResponse *)v5 setTargetContacts:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBStartAudioCallIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBStartAudioCallIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBStartAudioCallIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBStartAudioCallIntentResponse *)self hasAudioRoute])
  {
    audioRoute = self->_audioRoute;
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_INPBStartAudioCallIntentResponse *)self metrics];

  if (v6)
  {
    v7 = [(_INPBStartAudioCallIntentResponse *)self metrics];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBStartAudioCallIntentResponse *)self status];

  if (v8)
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

- (void)addTargetContacts:(id)a3
{
  v4 = a3;
  targetContacts = self->_targetContacts;
  v8 = v4;
  if (!targetContacts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_targetContacts;
    self->_targetContacts = v6;

    v4 = v8;
    targetContacts = self->_targetContacts;
  }

  [(NSArray *)targetContacts addObject:v4];
}

- (void)setTargetContacts:(id)a3
{
  v4 = [a3 mutableCopy];
  targetContacts = self->_targetContacts;
  self->_targetContacts = v4;

  MEMORY[0x1EEE66BB8](v4, targetContacts);
}

- (void)setStatus:(id)a3
{
  v4 = [a3 copy];
  status = self->_status;
  self->_status = v4;

  MEMORY[0x1EEE66BB8](v4, status);
}

- (int)StringAsAudioRoute:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SPEAKERPHONE_AUDIO_ROUTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BLUETOOTH_AUDIO_ROUTE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HEY_SIRI_AUDIO_ROUTE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setAudioRoute:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_audioRoute = a3;
  }
}

@end