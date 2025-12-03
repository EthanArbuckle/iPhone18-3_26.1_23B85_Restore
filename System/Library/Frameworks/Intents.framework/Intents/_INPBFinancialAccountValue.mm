@interface _INPBFinancialAccountValue
- (BOOL)isEqual:(id)equal;
- (_INPBFinancialAccountValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAccountType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAccountNumber:(id)number;
- (void)setAccountType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBFinancialAccountValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  accountNickname = [(_INPBFinancialAccountValue *)self accountNickname];
  dictionaryRepresentation = [accountNickname dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"accountNickname"];

  if (self->_accountNumber)
  {
    accountNumber = [(_INPBFinancialAccountValue *)self accountNumber];
    v7 = [accountNumber copy];
    [dictionary setObject:v7 forKeyedSubscript:@"accountNumber"];
  }

  if ([(_INPBFinancialAccountValue *)self hasAccountType])
  {
    accountType = [(_INPBFinancialAccountValue *)self accountType];
    if ((accountType - 1) >= 7)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", accountType];
    }

    else
    {
      v9 = off_1E7283228[(accountType - 1)];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"accountType"];
  }

  balance = [(_INPBFinancialAccountValue *)self balance];
  dictionaryRepresentation2 = [balance dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"balance"];

  organizationName = [(_INPBFinancialAccountValue *)self organizationName];
  dictionaryRepresentation3 = [organizationName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"organizationName"];

  secondaryBalance = [(_INPBFinancialAccountValue *)self secondaryBalance];
  dictionaryRepresentation4 = [secondaryBalance dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"secondaryBalance"];

  valueMetadata = [(_INPBFinancialAccountValue *)self valueMetadata];
  dictionaryRepresentation5 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  accountNickname = [(_INPBFinancialAccountValue *)self accountNickname];
  accountNickname2 = [equalCopy accountNickname];
  if ((accountNickname != 0) == (accountNickname2 == 0))
  {
    goto LABEL_35;
  }

  accountNickname3 = [(_INPBFinancialAccountValue *)self accountNickname];
  if (accountNickname3)
  {
    v8 = accountNickname3;
    accountNickname4 = [(_INPBFinancialAccountValue *)self accountNickname];
    accountNickname5 = [equalCopy accountNickname];
    v11 = [accountNickname4 isEqual:accountNickname5];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  accountNickname = [(_INPBFinancialAccountValue *)self accountNumber];
  accountNickname2 = [equalCopy accountNumber];
  if ((accountNickname != 0) == (accountNickname2 == 0))
  {
    goto LABEL_35;
  }

  accountNumber = [(_INPBFinancialAccountValue *)self accountNumber];
  if (accountNumber)
  {
    v13 = accountNumber;
    accountNumber2 = [(_INPBFinancialAccountValue *)self accountNumber];
    accountNumber3 = [equalCopy accountNumber];
    v16 = [accountNumber2 isEqual:accountNumber3];

    if (!v16)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  hasAccountType = [(_INPBFinancialAccountValue *)self hasAccountType];
  if (hasAccountType != [equalCopy hasAccountType])
  {
    goto LABEL_36;
  }

  if ([(_INPBFinancialAccountValue *)self hasAccountType])
  {
    if ([equalCopy hasAccountType])
    {
      accountType = self->_accountType;
      if (accountType != [equalCopy accountType])
      {
        goto LABEL_36;
      }
    }
  }

  accountNickname = [(_INPBFinancialAccountValue *)self balance];
  accountNickname2 = [equalCopy balance];
  if ((accountNickname != 0) == (accountNickname2 == 0))
  {
    goto LABEL_35;
  }

  balance = [(_INPBFinancialAccountValue *)self balance];
  if (balance)
  {
    v20 = balance;
    balance2 = [(_INPBFinancialAccountValue *)self balance];
    balance3 = [equalCopy balance];
    v23 = [balance2 isEqual:balance3];

    if (!v23)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  accountNickname = [(_INPBFinancialAccountValue *)self organizationName];
  accountNickname2 = [equalCopy organizationName];
  if ((accountNickname != 0) == (accountNickname2 == 0))
  {
    goto LABEL_35;
  }

  organizationName = [(_INPBFinancialAccountValue *)self organizationName];
  if (organizationName)
  {
    v25 = organizationName;
    organizationName2 = [(_INPBFinancialAccountValue *)self organizationName];
    organizationName3 = [equalCopy organizationName];
    v28 = [organizationName2 isEqual:organizationName3];

    if (!v28)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  accountNickname = [(_INPBFinancialAccountValue *)self secondaryBalance];
  accountNickname2 = [equalCopy secondaryBalance];
  if ((accountNickname != 0) == (accountNickname2 == 0))
  {
    goto LABEL_35;
  }

  secondaryBalance = [(_INPBFinancialAccountValue *)self secondaryBalance];
  if (secondaryBalance)
  {
    v30 = secondaryBalance;
    secondaryBalance2 = [(_INPBFinancialAccountValue *)self secondaryBalance];
    secondaryBalance3 = [equalCopy secondaryBalance];
    v33 = [secondaryBalance2 isEqual:secondaryBalance3];

    if (!v33)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  accountNickname = [(_INPBFinancialAccountValue *)self valueMetadata];
  accountNickname2 = [equalCopy valueMetadata];
  if ((accountNickname != 0) != (accountNickname2 == 0))
  {
    valueMetadata = [(_INPBFinancialAccountValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_39:
      v39 = 1;
      goto LABEL_37;
    }

    v35 = valueMetadata;
    valueMetadata2 = [(_INPBFinancialAccountValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v38 = [valueMetadata2 isEqual:valueMetadata3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBFinancialAccountValue allocWithZone:](_INPBFinancialAccountValue init];
  v6 = [(_INPBDataString *)self->_accountNickname copyWithZone:zone];
  [(_INPBFinancialAccountValue *)v5 setAccountNickname:v6];

  v7 = [(NSString *)self->_accountNumber copyWithZone:zone];
  [(_INPBFinancialAccountValue *)v5 setAccountNumber:v7];

  if ([(_INPBFinancialAccountValue *)self hasAccountType])
  {
    [(_INPBFinancialAccountValue *)v5 setAccountType:[(_INPBFinancialAccountValue *)self accountType]];
  }

  v8 = [(_INPBBalanceAmountValue *)self->_balance copyWithZone:zone];
  [(_INPBFinancialAccountValue *)v5 setBalance:v8];

  v9 = [(_INPBDataString *)self->_organizationName copyWithZone:zone];
  [(_INPBFinancialAccountValue *)v5 setOrganizationName:v9];

  v10 = [(_INPBBalanceAmountValue *)self->_secondaryBalance copyWithZone:zone];
  [(_INPBFinancialAccountValue *)v5 setSecondaryBalance:v10];

  v11 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBFinancialAccountValue *)v5 setValueMetadata:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFinancialAccountValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFinancialAccountValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFinancialAccountValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  accountNickname = [(_INPBFinancialAccountValue *)self accountNickname];

  if (accountNickname)
  {
    accountNickname2 = [(_INPBFinancialAccountValue *)self accountNickname];
    PBDataWriterWriteSubmessage();
  }

  accountNumber = [(_INPBFinancialAccountValue *)self accountNumber];

  if (accountNumber)
  {
    accountNumber = self->_accountNumber;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBFinancialAccountValue *)self hasAccountType])
  {
    accountType = self->_accountType;
    PBDataWriterWriteInt32Field();
  }

  balance = [(_INPBFinancialAccountValue *)self balance];

  if (balance)
  {
    balance2 = [(_INPBFinancialAccountValue *)self balance];
    PBDataWriterWriteSubmessage();
  }

  organizationName = [(_INPBFinancialAccountValue *)self organizationName];

  if (organizationName)
  {
    organizationName2 = [(_INPBFinancialAccountValue *)self organizationName];
    PBDataWriterWriteSubmessage();
  }

  secondaryBalance = [(_INPBFinancialAccountValue *)self secondaryBalance];

  if (secondaryBalance)
  {
    secondaryBalance2 = [(_INPBFinancialAccountValue *)self secondaryBalance];
    PBDataWriterWriteSubmessage();
  }

  valueMetadata = [(_INPBFinancialAccountValue *)self valueMetadata];

  v16 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBFinancialAccountValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v16 = toCopy;
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

- (void)setAccountNumber:(id)number
{
  v4 = [number copy];
  accountNumber = self->_accountNumber;
  self->_accountNumber = v4;

  MEMORY[0x1EEE66BB8](v4, accountNumber);
}

@end