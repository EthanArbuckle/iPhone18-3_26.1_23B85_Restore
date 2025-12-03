@interface _INPBPlace
- (BOOL)isEqual:(id)equal;
- (_INPBPlace)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsPersonalPlaceType:(id)type;
- (unint64_t)hash;
- (void)addPlaceDescriptors:(id)descriptors;
- (void)encodeWithCoder:(id)coder;
- (void)setPersonalPlaceType:(int)type;
- (void)setPlaceDescriptors:(id)descriptors;
- (void)writeTo:(id)to;
@end

@implementation _INPBPlace

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPlace *)self hasPersonalPlaceType])
  {
    personalPlaceType = [(_INPBPlace *)self personalPlaceType];
    if (personalPlaceType == 2)
    {
      v5 = @"HOME";
    }

    else if (personalPlaceType == 3)
    {
      v5 = @"WORK";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", personalPlaceType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"personalPlaceType"];
  }

  if ([(NSArray *)self->_placeDescriptors count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_placeDescriptors;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"placeDescriptors"];
  }

  placeSubType = [(_INPBPlace *)self placeSubType];
  dictionaryRepresentation2 = [placeSubType dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"placeSubType"];

  placeType = [(_INPBPlace *)self placeType];
  dictionaryRepresentation3 = [placeType dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"placeType"];

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBPlace *)self hasPersonalPlaceType])
  {
    v3 = 2654435761 * self->_personalPlaceType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_placeDescriptors hash]^ v3;
  v5 = [(_INPBString *)self->_placeSubType hash];
  return v4 ^ v5 ^ [(_INPBString *)self->_placeType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  hasPersonalPlaceType = [(_INPBPlace *)self hasPersonalPlaceType];
  if (hasPersonalPlaceType != [equalCopy hasPersonalPlaceType])
  {
    goto LABEL_21;
  }

  if ([(_INPBPlace *)self hasPersonalPlaceType])
  {
    if ([equalCopy hasPersonalPlaceType])
    {
      personalPlaceType = self->_personalPlaceType;
      if (personalPlaceType != [equalCopy personalPlaceType])
      {
        goto LABEL_21;
      }
    }
  }

  placeDescriptors = [(_INPBPlace *)self placeDescriptors];
  placeDescriptors2 = [equalCopy placeDescriptors];
  if ((placeDescriptors != 0) == (placeDescriptors2 == 0))
  {
    goto LABEL_20;
  }

  placeDescriptors3 = [(_INPBPlace *)self placeDescriptors];
  if (placeDescriptors3)
  {
    v10 = placeDescriptors3;
    placeDescriptors4 = [(_INPBPlace *)self placeDescriptors];
    placeDescriptors5 = [equalCopy placeDescriptors];
    v13 = [placeDescriptors4 isEqual:placeDescriptors5];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  placeDescriptors = [(_INPBPlace *)self placeSubType];
  placeDescriptors2 = [equalCopy placeSubType];
  if ((placeDescriptors != 0) == (placeDescriptors2 == 0))
  {
    goto LABEL_20;
  }

  placeSubType = [(_INPBPlace *)self placeSubType];
  if (placeSubType)
  {
    v15 = placeSubType;
    placeSubType2 = [(_INPBPlace *)self placeSubType];
    placeSubType3 = [equalCopy placeSubType];
    v18 = [placeSubType2 isEqual:placeSubType3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  placeDescriptors = [(_INPBPlace *)self placeType];
  placeDescriptors2 = [equalCopy placeType];
  if ((placeDescriptors != 0) != (placeDescriptors2 == 0))
  {
    placeType = [(_INPBPlace *)self placeType];
    if (!placeType)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = placeType;
    placeType2 = [(_INPBPlace *)self placeType];
    placeType3 = [equalCopy placeType];
    v23 = [placeType2 isEqual:placeType3];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPlace allocWithZone:](_INPBPlace init];
  if ([(_INPBPlace *)self hasPersonalPlaceType])
  {
    [(_INPBPlace *)v5 setPersonalPlaceType:[(_INPBPlace *)self personalPlaceType]];
  }

  v6 = [(NSArray *)self->_placeDescriptors copyWithZone:zone];
  [(_INPBPlace *)v5 setPlaceDescriptors:v6];

  v7 = [(_INPBString *)self->_placeSubType copyWithZone:zone];
  [(_INPBPlace *)v5 setPlaceSubType:v7];

  v8 = [(_INPBString *)self->_placeType copyWithZone:zone];
  [(_INPBPlace *)v5 setPlaceType:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPlace *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPlace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPlace *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBPlace *)self hasPersonalPlaceType])
  {
    personalPlaceType = self->_personalPlaceType;
    PBDataWriterWriteInt32Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_placeDescriptors;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  placeSubType = [(_INPBPlace *)self placeSubType];

  if (placeSubType)
  {
    placeSubType2 = [(_INPBPlace *)self placeSubType];
    PBDataWriterWriteSubmessage();
  }

  placeType = [(_INPBPlace *)self placeType];

  if (placeType)
  {
    placeType2 = [(_INPBPlace *)self placeType];
    PBDataWriterWriteSubmessage();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addPlaceDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  placeDescriptors = self->_placeDescriptors;
  v8 = descriptorsCopy;
  if (!placeDescriptors)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_placeDescriptors;
    self->_placeDescriptors = array;

    descriptorsCopy = v8;
    placeDescriptors = self->_placeDescriptors;
  }

  [(NSArray *)placeDescriptors addObject:descriptorsCopy];
}

- (void)setPlaceDescriptors:(id)descriptors
{
  v4 = [descriptors mutableCopy];
  placeDescriptors = self->_placeDescriptors;
  self->_placeDescriptors = v4;

  MEMORY[0x1EEE66BB8](v4, placeDescriptors);
}

- (int)StringAsPersonalPlaceType:(id)type
{
  typeCopy = type;
  v4 = 2;
  if (([typeCopy isEqualToString:@"HOME"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"WORK"])
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

- (void)setPersonalPlaceType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_personalPlaceType = type;
  }
}

@end