@interface _INPBRequestRideIntent
- (BOOL)isEqual:(id)equal;
- (_INPBRequestRideIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBRequestRideIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dropOffLocation = [(_INPBRequestRideIntent *)self dropOffLocation];
  dictionaryRepresentation = [dropOffLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dropOffLocation"];

  intentMetadata = [(_INPBRequestRideIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  partySize = [(_INPBRequestRideIntent *)self partySize];
  dictionaryRepresentation3 = [partySize dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"partySize"];

  paymentMethod = [(_INPBRequestRideIntent *)self paymentMethod];
  dictionaryRepresentation4 = [paymentMethod dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"paymentMethod"];

  paymentMethodName = [(_INPBRequestRideIntent *)self paymentMethodName];
  dictionaryRepresentation5 = [paymentMethodName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"paymentMethodName"];

  pickupLocation = [(_INPBRequestRideIntent *)self pickupLocation];
  dictionaryRepresentation6 = [pickupLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"pickupLocation"];

  pickupTime = [(_INPBRequestRideIntent *)self pickupTime];
  dictionaryRepresentation7 = [pickupTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"pickupTime"];

  rideOptionName = [(_INPBRequestRideIntent *)self rideOptionName];
  dictionaryRepresentation8 = [rideOptionName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"rideOptionName"];

  scheduledPickupTime = [(_INPBRequestRideIntent *)self scheduledPickupTime];
  dictionaryRepresentation9 = [scheduledPickupTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"scheduledPickupTime"];

  if ([(_INPBRequestRideIntent *)self hasUsesApplePayForPayment])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRequestRideIntent usesApplePayForPayment](self, "usesApplePayForPayment")}];
    [dictionary setObject:v22 forKeyedSubscript:@"usesApplePayForPayment"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  dropOffLocation = [(_INPBRequestRideIntent *)self dropOffLocation];
  dropOffLocation2 = [equalCopy dropOffLocation];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_46;
  }

  dropOffLocation3 = [(_INPBRequestRideIntent *)self dropOffLocation];
  if (dropOffLocation3)
  {
    v8 = dropOffLocation3;
    dropOffLocation4 = [(_INPBRequestRideIntent *)self dropOffLocation];
    dropOffLocation5 = [equalCopy dropOffLocation];
    v11 = [dropOffLocation4 isEqual:dropOffLocation5];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRequestRideIntent *)self intentMetadata];
  dropOffLocation2 = [equalCopy intentMetadata];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_46;
  }

  intentMetadata = [(_INPBRequestRideIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBRequestRideIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRequestRideIntent *)self partySize];
  dropOffLocation2 = [equalCopy partySize];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_46;
  }

  partySize = [(_INPBRequestRideIntent *)self partySize];
  if (partySize)
  {
    v18 = partySize;
    partySize2 = [(_INPBRequestRideIntent *)self partySize];
    partySize3 = [equalCopy partySize];
    v21 = [partySize2 isEqual:partySize3];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRequestRideIntent *)self paymentMethod];
  dropOffLocation2 = [equalCopy paymentMethod];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_46;
  }

  paymentMethod = [(_INPBRequestRideIntent *)self paymentMethod];
  if (paymentMethod)
  {
    v23 = paymentMethod;
    paymentMethod2 = [(_INPBRequestRideIntent *)self paymentMethod];
    paymentMethod3 = [equalCopy paymentMethod];
    v26 = [paymentMethod2 isEqual:paymentMethod3];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRequestRideIntent *)self paymentMethodName];
  dropOffLocation2 = [equalCopy paymentMethodName];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_46;
  }

  paymentMethodName = [(_INPBRequestRideIntent *)self paymentMethodName];
  if (paymentMethodName)
  {
    v28 = paymentMethodName;
    paymentMethodName2 = [(_INPBRequestRideIntent *)self paymentMethodName];
    paymentMethodName3 = [equalCopy paymentMethodName];
    v31 = [paymentMethodName2 isEqual:paymentMethodName3];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRequestRideIntent *)self pickupLocation];
  dropOffLocation2 = [equalCopy pickupLocation];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_46;
  }

  pickupLocation = [(_INPBRequestRideIntent *)self pickupLocation];
  if (pickupLocation)
  {
    v33 = pickupLocation;
    pickupLocation2 = [(_INPBRequestRideIntent *)self pickupLocation];
    pickupLocation3 = [equalCopy pickupLocation];
    v36 = [pickupLocation2 isEqual:pickupLocation3];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRequestRideIntent *)self pickupTime];
  dropOffLocation2 = [equalCopy pickupTime];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_46;
  }

  pickupTime = [(_INPBRequestRideIntent *)self pickupTime];
  if (pickupTime)
  {
    v38 = pickupTime;
    pickupTime2 = [(_INPBRequestRideIntent *)self pickupTime];
    pickupTime3 = [equalCopy pickupTime];
    v41 = [pickupTime2 isEqual:pickupTime3];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRequestRideIntent *)self rideOptionName];
  dropOffLocation2 = [equalCopy rideOptionName];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_46;
  }

  rideOptionName = [(_INPBRequestRideIntent *)self rideOptionName];
  if (rideOptionName)
  {
    v43 = rideOptionName;
    rideOptionName2 = [(_INPBRequestRideIntent *)self rideOptionName];
    rideOptionName3 = [equalCopy rideOptionName];
    v46 = [rideOptionName2 isEqual:rideOptionName3];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRequestRideIntent *)self scheduledPickupTime];
  dropOffLocation2 = [equalCopy scheduledPickupTime];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
