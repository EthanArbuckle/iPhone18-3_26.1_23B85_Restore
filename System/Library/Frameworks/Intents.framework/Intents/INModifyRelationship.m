@interface INModifyRelationship
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INModifyRelationship)initWithCoder:(id)a3;
- (INModifyRelationship)initWithTargetRelationship:(id)a3 isRemoval:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INModifyRelationship

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"targetRelationship";
  targetRelationship = self->_targetRelationship;
  v4 = targetRelationship;
  if (!targetRelationship)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"isRemoval";
  v11[0] = v4;
  isRemoval = self->_isRemoval;
  v6 = isRemoval;
  if (!isRemoval)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (isRemoval)
  {
    if (targetRelationship)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (targetRelationship)
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
  v11.super_class = INModifyRelationship;
  v6 = [(INModifyRelationship *)&v11 description];
  v7 = [(INModifyRelationship *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_targetRelationship];
  [v7 if_setObjectIfNonNil:v8 forKey:@"targetRelationship"];

  v9 = [v6 encodeObject:self->_isRemoval];

  [v7 if_setObjectIfNonNil:v9 forKey:@"isRemoval"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  targetRelationship = self->_targetRelationship;
  v5 = a3;
  [v5 encodeObject:targetRelationship forKey:@"targetRelationship"];
  [v5 encodeObject:self->_isRemoval forKey:@"isRemoval"];
}

- (INModifyRelationship)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetRelationship"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isRemoval"];

  v7 = [(INModifyRelationship *)self initWithTargetRelationship:v5 isRemoval:v6];
  return v7;
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
      targetRelationship = self->_targetRelationship;
      v8 = 0;
      if (targetRelationship == v5->_targetRelationship || [(NSString *)targetRelationship isEqual:?])
      {
        isRemoval = self->_isRemoval;
        if (isRemoval == v5->_isRemoval || [(NSNumber *)isRemoval isEqual:?])
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

- (INModifyRelationship)initWithTargetRelationship:(id)a3 isRemoval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INModifyRelationship;
  v8 = [(INModifyRelationship *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    targetRelationship = v8->_targetRelationship;
    v8->_targetRelationship = v9;

    v11 = [v7 copy];
    isRemoval = v8->_isRemoval;
    v8->_isRemoval = v11;
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
    v10 = [v8 objectForKeyedSubscript:@"targetRelationship"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"isRemoval"];
    v13 = [[a1 alloc] initWithTargetRelationship:v11 isRemoval:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end