@interface _INPBGetRideStatusIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBGetRideStatusIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetRideStatusIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  rideStatus = [(_INPBGetRideStatusIntentResponse *)self rideStatus];
  dictionaryRepresentation = [rideStatus dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"rideStatus"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    rideStatus = [(_INPBGetRideStatusIntentResponse *)self rideStatus];
    rideStatus2 = [equalCopy rideStatus];
    v7 = rideStatus2;
    if ((rideStatus != 0) != (rideStatus2 == 0))
    {
      rideStatus3 = [(_INPBGetRideStatusIntentResponse *)self rideStatus];
      if (!rideStatus3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = rideStatus3;
      rideStatus4 = [(_INPBGetRideStatusIntentResponse *)self rideStatus];
      rideStatus5 = [equalCopy rideStatus];
      v12 = [rideStatus4 isEqual:rideStatus5];

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
  v5 = [+[_INPBGetRideStatusIntentResponse allocWithZone:](_INPBGetRideStatusIntentResponse init];
  v6 = [(_INPBRideStatus *)self->_rideStatus copyWithZone:zone];
  [(_INPBGetRideStatusIntentResponse *)v5 setRideStatus:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetRideStatusIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetRideStatusIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetRideStatusIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  rideStatus = [(_INPBGetRideStatusIntentResponse *)self rideStatus];

  if (rideStatus)
  {
    rideStatus2 = [(_INPBGetRideStatusIntentResponse *)self rideStatus];
    PBDataWriterWriteSubmessage();
  }
}

@end