@interface LoadingToken
- (LoadingToken)initWithInvalidationBlock:(id)block;
- (void)dealloc;
- (void)end;
@end

@implementation LoadingToken

- (void)end
{
  invalidate = self->_invalidate;
  if (invalidate)
  {
    invalidate[2](invalidate, a2);
    invalidate = self->_invalidate;
  }

  self->_invalidate = 0;
}

- (void)dealloc
{
  [(LoadingToken *)self end];
  v3.receiver = self;
  v3.super_class = LoadingToken;
  [(LoadingToken *)&v3 dealloc];
}

- (LoadingToken)initWithInvalidationBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = LoadingToken;
  v5 = [(LoadingToken *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    invalidate = v5->_invalidate;
    v5->_invalidate = v6;
  }

  return v5;
}

@end