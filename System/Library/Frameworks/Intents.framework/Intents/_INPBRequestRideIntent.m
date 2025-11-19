@interface _INPBRequestRideIntent
- (BOOL)isEqual:(id)a3;
- (_INPBRequestRideIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRequestRideIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBRequestRideIntent *)self dropOffLocation];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"dropOffLocation"];

  v6 = [(_INPBRequestRideIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBRequestRideIntent *)self partySize];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"partySize"];

  v10 = [(_INPBRequestRideIntent *)self paymentMethod];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"paymentMethod"];

  v12 = [(_INPBRequestRideIntent *)self paymentMethodName];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"paymentMethodName"];

  v14 = [(_INPBRequestRideIntent *)self pickupLocation];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"pickupLocation"];

  v16 = [(_INPBRequestRideIntent *)self pickupTime];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"pickupTime"];

  v18 = [(_INPBRequestRideIntent *)self rideOptionName];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"rideOptionName"];

  v20 = [(_INPBRequestRideIntent *)self scheduledPickupTime];
  v21 = [v20 dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"scheduledPickupTime"];

  if ([(_INPBRequestRideIntent *)self hasUsesApplePayForPayment])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRequestRideIntent usesApplePayForPayment](self, "usesApplePayForPayment")}];
    [v3 setObject:v22 forKeyedSubscript:@"usesApplePayForPayment"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocation *)self->_dropOffLocation hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v5 = [(_INPBInteger *)self->_partySize hash];
  v6 = [(_INPBPaymentMethod *)self->_paymentMethod hash];
  v7 = [(_INPBDataString *)self->_paymentMethodName hash];
  v8 = [(_INPBLocation *)self->_pickupLocation hash];
  v9 = [(_INPBDateTimeRange *)self->_pickupTime hash];
  v10 = [(_INPBDataString *)self->_rideOptionName hash];
  v11 = [(_INPBDateTimeRange *)self->_scheduledPickupTime hash];
  if ([(_INPBRequestRideIntent *)self hasUsesApplePayForPayment])
  {
    v12 = 2654435761 * self->_usesApplePayForPayment;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = [(_INPBRequestRideIntent *)self dropOffLocation];
  v6 = [v4 dropOffLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v7 = [(_INPBRequestRideIntent *)self dropOffLocation];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRequestRideIntent *)self dropOffLocation];
    v10 = [v4 dropOffLocation];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBRequestRideIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v12 = [(_INPBRequestRideIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRequestRideIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBRequestRideIntent *)self partySize];
  v6 = [v4 partySize];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v17 = [(_INPBRequestRideIntent *)self partySize];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBRequestRideIntent *)self partySize];
    v20 = [v4 partySize];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBRequestRideIntent *)self paymentMethod];
  v6 = [v4 paymentMethod];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v22 = [(_INPBRequestRideIntent *)self paymentMethod];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBRequestRideIntent *)self paymentMethod];
    v25 = [v4 paymentMethod];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBRequestRideIntent *)self paymentMethodName];
  v6 = [v4 paymentMethodName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v27 = [(_INPBRequestRideIntent *)self paymentMethodName];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBRequestRideIntent *)self paymentMethodName];
    v30 = [v4 paymentMethodName];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBRequestRideIntent *)self pickupLocation];
  v6 = [v4 pickupLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v32 = [(_INPBRequestRideIntent *)self pickupLocation];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBRequestRideIntent *)self pickupLocation];
    v35 = [v4 pickupLocation];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBRequestRideIntent *)self pickupTime];
  v6 = [v4 pickupTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v37 = [(_INPBRequestRideIntent *)self pickupTime];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBRequestRideIntent *)self pickupTime];
    v40 = [v4 pickupTime];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBRequestRideIntent *)self rideOptionName];
  v6 = [v4 rideOptionName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v42 = [(_INPBRequestRideIntent *)self rideOptionName];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBRequestRideIntent *)self rideOptionName];
    v45 = [v4 rideOptionName];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBRequestRideIntent *)self scheduledPickupTime];
  v6 = [v4 scheduledPickupTime];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_46:

    goto LABEL_47;
  }

  v47 = [(_INPBRequestRideIntent *)self scheduledPickupTime];
  if (v47)
  {
    v48 = v47;
    v49 = [(_INPBRequestRideIntent *)self scheduledPickupTime];
    v50 = [v4 scheduledPickupTime];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v54 = [(_INPBRequestRideIntent *)self hasUsesApplePayForPayment];
  if (v54 == [v4 hasUsesApplePayForPayment])
  {
    if (!-[_INPBRequestRideIntent hasUsesApplePayForPayment](self, "hasUsesApplePayForPayment") || ![v4 hasUsesApplePayForPayment] || (usesApplePayForPayment = self->_usesApplePayForPayment, usesApplePayForPayment == objc_msgSend(v4, "usesApplePayForPayment")))
    {
      v52 = 1;
      goto LABEL_48;
    }
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBRequestRideIntent allocWithZone:](_INPBRequestRideIntent init];
  v6 = [(_INPBLocation *)self->_dropOffLocation copyWithZone:a3];
  [(_INPBRequestRideIntent *)v5 setDropOffLocation:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBRequestRideIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBInteger *)self->_partySize copyWithZone:a3];
  [(_INPBRequestRideIntent *)v5 setPartySize:v8];

  v9 = [(_INPBPaymentMethod *)self->_paymentMethod copyWithZone:a3];
  [(_INPBRequestRideIntent *)v5 setPaymentMethod:v9];

  v10 = [(_INPBDataString *)self->_paymentMethodName copyWithZone:a3];
  [(_INPBRequestRideIntent *)v5 setPaymentMethodName:v10];

  v11 = [(_INPBLocation *)self->_pickupLocation copyWithZone:a3];
  [(_INPBRequestRideIntent *)v5 setPickupLocation:v11];

  v12 = [(_INPBDateTimeRange *)self->_pickupTime copyWithZone:a3];
  [(_INPBRequestRideIntent *)v5 setPickupTime:v12];

  v13 = [(_INPBDataString *)self->_rideOptionName copyWithZone:a3];
  [(_INPBRequestRideIntent *)v5 setRideOptionName:v13];

  v14 = [(_INPBDateTimeRange *)self->_scheduledPickupTime copyWithZone:a3];
  [(_INPBRequestRideIntent *)v5 setScheduledPickupTime:v14];

  if ([(_INPBRequestRideIntent *)self hasUsesApplePayForPayment])
  {
    [(_INPBRequestRideIntent *)v5 setUsesApplePayForPayment:[(_INPBRequestRideIntent *)self usesApplePayForPayment]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRequestRideIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRequestRideIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRequestRideIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(_INPBRequestRideIntent *)self dropOffLocation];

  if (v4)
  {
    v5 = [(_INPBRequestRideIntent *)self dropOffLocation];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBRequestRideIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBRequestRideIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBRequestRideIntent *)self partySize];

  if (v8)
  {
    v9 = [(_INPBRequestRideIntent *)self partySize];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBRequestRideIntent *)self paymentMethod];

  if (v10)
  {
    v11 = [(_INPBRequestRideIntent *)self paymentMethod];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBRequestRideIntent *)self paymentMethodName];

  if (v12)
  {
    v13 = [(_INPBRequestRideIntent *)self paymentMethodName];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBRequestRideIntent *)self pickupLocation];

  if (v14)
  {
    v15 = [(_INPBRequestRideIntent *)self pickupLocation];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_INPBRequestRideIntent *)self pickupTime];

  if (v16)
  {
    v17 = [(_INPBRequestRideIntent *)self pickupTime];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_INPBRequestRideIntent *)self rideOptionName];

  if (v18)
  {
    v19 = [(_INPBRequestRideIntent *)self rideOptionName];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_INPBRequestRideIntent *)self scheduledPickupTime];

  if (v20)
  {
    v21 = [(_INPBRequestRideIntent *)self scheduledPickupTime];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBRequestRideIntent *)self hasUsesApplePayForPayment])
  {
    usesApplePayForPayment = self->_usesApplePayForPayment;
    PBDataWriterWriteBOOLField();
  }
}

@end