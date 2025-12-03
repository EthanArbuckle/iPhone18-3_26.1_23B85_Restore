@interface AFDeleteSiriHistoryContext
+ (id)newWithBuilder:(id)builder;
- (AFDeleteSiriHistoryContext)initWithBuilder:(id)builder;
- (AFDeleteSiriHistoryContext)initWithCoder:(id)coder;
- (AFDeleteSiriHistoryContext)initWithSuccessTitle:(id)title successBody:(id)body successButtonText:(id)text errorTitle:(id)errorTitle errorBody:(id)errorBody errorButtonText:(id)buttonText;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFDeleteSiriHistoryContext

- (void)encodeWithCoder:(id)coder
{
  successTitle = self->_successTitle;
  coderCopy = coder;
  [coderCopy encodeObject:successTitle forKey:@"AFDeleteSiriHistoryContext::successTitle"];
  [coderCopy encodeObject:self->_successBody forKey:@"AFDeleteSiriHistoryContext::successBody"];
  [coderCopy encodeObject:self->_successButtonText forKey:@"AFDeleteSiriHistoryContext::successButtonText"];
  [coderCopy encodeObject:self->_errorTitle forKey:@"AFDeleteSiriHistoryContext::errorTitle"];
  [coderCopy encodeObject:self->_errorBody forKey:@"AFDeleteSiriHistoryContext::errorBody"];
  [coderCopy encodeObject:self->_errorButtonText forKey:@"AFDeleteSiriHistoryContext::errorButtonText"];
}

- (AFDeleteSiriHistoryContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::successTitle"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::successBody"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::successButtonText"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::errorTitle"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::errorBody"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFDeleteSiriHistoryContext::errorButtonText"];

  v11 = [(AFDeleteSiriHistoryContext *)self initWithSuccessTitle:v5 successBody:v6 successButtonText:v7 errorTitle:v8 errorBody:v9 errorButtonText:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      successTitle = [(AFDeleteSiriHistoryContext *)v5 successTitle];
      successTitle = self->_successTitle;
      if (successTitle == successTitle || [(NSString *)successTitle isEqual:successTitle])
      {
        successBody = [(AFDeleteSiriHistoryContext *)v5 successBody];
        successBody = self->_successBody;
        if (successBody == successBody || [(NSString *)successBody isEqual:successBody])
        {
          successButtonText = [(AFDeleteSiriHistoryContext *)v5 successButtonText];
          successButtonText = self->_successButtonText;
          if (successButtonText == successButtonText || [(NSString *)successButtonText isEqual:successButtonText])
          {
            errorTitle = [(AFDeleteSiriHistoryContext *)v5 errorTitle];
            errorTitle = self->_errorTitle;
            if (errorTitle == errorTitle || [(NSString *)errorTitle isEqual:errorTitle])
            {
              errorBody = [(AFDeleteSiriHistoryContext *)v5 errorBody];
              errorBody = self->_errorBody;
              if (errorBody == errorBody || [(NSString *)errorBody isEqual:errorBody])
              {
                errorButtonText = [(AFDeleteSiriHistoryContext *)v5 errorButtonText];
                errorButtonText = self->_errorButtonText;
                v18 = errorButtonText == errorButtonText || [(NSString *)errorButtonText isEqual:errorButtonText];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFDeleteSiriHistoryContext;
  v5 = [(AFDeleteSiriHistoryContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {successTitle = %@, successBody = %@, successButtonText = %@, errorTitle = %@, errorBody = %@, errorButtonText = %@}", v5, self->_successTitle, self->_successBody, self->_successButtonText, self->_errorTitle, self->_errorBody, self->_errorButtonText];

  return v6;
}

- (AFDeleteSiriHistoryContext)initWithSuccessTitle:(id)title successBody:(id)body successButtonText:(id)text errorTitle:(id)errorTitle errorBody:(id)errorBody errorButtonText:(id)buttonText
{
  titleCopy = title;
  bodyCopy = body;
  textCopy = text;
  errorTitleCopy = errorTitle;
  errorBodyCopy = errorBody;
  buttonTextCopy = buttonText;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __118__AFDeleteSiriHistoryContext_initWithSuccessTitle_successBody_successButtonText_errorTitle_errorBody_errorButtonText___block_invoke;
  v28[3] = &unk_1E7342F50;
  v29 = titleCopy;
  v30 = bodyCopy;
  v31 = textCopy;
  v32 = errorTitleCopy;
  v33 = errorBodyCopy;
  v34 = buttonTextCopy;
  v20 = buttonTextCopy;
  v21 = errorBodyCopy;
  v22 = errorTitleCopy;
  v23 = textCopy;
  v24 = bodyCopy;
  v25 = titleCopy;
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

- (AFDeleteSiriHistoryContext)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v27.receiver = self;
  v27.super_class = AFDeleteSiriHistoryContext;
  v5 = [(AFDeleteSiriHistoryContext *)&v27 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFDeleteSiriHistoryContextMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFDeleteSiriHistoryContextMutation *)v7 isDirty])
    {
      getSuccessTitle = [(_AFDeleteSiriHistoryContextMutation *)v7 getSuccessTitle];
      v9 = [getSuccessTitle copy];
      successTitle = v6->_successTitle;
      v6->_successTitle = v9;

      getSuccessBody = [(_AFDeleteSiriHistoryContextMutation *)v7 getSuccessBody];
      v12 = [getSuccessBody copy];
      successBody = v6->_successBody;
      v6->_successBody = v12;

      getSuccessButtonText = [(_AFDeleteSiriHistoryContextMutation *)v7 getSuccessButtonText];
      v15 = [getSuccessButtonText copy];
      successButtonText = v6->_successButtonText;
      v6->_successButtonText = v15;

      getErrorTitle = [(_AFDeleteSiriHistoryContextMutation *)v7 getErrorTitle];
      v18 = [getErrorTitle copy];
      errorTitle = v6->_errorTitle;
      v6->_errorTitle = v18;

      getErrorBody = [(_AFDeleteSiriHistoryContextMutation *)v7 getErrorBody];
      v21 = [getErrorBody copy];
      errorBody = v6->_errorBody;
      v6->_errorBody = v21;

      getErrorButtonText = [(_AFDeleteSiriHistoryContextMutation *)v7 getErrorButtonText];
      v24 = [getErrorButtonText copy];
      errorButtonText = v6->_errorButtonText;
      v6->_errorButtonText = v24;
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
    v5 = [[_AFDeleteSiriHistoryContextMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFDeleteSiriHistoryContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFDeleteSiriHistoryContext);
      getSuccessTitle = [(_AFDeleteSiriHistoryContextMutation *)v5 getSuccessTitle];
      v8 = [getSuccessTitle copy];
      successTitle = v6->_successTitle;
      v6->_successTitle = v8;

      getSuccessBody = [(_AFDeleteSiriHistoryContextMutation *)v5 getSuccessBody];
      v11 = [getSuccessBody copy];
      successBody = v6->_successBody;
      v6->_successBody = v11;

      getSuccessButtonText = [(_AFDeleteSiriHistoryContextMutation *)v5 getSuccessButtonText];
      v14 = [getSuccessButtonText copy];
      successButtonText = v6->_successButtonText;
      v6->_successButtonText = v14;

      getErrorTitle = [(_AFDeleteSiriHistoryContextMutation *)v5 getErrorTitle];
      v17 = [getErrorTitle copy];
      errorTitle = v6->_errorTitle;
      v6->_errorTitle = v17;

      getErrorBody = [(_AFDeleteSiriHistoryContextMutation *)v5 getErrorBody];
      v20 = [getErrorBody copy];
      errorBody = v6->_errorBody;
      v6->_errorBody = v20;

      getErrorButtonText = [(_AFDeleteSiriHistoryContextMutation *)v5 getErrorButtonText];
      v23 = [getErrorButtonText copy];
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