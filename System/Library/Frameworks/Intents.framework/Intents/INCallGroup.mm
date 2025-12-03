@interface INCallGroup
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INCallGroup)initWithCoder:(id)coder;
- (INCallGroup)initWithGroupName:(NSString *)groupName groupId:(NSString *)groupId;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCallGroup

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"groupName";
  groupName = self->_groupName;
  null = groupName;
  if (!groupName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"groupId";
  v11[0] = null;
  groupId = self->_groupId;
  null2 = groupId;
  if (!groupId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (groupId)
  {
    if (groupName)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (groupName)
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
  v11.super_class = INCallGroup;
  v6 = [(INCallGroup *)&v11 description];
  _dictionaryRepresentation = [(INCallGroup *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_groupName];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"groupName"];

  v9 = [encoderCopy encodeObject:self->_groupId];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"groupId"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  groupName = self->_groupName;
  coderCopy = coder;
  [coderCopy encodeObject:groupName forKey:@"groupName"];
  [coderCopy encodeObject:self->_groupId forKey:@"groupId"];
}

- (INCallGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupId"];

  v7 = [(INCallGroup *)self initWithGroupName:v5 groupId:v6];
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
      groupName = self->_groupName;
      v8 = 0;
      if (groupName == v5->_groupName || [(NSString *)groupName isEqual:?])
      {
        groupId = self->_groupId;
        if (groupId == v5->_groupId || [(NSString *)groupId isEqual:?])
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

- (INCallGroup)initWithGroupName:(NSString *)groupName groupId:(NSString *)groupId
{
  v6 = groupName;
  v7 = groupId;
  v14.receiver = self;
  v14.super_class = INCallGroup;
  v8 = [(INCallGroup *)&v14 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_groupName;
    v8->_groupName = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_groupId;
    v8->_groupId = v11;
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
    v10 = [fromCopy objectForKeyedSubscript:@"groupName"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"groupId"];
    v14 = [decoderCopy decodeObjectOfClass:v12 from:v13];

    v15 = [[self alloc] initWithGroupName:v11 groupId:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end