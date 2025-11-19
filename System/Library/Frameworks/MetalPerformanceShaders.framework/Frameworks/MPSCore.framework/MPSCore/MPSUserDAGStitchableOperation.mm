@interface MPSUserDAGStitchableOperation
- (MPSUserDAGStitchableOperation)initWithFunctionName:(id)a3;
- (id)getStitchedFunction:(id)a3;
- (void)dealloc;
@end

@implementation MPSUserDAGStitchableOperation

- (MPSUserDAGStitchableOperation)initWithFunctionName:(id)a3
{
  v10.receiver = self;
  v10.super_class = MPSUserDAGStitchableOperation;
  v4 = [(MPSUserDAGStitchableOperation *)&v10 init];
  v4->_functionName = objc_msgSend_copy(a3, v5, v6, v7, v8);
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSUserDAGStitchableOperation;
  [(MPSUserDAGStitchableOperation *)&v3 dealloc];
}

- (id)getStitchedFunction:(id)a3
{
  v5 = objc_msgSend_newFunctionWithName_(a3, a2, self->_functionName, v3, v4);
  objc_msgSend_functionType(v5, v6, v7, v8, v9);
  if (objc_msgSend_functionType(v5, v10, v11, v12, v13) == 5 || !MTLReportFailureTypeEnabled())
  {
    return v5;
  }

  MTLReportFailure();
  return v5;
}

@end