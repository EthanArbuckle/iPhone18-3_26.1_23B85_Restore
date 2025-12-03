@interface _INPBListRideOptionsIntent
- (BOOL)isEqual:(id)equal;
- (_INPBListRideOptionsIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBListRideOptionsIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dropOffLocation = [(_INPBListRideOptionsIntent *)self dropOffLocation];
  dictionaryRepresentation = [dropOffLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dropOffLocation"];

  intentMetadata = [(_INPBListRideOptionsIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  pickupLocation = [(_INPBListRideOptionsIntent *)self pickupLocation];
  dictionaryRepresentation3 = [pickupLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"pickupLocation"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocation *)self->_dropOffLocation hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(_INPBLocation *)self->_pickupLocation hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  dropOffLocation = [(_INPBListRideOptionsIntent *)self dropOffLocation];
  dropOffLocation2 = [equalCopy dropOffLocation];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_16;
  }

  dropOffLocation3 = [(_INPBListRideOptionsIntent *)self dropOffLocation];
  if (dropOffLocation3)
  {
    v8 = dropOffLocation3;
    dropOffLocation4 = [(_INPBListRideOptionsIntent *)self dropOffLocation];
    dropOffLocation5 = [equalCopy dropOffLocation];
    v11 = [dropOffLocation4 isEqual:dropOffLocation5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBListRideOptionsIntent *)self intentMetadata];
  dropOffLocation2 = [equalCopy intentMetadata];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_16;
  }

  intentMetadata = [(_INPBListRideOptionsIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBListRideOptionsIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBListRideOptionsIntent *)self pickupLocation];
  dropOffLocation2 = [equalCopy pickupLocation];
  if ((dropOffLocation != 0) != (dropOffLocation2 == 0))
  {
    pickupLocation = [(_INPBListRideOptionsIntent *)self pickupLocation];
    if (!pickupLocation)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = pickupLocation;
    pickupLocation2 = [(_INPBListRideOptionsIntent *)self pickupLocation];
    pickupLocation3 = [equalCopy pickupLocation];
    v21 = [pickupLocation2 isEqual:pickupLocation3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBListRideOptionsIntent allocWithZone:](_INPBListRideOptionsIntent init];
  v6 = [(_INPBLocation *)self->_dropOffLocation copyWithZone:zone];
  [(_INPBListRideOptionsIntent *)v5 setDropOffLocation:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBListRideOptionsIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBLocation *)self->_pickupLocation copyWithZone:zone];
  [(_INPBListRideOptionsIntent *)v5 setPickupLocation:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBListRideOptionsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBListRideOptionsIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBListRideOptionsIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dropOffLocation = [(_INPBListRideOptionsIntent *)self dropOffLocation];

  if (dropOffLocation)
  {
    dropOffLocation2 = [(_INPBListRideOptionsIntent *)self dropOffLocation];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBListRideOptionsIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBListRideOptionsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  pickupLocation = [(_INPBListRideOptionsIntent *)self pickupLocation];

  v9 = toCopy;
  if (pickupLocation)
  {
    pickupLocation2 = [(_INPBListRideOptionsIntent *)self pickupLocation];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end