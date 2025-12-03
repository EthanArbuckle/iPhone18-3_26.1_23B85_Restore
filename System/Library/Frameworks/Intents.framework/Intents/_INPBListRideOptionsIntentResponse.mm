@interface _INPBListRideOptionsIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBListRideOptionsIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPaymentMethods:(id)methods;
- (void)addRideOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)setPaymentMethods:(id)methods;
- (void)setRideOptions:(id)options;
- (void)writeTo:(id)to;
@end

@implementation _INPBListRideOptionsIntentResponse

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  expirationDate = [(_INPBListRideOptionsIntentResponse *)self expirationDate];
  dictionaryRepresentation = [expirationDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"expirationDate"];

  if ([(NSArray *)self->_paymentMethods count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = self->_paymentMethods;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"paymentMethods"];
  }

  if ([(NSArray *)self->_rideOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = self->_rideOptions;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v23 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"rideOptions"];
  }

  if ([(_INPBListRideOptionsIntentResponse *)self hasSupportsApplePayForPayment])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBListRideOptionsIntentResponse supportsApplePayForPayment](self, "supportsApplePayForPayment")}];
    [dictionary setObject:v20 forKeyedSubscript:@"supportsApplePayForPayment"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBTimestamp *)self->_expirationDate hash];
  v4 = [(NSArray *)self->_paymentMethods hash];
  v5 = [(NSArray *)self->_rideOptions hash];
  if ([(_INPBListRideOptionsIntentResponse *)self hasSupportsApplePayForPayment])
  {
    v6 = 2654435761 * self->_supportsApplePayForPayment;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  expirationDate = [(_INPBListRideOptionsIntentResponse *)self expirationDate];
  expirationDate2 = [equalCopy expirationDate];
  if ((expirationDate != 0) == (expirationDate2 == 0))
  {
    goto LABEL_16;
  }

  expirationDate3 = [(_INPBListRideOptionsIntentResponse *)self expirationDate];
  if (expirationDate3)
  {
    v8 = expirationDate3;
    expirationDate4 = [(_INPBListRideOptionsIntentResponse *)self expirationDate];
    expirationDate5 = [equalCopy expirationDate];
    v11 = [expirationDate4 isEqual:expirationDate5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  expirationDate = [(_INPBListRideOptionsIntentResponse *)self paymentMethods];
  expirationDate2 = [equalCopy paymentMethods];
  if ((expirationDate != 0) == (expirationDate2 == 0))
  {
    goto LABEL_16;
  }

  paymentMethods = [(_INPBListRideOptionsIntentResponse *)self paymentMethods];
  if (paymentMethods)
  {
    v13 = paymentMethods;
    paymentMethods2 = [(_INPBListRideOptionsIntentResponse *)self paymentMethods];
    paymentMethods3 = [equalCopy paymentMethods];
    v16 = [paymentMethods2 isEqual:paymentMethods3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  expirationDate = [(_INPBListRideOptionsIntentResponse *)self rideOptions];
  expirationDate2 = [equalCopy rideOptions];
  if ((expirationDate != 0) == (expirationDate2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  rideOptions = [(_INPBListRideOptionsIntentResponse *)self rideOptions];
  if (rideOptions)
  {
    v18 = rideOptions;
    rideOptions2 = [(_INPBListRideOptionsIntentResponse *)self rideOptions];
    rideOptions3 = [equalCopy rideOptions];
    v21 = [rideOptions2 isEqual:rideOptions3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  hasSupportsApplePayForPayment = [(_INPBListRideOptionsIntentResponse *)self hasSupportsApplePayForPayment];
  if (hasSupportsApplePayForPayment == [equalCopy hasSupportsApplePayForPayment])
  {
    if (!-[_INPBListRideOptionsIntentResponse hasSupportsApplePayForPayment](self, "hasSupportsApplePayForPayment") || ![equalCopy hasSupportsApplePayForPayment] || (supportsApplePayForPayment = self->_supportsApplePayForPayment, supportsApplePayForPayment == objc_msgSend(equalCopy, "supportsApplePayForPayment")))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBListRideOptionsIntentResponse allocWithZone:](_INPBListRideOptionsIntentResponse init];
  v6 = [(_INPBTimestamp *)self->_expirationDate copyWithZone:zone];
  [(_INPBListRideOptionsIntentResponse *)v5 setExpirationDate:v6];

  v7 = [(NSArray *)self->_paymentMethods copyWithZone:zone];
  [(_INPBListRideOptionsIntentResponse *)v5 setPaymentMethods:v7];

  v8 = [(NSArray *)self->_rideOptions copyWithZone:zone];
  [(_INPBListRideOptionsIntentResponse *)v5 setRideOptions:v8];

  if ([(_INPBListRideOptionsIntentResponse *)self hasSupportsApplePayForPayment])
  {
    [(_INPBListRideOptionsIntentResponse *)v5 setSupportsApplePayForPayment:[(_INPBListRideOptionsIntentResponse *)self supportsApplePayForPayment]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBListRideOptionsIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBListRideOptionsIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBListRideOptionsIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
  expirationDate = [(_INPBListRideOptionsIntentResponse *)self expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [(_INPBListRideOptionsIntentResponse *)self expirationDate];
    PBDataWriterWriteSubmessage();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_paymentMethods;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_rideOptions;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  if ([(_INPBListRideOptionsIntentResponse *)self hasSupportsApplePayForPayment])
  {
    supportsApplePayForPayment = self->_supportsApplePayForPayment;
    PBDataWriterWriteBOOLField();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addRideOptions:(id)options
{
  optionsCopy = options;
  rideOptions = self->_rideOptions;
  v8 = optionsCopy;
  if (!rideOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_rideOptions;
    self->_rideOptions = array;

    optionsCopy = v8;
    rideOptions = self->_rideOptions;
  }

  [(NSArray *)rideOptions addObject:optionsCopy];
}

- (void)setRideOptions:(id)options
{
  v4 = [options mutableCopy];
  rideOptions = self->_rideOptions;
  self->_rideOptions = v4;

  MEMORY[0x1EEE66BB8](v4, rideOptions);
}

- (void)addPaymentMethods:(id)methods
{
  methodsCopy = methods;
  paymentMethods = self->_paymentMethods;
  v8 = methodsCopy;
  if (!paymentMethods)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_paymentMethods;
    self->_paymentMethods = array;

    methodsCopy = v8;
    paymentMethods = self->_paymentMethods;
  }

  [(NSArray *)paymentMethods addObject:methodsCopy];
}

- (void)setPaymentMethods:(id)methods
{
  v4 = [methods mutableCopy];
  paymentMethods = self->_paymentMethods;
  self->_paymentMethods = v4;

  MEMORY[0x1EEE66BB8](v4, paymentMethods);
}

@end