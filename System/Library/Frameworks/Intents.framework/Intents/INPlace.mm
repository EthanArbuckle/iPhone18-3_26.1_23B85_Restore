@interface INPlace
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INPlace)initWithCoder:(id)a3;
- (INPlace)initWithPlaceType:(id)a3 placeSubType:(id)a4 placeDescriptors:(id)a5 personalPlaceType:(int64_t)a6;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INPlace

- (id)_dictionaryRepresentation
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"placeType";
  placeType = self->_placeType;
  v4 = placeType;
  if (!placeType)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
  v13[1] = @"placeSubType";
  placeSubType = self->_placeSubType;
  v6 = placeSubType;
  if (!placeSubType)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v6;
  v13[2] = @"placeDescriptors";
  placeDescriptors = self->_placeDescriptors;
  v8 = placeDescriptors;
  if (!placeDescriptors)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v8;
  v13[3] = @"personalPlaceType";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_personalPlaceType];
  v14[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  if (placeDescriptors)
  {
    if (placeSubType)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (placeType)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!placeSubType)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (placeType)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPlace;
  v6 = [(INPlace *)&v11 description];
  v7 = [(INPlace *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_placeType];
  [v7 if_setObjectIfNonNil:v8 forKey:@"placeType"];

  v9 = [v6 encodeObject:self->_placeSubType];
  [v7 if_setObjectIfNonNil:v9 forKey:@"placeSubType"];

  v10 = [v6 encodeObject:self->_placeDescriptors];

  [v7 if_setObjectIfNonNil:v10 forKey:@"placeDescriptors"];
  personalPlaceType = self->_personalPlaceType;
  v12 = @"unknown";
  if (personalPlaceType == 2)
  {
    v12 = @"work";
  }

  if (personalPlaceType == 1)
  {
    v13 = @"home";
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;
  [v7 if_setObjectIfNonNil:v14 forKey:@"personalPlaceType"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  placeType = self->_placeType;
  v5 = a3;
  [v5 encodeObject:placeType forKey:@"placeType"];
  [v5 encodeObject:self->_placeSubType forKey:@"placeSubType"];
  [v5 encodeObject:self->_placeDescriptors forKey:@"placeDescriptors"];
  [v5 encodeInteger:self->_personalPlaceType forKey:@"personalPlaceType"];
}

- (INPlace)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeSubType"];
  v7 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"placeDescriptors"];

  v11 = [v4 decodeIntegerForKey:@"personalPlaceType"];
  v12 = [(INPlace *)self initWithPlaceType:v5 placeSubType:v6 placeDescriptors:v10 personalPlaceType:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      placeType = self->_placeType;
      v9 = (placeType == v5->_placeType || [(NSString *)placeType isEqual:?]) && ((placeSubType = self->_placeSubType, placeSubType == v5->_placeSubType) || [(NSString *)placeSubType isEqual:?]) && ((placeDescriptors = self->_placeDescriptors, placeDescriptors == v5->_placeDescriptors) || [(NSArray *)placeDescriptors isEqual:?]) && self->_personalPlaceType == v5->_personalPlaceType;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_placeType hash];
  v4 = [(NSString *)self->_placeSubType hash]^ v3;
  v5 = v4 ^ [(NSArray *)self->_placeDescriptors hash];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_personalPlaceType];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (INPlace)initWithPlaceType:(id)a3 placeSubType:(id)a4 placeDescriptors:(id)a5 personalPlaceType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = INPlace;
  v13 = [(INPlace *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    placeType = v13->_placeType;
    v13->_placeType = v14;

    v16 = [v11 copy];
    placeSubType = v13->_placeSubType;
    v13->_placeSubType = v16;

    v18 = [v12 copy];
    placeDescriptors = v13->_placeDescriptors;
    v13->_placeDescriptors = v18;

    v13->_personalPlaceType = a6;
  }

  return v13;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"placeType"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"placeSubType"];
    v14 = [v7 decodeObjectOfClass:v12 from:v13];

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"placeDescriptors"];
    v17 = [v7 decodeObjectsOfClass:v15 from:v16];

    v18 = [v8 objectForKeyedSubscript:@"personalPlaceType"];
    v19 = INPersonalPlaceTypeWithString(v18);

    v20 = [[a1 alloc] initWithPlaceType:v11 placeSubType:v14 placeDescriptors:v17 personalPlaceType:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end