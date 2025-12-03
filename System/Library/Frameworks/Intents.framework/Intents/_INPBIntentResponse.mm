@interface _INPBIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasRequiresProtectedData:(BOOL)data;
- (void)setHasType:(BOOL)type;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  payloadFailure = [(_INPBIntentResponse *)self payloadFailure];
  dictionaryRepresentation = [payloadFailure dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"_payloadFailure"];

  payloadSuccess = [(_INPBIntentResponse *)self payloadSuccess];
  dictionaryRepresentation2 = [payloadSuccess dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"_payloadSuccess"];

  if ([(_INPBIntentResponse *)self hasRequiresAuthentication])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentResponse requiresAuthentication](self, "requiresAuthentication")}];
    [dictionary setObject:v8 forKeyedSubscript:@"requiresAuthentication"];
  }

  if ([(_INPBIntentResponse *)self hasRequiresProtectedData])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentResponse requiresProtectedData](self, "requiresProtectedData")}];
    [dictionary setObject:v9 forKeyedSubscript:@"requires_protected_data"];
  }

  if ([(_INPBIntentResponse *)self hasType])
  {
    type = [(_INPBIntentResponse *)self type];
    if (type >= 8)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v11 = off_1E72806A0[type];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"type"];
  }

  userActivity = [(_INPBIntentResponse *)self userActivity];
  dictionaryRepresentation3 = [userActivity dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"userActivity"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  payloadFailure = [(_INPBIntentResponse *)self payloadFailure];
  payloadFailure2 = [equalCopy payloadFailure];
  if ((payloadFailure != 0) == (payloadFailure2 == 0))
  {
    goto LABEL_28;
  }

  payloadFailure3 = [(_INPBIntentResponse *)self payloadFailure];
  if (payloadFailure3)
  {
    v8 = payloadFailure3;
    payloadFailure4 = [(_INPBIntentResponse *)self payloadFailure];
    payloadFailure5 = [equalCopy payloadFailure];
    v11 = [payloadFailure4 isEqual:payloadFailure5];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  payloadFailure = [(_INPBIntentResponse *)self payloadSuccess];
  payloadFailure2 = [equalCopy payloadSuccess];
  if ((payloadFailure != 0) == (payloadFailure2 == 0))
  {
    goto LABEL_28;
  }

  payloadSuccess = [(_INPBIntentResponse *)self payloadSuccess];
  if (payloadSuccess)
  {
    v13 = payloadSuccess;
    payloadSuccess2 = [(_INPBIntentResponse *)self payloadSuccess];
    payloadSuccess3 = [equalCopy payloadSuccess];
    v16 = [payloadSuccess2 isEqual:payloadSuccess3];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  hasRequiresAuthentication = [(_INPBIntentResponse *)self hasRequiresAuthentication];
  if (hasRequiresAuthentication != [equalCopy hasRequiresAuthentication])
  {
    goto LABEL_29;
  }

  if ([(_INPBIntentResponse *)self hasRequiresAuthentication])
  {
    if ([equalCopy hasRequiresAuthentication])
    {
      requiresAuthentication = self->_requiresAuthentication;
      if (requiresAuthentication != [equalCopy requiresAuthentication])
      {
        goto LABEL_29;
      }
    }
  }

  hasRequiresProtectedData = [(_INPBIntentResponse *)self hasRequiresProtectedData];
  if (hasRequiresProtectedData != [equalCopy hasRequiresProtectedData])
  {
    goto LABEL_29;
  }

  if ([(_INPBIntentResponse *)self hasRequiresProtectedData])
  {
    if ([equalCopy hasRequiresProtectedData])
    {
      requiresProtectedData = self->_requiresProtectedData;
      if (requiresProtectedData != [equalCopy requiresProtectedData])
      {
        goto LABEL_29;
      }
    }
  }

  hasType = [(_INPBIntentResponse *)self hasType];
  if (hasType != [equalCopy hasType])
  {
    goto LABEL_29;
  }

  if ([(_INPBIntentResponse *)self hasType])
  {
    if ([equalCopy hasType])
    {
      type = self->_type;
      if (type != [equalCopy type])
      {
        goto LABEL_29;
      }
    }
  }

  payloadFailure = [(_INPBIntentResponse *)self userActivity];
  payloadFailure2 = [equalCopy userActivity];
  if ((payloadFailure != 0) != (payloadFailure2 == 0))
  {
    userActivity = [(_INPBIntentResponse *)self userActivity];
    if (!userActivity)
    {

LABEL_32:
      v28 = 1;
      goto LABEL_30;
    }

    v24 = userActivity;
    userActivity2 = [(_INPBIntentResponse *)self userActivity];
    userActivity3 = [equalCopy userActivity];
    v27 = [userActivity2 isEqual:userActivity3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentResponse allocWithZone:](_INPBIntentResponse init];
  v6 = [(_INPBIntentResponsePayloadFailure *)self->_payloadFailure copyWithZone:zone];
  [(_INPBIntentResponse *)v5 setPayloadFailure:v6];

  v7 = [(_INPBIntentResponsePayloadSuccess *)self->_payloadSuccess copyWithZone:zone];
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

  v8 = [(_INPBUserActivity *)self->_userActivity copyWithZone:zone];
  [(_INPBIntentResponse *)v5 setUserActivity:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  payloadFailure = [(_INPBIntentResponse *)self payloadFailure];

  if (payloadFailure)
  {
    payloadFailure2 = [(_INPBIntentResponse *)self payloadFailure];
    PBDataWriterWriteSubmessage();
  }

  payloadSuccess = [(_INPBIntentResponse *)self payloadSuccess];

  if (payloadSuccess)
  {
    payloadSuccess2 = [(_INPBIntentResponse *)self payloadSuccess];
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

  userActivity = [(_INPBIntentResponse *)self userActivity];

  v12 = toCopy;
  if (userActivity)
  {
    userActivity2 = [(_INPBIntentResponse *)self userActivity];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"FAILURE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"UNSPECIFIED"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"CONTINUE_IN_APP"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"READY"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"AUTHENTICATION_REQUIRED"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"USER_CONFIRMATION_REQUIRED"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_type = type;
  }
}

- (void)setHasRequiresProtectedData:(BOOL)data
{
  if (data)
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