@interface _INPBGeographicalFeature
- (BOOL)isEqual:(id)equal;
- (_INPBGeographicalFeature)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addGeographicalFeatureDescriptors:(id)descriptors;
- (void)encodeWithCoder:(id)coder;
- (void)setGeographicalFeatureDescriptors:(id)descriptors;
- (void)writeTo:(id)to;
@end

@implementation _INPBGeographicalFeature

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_geographicalFeatureDescriptors count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_geographicalFeatureDescriptors;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"geographicalFeatureDescriptors"];
  }

  geographicalFeatureType = [(_INPBGeographicalFeature *)self geographicalFeatureType];
  dictionaryRepresentation2 = [geographicalFeatureType dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"geographicalFeatureType"];

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  geographicalFeatureDescriptors = [(_INPBGeographicalFeature *)self geographicalFeatureDescriptors];
  geographicalFeatureDescriptors2 = [equalCopy geographicalFeatureDescriptors];
  if ((geographicalFeatureDescriptors != 0) == (geographicalFeatureDescriptors2 == 0))
  {
    goto LABEL_11;
  }

  geographicalFeatureDescriptors3 = [(_INPBGeographicalFeature *)self geographicalFeatureDescriptors];
  if (geographicalFeatureDescriptors3)
  {
    v8 = geographicalFeatureDescriptors3;
    geographicalFeatureDescriptors4 = [(_INPBGeographicalFeature *)self geographicalFeatureDescriptors];
    geographicalFeatureDescriptors5 = [equalCopy geographicalFeatureDescriptors];
    v11 = [geographicalFeatureDescriptors4 isEqual:geographicalFeatureDescriptors5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  geographicalFeatureDescriptors = [(_INPBGeographicalFeature *)self geographicalFeatureType];
  geographicalFeatureDescriptors2 = [equalCopy geographicalFeatureType];
  if ((geographicalFeatureDescriptors != 0) != (geographicalFeatureDescriptors2 == 0))
  {
    geographicalFeatureType = [(_INPBGeographicalFeature *)self geographicalFeatureType];
    if (!geographicalFeatureType)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = geographicalFeatureType;
    geographicalFeatureType2 = [(_INPBGeographicalFeature *)self geographicalFeatureType];
    geographicalFeatureType3 = [equalCopy geographicalFeatureType];
    v16 = [geographicalFeatureType2 isEqual:geographicalFeatureType3];

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
  v5 = [+[_INPBGeographicalFeature allocWithZone:](_INPBGeographicalFeature init];
  v6 = [(NSArray *)self->_geographicalFeatureDescriptors copyWithZone:zone];
  [(_INPBGeographicalFeature *)v5 setGeographicalFeatureDescriptors:v6];

  v7 = [(_INPBString *)self->_geographicalFeatureType copyWithZone:zone];
  [(_INPBGeographicalFeature *)v5 setGeographicalFeatureType:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGeographicalFeature *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGeographicalFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGeographicalFeature *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_geographicalFeatureDescriptors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  geographicalFeatureType = [(_INPBGeographicalFeature *)self geographicalFeatureType];

  if (geographicalFeatureType)
  {
    geographicalFeatureType2 = [(_INPBGeographicalFeature *)self geographicalFeatureType];
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addGeographicalFeatureDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  geographicalFeatureDescriptors = self->_geographicalFeatureDescriptors;
  v8 = descriptorsCopy;
  if (!geographicalFeatureDescriptors)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_geographicalFeatureDescriptors;
    self->_geographicalFeatureDescriptors = array;

    descriptorsCopy = v8;
    geographicalFeatureDescriptors = self->_geographicalFeatureDescriptors;
  }

  [(NSArray *)geographicalFeatureDescriptors addObject:descriptorsCopy];
}

- (void)setGeographicalFeatureDescriptors:(id)descriptors
{
  v4 = [descriptors mutableCopy];
  geographicalFeatureDescriptors = self->_geographicalFeatureDescriptors;
  self->_geographicalFeatureDescriptors = v4;

  MEMORY[0x1EEE66BB8](v4, geographicalFeatureDescriptors);
}

@end