@interface _INPBStartCallIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBStartCallIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsConfirmationReason:(id)a3;
- (unint64_t)hash;
- (void)addRestrictedContacts:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setConfirmationReason:(int)a3;
- (void)setHasShouldDoEmergencyCountdown:(BOOL)a3;
- (void)setRestrictedContacts:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBStartCallIntentResponse

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartCallIntentResponse *)self hasConfirmationReason])
  {
    v4 = [(_INPBStartCallIntentResponse *)self confirmationReason];
    if ((v4 - 1) >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = *(&off_1E7287060 + (v4 - 1));
    }

    [v3 setObject:v5 forKeyedSubscript:@"confirmationReason"];
  }

  if ([(NSArray *)self->_restrictedContacts count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"restrictedContacts"];
  }

  if ([(_INPBStartCallIntentResponse *)self hasShouldDoEmergencyCountdown])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartCallIntentResponse shouldDoEmergencyCountdown](self, "shouldDoEmergencyCountdown")}];
    [v3 setObject:v13 forKeyedSubscript:@"shouldDoEmergencyCountdown"];
  }

  v14 = [(_INPBStartCallIntentResponse *)self startedCall];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"startedCall"];

  v16 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(_INPBStartCallIntentResponse *)self hasConfirmationReason];
  if (v5 != [v4 hasConfirmationReason])
  {
    goto LABEL_20;
  }

  if ([(_INPBStartCallIntentResponse *)self hasConfirmationReason])
  {
    if ([v4 hasConfirmationReason])
    {
      confirmationReason = self->_confirmationReason;
      if (confirmationReason != [v4 confirmationReason])
      {
        goto LABEL_20;
      }
    }
  }

  v7 = [(_INPBStartCallIntentResponse *)self restrictedContacts];
  v8 = [v4 restrictedContacts];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_19;
  }

  v9 = [(_INPBStartCallIntentResponse *)self restrictedContacts];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBStartCallIntentResponse *)self restrictedContacts];
    v12 = [v4 restrictedContacts];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v14 = [(_INPBStartCallIntentResponse *)self hasShouldDoEmergencyCountdown];
  if (v14 != [v4 hasShouldDoEmergencyCountdown])
  {
    goto LABEL_20;
  }

  if ([(_INPBStartCallIntentResponse *)self hasShouldDoEmergencyCountdown])
  {
    if ([v4 hasShouldDoEmergencyCountdown])
    {
      shouldDoEmergencyCountdown = self->_shouldDoEmergencyCountdown;
      if (shouldDoEmergencyCountdown != [v4 shouldDoEmergencyCountdown])
      {
        goto LABEL_20;
      }
    }
  }

  v7 = [(_INPBStartCallIntentResponse *)self startedCall];
  v8 = [v4 startedCall];
  if ((v7 != 0) != (v8 == 0))
  {
    v16 = [(_INPBStartCallIntentResponse *)self startedCall];
    if (!v16)
    {

LABEL_23:
      v21 = 1;
      goto LABEL_21;
    }

    v17 = v16;
    v18 = [(_INPBStartCallIntentResponse *)self startedCall];
    v19 = [v4 startedCall];
    v20 = [v18 isEqual:v19];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBStartCallIntentResponse allocWithZone:](_INPBStartCallIntentResponse init];
  if ([(_INPBStartCallIntentResponse *)self hasConfirmationReason])
  {
    [(_INPBStartCallIntentResponse *)v5 setConfirmationReason:[(_INPBStartCallIntentResponse *)self confirmationReason]];
  }

  v6 = [(NSArray *)self->_restrictedContacts copyWithZone:a3];
  [(_INPBStartCallIntentResponse *)v5 setRestrictedContacts:v6];

  if ([(_INPBStartCallIntentResponse *)self hasShouldDoEmergencyCountdown])
  {
    [(_INPBStartCallIntentResponse *)v5 setShouldDoEmergencyCountdown:[(_INPBStartCallIntentResponse *)self shouldDoEmergencyCountdown]];
  }

  v7 = [(_INPBConnectedCall *)self->_startedCall copyWithZone:a3];
  [(_INPBStartCallIntentResponse *)v5 setStartedCall:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBStartCallIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBStartCallIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBStartCallIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v13 = [(_INPBStartCallIntentResponse *)self startedCall];

  if (v13)
  {
    v14 = [(_INPBStartCallIntentResponse *)self startedCall];
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setHasShouldDoEmergencyCountdown:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addRestrictedContacts:(id)a3
{
  v4 = a3;
  restrictedContacts = self->_restrictedContacts;
  v8 = v4;
  if (!restrictedContacts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_restrictedContacts;
    self->_restrictedContacts = v6;

    v4 = v8;
    restrictedContacts = self->_restrictedContacts;
  }

  [(NSArray *)restrictedContacts addObject:v4];
}

- (void)setRestrictedContacts:(id)a3
{
  v4 = [a3 mutableCopy];
  restrictedContacts = self->_restrictedContacts;
  self->_restrictedContacts = v4;

  MEMORY[0x1EEE66BB8](v4, restrictedContacts);
}

- (int)StringAsConfirmationReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CALLS_ON_HOMEPOD"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REDIAL_EMERGENCY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CALL_BACK_EMERGENCY"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HAS_RESTRICTED_CONTACTS"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
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