@interface _INPBIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasRequiresProtectedData:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBIntentResponse *)self payloadFailure];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"_payloadFailure"];

  v6 = [(_INPBIntentResponse *)self payloadSuccess];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"_payloadSuccess"];

  if ([(_INPBIntentResponse *)self hasRequiresAuthentication])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentResponse requiresAuthentication](self, "requiresAuthentication")}];
    [v3 setObject:v8 forKeyedSubscript:@"requiresAuthentication"];
  }

  if ([(_INPBIntentResponse *)self hasRequiresProtectedData])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentResponse requiresProtectedData](self, "requiresProtectedData")}];
    [v3 setObject:v9 forKeyedSubscript:@"requires_protected_data"];
  }

  if ([(_INPBIntentResponse *)self hasType])
  {
    v10 = [(_INPBIntentResponse *)self type];
    if (v10 >= 8)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E72806A0[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"type"];
  }

  v12 = [(_INPBIntentResponse *)self userActivity];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"userActivity"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentResponsePayloadFailure *)self->_payloadFailure hash];
  v4 = [(_INPBIntentResponsePayloadSuccess *)self->_payloadSuccess hash];
  if ([(_INPBIntentResponse *)self hasRequiresAuthentication])
  {
    v5 = 2654435761 * self->_requiresAuthentication;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBIntentResponse *)self hasRequiresProtectedData])
  {
    v6 = 2654435761 * self->_requiresProtectedData;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBIntentResponse *)self hasType])
  {
    v7 = 2654435761 * self->_type;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(_INPBUserActivity *)self->_userActivity hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = [(_INPBIntentResponse *)self payloadFailure];
  v6 = [v4 payloadFailure];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v7 = [(_INPBIntentResponse *)self payloadFailure];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentResponse *)self payloadFailure];
    v10 = [v4 payloadFailure];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentResponse *)self payloadSuccess];
  v6 = [v4 payloadSuccess];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v12 = [(_INPBIntentResponse *)self payloadSuccess];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBIntentResponse *)self payloadSuccess];
    v15 = [v4 payloadSuccess];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v17 = [(_INPBIntentResponse *)self hasRequiresAuthentication];
  if (v17 != [v4 hasRequiresAuthentication])
  {
    goto LABEL_29;
  }

  if ([(_INPBIntentResponse *)self hasRequiresAuthentication])
  {
    if ([v4 hasRequiresAuthentication])
    {
      requiresAuthentication = self->_requiresAuthentication;
      if (requiresAuthentication != [v4 requiresAuthentication])
      {
        goto LABEL_29;
      }
    }
  }

  v19 = [(_INPBIntentResponse *)self hasRequiresProtectedData];
  if (v19 != [v4 hasRequiresProtectedData])
  {
    goto LABEL_29;
  }

  if ([(_INPBIntentResponse *)self hasRequiresProtectedData])
  {
    if ([v4 hasRequiresProtectedData])
    {
      requiresProtectedData = self->_requiresProtectedData;
      if (requiresProtectedData != [v4 requiresProtectedData])
      {
        goto LABEL_29;
      }
    }
  }

  v21 = [(_INPBIntentResponse *)self hasType];
  if (v21 != [v4 hasType])
  {
    goto LABEL_29;
  }

  if ([(_INPBIntentResponse *)self hasType])
  {
    if ([v4 hasType])
    {
      type = self->_type;
      if (type != [v4 type])
      {
        goto LABEL_29;
      }
    }
  }

  v5 = [(_INPBIntentResponse *)self userActivity];
  v6 = [v4 userActivity];
  if ((v5 != 0) != (v6 == 0))
  {
    v23 = [(_INPBIntentResponse *)self userActivity];
    if (!v23)
    {

LABEL_32:
      v28 = 1;
      goto LABEL_30;
    }

    v24 = v23;
    v25 = [(_INPBIntentResponse *)self userActivity];
    v26 = [v4 userActivity];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_28:
  }

LABEL_29:
  v28 = 0;
LABEL_30:

  return v28;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIntentResponse allocWithZone:](_INPBIntentResponse init];
  v6 = [(_INPBIntentResponsePayloadFailure *)self->_payloadFailure copyWithZone:a3];
  [(_INPBIntentResponse *)v5 setPayloadFailure:v6];

  v7 = [(_INPBIntentResponsePayloadSuccess *)self->_payloadSuccess copyWithZone:a3];
  [(_INPBIntentResponse *)v5 setPayloadSuccess:v7];

  if ([(_INPBIntentResponse *)self hasRequiresAuthentication])
  {
    [(_INPBIntentResponse *)v5 setRequiresAuthentication:[(_INPBIntentResponse *)self requiresAuthentication]];
  }

  if ([(_INPBIntentResponse *)self hasRequiresProtectedData])
  {
    [(_INPBIntentResponse *)v5 setRequiresProtectedData:[(_INPBIntentResponse *)self requiresProtectedData]];
  }

  if ([(_INPBIntentResponse *)self hasType])
  {
    [(_INPBIntentResponse *)v5 setType:[(_INPBIntentResponse *)self type]];
  }

  v8 = [(_INPBUserActivity *)self->_userActivity copyWithZone:a3];
  [(_INPBIntentResponse *)v5 setUserActivity:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(_INPBIntentResponse *)self payloadFailure];

  if (v4)
  {
    v5 = [(_INPBIntentResponse *)self payloadFailure];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBIntentResponse *)self payloadSuccess];

  if (v6)
  {
    v7 = [(_INPBIntentResponse *)self payloadSuccess];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBIntentResponse *)self hasRequiresAuthentication])
  {
    requiresAuthentication = self->_requiresAuthentication;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBIntentResponse *)self hasRequiresProtectedData])
  {
    requiresProtectedData = self->_requiresProtectedData;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBIntentResponse *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v11 = [(_INPBIntentResponse *)self userActivity];

  v12 = v14;
  if (v11)
  {
    v13 = [(_INPBIntentResponse *)self userActivity];
    PBDataWriterWriteSubmessage();

    v12 = v14;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FAILURE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UNSPECIFIED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CONTINUE_IN_APP"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"READY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"AUTHENTICATION_REQUIRED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"USER_CONFIRMATION_REQUIRED"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_type = a3;
  }
}

- (void)setHasRequiresProtectedData:(BOOL)a3
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

@end