@interface _INPBBillPayeeValue
- (BOOL)isEqual:(id)equal;
- (_INPBBillPayeeValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAccountNumber:(id)number;
- (void)writeTo:(id)to;
@end

@implementation _INPBBillPayeeValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accountNumber)
  {
    accountNumber = [(_INPBBillPayeeValue *)self accountNumber];
    v5 = [accountNumber copy];
    [dictionary setObject:v5 forKeyedSubscript:@"accountNumber"];
  }

  nickname = [(_INPBBillPayeeValue *)self nickname];
  dictionaryRepresentation = [nickname dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"nickname"];

  organizationName = [(_INPBBillPayeeValue *)self organizationName];
  dictionaryRepresentation2 = [organizationName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"organizationName"];

  valueMetadata = [(_INPBBillPayeeValue *)self valueMetadata];
  dictionaryRepresentation3 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accountNumber hash];
  v4 = [(_INPBDataString *)self->_nickname hash]^ v3;
  v5 = [(_INPBDataString *)self->_organizationName hash];
  return v4 ^ v5 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  accountNumber = [(_INPBBillPayeeValue *)self accountNumber];
  accountNumber2 = [equalCopy accountNumber];
  if ((accountNumber != 0) == (accountNumber2 == 0))
  {
    goto LABEL_21;
  }

  accountNumber3 = [(_INPBBillPayeeValue *)self accountNumber];
  if (accountNumber3)
  {
    v8 = accountNumber3;
    accountNumber4 = [(_INPBBillPayeeValue *)self accountNumber];
    accountNumber5 = [equalCopy accountNumber];
    v11 = [accountNumber4 isEqual:accountNumber5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  accountNumber = [(_INPBBillPayeeValue *)self nickname];
  accountNumber2 = [equalCopy nickname];
  if ((accountNumber != 0) == (accountNumber2 == 0))
  {
    goto LABEL_21;
  }

  nickname = [(_INPBBillPayeeValue *)self nickname];
  if (nickname)
  {
    v13 = nickname;
    nickname2 = [(_INPBBillPayeeValue *)self nickname];
    nickname3 = [equalCopy nickname];
    v16 = [nickname2 isEqual:nickname3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  accountNumber = [(_INPBBillPayeeValue *)self organizationName];
  accountNumber2 = [equalCopy organizationName];
  if ((accountNumber != 0) == (accountNumber2 == 0))
  {
    goto LABEL_21;
  }

  organizationName = [(_INPBBillPayeeValue *)self organizationName];
  if (organizationName)
  {
    v18 = organizationName;
    organizationName2 = [(_INPBBillPayeeValue *)self organizationName];
    organizationName3 = [equalCopy organizationName];
    v21 = [organizationName2 isEqual:organizationName3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  accountNumber = [(_INPBBillPayeeValue *)self valueMetadata];
  accountNumber2 = [equalCopy valueMetadata];
  if ((accountNumber != 0) != (accountNumber2 == 0))
  {
    valueMetadata = [(_INPBBillPayeeValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = valueMetadata;
    valueMetadata2 = [(_INPBBillPayeeValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v26 = [valueMetadata2 isEqual:valueMetadata3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBBillPayeeValue allocWithZone:](_INPBBillPayeeValue init];
  v6 = [(NSString *)self->_accountNumber copyWithZone:zone];
  [(_INPBBillPayeeValue *)v5 setAccountNumber:v6];

  v7 = [(_INPBDataString *)self->_nickname copyWithZone:zone];
  [(_INPBBillPayeeValue *)v5 setNickname:v7];

  v8 = [(_INPBDataString *)self->_organizationName copyWithZone:zone];
  [(_INPBBillPayeeValue *)v5 setOrganizationName:v8];

  v9 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBBillPayeeValue *)v5 setValueMetadata:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBBillPayeeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBBillPayeeValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBBillPayeeValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  accountNumber = [(_INPBBillPayeeValue *)self accountNumber];

  if (accountNumber)
  {
    accountNumber = self->_accountNumber;
    PBDataWriterWriteStringField();
  }

  nickname = [(_INPBBillPayeeValue *)self nickname];

  if (nickname)
  {
    nickname2 = [(_INPBBillPayeeValue *)self nickname];
    PBDataWriterWriteSubmessage();
  }

  organizationName = [(_INPBBillPayeeValue *)self organizationName];

  if (organizationName)
  {
    organizationName2 = [(_INPBBillPayeeValue *)self organizationName];
    PBDataWriterWriteSubmessage();
  }

  valueMetadata = [(_INPBBillPayeeValue *)self valueMetadata];

  v11 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBBillPayeeValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
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