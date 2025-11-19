@interface INContactEventTrigger
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INContactEventTrigger)initWithCoder:(id)a3;
- (INContactEventTrigger)initWithTriggerContact:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)_intents_updateContainerWithCache:(id)a3;
@end

@implementation INContactEventTrigger

- (void)_intents_updateContainerWithCache:(id)a3
{
  v4 = a3;
  v5 = [(INContactEventTrigger *)self triggerContact];
  [v5 _intents_updateContainerWithCache:v4];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(INContactEventTrigger *)self triggerContact];
  v5 = [v4 _intents_cacheableObjects];
  [v3 unionSet:v5];

  if ([v3 count])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"triggerContact";
  triggerContact = self->_triggerContact;
  v3 = triggerContact;
  if (!triggerContact)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!triggerContact)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INContactEventTrigger;
  v6 = [(INContactEventTrigger *)&v11 description];
  v7 = [(INContactEventTrigger *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_triggerContact];

  [v7 if_setObjectIfNonNil:v8 forKey:@"triggerContact"];

  return v7;
}

- (INContactEventTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"triggerContact"];

  v6 = [(INContactEventTrigger *)self initWithTriggerContact:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      triggerContact = self->_triggerContact;
      v7 = triggerContact == v5->_triggerContact || [(INPerson *)triggerContact isEqual:?];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (INContactEventTrigger)initWithTriggerContact:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INContactEventTrigger;
  v5 = [(INContactEventTrigger *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    triggerContact = v5->_triggerContact;
    v5->_triggerContact = v6;
  }

  return v5;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"triggerContact"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [[a1 alloc] initWithTriggerContact:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end