@interface _INPBSearchForAccountsIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSearchForAccountsIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAccountType:(id)a3;
- (int)StringAsRequestedBalanceType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAccountType:(int)a3;
- (void)setHasRequestedBalanceType:(BOOL)a3;
- (void)setRequestedBalanceType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchForAccountsIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSearchForAccountsIntent *)self accountNickname];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"accountNickname"];

  if ([(_INPBSearchForAccountsIntent *)self hasAccountType])
  {
    v6 = [(_INPBSearchForAccountsIntent *)self accountType];
    if ((v6 - 1) >= 7)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7280310[(v6 - 1)];
    }

    [v3 setObject:v7 forKeyedSubscript:@"accountType"];
  }

  v8 = [(_INPBSearchForAccountsIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  v10 = [(_INPBSearchForAccountsIntent *)self organizationName];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"organizationName"];

  if ([(_INPBSearchForAccountsIntent *)self hasRequestedBalanceType])
  {
    v12 = [(_INPBSearchForAccountsIntent *)self requestedBalanceType];
    if ((v12 - 1) >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = off_1E7280348[(v12 - 1)];
    }

    [v3 setObject:v13 forKeyedSubscript:@"requestedBalanceType"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBSearchForAccountsIntent *)self accountNickname];
  v6 = [v4 accountNickname];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v7 = [(_INPBSearchForAccountsIntent *)self accountNickname];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchForAccountsIntent *)self accountNickname];
    v10 = [v4 accountNickname];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v12 = [(_INPBSearchForAccountsIntent *)self hasAccountType];
  if (v12 != [v4 hasAccountType])
  {
    goto LABEL_21;
  }

  if ([(_INPBSearchForAccountsIntent *)self hasAccountType])
  {
    if ([v4 hasAccountType])
    {
      accountType = self->_accountType;
      if (accountType != [v4 accountType])
      {
        goto LABEL_21;
      }
    }
  }

  v5 = [(_INPBSearchForAccountsIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBSearchForAccountsIntent *)self intentMetadata];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSearchForAccountsIntent *)self intentMetadata];
    v17 = [v4 intentMetadata];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForAccountsIntent *)self organizationName];
  v6 = [v4 organizationName];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_20:

    goto LABEL_21;
  }

  v19 = [(_INPBSearchForAccountsIntent *)self organizationName];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBSearchForAccountsIntent *)self organizationName];
    v22 = [v4 organizationName];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v26 = [(_INPBSearchForAccountsIntent *)self hasRequestedBalanceType];
  if (v26 == [v4 hasRequestedBalanceType])
  {
    if (!-[_INPBSearchForAccountsIntent hasRequestedBalanceType](self, "hasRequestedBalanceType") || ![v4 hasRequestedBalanceType] || (requestedBalanceType = self->_requestedBalanceType, requestedBalanceType == objc_msgSend(v4, "requestedBalanceType")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchForAccountsIntent allocWithZone:](_INPBSearchForAccountsIntent init];
  v6 = [(_INPBDataString *)self->_accountNickname copyWithZone:a3];
  [(_INPBSearchForAccountsIntent *)v5 setAccountNickname:v6];

  if ([(_INPBSearchForAccountsIntent *)self hasAccountType])
  {
    [(_INPBSearchForAccountsIntent *)v5 setAccountType:[(_INPBSearchForAccountsIntent *)self accountType]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSearchForAccountsIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBDataString *)self->_organizationName copyWithZone:a3];
  [(_INPBSearchForAccountsIntent *)v5 setOrganizationName:v8];

  if ([(_INPBSearchForAccountsIntent *)self hasRequestedBalanceType])
  {
    [(_INPBSearchForAccountsIntent *)v5 setRequestedBalanceType:[(_INPBSearchForAccountsIntent *)self requestedBalanceType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchForAccountsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchForAccountsIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchForAccountsIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(_INPBSearchForAccountsIntent *)self accountNickname];

  if (v4)
  {
    v5 = [(_INPBSearchForAccountsIntent *)self accountNickname];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForAccountsIntent *)self hasAccountType])
  {
    accountType = self->_accountType;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBSearchForAccountsIntent *)self intentMetadata];

  if (v7)
  {
    v8 = [(_INPBSearchForAccountsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBSearchForAccountsIntent *)self organizationName];

  if (v9)
  {
    v10 = [(_INPBSearchForAccountsIntent *)self organizationName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForAccountsIntent *)self hasRequestedBalanceType])
  {
    requestedBalanceType = self->_requestedBalanceType;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsRequestedBalanceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MONEY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"POINTS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MILES"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRequestedBalanceType:(BOOL)a3
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

- (void)setRequestedBalanceType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_requestedBalanceType = a3;
  }
}

- (int)StringAsAccountType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CHECKING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CREDIT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DEBIT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"INVESTMENT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MORTGAGE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PREPAID"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SAVING"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAccountType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_accountType = a3;
  }
}

@end