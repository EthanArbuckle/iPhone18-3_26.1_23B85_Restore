@interface INCallGroup
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INCallGroup)initWithCoder:(id)a3;
- (INCallGroup)initWithGroupName:(NSString *)groupName groupId:(NSString *)groupId;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCallGroup

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"groupName";
  groupName = self->_groupName;
  v4 = groupName;
  if (!groupName)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"groupId";
  v11[0] = v4;
  groupId = self->_groupId;
  v6 = groupId;
  if (!groupId)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCallGroup;
  v6 = [(INCallGroup *)&v11 description];
  v7 = [(INCallGroup *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_groupName];
  [v7 if_setObjectIfNonNil:v8 forKey:@"groupName"];

  v9 = [v6 encodeObject:self->_groupId];

  [v7 if_setObjectIfNonNil:v9 forKey:@"groupId"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  groupName = self->_groupName;
  v5 = a3;
  [v5 encodeObject:groupName forKey:@"groupName"];
  [v5 encodeObject:self->_groupId forKey:@"groupId"];
}

- (INCallGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupId"];

  v7 = [(INCallGroup *)self initWithGroupName:v5 groupId:v6];
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"groupName"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"groupId"];
    v14 = [v7 decodeObjectOfClass:v12 from:v13];

    v15 = [[a1 alloc] initWithGroupName:v11 groupId:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end