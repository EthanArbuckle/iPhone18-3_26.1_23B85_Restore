@interface _INPBRequestPaymentIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBRequestPaymentIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBRequestPaymentIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  paymentRecord = [(_INPBRequestPaymentIntentResponse *)self paymentRecord];
  dictionaryRepresentation = [paymentRecord dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"paymentRecord"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    paymentRecord = [(_INPBRequestPaymentIntentResponse *)self paymentRecord];
    paymentRecord2 = [equalCopy paymentRecord];
    v7 = paymentRecord2;
    if ((paymentRecord != 0) != (paymentRecord2 == 0))
    {
      paymentRecord3 = [(_INPBRequestPaymentIntentResponse *)self paymentRecord];
      if (!paymentRecord3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = paymentRecord3;
      paymentRecord4 = [(_INPBRequestPaymentIntentResponse *)self paymentRecord];
      paymentRecord5 = [equalCopy paymentRecord];
      v12 = [paymentRecord4 isEqual:paymentRecord5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRequestPaymentIntentResponse allocWithZone:](_INPBRequestPaymentIntentResponse init];
  v6 = [(_INPBPaymentRecord *)self->_paymentRecord copyWithZone:zone];
  [(_INPBRequestPaymentIntentResponse *)v5 setPaymentRecord:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRequestPaymentIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRequestPaymentIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRequestPaymentIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  paymentRecord = [(_INPBRequestPaymentIntentResponse *)self paymentRecord];

  if (paymentRecord)
  {
    paymentRecord2 = [(_INPBRequestPaymentIntentResponse *)self paymentRecord];
    PBDataWriterWriteSubmessage();
  }
}

@end