LABEL_46:

    goto LABEL_47;
  }

  scheduledPickupTime = [(_INPBRequestRideIntent *)self scheduledPickupTime];
  if (scheduledPickupTime)
  {
    v48 = scheduledPickupTime;
    scheduledPickupTime2 = [(_INPBRequestRideIntent *)self scheduledPickupTime];
    scheduledPickupTime3 = [equalCopy scheduledPickupTime];
    v51 = [scheduledPickupTime2 isEqual:scheduledPickupTime3];

    if (!v51)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  hasUsesApplePayForPayment = [(_INPBRequestRideIntent *)self hasUsesApplePayForPayment];
  if (hasUsesApplePayForPayment == [equalCopy hasUsesApplePayForPayment])
  {
    if (!-[_INPBRequestRideIntent hasUsesApplePayForPayment](self, "hasUsesApplePayForPayment") || ![equalCopy hasUsesApplePayForPayment] || (usesApplePayForPayment = self->_usesApplePayForPayment, usesApplePayForPayment == objc_msgSend(equalCopy, "usesApplePayForPayment")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRequestRideIntent allocWithZone:](_INPBRequestRideIntent init];
  v6 = [(_INPBLocation *)self->_dropOffLocation copyWithZone:zone];
  [(_INPBRequestRideIntent *)v5 setDropOffLocation:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBRequestRideIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBInteger *)self->_partySize copyWithZone:zone];
  [(_INPBRequestRideIntent *)v5 setPartySize:v8];

  v9 = [(_INPBPaymentMethod *)self->_paymentMethod copyWithZone:zone];
  [(_INPBRequestRideIntent *)v5 setPaymentMethod:v9];

  v10 = [(_INPBDataString *)self->_paymentMethodName copyWithZone:zone];
  [(_INPBRequestRideIntent *)v5 setPaymentMethodName:v10];

  v11 = [(_INPBLocation *)self->_pickupLocation copyWithZone:zone];
  [(_INPBRequestRideIntent *)v5 setPickupLocation:v11];

  v12 = [(_INPBDateTimeRange *)self->_pickupTime copyWithZone:zone];
  [(_INPBRequestRideIntent *)v5 setPickupTime:v12];

  v13 = [(_INPBDataString *)self->_rideOptionName copyWithZone:zone];
  [(_INPBRequestRideIntent *)v5 setRideOptionName:v13];

  v14 = [(_INPBDateTimeRange *)self->_scheduledPickupTime copyWithZone:zone];
  [(_INPBRequestRideIntent *)v5 setScheduledPickupTime:v14];

  if ([(_INPBRequestRideIntent *)self hasUsesApplePayForPayment])
  {
    [(_INPBRequestRideIntent *)v5 setUsesApplePayForPayment:[(_INPBRequestRideIntent *)self usesApplePayForPayment]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRequestRideIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRequestRideIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRequestRideIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dropOffLocation = [(_INPBRequestRideIntent *)self dropOffLocation];

  if (dropOffLocation)
  {
    dropOffLocation2 = [(_INPBRequestRideIntent *)self dropOffLocation];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBRequestRideIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBRequestRideIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  partySize = [(_INPBRequestRideIntent *)self partySize];

  if (partySize)
  {
    partySize2 = [(_INPBRequestRideIntent *)self partySize];
    PBDataWriterWriteSubmessage();
  }

  paymentMethod = [(_INPBRequestRideIntent *)self paymentMethod];

  if (paymentMethod)
  {
    paymentMethod2 = [(_INPBRequestRideIntent *)self paymentMethod];
    PBDataWriterWriteSubmessage();
  }

  paymentMethodName = [(_INPBRequestRideIntent *)self paymentMethodName];

  if (paymentMethodName)
  {
    paymentMethodName2 = [(_INPBRequestRideIntent *)self paymentMethodName];
    PBDataWriterWriteSubmessage();
  }

  pickupLocation = [(_INPBRequestRideIntent *)self pickupLocation];

  if (pickupLocation)
  {
    pickupLocation2 = [(_INPBRequestRideIntent *)self pickupLocation];
    PBDataWriterWriteSubmessage();
  }

  pickupTime = [(_INPBRequestRideIntent *)self pickupTime];

  if (pickupTime)
  {
    pickupTime2 = [(_INPBRequestRideIntent *)self pickupTime];
    PBDataWriterWriteSubmessage();
  }

  rideOptionName = [(_INPBRequestRideIntent *)self rideOptionName];

  if (rideOptionName)
  {
    rideOptionName2 = [(_INPBRequestRideIntent *)self rideOptionName];
    PBDataWriterWriteSubmessage();
  }

  scheduledPickupTime = [(_INPBRequestRideIntent *)self scheduledPickupTime];

  if (scheduledPickupTime)
  {
    scheduledPickupTime2 = [(_INPBRequestRideIntent *)self scheduledPickupTime];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBRequestRideIntent *)self hasUsesApplePayForPayment])
  {
    usesApplePayForPayment = self->_usesApplePayForPayment;
    PBDataWriterWriteBOOLField();
  }
}

@end