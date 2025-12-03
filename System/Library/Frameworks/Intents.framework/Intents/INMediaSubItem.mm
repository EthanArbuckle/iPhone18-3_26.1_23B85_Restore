@interface INMediaSubItem
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INMediaSubItem)initWithCoder:(id)coder;
- (INMediaSubItem)initWithIdentifier:(id)identifier assetInfo:(id)info;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INMediaSubItem

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"identifier";
  identifier = self->_identifier;
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"assetInfo";
  v11[0] = null;
  assetInfo = self->_assetInfo;
  null2 = assetInfo;
  if (!assetInfo)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (assetInfo)
  {
    if (identifier)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (identifier)
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
  v11.super_class = INMediaSubItem;
  v6 = [(INMediaSubItem *)&v11 description];
  _dictionaryRepresentation = [(INMediaSubItem *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_identifier];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"identifier"];

  v9 = [encoderCopy encodeObject:self->_assetInfo];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"assetInfo"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_assetInfo forKey:@"assetInfo"];
}

- (INMediaSubItem)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"assetInfo"];

  v13 = [(INMediaSubItem *)self initWithIdentifier:v8 assetInfo:v12];
  return v13;
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
      identifier = self->_identifier;
      v8 = 0;
      if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
      {
        assetInfo = self->_assetInfo;
        if (assetInfo == v5->_assetInfo || [(NSString *)assetInfo isEqual:?])
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

- (INMediaSubItem)initWithIdentifier:(id)identifier assetInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = INMediaSubItem;
  v8 = [(INMediaSubItem *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [infoCopy copy];
    assetInfo = v8->_assetInfo;
    v8->_assetInfo = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"identifier"];
    v8 = [fromCopy objectForKeyedSubscript:@"assetInfo"];
    v9 = [[self alloc] initWithIdentifier:v7 assetInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end