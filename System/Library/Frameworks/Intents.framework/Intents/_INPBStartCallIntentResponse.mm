@interface _INPBStartCallIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBStartCallIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsConfirmationReason:(id)reason;
- (unint64_t)hash;
- (void)addRestrictedContacts:(id)contacts;
- (void)encodeWithCoder:(id)coder;
- (void)setConfirmationReason:(int)reason;
- (void)setHasShouldDoEmergencyCountdown:(BOOL)countdown;
- (void)setRestrictedContacts:(id)contacts;
- (void)writeTo:(id)to;
@end

@implementation _INPBStartCallIntentResponse

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartCallIntentResponse *)self hasConfirmationReason])
  {
    confirmationReason = [(_INPBStartCallIntentResponse *)self confirmationReason];
    if ((confirmationReason - 1) >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", confirmationReason];
    }

    else
    {
      v5 = *(&off_1E7287060 + (confirmationReason - 1));
    }

    [dictionary setObject:v5 forKeyedSubscript:@"confirmationReason"];
  }

  if ([(NSArray *)self->_restrictedContacts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_restrictedContacts;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"restrictedContacts"];
  }

  if ([(_INPBStartCallIntentResponse *)self hasShouldDoEmergencyCountdown])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartCallIntentResponse shouldDoEmergencyCountdown](self, "shouldDoEmergencyCountdown")}];
    [dictionary setObject:v13 forKeyedSubscript:@"shouldDoEmergencyCountdown"];
  }

  startedCall = [(_INPBStartCallIntentResponse *)self startedCall];
  dictionaryRepresentation2 = [startedCall dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"startedCall"];

  v16 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBStartCallIntentResponse *)self hasConfirmationReason])
  {
    v3 = 2654435761 * self->_confirmationReason;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_restrictedContacts hash];
  if ([(_INPBStartCallIntentResponse *)self hasShouldDoEmergencyCountdown])
  {
    v5 = 2654435761 * self->_shouldDoEmergencyCountdown;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(_INPBConnectedCall *)self->_startedCall hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  hasConfirmationReason = [(_INPBStartCallIntentResponse *)self hasConfirmationReason];
  if (hasConfirmationReason != [equalCopy hasConfirmationReason])
  {
    goto LABEL_20;
  }

  if ([(_INPBStartCallIntentResponse *)self hasConfirmationReason])
  {
    if ([equalCopy hasConfirmationReason])
    {
      confirmationReason = self->_confirmationReason;
      if (confirmationReason != [equalCopy confirmationReason])
      {
        goto LABEL_20;
      }
    }
  }

  restrictedContacts = [(_INPBStartCallIntentResponse *)self restrictedContacts];
  restrictedContacts2 = [equalCopy restrictedContacts];
  if ((restrictedContacts != 0) == (restrictedContacts2 == 0))
  {
    goto LABEL_19;
  }

  restrictedContacts3 = [(_INPBStartCallIntentResponse *)self restrictedContacts];
  if (restrictedContacts3)
  {
    v10 = restrictedContacts3;
    restrictedContacts4 = [(_INPBStartCallIntentResponse *)self restrictedContacts];
    restrictedContacts5 = [equalCopy restrictedContacts];
    v13 = [restrictedContacts4 isEqual:restrictedContacts5];

    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  hasShouldDoEmergencyCountdown = [(_INPBStartCallIntentResponse *)self hasShouldDoEmergencyCountdown];
  if (hasShouldDoEmergencyCountdown != [equalCopy hasShouldDoEmergencyCountdown])
  {
    goto LABEL_20;
  }

  if ([(_INPBStartCallIntentResponse *)self hasShouldDoEmergencyCountdown])
  {
    if ([equalCopy hasShouldDoEmergencyCountdown])
    {
      shouldDoEmergencyCountdown = self->_shouldDoEmergencyCountdown;
      if (shouldDoEmergencyCountdown != [equalCopy shouldDoEmergencyCountdown])
      {
        goto LABEL_20;
      }
    }
  }

  restrictedContacts = [(_INPBStartCallIntentResponse *)self startedCall];
  restrictedContacts2 = [equalCopy startedCall];
  if ((restrictedContacts != 0) != (restrictedContacts2 == 0))
  {
    startedCall = [(_INPBStartCallIntentResponse *)self startedCall];
    if (!startedCall)
    {

LABEL_23:
      v21 = 1;
      goto LABEL_21;
    }

    v17 = startedCall;
    startedCall2 = [(_INPBStartCallIntentResponse *)self startedCall];
    startedCall3 = [equalCopy startedCall];
    v20 = [startedCall2 isEqual:startedCall3];

    if (v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v21 = 0;
LABEL_21:

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBStartCallIntentResponse allocWithZone:](_INPBStartCallIntentResponse init];
  if ([(_INPBStartCallIntentResponse *)self hasConfirmationReason])
  {
    [(_INPBStartCallIntentResponse *)v5 setConfirmationReason:[(_INPBStartCallIntentResponse *)self confirmationReason]];
  }

  v6 = [(NSArray *)self->_restrictedContacts copyWithZone:zone];
  [(_INPBStartCallIntentResponse *)v5 setRestrictedContacts:v6];

  if ([(_INPBStartCallIntentResponse *)self hasShouldDoEmergencyCountdown])
  {
    [(_INPBStartCallIntentResponse *)v5 setShouldDoEmergencyCountdown:[(_INPBStartCallIntentResponse *)self shouldDoEmergencyCountdown]];
  }

  v7 = [(_INPBConnectedCall *)self->_startedCall copyWithZone:zone];
  [(_INPBStartCallIntentResponse *)v5 setStartedCall:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBStartCallIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBStartCallIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBStartCallIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBStartCallIntentResponse *)self hasConfirmationReason])
  {
    confirmationReason = self->_confirmationReason;
    PBDataWriterWriteInt32Field();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_restrictedContacts;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([(_INPBStartCallIntentResponse *)self hasShouldDoEmergencyCountdown])
  {
    shouldDoEmergencyCountdown = self->_shouldDoEmergencyCountdown;
    PBDataWriterWriteBOOLField();
  }

  startedCall = [(_INPBStartCallIntentResponse *)self startedCall];

  if (startedCall)
  {
    startedCall2 = [(_INPBStartCallIntentResponse *)self startedCall];
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setHasShouldDoEmergencyCountdown:(BOOL)countdown
{
  if (countdown)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addRestrictedContacts:(id)contacts
{
  contactsCopy = contacts;
  restrictedContacts = self->_restrictedContacts;
  v8 = contactsCopy;
  if (!restrictedContacts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_restrictedContacts;
    self->_restrictedContacts = array;

    contactsCopy = v8;
    restrictedContacts = self->_restrictedContacts;
  }

  [(NSArray *)restrictedContacts addObject:contactsCopy];
}

- (void)setRestrictedContacts:(id)contacts
{
  v4 = [contacts mutableCopy];
  restrictedContacts = self->_restrictedContacts;
  self->_restrictedContacts = v4;

  MEMORY[0x1EEE66BB8](v4, restrictedContacts);
}

- (int)StringAsConfirmationReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"CALLS_ON_HOMEPOD"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"REDIAL_EMERGENCY"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"CALL_BACK_EMERGENCY"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"HAS_RESTRICTED_CONTACTS"])
  {
    v4 = 4;
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