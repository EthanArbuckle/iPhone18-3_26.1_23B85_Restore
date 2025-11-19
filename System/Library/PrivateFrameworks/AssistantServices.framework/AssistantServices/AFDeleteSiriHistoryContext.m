@interface AFDeleteSiriHistoryContext
+ (id)newWithBuilder:(id)a3;
- (AFDeleteSiriHistoryContext)initWithBuilder:(id)a3;
- (AFDeleteSiriHistoryContext)initWithCoder:(id)a3;
- (AFDeleteSiriHistoryContext)initWithSuccessTitle:(id)a3 successBody:(id)a4 successButtonText:(id)a5 errorTitle:(id)a6 errorBody:(id)a7 errorButtonText:(id)a8;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFDeleteSiriHistoryContext

- (void)encodeWithCoder:(id)a3
{
  successTitle = self->_successTitle;
  v5 = a3;
  [v5 encodeObject:successTitle forKey:@"AFDeleteSiriHistoryContext::successTitle"];
  [v5 encodeObject:self->_successBody forKey:@"AFDeleteSiriHistoryContext::successBody"];
  [v5 encodeObject:self->_successButtonText forKey:@"AFDeleteSiriHistoryContext::successButtonText"];
  [v5 encodeObject:self->_errorTitle forKey:@"AFDeleteSiriHistoryContext::errorTitle"];
  [v5 encodeObject:self->_errorBody forKey:@"AFDeleteSiriHistoryContext::errorBody"];
  [v5 encodeObject:self->_errorButtonText forKey:@"AFDeleteSiriHistoryContext::errorButtonText"];
}

- (AFDeleteSiriHistoryContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::successTitle"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::successBody"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::successButtonText"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::errorTitle"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::errorBody"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::errorButtonText"];

  v11 = [(AFDeleteSiriHistoryContext *)self initWithSuccessTitle:v5 successBody:v6 successButtonText:v7 errorTitle:v8 errorBody:v9 errorButtonText:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFDeleteSiriHistoryContext *)v5 successTitle];
      successTitle = self->_successTitle;
      if (successTitle == v6 || [(NSString *)successTitle isEqual:v6])
      {
        v8 = [(AFDeleteSiriHistoryContext *)v5 successBody];
        successBody = self->_successBody;
        if (successBody == v8 || [(NSString *)successBody isEqual:v8])
        {
          v10 = [(AFDeleteSiriHistoryContext *)v5 successButtonText];
          successButtonText = self->_successButtonText;
          if (successButtonText == v10 || [(NSString *)successButtonText isEqual:v10])
          {
            v12 = [(AFDeleteSiriHistoryContext *)v5 errorTitle];
            errorTitle = self->_errorTitle;
            if (errorTitle == v12 || [(NSString *)errorTitle isEqual:v12])
            {
              v14 = [(AFDeleteSiriHistoryContext *)v5 errorBody];
              errorBody = self->_errorBody;
              if (errorBody == v14 || [(NSString *)errorBody isEqual:v14])
              {
                v16 = [(AFDeleteSiriHistoryContext *)v5 errorButtonText];
                errorButtonText = self->_errorButtonText;
                v18 = errorButtonText == v16 || [(NSString *)errorButtonText isEqual:v16];
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_successTitle hash];
  v4 = [(NSString *)self->_successBody hash]^ v3;
  v5 = [(NSString *)self->_successButtonText hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_errorTitle hash];
  v7 = [(NSString *)self->_errorBody hash];
  return v6 ^ v7 ^ [(NSString *)self->_errorButtonText hash];
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFDeleteSiriHistoryContext;
  v5 = [(AFDeleteSiriHistoryContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {successTitle = %@, successBody = %@, successButtonText = %@, errorTitle = %@, errorBody = %@, errorButtonText = %@}", v5, self->_successTitle, self->_successBody, self->_successButtonText, self->_errorTitle, self->_errorBody, self->_errorButtonText];

  return v6;
}

- (AFDeleteSiriHistoryContext)initWithSuccessTitle:(id)a3 successBody:(id)a4 successButtonText:(id)a5 errorTitle:(id)a6 errorBody:(id)a7 errorButtonText:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __118__AFDeleteSiriHistoryContext_initWithSuccessTitle_successBody_successButtonText_errorTitle_errorBody_errorButtonText___block_invoke;
  v28[3] = &unk_1E7342F50;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v20 = v19;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  v26 = [(AFDeleteSiriHistoryContext *)self initWithBuilder:v28];

  return v26;
}

void __118__AFDeleteSiriHistoryContext_initWithSuccessTitle_successBody_successButtonText_errorTitle_errorBody_errorButtonText___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setSuccessTitle:v3];
  [v4 setSuccessBody:a1[5]];
  [v4 setSuccessButtonText:a1[6]];
  [v4 setErrorTitle:a1[7]];
  [v4 setErrorBody:a1[8]];
  [v4 setErrorButtonText:a1[9]];
}

- (AFDeleteSiriHistoryContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AFDeleteSiriHistoryContext;
  v5 = [(AFDeleteSiriHistoryContext *)&v27 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFDeleteSiriHistoryContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFDeleteSiriHistoryContextMutation *)v7 isDirty])
    {
      v8 = [(_AFDeleteSiriHistoryContextMutation *)v7 getSuccessTitle];
      v9 = [v8 copy];
      successTitle = v6->_successTitle;
      v6->_successTitle = v9;

      v11 = [(_AFDeleteSiriHistoryContextMutation *)v7 getSuccessBody];
      v12 = [v11 copy];
      successBody = v6->_successBody;
      v6->_successBody = v12;

      v14 = [(_AFDeleteSiriHistoryContextMutation *)v7 getSuccessButtonText];
      v15 = [v14 copy];
      successButtonText = v6->_successButtonText;
      v6->_successButtonText = v15;

      v17 = [(_AFDeleteSiriHistoryContextMutation *)v7 getErrorTitle];
      v18 = [v17 copy];
      errorTitle = v6->_errorTitle;
      v6->_errorTitle = v18;

      v20 = [(_AFDeleteSiriHistoryContextMutation *)v7 getErrorBody];
      v21 = [v20 copy];
      errorBody = v6->_errorBody;
      v6->_errorBody = v21;

      v23 = [(_AFDeleteSiriHistoryContextMutation *)v7 getErrorButtonText];
      v24 = [v23 copy];
      errorButtonText = v6->_errorButtonText;
      v6->_errorButtonText = v24;
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
    v5 = [[_AFDeleteSiriHistoryContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFDeleteSiriHistoryContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFDeleteSiriHistoryContext);
      v7 = [(_AFDeleteSiriHistoryContextMutation *)v5 getSuccessTitle];
      v8 = [v7 copy];
      successTitle = v6->_successTitle;
      v6->_successTitle = v8;

      v10 = [(_AFDeleteSiriHistoryContextMutation *)v5 getSuccessBody];
      v11 = [v10 copy];
      successBody = v6->_successBody;
      v6->_successBody = v11;

      v13 = [(_AFDeleteSiriHistoryContextMutation *)v5 getSuccessButtonText];
      v14 = [v13 copy];
      successButtonText = v6->_successButtonText;
      v6->_successButtonText = v14;

      v16 = [(_AFDeleteSiriHistoryContextMutation *)v5 getErrorTitle];
      v17 = [v16 copy];
      errorTitle = v6->_errorTitle;
      v6->_errorTitle = v17;

      v19 = [(_AFDeleteSiriHistoryContextMutation *)v5 getErrorBody];
      v20 = [v19 copy];
      errorBody = v6->_errorBody;
      v6->_errorBody = v20;

      v22 = [(_AFDeleteSiriHistoryContextMutation *)v5 getErrorButtonText];
      v23 = [v22 copy];
      errorButtonText = v6->_errorButtonText;
      v6->_errorButtonText = v23;
    }

    else
    {
      v6 = [(AFDeleteSiriHistoryContext *)self copy];
    }
  }

  else
  {
    v6 = [(AFDeleteSiriHistoryContext *)self copy];
  }

  return v6;
}

@end