@interface INWorkoutCustomization
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INWorkoutCustomization)initWithCoder:(id)a3;
- (INWorkoutCustomization)initWithFocus:(id)a3 environment:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INWorkoutCustomization

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"focus";
  focus = self->_focus;
  v4 = focus;
  if (!focus)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"environment";
  v11[0] = v4;
  environment = self->_environment;
  v6 = environment;
  if (!environment)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (environment)
  {
    if (focus)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (focus)
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
  v11.super_class = INWorkoutCustomization;
  v6 = [(INWorkoutCustomization *)&v11 description];
  v7 = [(INWorkoutCustomization *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_focus];
  [v7 if_setObjectIfNonNil:v8 forKey:@"focus"];

  v9 = [v6 encodeObject:self->_environment];

  [v7 if_setObjectIfNonNil:v9 forKey:@"environment"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  focus = self->_focus;
  v5 = a3;
  [v5 encodeObject:focus forKey:@"focus"];
  [v5 encodeObject:self->_environment forKey:@"environment"];
}

- (INWorkoutCustomization)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"focus"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"environment"];

  v13 = [(INWorkoutCustomization *)self initWithFocus:v8 environment:v12];
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
      focus = self->_focus;
      v8 = 0;
      if (focus == v5->_focus || [(NSString *)focus isEqual:?])
      {
        environment = self->_environment;
        if (environment == v5->_environment || [(NSString *)environment isEqual:?])
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

- (INWorkoutCustomization)initWithFocus:(id)a3 environment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INWorkoutCustomization;
  v8 = [(INWorkoutCustomization *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    focus = v8->_focus;
    v8->_focus = v9;

    v11 = [v7 copy];
    environment = v8->_environment;
    v8->_environment = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"focus"];
    v8 = [v6 objectForKeyedSubscript:@"environment"];
    v9 = [[a1 alloc] initWithFocus:v7 environment:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end