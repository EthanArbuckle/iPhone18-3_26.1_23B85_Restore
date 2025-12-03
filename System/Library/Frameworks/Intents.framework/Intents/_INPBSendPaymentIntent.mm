@interface _INPBSendPaymentIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSendPaymentIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSendPaymentIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  currencyAmount = [(_INPBSendPaymentIntent *)self currencyAmount];
  dictionaryRepresentation = [currencyAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"currencyAmount"];

  intentMetadata = [(_INPBSendPaymentIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  note = [(_INPBSendPaymentIntent *)self note];
  dictionaryRepresentation3 = [note dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"note"];

  payee = [(_INPBSendPaymentIntent *)self payee];
  dictionaryRepresentation4 = [payee dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"payee"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBCurrencyAmount *)self->_currencyAmount hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBString *)self->_note hash];
  return v4 ^ v5 ^ [(_INPBContact *)self->_payee hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  currencyAmount = [(_INPBSendPaymentIntent *)self currencyAmount];
  currencyAmount2 = [equalCopy currencyAmount];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_21;
  }

  currencyAmount3 = [(_INPBSendPaymentIntent *)self currencyAmount];
  if (currencyAmount3)
  {
    v8 = currencyAmount3;
    currencyAmount4 = [(_INPBSendPaymentIntent *)self currencyAmount];
    currencyAmount5 = [equalCopy currencyAmount];
    v11 = [currencyAmount4 isEqual:currencyAmount5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  currencyAmount = [(_INPBSendPaymentIntent *)self intentMetadata];
  currencyAmount2 = [equalCopy intentMetadata];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_21;
  }

  intentMetadata = [(_INPBSendPaymentIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBSendPaymentIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  currencyAmount = [(_INPBSendPaymentIntent *)self note];
  currencyAmount2 = [equalCopy note];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_21;
  }

  note = [(_INPBSendPaymentIntent *)self note];
  if (note)
  {
    v18 = note;
    note2 = [(_INPBSendPaymentIntent *)self note];
    note3 = [equalCopy note];
    v21 = [note2 isEqual:note3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  currencyAmount = [(_INPBSendPaymentIntent *)self payee];
  currencyAmount2 = [equalCopy payee];
  if ((currencyAmount != 0) != (currencyAmount2 == 0))
  {
    payee = [(_INPBSendPaymentIntent *)self payee];
    if (!payee)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = payee;
    payee2 = [(_INPBSendPaymentIntent *)self payee];
    payee3 = [equalCopy payee];
    v26 = [payee2 isEqual:payee3];

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
  v5 = [+[_INPBSendPaymentIntent allocWithZone:](_INPBSendPaymentIntent init];
  v6 = [(_INPBCurrencyAmount *)self->_currencyAmount copyWithZone:zone];
  [(_INPBSendPaymentIntent *)v5 setCurrencyAmount:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSendPaymentIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBString *)self->_note copyWithZone:zone];
  [(_INPBSendPaymentIntent *)v5 setNote:v8];

  v9 = [(_INPBContact *)self->_payee copyWithZone:zone];
  [(_INPBSendPaymentIntent *)v5 setPayee:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSendPaymentIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSendPaymentIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSendPaymentIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  currencyAmount = [(_INPBSendPaymentIntent *)self currencyAmount];

  if (currencyAmount)
  {
    currencyAmount2 = [(_INPBSendPaymentIntent *)self currencyAmount];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBSendPaymentIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSendPaymentIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  note = [(_INPBSendPaymentIntent *)self note];

  if (note)
  {
    note2 = [(_INPBSendPaymentIntent *)self note];
    PBDataWriterWriteSubmessage();
  }

  payee = [(_INPBSendPaymentIntent *)self payee];

  v11 = toCopy;
  if (payee)
  {
    payee2 = [(_INPBSendPaymentIntent *)self payee];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

@end