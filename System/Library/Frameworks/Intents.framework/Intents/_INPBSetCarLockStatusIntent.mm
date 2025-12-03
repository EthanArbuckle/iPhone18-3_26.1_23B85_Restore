@interface _INPBSetCarLockStatusIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetCarLockStatusIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetCarLockStatusIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  carName = [(_INPBSetCarLockStatusIntent *)self carName];
  dictionaryRepresentation = [carName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"carName"];

  intentMetadata = [(_INPBSetCarLockStatusIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSetCarLockStatusIntent *)self hasLocked])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetCarLockStatusIntent locked](self, "locked")}];
    [dictionary setObject:v8 forKeyedSubscript:@"locked"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_carName hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBSetCarLockStatusIntent *)self hasLocked])
  {
    v5 = 2654435761 * self->_locked;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  carName = [(_INPBSetCarLockStatusIntent *)self carName];
  carName2 = [equalCopy carName];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_11;
  }

  carName3 = [(_INPBSetCarLockStatusIntent *)self carName];
  if (carName3)
  {
    v8 = carName3;
    carName4 = [(_INPBSetCarLockStatusIntent *)self carName];
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

  carName = [(_INPBSetCarLockStatusIntent *)self intentMetadata];
  carName2 = [equalCopy intentMetadata];
  if ((carName != 0) == (carName2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  intentMetadata = [(_INPBSetCarLockStatusIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBSetCarLockStatusIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasLocked = [(_INPBSetCarLockStatusIntent *)self hasLocked];
  if (hasLocked == [equalCopy hasLocked])
  {
    if (!-[_INPBSetCarLockStatusIntent hasLocked](self, "hasLocked") || ![equalCopy hasLocked] || (locked = self->_locked, locked == objc_msgSend(equalCopy, "locked")))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetCarLockStatusIntent allocWithZone:](_INPBSetCarLockStatusIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:zone];
  [(_INPBSetCarLockStatusIntent *)v5 setCarName:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetCarLockStatusIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBSetCarLockStatusIntent *)self hasLocked])
  {
    [(_INPBSetCarLockStatusIntent *)v5 setLocked:[(_INPBSetCarLockStatusIntent *)self locked]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetCarLockStatusIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetCarLockStatusIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetCarLockStatusIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  carName = [(_INPBSetCarLockStatusIntent *)self carName];

  if (carName)
  {
    carName2 = [(_INPBSetCarLockStatusIntent *)self carName];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBSetCarLockStatusIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetCarLockStatusIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetCarLockStatusIntent *)self hasLocked])
  {
    locked = self->_locked;
    PBDataWriterWriteBOOLField();
  }
}

@end