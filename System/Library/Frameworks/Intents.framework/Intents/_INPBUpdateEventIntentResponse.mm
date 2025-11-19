@interface _INPBUpdateEventIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBUpdateEventIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsConfirmationReason:(id)a3;
- (unint64_t)hash;
- (void)addConflictingEventIdentifiers:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setConfirmationReason:(int)a3;
- (void)setConflictingEventIdentifiers:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBUpdateEventIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBUpdateEventIntentResponse *)self hasConfirmationReason])
  {
    v4 = [(_INPBUpdateEventIntentResponse *)self confirmationReason];
    if (v4 == 1)
    {
      v5 = @"SCHEDULE_CONFLICT";
    }

    else if (v4 == 2)
    {
      v5 = @"UPDATE_ALL_RECURRENCES";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"confirmationReason"];
  }

  if (self->_conflictingEventIdentifiers)
  {
    v6 = [(_INPBUpdateEventIntentResponse *)self conflictingEventIdentifiers];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"conflictingEventIdentifiers"];
  }

  v8 = [(_INPBUpdateEventIntentResponse *)self updatedEvent];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"updatedEvent"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBUpdateEventIntentResponse *)self hasConfirmationReason])
  {
    v3 = 2654435761 * self->_confirmationReason;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_conflictingEventIdentifiers hash]^ v3;
  return v4 ^ [(_INPBCalendarEvent *)self->_updatedEvent hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBUpdateEventIntentResponse *)self hasConfirmationReason];
  if (v5 != [v4 hasConfirmationReason])
  {
    goto LABEL_16;
  }

  if ([(_INPBUpdateEventIntentResponse *)self hasConfirmationReason])
  {
    if ([v4 hasConfirmationReason])
    {
      confirmationReason = self->_confirmationReason;
      if (confirmationReason != [v4 confirmationReason])
      {
        goto LABEL_16;
      }
    }
  }

  v7 = [(_INPBUpdateEventIntentResponse *)self conflictingEventIdentifiers];
  v8 = [v4 conflictingEventIdentifiers];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_15;
  }

  v9 = [(_INPBUpdateEventIntentResponse *)self conflictingEventIdentifiers];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBUpdateEventIntentResponse *)self conflictingEventIdentifiers];
    v12 = [v4 conflictingEventIdentifiers];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(_INPBUpdateEventIntentResponse *)self updatedEvent];
  v8 = [v4 updatedEvent];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(_INPBUpdateEventIntentResponse *)self updatedEvent];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBUpdateEventIntentResponse *)self updatedEvent];
    v17 = [v4 updatedEvent];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBUpdateEventIntentResponse allocWithZone:](_INPBUpdateEventIntentResponse init];
  if ([(_INPBUpdateEventIntentResponse *)self hasConfirmationReason])
  {
    [(_INPBUpdateEventIntentResponse *)v5 setConfirmationReason:[(_INPBUpdateEventIntentResponse *)self confirmationReason]];
  }

  v6 = [(NSArray *)self->_conflictingEventIdentifiers copyWithZone:a3];
  [(_INPBUpdateEventIntentResponse *)v5 setConflictingEventIdentifiers:v6];

  v7 = [(_INPBCalendarEvent *)self->_updatedEvent copyWithZone:a3];
  [(_INPBUpdateEventIntentResponse *)v5 setUpdatedEvent:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBUpdateEventIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBUpdateEventIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBUpdateEventIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBUpdateEventIntentResponse *)self hasConfirmationReason])
  {
    confirmationReason = self->_confirmationReason;
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_conflictingEventIdentifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(_INPBUpdateEventIntentResponse *)self updatedEvent];

  if (v12)
  {
    v13 = [(_INPBUpdateEventIntentResponse *)self updatedEvent];
    PBDataWriterWriteSubmessage();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addConflictingEventIdentifiers:(id)a3
{
  v4 = a3;
  conflictingEventIdentifiers = self->_conflictingEventIdentifiers;
  v8 = v4;
  if (!conflictingEventIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_conflictingEventIdentifiers;
    self->_conflictingEventIdentifiers = v6;

    v4 = v8;
    conflictingEventIdentifiers = self->_conflictingEventIdentifiers;
  }

  [(NSArray *)conflictingEventIdentifiers addObject:v4];
}

- (void)setConflictingEventIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
  conflictingEventIdentifiers = self->_conflictingEventIdentifiers;
  self->_conflictingEventIdentifiers = v4;

  MEMORY[0x1EEE66BB8](v4, conflictingEventIdentifiers);
}

- (int)StringAsConfirmationReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"SCHEDULE_CONFLICT"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"UPDATE_ALL_RECURRENCES"])
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

- (void)setConfirmationReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_confirmationReason = a3;
  }
}

@end