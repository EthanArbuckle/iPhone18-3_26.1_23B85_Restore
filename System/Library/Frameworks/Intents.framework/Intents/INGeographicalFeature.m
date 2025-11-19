@interface INGeographicalFeature
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INGeographicalFeature)initWithCoder:(id)a3;
- (INGeographicalFeature)initWithGeographicalFeatureType:(id)a3 geographicalFeatureDescriptors:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INGeographicalFeature

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"geographicalFeatureType";
  geographicalFeatureType = self->_geographicalFeatureType;
  v4 = geographicalFeatureType;
  if (!geographicalFeatureType)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"geographicalFeatureDescriptors";
  v11[0] = v4;
  geographicalFeatureDescriptors = self->_geographicalFeatureDescriptors;
  v6 = geographicalFeatureDescriptors;
  if (!geographicalFeatureDescriptors)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (geographicalFeatureDescriptors)
  {
    if (geographicalFeatureType)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (geographicalFeatureType)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INGeographicalFeature;
  v6 = [(INGeographicalFeature *)&v11 description];
  v7 = [(INGeographicalFeature *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_geographicalFeatureType];
  [v7 if_setObjectIfNonNil:v8 forKey:@"geographicalFeatureType"];

  v9 = [v6 encodeObject:self->_geographicalFeatureDescriptors];

  [v7 if_setObjectIfNonNil:v9 forKey:@"geographicalFeatureDescriptors"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  geographicalFeatureType = self->_geographicalFeatureType;
  v5 = a3;
  [v5 encodeObject:geographicalFeatureType forKey:@"geographicalFeatureType"];
  [v5 encodeObject:self->_geographicalFeatureDescriptors forKey:@"geographicalFeatureDescriptors"];
}

- (INGeographicalFeature)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geographicalFeatureType"];
  v6 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"geographicalFeatureDescriptors"];

  v10 = [(INGeographicalFeature *)self initWithGeographicalFeatureType:v5 geographicalFeatureDescriptors:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      geographicalFeatureType = self->_geographicalFeatureType;
      v8 = 0;
      if (geographicalFeatureType == v5->_geographicalFeatureType || [(NSString *)geographicalFeatureType isEqual:?])
      {
        geographicalFeatureDescriptors = self->_geographicalFeatureDescriptors;
        if (geographicalFeatureDescriptors == v5->_geographicalFeatureDescriptors || [(NSArray *)geographicalFeatureDescriptors isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (INGeographicalFeature)initWithGeographicalFeatureType:(id)a3 geographicalFeatureDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INGeographicalFeature;
  v8 = [(INGeographicalFeature *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    geographicalFeatureType = v8->_geographicalFeatureType;
    v8->_geographicalFeatureType = v9;

    v11 = [v7 copy];
    geographicalFeatureDescriptors = v8->_geographicalFeatureDescriptors;
    v8->_geographicalFeatureDescriptors = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"geographicalFeatureType"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"geographicalFeatureDescriptors"];
    v14 = [v7 decodeObjectsOfClass:v12 from:v13];

    v15 = [[a1 alloc] initWithGeographicalFeatureType:v11 geographicalFeatureDescriptors:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end