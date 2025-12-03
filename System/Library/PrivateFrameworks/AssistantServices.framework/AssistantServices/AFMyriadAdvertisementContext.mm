@interface AFMyriadAdvertisementContext
+ (id)newWithBuilder:(id)builder;
- (AFMyriadAdvertisementContext)initWithBuilder:(id)builder;
- (AFMyriadAdvertisementContext)initWithCoder:(id)coder;
- (AFMyriadAdvertisementContext)initWithGeneration:(unint64_t)generation contextData:(id)data contextFetchDelay:(double)delay;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFMyriadAdvertisementContext

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  generation = self->_generation;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedLongLong:generation];
  [coderCopy encodeObject:v7 forKey:@"AFMyriadAdvertisementContext::generation"];

  [coderCopy encodeObject:self->_contextData forKey:@"AFMyriadAdvertisementContext::contextData"];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_contextFetchDelay];
  [coderCopy encodeObject:v8 forKey:@"AFMyriadAdvertisementContext::contextFetchDelay"];
}

- (AFMyriadAdvertisementContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadAdvertisementContext::generation"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadAdvertisementContext::contextData"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadAdvertisementContext::contextFetchDelay"];

  [v8 doubleValue];
  v10 = v9;

  v11 = [(AFMyriadAdvertisementContext *)self initWithGeneration:unsignedLongLongValue contextData:v7 contextFetchDelay:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      generation = self->_generation;
      if (generation == [(AFMyriadAdvertisementContext *)v5 generation]&& (contextFetchDelay = self->_contextFetchDelay, [(AFMyriadAdvertisementContext *)v5 contextFetchDelay], contextFetchDelay == v8))
      {
        contextData = [(AFMyriadAdvertisementContext *)v5 contextData];
        contextData = self->_contextData;
        v9 = contextData == contextData || [(NSData *)contextData isEqual:contextData];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_generation];
  v4 = [v3 hash];
  v5 = [(NSData *)self->_contextData hash]^ v4;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_contextFetchDelay];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFMyriadAdvertisementContext;
  v5 = [(AFMyriadAdvertisementContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generation = %llu, contextData = (%llu bytes), contextFetchDelay = %f}", v5, self->_generation, -[NSData length](self->_contextData, "length"), *&self->_contextFetchDelay];

  return v6;
}

- (AFMyriadAdvertisementContext)initWithGeneration:(unint64_t)generation contextData:(id)data contextFetchDelay:(double)delay
{
  dataCopy = data;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__AFMyriadAdvertisementContext_initWithGeneration_contextData_contextFetchDelay___block_invoke;
  v12[3] = &unk_1E7343E50;
  v13 = dataCopy;
  generationCopy = generation;
  delayCopy = delay;
  v9 = dataCopy;
  v10 = [(AFMyriadAdvertisementContext *)self initWithBuilder:v12];

  return v10;
}

void __81__AFMyriadAdvertisementContext_initWithGeneration_contextData_contextFetchDelay___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setGeneration:v3];
  [v4 setContextData:*(a1 + 32)];
  [v4 setContextFetchDelay:*(a1 + 48)];
}

- (AFMyriadAdvertisementContext)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v13.receiver = self;
  v13.super_class = AFMyriadAdvertisementContext;
  v5 = [(AFMyriadAdvertisementContext *)&v13 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFMyriadAdvertisementContextMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFMyriadAdvertisementContextMutation *)v7 isDirty])
    {
      v6->_generation = [(_AFMyriadAdvertisementContextMutation *)v7 getGeneration];
      getContextData = [(_AFMyriadAdvertisementContextMutation *)v7 getContextData];
      v9 = [getContextData copy];
      contextData = v6->_contextData;
      v6->_contextData = v9;

      [(_AFMyriadAdvertisementContextMutation *)v7 getContextFetchDelay];
      v6->_contextFetchDelay = v11;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFMyriadAdvertisementContextMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFMyriadAdvertisementContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFMyriadAdvertisementContext);
      v6->_generation = [(_AFMyriadAdvertisementContextMutation *)v5 getGeneration];
      getContextData = [(_AFMyriadAdvertisementContextMutation *)v5 getContextData];
      v8 = [getContextData copy];
      contextData = v6->_contextData;
      v6->_contextData = v8;

      [(_AFMyriadAdvertisementContextMutation *)v5 getContextFetchDelay];
      v6->_contextFetchDelay = v10;
    }

    else
    {
      v6 = [(AFMyriadAdvertisementContext *)self copy];
    }
  }

  else
  {
    v6 = [(AFMyriadAdvertisementContext *)self copy];
  }

  return v6;
}

@end