@interface _INPBListRideOptionsIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBListRideOptionsIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPaymentMethods:(id)a3;
- (void)addRideOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPaymentMethods:(id)a3;
- (void)setRideOptions:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBListRideOptionsIntentResponse

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBListRideOptionsIntentResponse *)self expirationDate];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"expirationDate"];

  if ([(NSArray *)self->_paymentMethods count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"paymentMethods"];
  }

  if ([(NSArray *)self->_rideOptions count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
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

          v19 = [*(*(&v23 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"rideOptions"];
  }

  if ([(_INPBListRideOptionsIntentResponse *)self hasSupportsApplePayForPayment])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBListRideOptionsIntentResponse supportsApplePayForPayment](self, "supportsApplePayForPayment")}];
    [v3 setObject:v20 forKeyedSubscript:@"supportsApplePayForPayment"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBListRideOptionsIntentResponse *)self expirationDate];
  v6 = [v4 expirationDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBListRideOptionsIntentResponse *)self expirationDate];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBListRideOptionsIntentResponse *)self expirationDate];
    v10 = [v4 expirationDate];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBListRideOptionsIntentResponse *)self paymentMethods];
  v6 = [v4 paymentMethods];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBListRideOptionsIntentResponse *)self paymentMethods];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBListRideOptionsIntentResponse *)self paymentMethods];
    v15 = [v4 paymentMethods];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBListRideOptionsIntentResponse *)self rideOptions];
  v6 = [v4 rideOptions];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(_INPBListRideOptionsIntentResponse *)self rideOptions];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBListRideOptionsIntentResponse *)self rideOptions];
    v20 = [v4 rideOptions];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = [(_INPBListRideOptionsIntentResponse *)self hasSupportsApplePayForPayment];
  if (v24 == [v4 hasSupportsApplePayForPayment])
  {
    if (!-[_INPBListRideOptionsIntentResponse hasSupportsApplePayForPayment](self, "hasSupportsApplePayForPayment") || ![v4 hasSupportsApplePayForPayment] || (supportsApplePayForPayment = self->_supportsApplePayForPayment, supportsApplePayForPayment == objc_msgSend(v4, "supportsApplePayForPayment")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBListRideOptionsIntentResponse allocWithZone:](_INPBListRideOptionsIntentResponse init];
  v6 = [(_INPBTimestamp *)self->_expirationDate copyWithZone:a3];
  [(_INPBListRideOptionsIntentResponse *)v5 setExpirationDate:v6];

  v7 = [(NSArray *)self->_paymentMethods copyWithZone:a3];
  [(_INPBListRideOptionsIntentResponse *)v5 setPaymentMethods:v7];

  v8 = [(NSArray *)self->_rideOptions copyWithZone:a3];
  [(_INPBListRideOptionsIntentResponse *)v5 setRideOptions:v8];

  if ([(_INPBListRideOptionsIntentResponse *)self hasSupportsApplePayForPayment])
  {
    [(_INPBListRideOptionsIntentResponse *)v5 setSupportsApplePayForPayment:[(_INPBListRideOptionsIntentResponse *)self supportsApplePayForPayment]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBListRideOptionsIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBListRideOptionsIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBListRideOptionsIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBListRideOptionsIntentResponse *)self expirationDate];

  if (v5)
  {
    v6 = [(_INPBListRideOptionsIntentResponse *)self expirationDate];
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

- (void)addRideOptions:(id)a3
{
  v4 = a3;
  rideOptions = self->_rideOptions;
  v8 = v4;
  if (!rideOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_rideOptions;
    self->_rideOptions = v6;

    v4 = v8;
    rideOptions = self->_rideOptions;
  }

  [(NSArray *)rideOptions addObject:v4];
}

- (void)setRideOptions:(id)a3
{
  v4 = [a3 mutableCopy];
  rideOptions = self->_rideOptions;
  self->_rideOptions = v4;

  MEMORY[0x1EEE66BB8](v4, rideOptions);
}

- (void)addPaymentMethods:(id)a3
{
  v4 = a3;
  paymentMethods = self->_paymentMethods;
  v8 = v4;
  if (!paymentMethods)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_paymentMethods;
    self->_paymentMethods = v6;

    v4 = v8;
    paymentMethods = self->_paymentMethods;
  }

  [(NSArray *)paymentMethods addObject:v4];
}

- (void)setPaymentMethods:(id)a3
{
  v4 = [a3 mutableCopy];
  paymentMethods = self->_paymentMethods;
  self->_paymentMethods = v4;

  MEMORY[0x1EEE66BB8](v4, paymentMethods);
}

@end