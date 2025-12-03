@interface AFSiriHomeAutomationRequestInfo
+ (id)newWithBuilder:(id)builder;
- (AFSiriHomeAutomationRequestInfo)initWithCoder:(id)coder;
- (AFSiriHomeAutomationRequestInfo)initWithContext:(id)context;
- (AFSiriHomeAutomationRequestInfo)initWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation AFSiriHomeAutomationRequestInfo

- (AFSiriHomeAutomationRequestInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriHomeAutomationRequestInfo::context"];

  v6 = [(AFSiriHomeAutomationRequestInfo *)self initWithContext:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      context = [(AFSiriHomeAutomationRequestInfo *)equalCopy context];
      context = self->_context;
      v7 = context == context || [(NSData *)context isEqual:context];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSiriHomeAutomationRequestInfo;
  v5 = [(AFSiriHomeAutomationRequestInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {context = (%llu bytes)}", v5, -[NSData length](self->_context, "length")];

  return v6;
}

- (AFSiriHomeAutomationRequestInfo)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AFSiriHomeAutomationRequestInfo;
  v5 = [(AFSiriHomeAutomationRequestInfo *)&v9 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (AFSiriHomeAutomationRequestInfo)initWithIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"identifier";
  v12[0] = identifier;
  v4 = MEMORY[0x1E695DF20];
  identifierCopy = identifier;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6];

  v8 = [(AFSiriHomeAutomationRequestInfo *)self initWithContext:v7];
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFSiriHomeAutomationRequestInfoMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_AFSiriHomeAutomationRequestInfoMutation *)v5 generate];
  }

  else
  {
    generate = [(AFSiriHomeAutomationRequestInfo *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_AFSiriHomeAutomationRequestInfoMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_AFSiriHomeAutomationRequestInfoMutation *)v4 generate];

  return generate;
}

@end