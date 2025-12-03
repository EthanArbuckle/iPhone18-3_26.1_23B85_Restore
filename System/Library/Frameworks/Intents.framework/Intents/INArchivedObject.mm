@interface INArchivedObject
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INArchivedObject)initWithCoder:(id)coder;
- (INArchivedObject)initWithTypeName:(id)name messageData:(id)data;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INArchivedObject

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"typeName";
  typeName = self->_typeName;
  null = typeName;
  if (!typeName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"messageData";
  v11[0] = null;
  messageData = self->_messageData;
  null2 = messageData;
  if (!messageData)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INArchivedObject;
  v6 = [(INArchivedObject *)&v11 description];
  _dictionaryRepresentation = [(INArchivedObject *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_typeName];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"typeName"];

  v9 = [encoderCopy encodeObject:self->_messageData];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"messageData"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  typeName = self->_typeName;
  coderCopy = coder;
  [coderCopy encodeObject:typeName forKey:@"typeName"];
  [coderCopy encodeObject:self->_messageData forKey:@"messageData"];
}

- (INArchivedObject)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"typeName"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageData"];

  v10 = [(INArchivedObject *)self initWithTypeName:v8 messageData:v9];
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

- (INArchivedObject)initWithTypeName:(id)name messageData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = INArchivedObject;
  v8 = [(INArchivedObject *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    typeName = v8->_typeName;
    v8->_typeName = v9;

    v11 = [dataCopy copy];
    messageData = v8->_messageData;
    v8->_messageData = v11;
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
    v9 = [fromCopy objectForKeyedSubscript:@"typeName"];
    v10 = objc_opt_class();
    v11 = [fromCopy objectForKeyedSubscript:@"messageData"];
    v12 = [decoderCopy decodeObjectOfClass:v10 from:v11];

    v13 = [[self alloc] initWithTypeName:v9 messageData:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end