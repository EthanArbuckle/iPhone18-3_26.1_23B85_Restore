@interface _INPBRequestPaymentIntent
- (BOOL)isEqual:(id)equal;
- (_INPBRequestPaymentIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBRequestPaymentIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  currencyAmount = [(_INPBRequestPaymentIntent *)self currencyAmount];
  dictionaryRepresentation = [currencyAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"currencyAmount"];

  intentMetadata = [(_INPBRequestPaymentIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  note = [(_INPBRequestPaymentIntent *)self note];
  dictionaryRepresentation3 = [note dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"note"];

  payer = [(_INPBRequestPaymentIntent *)self payer];
  dictionaryRepresentation4 = [payer dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"payer"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBCurrencyAmount *)self->_currencyAmount hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBString *)self->_note hash];
  return v4 ^ v5 ^ [(_INPBContact *)self->_payer hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  currencyAmount = [(_INPBRequestPaymentIntent *)self currencyAmount];
  currencyAmount2 = [equalCopy currencyAmount];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_21;
  }

  currencyAmount3 = [(_INPBRequestPaymentIntent *)self currencyAmount];
  if (currencyAmount3)
  {
    v8 = currencyAmount3;
    currencyAmount4 = [(_INPBRequestPaymentIntent *)self currencyAmount];
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

  currencyAmount = [(_INPBRequestPaymentIntent *)self intentMetadata];
  currencyAmount2 = [equalCopy intentMetadata];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_21;
  }

  intentMetadata = [(_INPBRequestPaymentIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBRequestPaymentIntent *)self intentMetadata];
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

  currencyAmount = [(_INPBRequestPaymentIntent *)self note];
  currencyAmount2 = [equalCopy note];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_21;
  }

  note = [(_INPBRequestPaymentIntent *)self note];
  if (note)
  {
    v18 = note;
    note2 = [(_INPBRequestPaymentIntent *)self note];
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

  currencyAmount = [(_INPBRequestPaymentIntent *)self payer];
  currencyAmount2 = [equalCopy payer];
  if ((currencyAmount != 0) != (currencyAmount2 == 0))
  {
    payer = [(_INPBRequestPaymentIntent *)self payer];
    if (!payer)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = payer;
    payer2 = [(_INPBRequestPaymentIntent *)self payer];
    payer3 = [equalCopy payer];
    v26 = [payer2 isEqual:payer3];

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
  v5 = [+[_INPBRequestPaymentIntent allocWithZone:](_INPBRequestPaymentIntent init];
  v6 = [(_INPBCurrencyAmount *)self->_currencyAmount copyWithZone:zone];
  [(_INPBRequestPaymentIntent *)v5 setCurrencyAmount:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBRequestPaymentIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBString *)self->_note copyWithZone:zone];
  [(_INPBRequestPaymentIntent *)v5 setNote:v8];

  v9 = [(_INPBContact *)self->_payer copyWithZone:zone];
  [(_INPBRequestPaymentIntent *)v5 setPayer:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRequestPaymentIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRequestPaymentIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRequestPaymentIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  currencyAmount = [(_INPBRequestPaymentIntent *)self currencyAmount];

  if (currencyAmount)
  {
    currencyAmount2 = [(_INPBRequestPaymentIntent *)self currencyAmount];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBRequestPaymentIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBRequestPaymentIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  note = [(_INPBRequestPaymentIntent *)self note];

  if (note)
  {
    note2 = [(_INPBRequestPaymentIntent *)self note];
    PBDataWriterWriteSubmessage();
  }

  payer = [(_INPBRequestPaymentIntent *)self payer];

  v11 = toCopy;
  if (payer)
  {
    payer2 = [(_INPBRequestPaymentIntent *)self payer];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

@end