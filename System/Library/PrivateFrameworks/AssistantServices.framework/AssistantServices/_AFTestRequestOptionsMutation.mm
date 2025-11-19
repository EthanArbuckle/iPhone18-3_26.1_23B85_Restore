@interface _AFTestRequestOptionsMutation
- (_AFTestRequestOptionsMutation)initWithBase:(id)a3;
- (id)getInputOrigin;
- (id)getIsEyesFree;
- (int64_t)getRequestPath;
@end

@implementation _AFTestRequestOptionsMutation

- (id)getIsEyesFree
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_isEyesFree;
  }

  else
  {
    v2 = [(AFTestRequestOptions *)self->_base isEyesFree];
  }

  return v2;
}

- (id)getInputOrigin
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_inputOrigin;
  }

  else
  {
    v2 = [(AFTestRequestOptions *)self->_base inputOrigin];
  }

  return v2;
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

- (_AFTestRequestOptionsMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFTestRequestOptionsMutation;
  v6 = [(_AFTestRequestOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end