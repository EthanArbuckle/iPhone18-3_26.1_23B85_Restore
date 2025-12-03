@interface INGeographicalFeature
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INGeographicalFeature)initWithCoder:(id)coder;
- (INGeographicalFeature)initWithGeographicalFeatureType:(id)type geographicalFeatureDescriptors:(id)descriptors;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGeographicalFeature

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"geographicalFeatureType";
  geographicalFeatureType = self->_geographicalFeatureType;
  null = geographicalFeatureType;
  if (!geographicalFeatureType)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"geographicalFeatureDescriptors";
  v11[0] = null;
  geographicalFeatureDescriptors = self->_geographicalFeatureDescriptors;
  null2 = geographicalFeatureDescriptors;
  if (!geographicalFeatureDescriptors)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INGeographicalFeature;
  v6 = [(INGeographicalFeature *)&v11 description];
  _dictionaryRepresentation = [(INGeographicalFeature *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_geographicalFeatureType];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"geographicalFeatureType"];

  v9 = [encoderCopy encodeObject:self->_geographicalFeatureDescriptors];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"geographicalFeatureDescriptors"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  geographicalFeatureType = self->_geographicalFeatureType;
  coderCopy = coder;
  [coderCopy encodeObject:geographicalFeatureType forKey:@"geographicalFeatureType"];
  [coderCopy encodeObject:self->_geographicalFeatureDescriptors forKey:@"geographicalFeatureDescriptors"];
}

- (INGeographicalFeature)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geographicalFeatureType"];
  v6 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"geographicalFeatureDescriptors"];

  v10 = [(INGeographicalFeature *)self initWithGeographicalFeatureType:v5 geographicalFeatureDescriptors:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INGeographicalFeature)initWithGeographicalFeatureType:(id)type geographicalFeatureDescriptors:(id)descriptors
{
  typeCopy = type;
  descriptorsCopy = descriptors;
  v14.receiver = self;
  v14.super_class = INGeographicalFeature;
  v8 = [(INGeographicalFeature *)&v14 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    geographicalFeatureType = v8->_geographicalFeatureType;
    v8->_geographicalFeatureType = v9;

    v11 = [descriptorsCopy copy];
    geographicalFeatureDescriptors = v8->_geographicalFeatureDescriptors;
    v8->_geographicalFeatureDescriptors = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"geographicalFeatureType"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"geographicalFeatureDescriptors"];
    v14 = [decoderCopy decodeObjectsOfClass:v12 from:v13];

    v15 = [[self alloc] initWithGeographicalFeatureType:v11 geographicalFeatureDescriptors:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end