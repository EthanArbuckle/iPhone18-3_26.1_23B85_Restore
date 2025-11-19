@interface _INPBCreateEventIntent
- (BOOL)isEqual:(id)a3;
- (_INPBCreateEventIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParticipants:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setParticipants:(id)a3;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCreateEventIntent

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCreateEventIntent *)self dateTimeRange];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"dateTimeRange"];

  v6 = [(_INPBCreateEventIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBCreateEventIntent *)self location];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"location"];

  if ([(NSArray *)self->_participants count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_participants;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"participants"];
  }

  if (self->_title)
  {
    v17 = [(_INPBCreateEventIntent *)self title];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"title"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBLocation *)self->_location hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_participants hash];
  return v6 ^ [(NSString *)self->_title hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBCreateEventIntent *)self dateTimeRange];
  v6 = [v4 dateTimeRange];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBCreateEventIntent *)self dateTimeRange];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCreateEventIntent *)self dateTimeRange];
    v10 = [v4 dateTimeRange];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateEventIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBCreateEventIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCreateEventIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateEventIntent *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBCreateEventIntent *)self location];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBCreateEventIntent *)self location];
    v20 = [v4 location];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateEventIntent *)self participants];
  v6 = [v4 participants];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBCreateEventIntent *)self participants];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBCreateEventIntent *)self participants];
    v25 = [v4 participants];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateEventIntent *)self title];
  v6 = [v4 title];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBCreateEventIntent *)self title];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBCreateEventIntent *)self title];
    v30 = [v4 title];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCreateEventIntent allocWithZone:](_INPBCreateEventIntent init];
  v6 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange copyWithZone:a3];
  [(_INPBCreateEventIntent *)v5 setDateTimeRange:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBCreateEventIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBLocation *)self->_location copyWithZone:a3];
  [(_INPBCreateEventIntent *)v5 setLocation:v8];

  v9 = [(NSArray *)self->_participants copyWithZone:a3];
  [(_INPBCreateEventIntent *)v5 setParticipants:v9];

  v10 = [(NSString *)self->_title copyWithZone:a3];
  [(_INPBCreateEventIntent *)v5 setTitle:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCreateEventIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCreateEventIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCreateEventIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBCreateEventIntent *)self dateTimeRange];

  if (v5)
  {
    v6 = [(_INPBCreateEventIntent *)self dateTimeRange];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBCreateEventIntent *)self intentMetadata];

  if (v7)
  {
    v8 = [(_INPBCreateEventIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBCreateEventIntent *)self location];

  if (v9)
  {
    v10 = [(_INPBCreateEventIntent *)self location];
    PBDataWriterWriteSubmessage();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_participants;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [(_INPBCreateEventIntent *)self title];

  if (v17)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)addParticipants:(id)a3
{
  v4 = a3;
  participants = self->_participants;
  v8 = v4;
  if (!participants)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_participants;
    self->_participants = v6;

    v4 = v8;
    participants = self->_participants;
  }

  [(NSArray *)participants addObject:v4];
}

- (void)setParticipants:(id)a3
{
  v4 = [a3 mutableCopy];
  participants = self->_participants;
  self->_participants = v4;

  MEMORY[0x1EEE66BB8](v4, participants);
}

@end