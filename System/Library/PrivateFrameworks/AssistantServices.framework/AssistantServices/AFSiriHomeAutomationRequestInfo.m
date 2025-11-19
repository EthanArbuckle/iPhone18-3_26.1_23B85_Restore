@interface AFSiriHomeAutomationRequestInfo
+ (id)newWithBuilder:(id)a3;
- (AFSiriHomeAutomationRequestInfo)initWithCoder:(id)a3;
- (AFSiriHomeAutomationRequestInfo)initWithContext:(id)a3;
- (AFSiriHomeAutomationRequestInfo)initWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation AFSiriHomeAutomationRequestInfo

- (AFSiriHomeAutomationRequestInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriHomeAutomationRequestInfo::context"];

  v6 = [(AFSiriHomeAutomationRequestInfo *)self initWithContext:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AFSiriHomeAutomationRequestInfo *)v4 context];
      context = self->_context;
      v7 = context == v5 || [(NSData *)context isEqual:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSiriHomeAutomationRequestInfo;
  v5 = [(AFSiriHomeAutomationRequestInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {context = (%llu bytes)}", v5, -[NSData length](self->_context, "length")];

  return v6;
}

- (AFSiriHomeAutomationRequestInfo)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFSiriHomeAutomationRequestInfo;
  v5 = [(AFSiriHomeAutomationRequestInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (AFSiriHomeAutomationRequestInfo)initWithIdentifier:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"identifier";
  v12[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6];

  v8 = [(AFSiriHomeAutomationRequestInfo *)self initWithContext:v7];
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFSiriHomeAutomationRequestInfoMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_AFSiriHomeAutomationRequestInfoMutation *)v5 generate];
  }

  else
  {
    v6 = [(AFSiriHomeAutomationRequestInfo *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_AFSiriHomeAutomationRequestInfoMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_AFSiriHomeAutomationRequestInfoMutation *)v4 generate];

  return v5;
}

@end