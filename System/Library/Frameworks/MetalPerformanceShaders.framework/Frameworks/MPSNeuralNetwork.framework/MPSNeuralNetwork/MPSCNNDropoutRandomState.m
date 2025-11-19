@interface MPSCNNDropoutRandomState
- (MPSCNNDropoutRandomState)initWithCoder:(id)a3;
- (MPSCNNDropoutRandomState)initWithSeed:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation MPSCNNDropoutRandomState

- (MPSCNNDropoutRandomState)initWithSeed:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = MPSCNNDropoutRandomState;
  result = [(MPSCNNDropoutRandomState *)&v14 init];
  if (result)
  {
    v5 = result;
    v6 = objc_alloc(MEMORY[0x277CD7290]);
    v13 = objc_msgSend_initWithSeed_(v6, v7, a3, v8, v9, v10, v11, v12);
    result = v5;
    v5->_rngState = v13;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(MPSCNNDropoutRandomState);
  if (result)
  {
    v6 = result;

    v13 = objc_msgSend_copyWithZone_(self->_rngState, v7, a3, v8, v9, v10, v11, v12);
    result = v6;
    v6[1] = v13;
  }

  return result;
}

- (MPSCNNDropoutRandomState)initWithCoder:(id)a3
{
  result = objc_msgSend_init(self, a2, a3, v3, v4, v5, v6, v7);
  if (result)
  {
    v10 = result;

    v11 = objc_alloc(MEMORY[0x277CD7290]);
    v18 = objc_msgSend_initWithCoder_(v11, v12, a3, v13, v14, v15, v16, v17);
    result = v10;
    v10->_rngState = v18;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNDropoutRandomState;
  [(MPSCNNDropoutRandomState *)&v3 dealloc];
}

@end