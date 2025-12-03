@interface INModifyRelationship
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INModifyRelationship)initWithCoder:(id)coder;
- (INModifyRelationship)initWithTargetRelationship:(id)relationship isRemoval:(id)removal;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INModifyRelationship

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"targetRelationship";
  targetRelationship = self->_targetRelationship;
  null = targetRelationship;
  if (!targetRelationship)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"isRemoval";
  v11[0] = null;
  isRemoval = self->_isRemoval;
  null2 = isRemoval;
  if (!isRemoval)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INModifyRelationship;
  v6 = [(INModifyRelationship *)&v11 description];
  _dictionaryRepresentation = [(INModifyRelationship *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_targetRelationship];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"targetRelationship"];

  v9 = [encoderCopy encodeObject:self->_isRemoval];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"isRemoval"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  targetRelationship = self->_targetRelationship;
  coderCopy = coder;
  [coderCopy encodeObject:targetRelationship forKey:@"targetRelationship"];
  [coderCopy encodeObject:self->_isRemoval forKey:@"isRemoval"];
}

- (INModifyRelationship)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetRelationship"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isRemoval"];

  v7 = [(INModifyRelationship *)self initWithTargetRelationship:v5 isRemoval:v6];
  return v7;
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

- (INModifyRelationship)initWithTargetRelationship:(id)relationship isRemoval:(id)removal
{
  relationshipCopy = relationship;
  removalCopy = removal;
  v14.receiver = self;
  v14.super_class = INModifyRelationship;
  v8 = [(INModifyRelationship *)&v14 init];
  if (v8)
  {
    v9 = [relationshipCopy copy];
    targetRelationship = v8->_targetRelationship;
    v8->_targetRelationship = v9;

    v11 = [removalCopy copy];
    isRemoval = v8->_isRemoval;
    v8->_isRemoval = v11;
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
    v10 = [fromCopy objectForKeyedSubscript:@"targetRelationship"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"isRemoval"];
    v13 = [[self alloc] initWithTargetRelationship:v11 isRemoval:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end