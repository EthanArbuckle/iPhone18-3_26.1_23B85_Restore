@interface _INPBFindEventsIntent
- (BOOL)isEqual:(id)a3;
- (_INPBFindEventsIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsRequestedEventAttribute:(id)a3;
- (unint64_t)hash;
- (void)addParticipants:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setParticipants:(id)a3;
- (void)setRequestedEventAttribute:(int)a3;
- (void)setSearchQuery:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBFindEventsIntent

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBFindEventsIntent *)self dateTimeRange];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"dateTimeRange"];

  v6 = [(_INPBFindEventsIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBFindEventsIntent *)self location];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"location"];

  if ([(NSArray *)self->_participants count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = self->_participants;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"participants"];
  }

  if ([(_INPBFindEventsIntent *)self hasRequestedEventAttribute])
  {
    v17 = [(_INPBFindEventsIntent *)self requestedEventAttribute];
    if ((v17 - 1) >= 3)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v17];
    }

    else
    {
      v18 = off_1E727F610[(v17 - 1)];
    }

    [v3 setObject:v18 forKeyedSubscript:@"requestedEventAttribute"];
  }

  if (self->_searchQuery)
  {
    v19 = [(_INPBFindEventsIntent *)self searchQuery];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"searchQuery"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v5 = [(_INPBLocation *)self->_location hash];
  v6 = [(NSArray *)self->_participants hash];
  if ([(_INPBFindEventsIntent *)self hasRequestedEventAttribute])
  {
    v7 = 2654435761 * self->_requestedEventAttribute;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_searchQuery hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = [(_INPBFindEventsIntent *)self dateTimeRange];
  v6 = [v4 dateTimeRange];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v7 = [(_INPBFindEventsIntent *)self dateTimeRange];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBFindEventsIntent *)self dateTimeRange];
    v10 = [v4 dateTimeRange];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBFindEventsIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v12 = [(_INPBFindEventsIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBFindEventsIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBFindEventsIntent *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v17 = [(_INPBFindEventsIntent *)self location];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBFindEventsIntent *)self location];
    v20 = [v4 location];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBFindEventsIntent *)self participants];
  v6 = [v4 participants];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v22 = [(_INPBFindEventsIntent *)self participants];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBFindEventsIntent *)self participants];
    v25 = [v4 participants];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v27 = [(_INPBFindEventsIntent *)self hasRequestedEventAttribute];
  if (v27 != [v4 hasRequestedEventAttribute])
  {
    goto LABEL_31;
  }

  if ([(_INPBFindEventsIntent *)self hasRequestedEventAttribute])
  {
    if ([v4 hasRequestedEventAttribute])
    {
      requestedEventAttribute = self->_requestedEventAttribute;
      if (requestedEventAttribute != [v4 requestedEventAttribute])
      {
        goto LABEL_31;
      }
    }
  }

  v5 = [(_INPBFindEventsIntent *)self searchQuery];
  v6 = [v4 searchQuery];
  if ((v5 != 0) != (v6 == 0))
  {
    v29 = [(_INPBFindEventsIntent *)self searchQuery];
    if (!v29)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = v29;
    v31 = [(_INPBFindEventsIntent *)self searchQuery];
    v32 = [v4 searchQuery];
    v33 = [v31 isEqual:v32];

    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_30:
  }

LABEL_31:
  v34 = 0;
LABEL_32:

  return v34;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBFindEventsIntent allocWithZone:](_INPBFindEventsIntent init];
  v6 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange copyWithZone:a3];
  [(_INPBFindEventsIntent *)v5 setDateTimeRange:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBFindEventsIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBLocation *)self->_location copyWithZone:a3];
  [(_INPBFindEventsIntent *)v5 setLocation:v8];

  v9 = [(NSArray *)self->_participants copyWithZone:a3];
  [(_INPBFindEventsIntent *)v5 setParticipants:v9];

  if ([(_INPBFindEventsIntent *)self hasRequestedEventAttribute])
  {
    [(_INPBFindEventsIntent *)v5 setRequestedEventAttribute:[(_INPBFindEventsIntent *)self requestedEventAttribute]];
  }

  v10 = [(NSString *)self->_searchQuery copyWithZone:a3];
  [(_INPBFindEventsIntent *)v5 setSearchQuery:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBFindEventsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBFindEventsIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBFindEventsIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBFindEventsIntent *)self dateTimeRange];

  if (v5)
  {
    v6 = [(_INPBFindEventsIntent *)self dateTimeRange];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBFindEventsIntent *)self intentMetadata];

  if (v7)
  {
    v8 = [(_INPBFindEventsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBFindEventsIntent *)self location];

  if (v9)
  {
    v10 = [(_INPBFindEventsIntent *)self location];
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_participants;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  if ([(_INPBFindEventsIntent *)self hasRequestedEventAttribute])
  {
    requestedEventAttribute = self->_requestedEventAttribute;
    PBDataWriterWriteInt32Field();
  }

  v18 = [(_INPBFindEventsIntent *)self searchQuery];

  if (v18)
  {
    searchQuery = self->_searchQuery;
    PBDataWriterWriteStringField();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setSearchQuery:(id)a3
{
  v4 = [a3 copy];
  searchQuery = self->_searchQuery;
  self->_searchQuery = v4;

  MEMORY[0x1EEE66BB8](v4, searchQuery);
}

- (int)StringAsRequestedEventAttribute:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"EVENT_LOCATION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PARTICIPANTS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DATETIME"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setRequestedEventAttribute:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_requestedEventAttribute = a3;
  }
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