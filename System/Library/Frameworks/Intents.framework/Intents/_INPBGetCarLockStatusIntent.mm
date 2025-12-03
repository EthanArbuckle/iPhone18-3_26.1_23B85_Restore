@interface _INPBGetCarLockStatusIntent
- (BOOL)isEqual:(id)equal;
- (_INPBGetCarLockStatusIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetCarLockStatusIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  carName = [(_INPBGetCarLockStatusIntent *)self carName];
  dictionaryRepresentation = [carName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"carName"];

  intentMetadata = [(_INPBGetCarLockStatusIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  carName = [(_INPBGetCarLockStatusIntent *)self carName];
  carName2 = [equalCopy carName];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_11;
  }

  carName3 = [(_INPBGetCarLockStatusIntent *)self carName];
  if (carName3)
  {
    v8 = carName3;
    carName4 = [(_INPBGetCarLockStatusIntent *)self carName];
    carName5 = [equalCopy carName];
    v11 = [carName4 isEqual:carName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  carName = [(_INPBGetCarLockStatusIntent *)self intentMetadata];
  carName2 = [equalCopy intentMetadata];
  if ((carName != 0) != (carName2 == 0))
  {
    intentMetadata = [(_INPBGetCarLockStatusIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = intentMetadata;
    intentMetadata2 = [(_INPBGetCarLockStatusIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

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
  v5 = [+[_INPBGetCarLockStatusIntent allocWithZone:](_INPBGetCarLockStatusIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:zone];
  [(_INPBGetCarLockStatusIntent *)v5 setCarName:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBGetCarLockStatusIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetCarLockStatusIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetCarLockStatusIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetCarLockStatusIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  carName = [(_INPBGetCarLockStatusIntent *)self carName];

  if (carName)
  {
    carName2 = [(_INPBGetCarLockStatusIntent *)self carName];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBGetCarLockStatusIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBGetCarLockStatusIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }
}

@end