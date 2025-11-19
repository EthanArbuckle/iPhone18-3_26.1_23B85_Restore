@interface _INPBStartVideoCallIntent
- (BOOL)isEqual:(id)a3;
- (_INPBStartVideoCallIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)a3;
- (unint64_t)hash;
- (void)addContact:(id)a3;
- (void)addTargetContacts:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioRoute:(int)a3;
- (void)setContacts:(id)a3;
- (void)setTargetContacts:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBStartVideoCallIntent

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartVideoCallIntent *)self hasAudioRoute])
  {
    v4 = [(_INPBStartVideoCallIntent *)self audioRoute];
    if ((v4 - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E727F7F0[(v4 - 2)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  v6 = [(_INPBStartVideoCallIntent *)self callRequestMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"callRequestMetadata"];

  if ([(NSArray *)self->_contacts count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
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

          v14 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"contact"];
  }

  v15 = [(_INPBStartVideoCallIntent *)self intentMetadata];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_targetContacts count])
  {
    v17 = [MEMORY[0x1E695DF70] array];
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

          v23 = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
          [v17 addObject:v23];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"targetContacts"];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = [(_INPBStartVideoCallIntent *)self hasAudioRoute];
  if (v5 != [v4 hasAudioRoute])
  {
    goto LABEL_26;
  }

  if ([(_INPBStartVideoCallIntent *)self hasAudioRoute])
  {
    if ([v4 hasAudioRoute])
    {
      audioRoute = self->_audioRoute;
      if (audioRoute != [v4 audioRoute])
      {
        goto LABEL_26;
      }
    }
  }

  v7 = [(_INPBStartVideoCallIntent *)self callRequestMetadata];
  v8 = [v4 callRequestMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v9 = [(_INPBStartVideoCallIntent *)self callRequestMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBStartVideoCallIntent *)self callRequestMetadata];
    v12 = [v4 callRequestMetadata];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBStartVideoCallIntent *)self contacts];
  v8 = [v4 contacts];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v14 = [(_INPBStartVideoCallIntent *)self contacts];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBStartVideoCallIntent *)self contacts];
    v17 = [v4 contacts];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBStartVideoCallIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v19 = [(_INPBStartVideoCallIntent *)self intentMetadata];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBStartVideoCallIntent *)self intentMetadata];
    v22 = [v4 intentMetadata];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBStartVideoCallIntent *)self targetContacts];
  v8 = [v4 targetContacts];
  if ((v7 != 0) != (v8 == 0))
  {
    v24 = [(_INPBStartVideoCallIntent *)self targetContacts];
    if (!v24)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = v24;
    v26 = [(_INPBStartVideoCallIntent *)self targetContacts];
    v27 = [v4 targetContacts];
    v28 = [v26 isEqual:v27];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBStartVideoCallIntent allocWithZone:](_INPBStartVideoCallIntent init];
  if ([(_INPBStartVideoCallIntent *)self hasAudioRoute])
  {
    [(_INPBStartVideoCallIntent *)v5 setAudioRoute:[(_INPBStartVideoCallIntent *)self audioRoute]];
  }

  v6 = [(_INPBStartCallRequestMetadata *)self->_callRequestMetadata copyWithZone:a3];
  [(_INPBStartVideoCallIntent *)v5 setCallRequestMetadata:v6];

  v7 = [(NSArray *)self->_contacts copyWithZone:a3];
  [(_INPBStartVideoCallIntent *)v5 setContacts:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBStartVideoCallIntent *)v5 setIntentMetadata:v8];

  v9 = [(NSArray *)self->_targetContacts copyWithZone:a3];
  [(_INPBStartVideoCallIntent *)v5 setTargetContacts:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBStartVideoCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBStartVideoCallIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBStartVideoCallIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBStartVideoCallIntent *)self hasAudioRoute])
  {
    audioRoute = self->_audioRoute;
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_INPBStartVideoCallIntent *)self callRequestMetadata];

  if (v6)
  {
    v7 = [(_INPBStartVideoCallIntent *)self callRequestMetadata];
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

  v14 = [(_INPBStartVideoCallIntent *)self intentMetadata];

  if (v14)
  {
    v15 = [(_INPBStartVideoCallIntent *)self intentMetadata];
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

- (void)addContact:(id)a3
{
  v4 = a3;
  contacts = self->_contacts;
  v8 = v4;
  if (!contacts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contacts;
    self->_contacts = v6;

    v4 = v8;
    contacts = self->_contacts;
  }

  [(NSArray *)contacts addObject:v4];
}

- (void)setContacts:(id)a3
{
  v4 = [a3 mutableCopy];
  contacts = self->_contacts;
  self->_contacts = v4;

  MEMORY[0x1EEE66BB8](v4, contacts);
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