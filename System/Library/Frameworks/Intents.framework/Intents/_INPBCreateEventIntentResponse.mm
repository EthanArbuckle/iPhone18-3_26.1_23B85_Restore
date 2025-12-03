@interface _INPBCreateEventIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBCreateEventIntentResponse)initWithCoder:(id)coder;
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

@implementation _INPBCreateEventIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCreateEventIntentResponse *)self hasConfirmationReason])
  {
    confirmationReason = [(_INPBCreateEventIntentResponse *)self confirmationReason];
    if ((confirmationReason - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", confirmationReason];
    }

    else
    {
      v5 = off_1E7286EA8[(confirmationReason - 1)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"confirmationReason"];
  }

  if (self->_conflictingEventIdentifiers)
  {
    conflictingEventIdentifiers = [(_INPBCreateEventIntentResponse *)self conflictingEventIdentifiers];
    v7 = [conflictingEventIdentifiers copy];
    [dictionary setObject:v7 forKeyedSubscript:@"conflictingEventIdentifiers"];
  }

  createdEvent = [(_INPBCreateEventIntentResponse *)self createdEvent];
  dictionaryRepresentation = [createdEvent dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"createdEvent"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBCreateEventIntentResponse *)self hasConfirmationReason])
  {
    v3 = 2654435761 * self->_confirmationReason;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_conflictingEventIdentifiers hash]^ v3;
  return v4 ^ [(_INPBCalendarEvent *)self->_createdEvent hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasConfirmationReason = [(_INPBCreateEventIntentResponse *)self hasConfirmationReason];
  if (hasConfirmationReason != [equalCopy hasConfirmationReason])
  {
    goto LABEL_16;
  }

  if ([(_INPBCreateEventIntentResponse *)self hasConfirmationReason])
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

  conflictingEventIdentifiers = [(_INPBCreateEventIntentResponse *)self conflictingEventIdentifiers];
  conflictingEventIdentifiers2 = [equalCopy conflictingEventIdentifiers];
  if ((conflictingEventIdentifiers != 0) == (conflictingEventIdentifiers2 == 0))
  {
    goto LABEL_15;
  }

  conflictingEventIdentifiers3 = [(_INPBCreateEventIntentResponse *)self conflictingEventIdentifiers];
  if (conflictingEventIdentifiers3)
  {
    v10 = conflictingEventIdentifiers3;
    conflictingEventIdentifiers4 = [(_INPBCreateEventIntentResponse *)self conflictingEventIdentifiers];
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

  conflictingEventIdentifiers = [(_INPBCreateEventIntentResponse *)self createdEvent];
  conflictingEventIdentifiers2 = [equalCopy createdEvent];
  if ((conflictingEventIdentifiers != 0) != (conflictingEventIdentifiers2 == 0))
  {
    createdEvent = [(_INPBCreateEventIntentResponse *)self createdEvent];
    if (!createdEvent)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = createdEvent;
    createdEvent2 = [(_INPBCreateEventIntentResponse *)self createdEvent];
    createdEvent3 = [equalCopy createdEvent];
    v18 = [createdEvent2 isEqual:createdEvent3];

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
  v5 = [+[_INPBCreateEventIntentResponse allocWithZone:](_INPBCreateEventIntentResponse init];
  if ([(_INPBCreateEventIntentResponse *)self hasConfirmationReason])
  {
    [(_INPBCreateEventIntentResponse *)v5 setConfirmationReason:[(_INPBCreateEventIntentResponse *)self confirmationReason]];
  }

  v6 = [(NSArray *)self->_conflictingEventIdentifiers copyWithZone:zone];
  [(_INPBCreateEventIntentResponse *)v5 setConflictingEventIdentifiers:v6];

  v7 = [(_INPBCalendarEvent *)self->_createdEvent copyWithZone:zone];
  [(_INPBCreateEventIntentResponse *)v5 setCreatedEvent:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateEventIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateEventIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateEventIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBCreateEventIntentResponse *)self hasConfirmationReason])
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

  createdEvent = [(_INPBCreateEventIntentResponse *)self createdEvent];

  if (createdEvent)
  {
    createdEvent2 = [(_INPBCreateEventIntentResponse *)self createdEvent];
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
  if ([reasonCopy isEqualToString:@"SCHEDULE_CONFLICT"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"SEND_INVITATION_TO_PARTICIPANTS"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"DATE_TIME_CLARIFICATION"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
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