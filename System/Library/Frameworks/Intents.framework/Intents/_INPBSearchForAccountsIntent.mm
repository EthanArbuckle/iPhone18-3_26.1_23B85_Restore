@interface _INPBSearchForAccountsIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForAccountsIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAccountType:(id)type;
- (int)StringAsRequestedBalanceType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAccountType:(int)type;
- (void)setHasRequestedBalanceType:(BOOL)type;
- (void)setRequestedBalanceType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForAccountsIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  accountNickname = [(_INPBSearchForAccountsIntent *)self accountNickname];
  dictionaryRepresentation = [accountNickname dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"accountNickname"];

  if ([(_INPBSearchForAccountsIntent *)self hasAccountType])
  {
    accountType = [(_INPBSearchForAccountsIntent *)self accountType];
    if ((accountType - 1) >= 7)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", accountType];
    }

    else
    {
      v7 = off_1E7280310[(accountType - 1)];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"accountType"];
  }

  intentMetadata = [(_INPBSearchForAccountsIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  organizationName = [(_INPBSearchForAccountsIntent *)self organizationName];
  dictionaryRepresentation3 = [organizationName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"organizationName"];

  if ([(_INPBSearchForAccountsIntent *)self hasRequestedBalanceType])
  {
    requestedBalanceType = [(_INPBSearchForAccountsIntent *)self requestedBalanceType];
    if ((requestedBalanceType - 1) >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", requestedBalanceType];
    }

    else
    {
      v13 = off_1E7280348[(requestedBalanceType - 1)];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"requestedBalanceType"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_accountNickname hash];
  if ([(_INPBSearchForAccountsIntent *)self hasAccountType])
  {
    v4 = 2654435761 * self->_accountType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v6 = [(_INPBDataString *)self->_organizationName hash];
  if ([(_INPBSearchForAccountsIntent *)self hasRequestedBalanceType])
  {
    v7 = 2654435761 * self->_requestedBalanceType;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  accountNickname = [(_INPBSearchForAccountsIntent *)self accountNickname];
  accountNickname2 = [equalCopy accountNickname];
  if ((accountNickname != 0) == (accountNickname2 == 0))
  {
    goto LABEL_20;
  }

  accountNickname3 = [(_INPBSearchForAccountsIntent *)self accountNickname];
  if (accountNickname3)
  {
    v8 = accountNickname3;
    accountNickname4 = [(_INPBSearchForAccountsIntent *)self accountNickname];
    accountNickname5 = [equalCopy accountNickname];
    v11 = [accountNickname4 isEqual:accountNickname5];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  hasAccountType = [(_INPBSearchForAccountsIntent *)self hasAccountType];
  if (hasAccountType != [equalCopy hasAccountType])
  {
    goto LABEL_21;
  }

  if ([(_INPBSearchForAccountsIntent *)self hasAccountType])
  {
    if ([equalCopy hasAccountType])
    {
      accountType = self->_accountType;
      if (accountType != [equalCopy accountType])
      {
        goto LABEL_21;
      }
    }
  }

  accountNickname = [(_INPBSearchForAccountsIntent *)self intentMetadata];
  accountNickname2 = [equalCopy intentMetadata];
  if ((accountNickname != 0) == (accountNickname2 == 0))
  {
    goto LABEL_20;
  }

  intentMetadata = [(_INPBSearchForAccountsIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v15 = intentMetadata;
    intentMetadata2 = [(_INPBSearchForAccountsIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v18 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  accountNickname = [(_INPBSearchForAccountsIntent *)self organizationName];
  accountNickname2 = [equalCopy organizationName];
  if ((accountNickname != 0) == (accountNickname2 == 0))
  {
LABEL_20:

    goto LABEL_21;
  }

  organizationName = [(_INPBSearchForAccountsIntent *)self organizationName];
  if (organizationName)
  {
    v20 = organizationName;
    organizationName2 = [(_INPBSearchForAccountsIntent *)self organizationName];
    organizationName3 = [equalCopy organizationName];
    v23 = [organizationName2 isEqual:organizationName3];

    if (!v23)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  hasRequestedBalanceType = [(_INPBSearchForAccountsIntent *)self hasRequestedBalanceType];
  if (hasRequestedBalanceType == [equalCopy hasRequestedBalanceType])
  {
    if (!-[_INPBSearchForAccountsIntent hasRequestedBalanceType](self, "hasRequestedBalanceType") || ![equalCopy hasRequestedBalanceType] || (requestedBalanceType = self->_requestedBalanceType, requestedBalanceType == objc_msgSend(equalCopy, "requestedBalanceType")))
    {
      v24 = 1;
      goto LABEL_22;
    }
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForAccountsIntent allocWithZone:](_INPBSearchForAccountsIntent init];
  v6 = [(_INPBDataString *)self->_accountNickname copyWithZone:zone];
  [(_INPBSearchForAccountsIntent *)v5 setAccountNickname:v6];

  if ([(_INPBSearchForAccountsIntent *)self hasAccountType])
  {
    [(_INPBSearchForAccountsIntent *)v5 setAccountType:[(_INPBSearchForAccountsIntent *)self accountType]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSearchForAccountsIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBDataString *)self->_organizationName copyWithZone:zone];
  [(_INPBSearchForAccountsIntent *)v5 setOrganizationName:v8];

  if ([(_INPBSearchForAccountsIntent *)self hasRequestedBalanceType])
  {
    [(_INPBSearchForAccountsIntent *)v5 setRequestedBalanceType:[(_INPBSearchForAccountsIntent *)self requestedBalanceType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForAccountsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForAccountsIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForAccountsIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  accountNickname = [(_INPBSearchForAccountsIntent *)self accountNickname];

  if (accountNickname)
  {
    accountNickname2 = [(_INPBSearchForAccountsIntent *)self accountNickname];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForAccountsIntent *)self hasAccountType])
  {
    accountType = self->_accountType;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBSearchForAccountsIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSearchForAccountsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  organizationName = [(_INPBSearchForAccountsIntent *)self organizationName];

  if (organizationName)
  {
    organizationName2 = [(_INPBSearchForAccountsIntent *)self organizationName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForAccountsIntent *)self hasRequestedBalanceType])
  {
    requestedBalanceType = self->_requestedBalanceType;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsRequestedBalanceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"MONEY"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"POINTS"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"MILES"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRequestedBalanceType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setRequestedBalanceType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_requestedBalanceType = type;
  }
}

- (int)StringAsAccountType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CHECKING"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CREDIT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"DEBIT"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"INVESTMENT"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"MORTGAGE"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"PREPAID"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"SAVING"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAccountType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_accountType = type;
  }
}

@end