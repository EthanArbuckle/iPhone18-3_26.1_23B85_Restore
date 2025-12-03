@interface AFSpeechTestRequestOptions
+ (id)newWithBuilder:(id)builder;
- (AFSpeechTestRequestOptions)initWithBuilder:(id)builder;
- (AFSpeechTestRequestOptions)initWithCoder:(id)coder;
- (AFSpeechTestRequestOptions)initWithJitContext:(id)context overrideModelPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechTestRequestOptions

- (void)encodeWithCoder:(id)coder
{
  jitContext = self->_jitContext;
  coderCopy = coder;
  [coderCopy encodeObject:jitContext forKey:@"AFSpeechTestRequestOptions::jitContext"];
  [coderCopy encodeObject:self->_overrideModelPath forKey:@"AFSpeechTestRequestOptions::overrideModelPath"];
}

- (AFSpeechTestRequestOptions)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"AFSpeechTestRequestOptions::jitContext"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechTestRequestOptions::overrideModelPath"];

  v10 = [(AFSpeechTestRequestOptions *)self initWithJitContext:v8 overrideModelPath:v9];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      jitContext = [(AFSpeechTestRequestOptions *)v5 jitContext];
      jitContext = self->_jitContext;
      if (jitContext == jitContext || [(NSArray *)jitContext isEqual:jitContext])
      {
        overrideModelPath = [(AFSpeechTestRequestOptions *)v5 overrideModelPath];
        overrideModelPath = self->_overrideModelPath;
        v10 = overrideModelPath == overrideModelPath || [(NSString *)overrideModelPath isEqual:overrideModelPath];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSpeechTestRequestOptions;
  v5 = [(AFSpeechTestRequestOptions *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {jitContext = %@, overrideModelPath = %@}", v5, self->_jitContext, self->_overrideModelPath];

  return v6;
}

- (AFSpeechTestRequestOptions)initWithJitContext:(id)context overrideModelPath:(id)path
{
  contextCopy = context;
  pathCopy = path;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__AFSpeechTestRequestOptions_initWithJitContext_overrideModelPath___block_invoke;
  v12[3] = &unk_1E7342DC0;
  v13 = contextCopy;
  v14 = pathCopy;
  v8 = pathCopy;
  v9 = contextCopy;
  v10 = [(AFSpeechTestRequestOptions *)self initWithBuilder:v12];

  return v10;
}

void __67__AFSpeechTestRequestOptions_initWithJitContext_overrideModelPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setJitContext:v3];
  [v4 setOverrideModelPath:*(a1 + 40)];
}

- (AFSpeechTestRequestOptions)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFSpeechTestRequestOptions;
  v5 = [(AFSpeechTestRequestOptions *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSpeechTestRequestOptionsMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSpeechTestRequestOptionsMutation *)v7 isDirty])
    {
      getJitContext = [(_AFSpeechTestRequestOptionsMutation *)v7 getJitContext];
      v9 = [getJitContext copy];
      jitContext = v6->_jitContext;
      v6->_jitContext = v9;

      getOverrideModelPath = [(_AFSpeechTestRequestOptionsMutation *)v7 getOverrideModelPath];
      v12 = [getOverrideModelPath copy];
      overrideModelPath = v6->_overrideModelPath;
      v6->_overrideModelPath = v12;
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
    v5 = [[_AFSpeechTestRequestOptionsMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSpeechTestRequestOptionsMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSpeechTestRequestOptions);
      getJitContext = [(_AFSpeechTestRequestOptionsMutation *)v5 getJitContext];
      v8 = [getJitContext copy];
      jitContext = v6->_jitContext;
      v6->_jitContext = v8;

      getOverrideModelPath = [(_AFSpeechTestRequestOptionsMutation *)v5 getOverrideModelPath];
      v11 = [getOverrideModelPath copy];
      overrideModelPath = v6->_overrideModelPath;
      v6->_overrideModelPath = v11;
    }

    else
    {
      v6 = [(AFSpeechTestRequestOptions *)self copy];
    }
  }

  else
  {
    v6 = [(AFSpeechTestRequestOptions *)self copy];
  }

  return v6;
}

@end