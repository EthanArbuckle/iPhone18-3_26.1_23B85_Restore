@interface MPSUserDAGStitchableOperation
- (MPSUserDAGStitchableOperation)initWithFunctionName:(id)name;
- (id)getStitchedFunction:(id)function;
- (void)dealloc;
@end

@implementation MPSUserDAGStitchableOperation

- (MPSUserDAGStitchableOperation)initWithFunctionName:(id)name
{
  v10.receiver = self;
  v10.super_class = MPSUserDAGStitchableOperation;
  v4 = [(MPSUserDAGStitchableOperation *)&v10 init];
  v4->_functionName = objc_msgSend_copy(name, v5, v6, v7, v8);
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSUserDAGStitchableOperation;
  [(MPSUserDAGStitchableOperation *)&v3 dealloc];
}

- (id)getStitchedFunction:(id)function
{
  v5 = objc_msgSend_newFunctionWithName_(function, a2, self->_functionName, v3, v4);
  objc_msgSend_functionType(v5, v6, v7, v8, v9);
  if (objc_msgSend_functionType(v5, v10, v11, v12, v13) == 5 || !MTLReportFailureTypeEnabled())
  {
    return v5;
  }

  MTLReportFailure();
  return v5;
}

@end