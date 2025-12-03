@interface _AFDeleteSiriHistoryContextMutation
- (_AFDeleteSiriHistoryContextMutation)initWithBase:(id)base;
- (id)getErrorBody;
- (id)getErrorButtonText;
- (id)getErrorTitle;
- (id)getSuccessBody;
- (id)getSuccessButtonText;
- (id)getSuccessTitle;
@end

@implementation _AFDeleteSiriHistoryContextMutation

- (id)getErrorButtonText
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    errorButtonText = self->_errorButtonText;
  }

  else
  {
    errorButtonText = [(AFDeleteSiriHistoryContext *)self->_base errorButtonText];
  }

  return errorButtonText;
}

- (id)getErrorBody
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    errorBody = self->_errorBody;
  }

  else
  {
    errorBody = [(AFDeleteSiriHistoryContext *)self->_base errorBody];
  }

  return errorBody;
}

- (id)getErrorTitle
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    errorTitle = self->_errorTitle;
  }

  else
  {
    errorTitle = [(AFDeleteSiriHistoryContext *)self->_base errorTitle];
  }

  return errorTitle;
}

- (id)getSuccessButtonText
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    successButtonText = self->_successButtonText;
  }

  else
  {
    successButtonText = [(AFDeleteSiriHistoryContext *)self->_base successButtonText];
  }

  return successButtonText;
}

- (id)getSuccessBody
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    successBody = self->_successBody;
  }

  else
  {
    successBody = [(AFDeleteSiriHistoryContext *)self->_base successBody];
  }

  return successBody;
}

- (id)getSuccessTitle
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    successTitle = self->_successTitle;
  }

  else
  {
    successTitle = [(AFDeleteSiriHistoryContext *)self->_base successTitle];
  }

  return successTitle;
}

- (_AFDeleteSiriHistoryContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFDeleteSiriHistoryContextMutation;
  v6 = [(_AFDeleteSiriHistoryContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end