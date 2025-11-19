@interface _INPBBillPayeeValue
- (BOOL)isEqual:(id)a3;
- (_INPBBillPayeeValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAccountNumber:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBBillPayeeValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accountNumber)
  {
    v4 = [(_INPBBillPayeeValue *)self accountNumber];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"accountNumber"];
  }

  v6 = [(_INPBBillPayeeValue *)self nickname];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"nickname"];

  v8 = [(_INPBBillPayeeValue *)self organizationName];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"organizationName"];

  v10 = [(_INPBBillPayeeValue *)self valueMetadata];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"valueMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accountNumber hash];
  v4 = [(_INPBDataString *)self->_nickname hash]^ v3;
  v5 = [(_INPBDataString *)self->_organizationName hash];
  return v4 ^ v5 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBBillPayeeValue *)self accountNumber];
  v6 = [v4 accountNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBBillPayeeValue *)self accountNumber];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBBillPayeeValue *)self accountNumber];
    v10 = [v4 accountNumber];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBBillPayeeValue *)self nickname];
  v6 = [v4 nickname];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBBillPayeeValue *)self nickname];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBBillPayeeValue *)self nickname];
    v15 = [v4 nickname];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBBillPayeeValue *)self organizationName];
  v6 = [v4 organizationName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBBillPayeeValue *)self organizationName];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBBillPayeeValue *)self organizationName];
    v20 = [v4 organizationName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBBillPayeeValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBBillPayeeValue *)self valueMetadata];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBBillPayeeValue *)self valueMetadata];
    v25 = [v4 valueMetadata];
    v26 = [v24 isEqual:v25];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBBillPayeeValue allocWithZone:](_INPBBillPayeeValue init];
  v6 = [(NSString *)self->_accountNumber copyWithZone:a3];
  [(_INPBBillPayeeValue *)v5 setAccountNumber:v6];

  v7 = [(_INPBDataString *)self->_nickname copyWithZone:a3];
  [(_INPBBillPayeeValue *)v5 setNickname:v7];

  v8 = [(_INPBDataString *)self->_organizationName copyWithZone:a3];
  [(_INPBBillPayeeValue *)v5 setOrganizationName:v8];

  v9 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBBillPayeeValue *)v5 setValueMetadata:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBBillPayeeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBBillPayeeValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBBillPayeeValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBBillPayeeValue *)self accountNumber];

  if (v4)
  {
    accountNumber = self->_accountNumber;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBBillPayeeValue *)self nickname];

  if (v6)
  {
    v7 = [(_INPBBillPayeeValue *)self nickname];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBBillPayeeValue *)self organizationName];

  if (v8)
  {
    v9 = [(_INPBBillPayeeValue *)self organizationName];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBBillPayeeValue *)self valueMetadata];

  v11 = v13;
  if (v10)
  {
    v12 = [(_INPBBillPayeeValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v11 = v13;
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