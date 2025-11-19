@interface INMediaSubItem
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INMediaSubItem)initWithCoder:(id)a3;
- (INMediaSubItem)initWithIdentifier:(id)a3 assetInfo:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INMediaSubItem

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"identifier";
  identifier = self->_identifier;
  v4 = identifier;
  if (!identifier)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"assetInfo";
  v11[0] = v4;
  assetInfo = self->_assetInfo;
  v6 = assetInfo;
  if (!assetInfo)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMediaSubItem;
  v6 = [(INMediaSubItem *)&v11 description];
  v7 = [(INMediaSubItem *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_identifier];
  [v7 if_setObjectIfNonNil:v8 forKey:@"identifier"];

  v9 = [v6 encodeObject:self->_assetInfo];

  [v7 if_setObjectIfNonNil:v9 forKey:@"assetInfo"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_assetInfo forKey:@"assetInfo"];
}

- (INMediaSubItem)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"identifier"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"assetInfo"];

  v13 = [(INMediaSubItem *)self initWithIdentifier:v8 assetInfo:v12];
  return v13;
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

- (INMediaSubItem)initWithIdentifier:(id)a3 assetInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INMediaSubItem;
  v8 = [(INMediaSubItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    assetInfo = v8->_assetInfo;
    v8->_assetInfo = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"identifier"];
    v8 = [v6 objectForKeyedSubscript:@"assetInfo"];
    v9 = [[a1 alloc] initWithIdentifier:v7 assetInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end