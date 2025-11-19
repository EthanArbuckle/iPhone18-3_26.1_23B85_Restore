@interface _INPBGeographicalFeature
- (BOOL)isEqual:(id)a3;
- (_INPBGeographicalFeature)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)addGeographicalFeatureDescriptors:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setGeographicalFeatureDescriptors:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGeographicalFeature

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_geographicalFeatureDescriptors count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"geographicalFeatureDescriptors"];
  }

  v11 = [(_INPBGeographicalFeature *)self geographicalFeatureType];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"geographicalFeatureType"];

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBGeographicalFeature *)self geographicalFeatureDescriptors];
  v6 = [v4 geographicalFeatureDescriptors];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBGeographicalFeature *)self geographicalFeatureDescriptors];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBGeographicalFeature *)self geographicalFeatureDescriptors];
    v10 = [v4 geographicalFeatureDescriptors];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBGeographicalFeature *)self geographicalFeatureType];
  v6 = [v4 geographicalFeatureType];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBGeographicalFeature *)self geographicalFeatureType];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBGeographicalFeature *)self geographicalFeatureType];
    v15 = [v4 geographicalFeatureType];
    v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBGeographicalFeature allocWithZone:](_INPBGeographicalFeature init];
  v6 = [(NSArray *)self->_geographicalFeatureDescriptors copyWithZone:a3];
  [(_INPBGeographicalFeature *)v5 setGeographicalFeatureDescriptors:v6];

  v7 = [(_INPBString *)self->_geographicalFeatureType copyWithZone:a3];
  [(_INPBGeographicalFeature *)v5 setGeographicalFeatureType:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGeographicalFeature *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGeographicalFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGeographicalFeature *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBGeographicalFeature *)self geographicalFeatureType];

  if (v11)
  {
    v12 = [(_INPBGeographicalFeature *)self geographicalFeatureType];
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addGeographicalFeatureDescriptors:(id)a3
{
  v4 = a3;
  geographicalFeatureDescriptors = self->_geographicalFeatureDescriptors;
  v8 = v4;
  if (!geographicalFeatureDescriptors)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_geographicalFeatureDescriptors;
    self->_geographicalFeatureDescriptors = v6;

    v4 = v8;
    geographicalFeatureDescriptors = self->_geographicalFeatureDescriptors;
  }

  [(NSArray *)geographicalFeatureDescriptors addObject:v4];
}

- (void)setGeographicalFeatureDescriptors:(id)a3
{
  v4 = [a3 mutableCopy];
  geographicalFeatureDescriptors = self->_geographicalFeatureDescriptors;
  self->_geographicalFeatureDescriptors = v4;

  MEMORY[0x1EEE66BB8](v4, geographicalFeatureDescriptors);
}

@end