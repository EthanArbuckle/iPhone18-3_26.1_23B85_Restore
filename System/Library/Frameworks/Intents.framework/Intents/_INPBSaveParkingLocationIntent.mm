@interface _INPBSaveParkingLocationIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSaveParkingLocationIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSaveParkingLocationIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBSaveParkingLocationIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  parkingLocation = [(_INPBSaveParkingLocationIntent *)self parkingLocation];
  dictionaryRepresentation2 = [parkingLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"parkingLocation"];

  parkingNote = [(_INPBSaveParkingLocationIntent *)self parkingNote];
  dictionaryRepresentation3 = [parkingNote dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"parkingNote"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(_INPBLocation *)self->_parkingLocation hash]^ v3;
  return v4 ^ [(_INPBString *)self->_parkingNote hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  intentMetadata = [(_INPBSaveParkingLocationIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_16;
  }

  intentMetadata3 = [(_INPBSaveParkingLocationIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBSaveParkingLocationIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSaveParkingLocationIntent *)self parkingLocation];
  intentMetadata2 = [equalCopy parkingLocation];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_16;
  }

  parkingLocation = [(_INPBSaveParkingLocationIntent *)self parkingLocation];
  if (parkingLocation)
  {
    v13 = parkingLocation;
    parkingLocation2 = [(_INPBSaveParkingLocationIntent *)self parkingLocation];
    parkingLocation3 = [equalCopy parkingLocation];
    v16 = [parkingLocation2 isEqual:parkingLocation3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSaveParkingLocationIntent *)self parkingNote];
  intentMetadata2 = [equalCopy parkingNote];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    parkingNote = [(_INPBSaveParkingLocationIntent *)self parkingNote];
    if (!parkingNote)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = parkingNote;
    parkingNote2 = [(_INPBSaveParkingLocationIntent *)self parkingNote];
    parkingNote3 = [equalCopy parkingNote];
    v21 = [parkingNote2 isEqual:parkingNote3];

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
  v5 = [+[_INPBSaveParkingLocationIntent allocWithZone:](_INPBSaveParkingLocationIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSaveParkingLocationIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBLocation *)self->_parkingLocation copyWithZone:zone];
  [(_INPBSaveParkingLocationIntent *)v5 setParkingLocation:v7];

  v8 = [(_INPBString *)self->_parkingNote copyWithZone:zone];
  [(_INPBSaveParkingLocationIntent *)v5 setParkingNote:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSaveParkingLocationIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSaveParkingLocationIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSaveParkingLocationIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBSaveParkingLocationIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSaveParkingLocationIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  parkingLocation = [(_INPBSaveParkingLocationIntent *)self parkingLocation];

  if (parkingLocation)
  {
    parkingLocation2 = [(_INPBSaveParkingLocationIntent *)self parkingLocation];
    PBDataWriterWriteSubmessage();
  }

  parkingNote = [(_INPBSaveParkingLocationIntent *)self parkingNote];

  v9 = toCopy;
  if (parkingNote)
  {
    parkingNote2 = [(_INPBSaveParkingLocationIntent *)self parkingNote];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end