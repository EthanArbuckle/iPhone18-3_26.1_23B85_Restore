@interface _INPBRetrieveParkingLocationIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBRetrieveParkingLocationIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBRetrieveParkingLocationIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  parkingLocation = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingLocation];
  dictionaryRepresentation = [parkingLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"parkingLocation"];

  parkingNote = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingNote];
  dictionaryRepresentation2 = [parkingNote dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"parkingNote"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  parkingLocation = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingLocation];
  parkingLocation2 = [equalCopy parkingLocation];
  if ((parkingLocation != 0) == (parkingLocation2 == 0))
  {
    goto LABEL_11;
  }

  parkingLocation3 = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingLocation];
  if (parkingLocation3)
  {
    v8 = parkingLocation3;
    parkingLocation4 = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingLocation];
    parkingLocation5 = [equalCopy parkingLocation];
    v11 = [parkingLocation4 isEqual:parkingLocation5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  parkingLocation = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingNote];
  parkingLocation2 = [equalCopy parkingNote];
  if ((parkingLocation != 0) != (parkingLocation2 == 0))
  {
    parkingNote = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingNote];
    if (!parkingNote)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = parkingNote;
    parkingNote2 = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingNote];
    parkingNote3 = [equalCopy parkingNote];
    v16 = [parkingNote2 isEqual:parkingNote3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRetrieveParkingLocationIntentResponse allocWithZone:](_INPBRetrieveParkingLocationIntentResponse init];
  v6 = [(_INPBLocation *)self->_parkingLocation copyWithZone:zone];
  [(_INPBRetrieveParkingLocationIntentResponse *)v5 setParkingLocation:v6];

  v7 = [(_INPBString *)self->_parkingNote copyWithZone:zone];
  [(_INPBRetrieveParkingLocationIntentResponse *)v5 setParkingNote:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRetrieveParkingLocationIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRetrieveParkingLocationIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRetrieveParkingLocationIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  parkingLocation = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingLocation];

  if (parkingLocation)
  {
    parkingLocation2 = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingLocation];
    PBDataWriterWriteSubmessage();
  }

  parkingNote = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingNote];

  if (parkingNote)
  {
    parkingNote2 = [(_INPBRetrieveParkingLocationIntentResponse *)self parkingNote];
    PBDataWriterWriteSubmessage();
  }
}

@end