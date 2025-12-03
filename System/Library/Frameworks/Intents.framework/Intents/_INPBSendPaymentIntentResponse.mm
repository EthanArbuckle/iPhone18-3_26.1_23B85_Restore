@interface _INPBSendPaymentIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSendPaymentIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSendPaymentIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  paymentRecord = [(_INPBSendPaymentIntentResponse *)self paymentRecord];
  dictionaryRepresentation = [paymentRecord dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"paymentRecord"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    paymentRecord = [(_INPBSendPaymentIntentResponse *)self paymentRecord];
    paymentRecord2 = [equalCopy paymentRecord];
    v7 = paymentRecord2;
    if ((paymentRecord != 0) != (paymentRecord2 == 0))
    {
      paymentRecord3 = [(_INPBSendPaymentIntentResponse *)self paymentRecord];
      if (!paymentRecord3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = paymentRecord3;
      paymentRecord4 = [(_INPBSendPaymentIntentResponse *)self paymentRecord];
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
  v5 = [+[_INPBSendPaymentIntentResponse allocWithZone:](_INPBSendPaymentIntentResponse init];
  v6 = [(_INPBPaymentRecord *)self->_paymentRecord copyWithZone:zone];
  [(_INPBSendPaymentIntentResponse *)v5 setPaymentRecord:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSendPaymentIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSendPaymentIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSendPaymentIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  paymentRecord = [(_INPBSendPaymentIntentResponse *)self paymentRecord];

  if (paymentRecord)
  {
    paymentRecord2 = [(_INPBSendPaymentIntentResponse *)self paymentRecord];
    PBDataWriterWriteSubmessage();
  }
}

@end