@interface _AFTestRequestOptionsMutation
- (_AFTestRequestOptionsMutation)initWithBase:(id)base;
- (id)getInputOrigin;
- (id)getIsEyesFree;
- (int64_t)getRequestPath;
@end

@implementation _AFTestRequestOptionsMutation

- (id)getIsEyesFree
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    isEyesFree = self->_isEyesFree;
  }

  else
  {
    isEyesFree = [(AFTestRequestOptions *)self->_base isEyesFree];
  }

  return isEyesFree;
}

- (id)getInputOrigin
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    inputOrigin = self->_inputOrigin;
  }

  else
  {
    inputOrigin = [(AFTestRequestOptions *)self->_base inputOrigin];
  }

  return inputOrigin;
}

- (int64_t)getRequestPath
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_requestPath;
  }

  else
  {
    return [(AFTestRequestOptions *)self->_base requestPath];
  }
}

- (_AFTestRequestOptionsMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFTestRequestOptionsMutation;
  v6 = [(_AFTestRequestOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end