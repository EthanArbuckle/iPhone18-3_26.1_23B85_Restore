@interface AFSpeechTestRequestOptions
+ (id)newWithBuilder:(id)a3;
- (AFSpeechTestRequestOptions)initWithBuilder:(id)a3;
- (AFSpeechTestRequestOptions)initWithCoder:(id)a3;
- (AFSpeechTestRequestOptions)initWithJitContext:(id)a3 overrideModelPath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechTestRequestOptions

- (void)encodeWithCoder:(id)a3
{
  jitContext = self->_jitContext;
  v5 = a3;
  [v5 encodeObject:jitContext forKey:@"AFSpeechTestRequestOptions::jitContext"];
  [v5 encodeObject:self->_overrideModelPath forKey:@"AFSpeechTestRequestOptions::overrideModelPath"];
}

- (AFSpeechTestRequestOptions)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"AFSpeechTestRequestOptions::jitContext"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechTestRequestOptions::overrideModelPath"];

  v10 = [(AFSpeechTestRequestOptions *)self initWithJitContext:v8 overrideModelPath:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFSpeechTestRequestOptions *)v5 jitContext];
      jitContext = self->_jitContext;
      if (jitContext == v6 || [(NSArray *)jitContext isEqual:v6])
      {
        v8 = [(AFSpeechTestRequestOptions *)v5 overrideModelPath];
        overrideModelPath = self->_overrideModelPath;
        v10 = overrideModelPath == v8 || [(NSString *)overrideModelPath isEqual:v8];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSpeechTestRequestOptions;
  v5 = [(AFSpeechTestRequestOptions *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {jitContext = %@, overrideModelPath = %@}", v5, self->_jitContext, self->_overrideModelPath];

  return v6;
}

- (AFSpeechTestRequestOptions)initWithJitContext:(id)a3 overrideModelPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__AFSpeechTestRequestOptions_initWithJitContext_overrideModelPath___block_invoke;
  v12[3] = &unk_1E7342DC0;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
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

- (AFSpeechTestRequestOptions)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFSpeechTestRequestOptions;
  v5 = [(AFSpeechTestRequestOptions *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSpeechTestRequestOptionsMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSpeechTestRequestOptionsMutation *)v7 isDirty])
    {
      v8 = [(_AFSpeechTestRequestOptionsMutation *)v7 getJitContext];
      v9 = [v8 copy];
      jitContext = v6->_jitContext;
      v6->_jitContext = v9;

      v11 = [(_AFSpeechTestRequestOptionsMutation *)v7 getOverrideModelPath];
      v12 = [v11 copy];
      overrideModelPath = v6->_overrideModelPath;
      v6->_overrideModelPath = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFSpeechTestRequestOptionsMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSpeechTestRequestOptionsMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSpeechTestRequestOptions);
      v7 = [(_AFSpeechTestRequestOptionsMutation *)v5 getJitContext];
      v8 = [v7 copy];
      jitContext = v6->_jitContext;
      v6->_jitContext = v8;

      v10 = [(_AFSpeechTestRequestOptionsMutation *)v5 getOverrideModelPath];
      v11 = [v10 copy];
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