@interface _AFDeleteSiriHistoryContextMutation
- (_AFDeleteSiriHistoryContextMutation)initWithBase:(id)a3;
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
    v2 = self->_errorButtonText;
  }

  else
  {
    v2 = [(AFDeleteSiriHistoryContext *)self->_base errorButtonText];
  }

  return v2;
}

- (id)getErrorBody
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_errorBody;
  }

  else
  {
    v2 = [(AFDeleteSiriHistoryContext *)self->_base errorBody];
  }

  return v2;
}

- (id)getErrorTitle
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_errorTitle;
  }

  else
  {
    v2 = [(AFDeleteSiriHistoryContext *)self->_base errorTitle];
  }

  return v2;
}

- (id)getSuccessButtonText
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_successButtonText;
  }

  else
  {
    v2 = [(AFDeleteSiriHistoryContext *)self->_base successButtonText];
  }

  return v2;
}

- (id)getSuccessBody
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_successBody;
  }

  else
  {
    v2 = [(AFDeleteSiriHistoryContext *)self->_base successBody];
  }

  return v2;
}

- (id)getSuccessTitle
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_successTitle;
  }

  else
  {
    v2 = [(AFDeleteSiriHistoryContext *)self->_base successTitle];
  }

  return v2;
}

- (_AFDeleteSiriHistoryContextMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFDeleteSiriHistoryContextMutation;
  v6 = [(_AFDeleteSiriHistoryContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end