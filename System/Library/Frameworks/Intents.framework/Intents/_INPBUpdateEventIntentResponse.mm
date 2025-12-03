@interface _INPBUpdateEventIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBUpdateEventIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsConfirmationReason:(id)reason;
- (unint64_t)hash;
- (void)addConflictingEventIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
- (void)setConfirmationReason:(int)reason;
- (void)setConflictingEventIdentifiers:(id)identifiers;
- (void)writeTo:(id)to;
@end

@implementation _INPBUpdateEventIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBUpdateEventIntentResponse *)self hasConfirmationReason])
  {
    confirmationReason = [(_INPBUpdateEventIntentResponse *)self confirmationReason];
    if (confirmationReason == 1)
    {
      v5 = @"SCHEDULE_CONFLICT";
    }

    else if (confirmationReason == 2)
    {
      v5 = @"UPDATE_ALL_RECURRENCES";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", confirmationReason];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"confirmationReason"];
  }

  if (self->_conflictingEventIdentifiers)
  {
    conflictingEventIdentifiers = [(_INPBUpdateEventIntentResponse *)self conflictingEventIdentifiers];
    v7 = [conflictingEventIdentifiers copy];
    [dictionary setObject:v7 forKeyedSubscript:@"conflictingEventIdentifiers"];
  }

  updatedEvent = [(_INPBUpdateEventIntentResponse *)self updatedEvent];
  dictionaryRepresentation = [updatedEvent dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"updatedEvent"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasConfirmationReason = [(_INPBUpdateEventIntentResponse *)self hasConfirmationReason];
  if (hasConfirmationReason != [equalCopy hasConfirmationReason])
  {
    goto LABEL_16;
  }

  if ([(_INPBUpdateEventIntentResponse *)self hasConfirmationReason])
  {
    if ([equalCopy hasConfirmationReason])
    {
      confirmationReason = self->_confirmationReason;
      if (confirmationReason != [equalCopy confirmationReason])
      {
        goto LABEL_16;
      }
    }
  }

  conflictingEventIdentifiers = [(_INPBUpdateEventIntentResponse *)self conflictingEventIdentifiers];
  conflictingEventIdentifiers2 = [equalCopy conflictingEventIdentifiers];
  if ((conflictingEventIdentifiers != 0) == (conflictingEventIdentifiers2 == 0))
  {
    goto LABEL_15;
  }

  conflictingEventIdentifiers3 = [(_INPBUpdateEventIntentResponse *)self conflictingEventIdentifiers];
  if (conflictingEventIdentifiers3)
  {
    v10 = conflictingEventIdentifiers3;
    conflictingEventIdentifiers4 = [(_INPBUpdateEventIntentResponse *)self conflictingEventIdentifiers];
    conflictingEventIdentifiers5 = [equalCopy conflictingEventIdentifiers];
    v13 = [conflictingEventIdentifiers4 isEqual:conflictingEventIdentifiers5];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  conflictingEventIdentifiers = [(_INPBUpdateEventIntentResponse *)self updatedEvent];
  conflictingEventIdentifiers2 = [equalCopy updatedEvent];
  if ((conflictingEventIdentifiers != 0) != (conflictingEventIdentifiers2 == 0))
  {
    updatedEvent = [(_INPBUpdateEventIntentResponse *)self updatedEvent];
    if (!updatedEvent)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = updatedEvent;
    updatedEvent2 = [(_INPBUpdateEventIntentResponse *)self updatedEvent];
    updatedEvent3 = [equalCopy updatedEvent];
    v18 = [updatedEvent2 isEqual:updatedEvent3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBUpdateEventIntentResponse allocWithZone:](_INPBUpdateEventIntentResponse init];
  if ([(_INPBUpdateEventIntentResponse *)self hasConfirmationReason])
  {
    [(_INPBUpdateEventIntentResponse *)v5 setConfirmationReason:[(_INPBUpdateEventIntentResponse *)self confirmationReason]];
  }

  v6 = [(NSArray *)self->_conflictingEventIdentifiers copyWithZone:zone];
  [(_INPBUpdateEventIntentResponse *)v5 setConflictingEventIdentifiers:v6];

  v7 = [(_INPBCalendarEvent *)self->_updatedEvent copyWithZone:zone];
  [(_INPBUpdateEventIntentResponse *)v5 setUpdatedEvent:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBUpdateEventIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBUpdateEventIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBUpdateEventIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  updatedEvent = [(_INPBUpdateEventIntentResponse *)self updatedEvent];

  if (updatedEvent)
  {
    updatedEvent2 = [(_INPBUpdateEventIntentResponse *)self updatedEvent];
    PBDataWriterWriteSubmessage();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addConflictingEventIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  conflictingEventIdentifiers = self->_conflictingEventIdentifiers;
  v8 = identifiersCopy;
  if (!conflictingEventIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_conflictingEventIdentifiers;
    self->_conflictingEventIdentifiers = array;

    identifiersCopy = v8;
    conflictingEventIdentifiers = self->_conflictingEventIdentifiers;
  }

  [(NSArray *)conflictingEventIdentifiers addObject:identifiersCopy];
}

- (void)setConflictingEventIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  conflictingEventIdentifiers = self->_conflictingEventIdentifiers;
  self->_conflictingEventIdentifiers = v4;

  MEMORY[0x1EEE66BB8](v4, conflictingEventIdentifiers);
}

- (int)StringAsConfirmationReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"SCHEDULE_CONFLICT"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"UPDATE_ALL_RECURRENCES"])
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

- (void)setConfirmationReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_confirmationReason = reason;
  }
}

@end