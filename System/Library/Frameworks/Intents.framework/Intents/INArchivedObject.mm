@interface INArchivedObject
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INArchivedObject)initWithCoder:(id)a3;
- (INArchivedObject)initWithTypeName:(id)a3 messageData:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INArchivedObject

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"typeName";
  typeName = self->_typeName;
  v4 = typeName;
  if (!typeName)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"messageData";
  v11[0] = v4;
  messageData = self->_messageData;
  v6 = messageData;
  if (!messageData)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (messageData)
  {
    if (typeName)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (typeName)
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
  v11.super_class = INArchivedObject;
  v6 = [(INArchivedObject *)&v11 description];
  v7 = [(INArchivedObject *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_typeName];
  [v7 if_setObjectIfNonNil:v8 forKey:@"typeName"];

  v9 = [v6 encodeObject:self->_messageData];

  [v7 if_setObjectIfNonNil:v9 forKey:@"messageData"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  typeName = self->_typeName;
  v5 = a3;
  [v5 encodeObject:typeName forKey:@"typeName"];
  [v5 encodeObject:self->_messageData forKey:@"messageData"];
}

- (INArchivedObject)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"typeName"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"messageData"];

  v10 = [(INArchivedObject *)self initWithTypeName:v8 messageData:v9];
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
      typeName = self->_typeName;
      v8 = 0;
      if (typeName == v5->_typeName || [(NSString *)typeName isEqual:?])
      {
        messageData = self->_messageData;
        if (messageData == v5->_messageData || [(NSData *)messageData isEqual:?])
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

- (INArchivedObject)initWithTypeName:(id)a3 messageData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INArchivedObject;
  v8 = [(INArchivedObject *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    typeName = v8->_typeName;
    v8->_typeName = v9;

    v11 = [v7 copy];
    messageData = v8->_messageData;
    v8->_messageData = v11;
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
    v9 = [v8 objectForKeyedSubscript:@"typeName"];
    v10 = objc_opt_class();
    v11 = [v8 objectForKeyedSubscript:@"messageData"];
    v12 = [v7 decodeObjectOfClass:v10 from:v11];

    v13 = [[a1 alloc] initWithTypeName:v9 messageData:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end