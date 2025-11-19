@interface INContactRelationship
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INContactRelationship)initWithCoder:(id)a3;
- (INContactRelationship)initWithName:(id)a3 relation:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INContactRelationship

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"name";
  name = self->_name;
  v4 = name;
  if (!name)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"relation";
  v11[0] = v4;
  relation = self->_relation;
  v6 = relation;
  if (!relation)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INContactRelationship;
  v6 = [(INContactRelationship *)&v11 description];
  v7 = [(INContactRelationship *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_name];
  [v7 if_setObjectIfNonNil:v8 forKey:@"name"];

  v9 = [v6 encodeObject:self->_relation];

  [v7 if_setObjectIfNonNil:v9 forKey:@"relation"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_relation forKey:@"relation"];
}

- (INContactRelationship)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"name"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"relation"];

  v13 = [(INContactRelationship *)self initWithName:v8 relation:v12];
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

- (INContactRelationship)initWithName:(id)a3 relation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INContactRelationship;
  v8 = [(INContactRelationship *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    relation = v8->_relation;
    v8->_relation = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"name"];
    v8 = [v6 objectForKeyedSubscript:@"relation"];
    v9 = [[a1 alloc] initWithName:v7 relation:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end