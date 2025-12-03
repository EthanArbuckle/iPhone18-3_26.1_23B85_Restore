@interface INContactEventTrigger
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INContactEventTrigger)initWithCoder:(id)coder;
- (INContactEventTrigger)initWithTriggerContact:(id)contact;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)_intents_updateContainerWithCache:(id)cache;
@end

@implementation INContactEventTrigger

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  triggerContact = [(INContactEventTrigger *)self triggerContact];
  [triggerContact _intents_updateContainerWithCache:cacheCopy];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  triggerContact = [(INContactEventTrigger *)self triggerContact];
  _intents_cacheableObjects = [triggerContact _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects];

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
  null = triggerContact;
  if (!triggerContact)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!triggerContact)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INContactEventTrigger;
  v6 = [(INContactEventTrigger *)&v11 description];
  _dictionaryRepresentation = [(INContactEventTrigger *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_triggerContact];

  [dictionary if_setObjectIfNonNil:v8 forKey:@"triggerContact"];

  return dictionary;
}

- (INContactEventTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerContact"];

  v6 = [(INContactEventTrigger *)self initWithTriggerContact:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INContactEventTrigger)initWithTriggerContact:(id)contact
{
  contactCopy = contact;
  v9.receiver = self;
  v9.super_class = INContactEventTrigger;
  v5 = [(INContactEventTrigger *)&v9 init];
  if (v5)
  {
    v6 = [contactCopy copy];
    triggerContact = v5->_triggerContact;
    v5->_triggerContact = v6;
  }

  return v5;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"triggerContact"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [[self alloc] initWithTriggerContact:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end