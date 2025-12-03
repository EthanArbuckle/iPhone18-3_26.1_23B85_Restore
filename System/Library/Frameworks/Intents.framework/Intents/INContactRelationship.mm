@interface INContactRelationship
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INContactRelationship)initWithCoder:(id)coder;
- (INContactRelationship)initWithName:(id)name relation:(id)relation;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INContactRelationship

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"name";
  name = self->_name;
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"relation";
  v11[0] = null;
  relation = self->_relation;
  null2 = relation;
  if (!relation)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (relation)
  {
    if (name)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (name)
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
  v11.super_class = INContactRelationship;
  v6 = [(INContactRelationship *)&v11 description];
  _dictionaryRepresentation = [(INContactRelationship *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_name];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"name"];

  v9 = [encoderCopy encodeObject:self->_relation];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"relation"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_relation forKey:@"relation"];
}

- (INContactRelationship)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"name"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"relation"];

  v13 = [(INContactRelationship *)self initWithName:v8 relation:v12];
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
      name = self->_name;
      v8 = 0;
      if (name == v5->_name || [(NSString *)name isEqual:?])
      {
        relation = self->_relation;
        if (relation == v5->_relation || [(NSString *)relation isEqual:?])
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

- (INContactRelationship)initWithName:(id)name relation:(id)relation
{
  nameCopy = name;
  relationCopy = relation;
  v14.receiver = self;
  v14.super_class = INContactRelationship;
  v8 = [(INContactRelationship *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [relationCopy copy];
    relation = v8->_relation;
    v8->_relation = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"name"];
    v8 = [fromCopy objectForKeyedSubscript:@"relation"];
    v9 = [[self alloc] initWithName:v7 relation:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end