@interface _INPBFinancialAccountValue
- (BOOL)isEqual:(id)a3;
- (_INPBFinancialAccountValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAccountType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAccountNumber:(id)a3;
- (void)setAccountType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBFinancialAccountValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBFinancialAccountValue *)self accountNickname];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"accountNickname"];

  if (self->_accountNumber)
  {
    v6 = [(_INPBFinancialAccountValue *)self accountNumber];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"accountNumber"];
  }

  if ([(_INPBFinancialAccountValue *)self hasAccountType])
  {
    v8 = [(_INPBFinancialAccountValue *)self accountType];
    if ((v8 - 1) >= 7)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7283228[(v8 - 1)];
    }

    [v3 setObject:v9 forKeyedSubscript:@"accountType"];
  }

  v10 = [(_INPBFinancialAccountValue *)self balance];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"balance"];

  v12 = [(_INPBFinancialAccountValue *)self organizationName];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"organizationName"];

  v14 = [(_INPBFinancialAccountValue *)self secondaryBalance];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"secondaryBalance"];

  v16 = [(_INPBFinancialAccountValue *)self valueMetadata];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"valueMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_accountNickname hash];
  v4 = [(NSString *)self->_accountNumber hash];
  if ([(_INPBFinancialAccountValue *)self hasAccountType])
  {
    v5 = 2654435761 * self->_accountType;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(_INPBBalanceAmountValue *)self->_balance hash];
  v7 = [(_INPBDataString *)self->_organizationName hash];
  v8 = v7 ^ [(_INPBBalanceAmountValue *)self->_secondaryBalance hash];
  return v6 ^ v8 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  v5 = [(_INPBFinancialAccountValue *)self accountNickname];
  v6 = [v4 accountNickname];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v7 = [(_INPBFinancialAccountValue *)self accountNickname];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBFinancialAccountValue *)self accountNickname];
    v10 = [v4 accountNickname];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_INPBFinancialAccountValue *)self accountNumber];
  v6 = [v4 accountNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v12 = [(_INPBFinancialAccountValue *)self accountNumber];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBFinancialAccountValue *)self accountNumber];
    v15 = [v4 accountNumber];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v17 = [(_INPBFinancialAccountValue *)self hasAccountType];
  if (v17 != [v4 hasAccountType])
  {
    goto LABEL_36;
  }

  if ([(_INPBFinancialAccountValue *)self hasAccountType])
  {
    if ([v4 hasAccountType])
    {
      accountType = self->_accountType;
      if (accountType != [v4 accountType])
      {
        goto LABEL_36;
      }
    }
  }

  v5 = [(_INPBFinancialAccountValue *)self balance];
  v6 = [v4 balance];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v19 = [(_INPBFinancialAccountValue *)self balance];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBFinancialAccountValue *)self balance];
    v22 = [v4 balance];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_INPBFinancialAccountValue *)self organizationName];
  v6 = [v4 organizationName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v24 = [(_INPBFinancialAccountValue *)self organizationName];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBFinancialAccountValue *)self organizationName];
    v27 = [v4 organizationName];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_INPBFinancialAccountValue *)self secondaryBalance];
  v6 = [v4 secondaryBalance];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v29 = [(_INPBFinancialAccountValue *)self secondaryBalance];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBFinancialAccountValue *)self secondaryBalance];
    v32 = [v4 secondaryBalance];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_INPBFinancialAccountValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v34 = [(_INPBFinancialAccountValue *)self valueMetadata];
    if (!v34)
    {

LABEL_39:
      v39 = 1;
      goto LABEL_37;
    }

    v35 = v34;
    v36 = [(_INPBFinancialAccountValue *)self valueMetadata];
    v37 = [v4 valueMetadata];
    v38 = [v36 isEqual:v37];

    if (v38)
    {
      goto LABEL_39;
    }
  }

  else
  {
LABEL_35:
  }

LABEL_36:
  v39 = 0;
LABEL_37:

  return v39;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBFinancialAccountValue allocWithZone:](_INPBFinancialAccountValue init];
  v6 = [(_INPBDataString *)self->_accountNickname copyWithZone:a3];
  [(_INPBFinancialAccountValue *)v5 setAccountNickname:v6];

  v7 = [(NSString *)self->_accountNumber copyWithZone:a3];
  [(_INPBFinancialAccountValue *)v5 setAccountNumber:v7];

  if ([(_INPBFinancialAccountValue *)self hasAccountType])
  {
    [(_INPBFinancialAccountValue *)v5 setAccountType:[(_INPBFinancialAccountValue *)self accountType]];
  }

  v8 = [(_INPBBalanceAmountValue *)self->_balance copyWithZone:a3];
  [(_INPBFinancialAccountValue *)v5 setBalance:v8];

  v9 = [(_INPBDataString *)self->_organizationName copyWithZone:a3];
  [(_INPBFinancialAccountValue *)v5 setOrganizationName:v9];

  v10 = [(_INPBBalanceAmountValue *)self->_secondaryBalance copyWithZone:a3];
  [(_INPBFinancialAccountValue *)v5 setSecondaryBalance:v10];

  v11 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBFinancialAccountValue *)v5 setValueMetadata:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBFinancialAccountValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBFinancialAccountValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBFinancialAccountValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v18 = a3;
  v4 = [(_INPBFinancialAccountValue *)self accountNickname];

  if (v4)
  {
    v5 = [(_INPBFinancialAccountValue *)self accountNickname];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBFinancialAccountValue *)self accountNumber];

  if (v6)
  {
    accountNumber = self->_accountNumber;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBFinancialAccountValue *)self hasAccountType])
  {
    accountType = self->_accountType;
    PBDataWriterWriteInt32Field();
  }

  v9 = [(_INPBFinancialAccountValue *)self balance];

  if (v9)
  {
    v10 = [(_INPBFinancialAccountValue *)self balance];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBFinancialAccountValue *)self organizationName];

  if (v11)
  {
    v12 = [(_INPBFinancialAccountValue *)self organizationName];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBFinancialAccountValue *)self secondaryBalance];

  if (v13)
  {
    v14 = [(_INPBFinancialAccountValue *)self secondaryBalance];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBFinancialAccountValue *)self valueMetadata];

  v16 = v18;
  if (v15)
  {
    v17 = [(_INPBFinancialAccountValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v16 = v18;
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

- (void)setAccountNumber:(id)a3
{
  v4 = [a3 copy];
  accountNumber = self->_accountNumber;
  self->_accountNumber = v4;

  MEMORY[0x1EEE66BB8](v4, accountNumber);
}

@end