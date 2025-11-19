@interface _MTLMLLibrary
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (NSArray)functionNames;
- (_MTLMLLibrary)initWithDevice:(id)a3 executable:(id)a4 url:(id)a5 reflection:(id)a6;
- (id)executableWithDeviceSelection:(int64_t)a3;
- (id)newExternFunctionWithName:(id)a3;
- (id)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 error:(id *)a5;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 functionCache:(id)a5 error:(id *)a6;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 error:(id *)a6;
- (id)reflectionForFunctionWithName:(id)a3;
- (void)dealloc;
@end

@implementation _MTLMLLibrary

- (_MTLMLLibrary)initWithDevice:(id)a3 executable:(id)a4 url:(id)a5 reflection:(id)a6
{
  v13.receiver = self;
  v13.super_class = _MTLMLLibrary;
  v10 = [(_MTLObjectWithLabel *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_device = a3;
    v10->_executables[0] = a4;
    v11->_mpsgraphPackageURL = [a5 copy];
    v11->_reflection = a6;
    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_type = 0;
  }

  return v11;
}

- (id)executableWithDeviceSelection:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_executables[a3];
    if (!v5)
    {
      MPSGraphClassByName = getMPSGraphClassByName("MPSGraphExecutable");
      v7 = _MTLNewMPSGraphCompilationDescriptor(a3);
      v5 = [[MPSGraphClassByName alloc] initWithMPSGraphPackageAtURL:self->_mpsgraphPackageURL compilationDescriptor:v7];

      self->_executables[a3] = v5;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)dealloc
{
  v3 = 0;
  executables = self->_executables;
  do
  {
  }

  while (v3 != 3);

  self->_reflection = 0;
  v5.receiver = self;
  v5.super_class = _MTLMLLibrary;
  [(_MTLObjectWithLabel *)&v5 dealloc];
}

- (NSArray)functionNames
{
  reflection = self->_reflection;
  if (reflection)
  {
    return [(MPSGraphExecutableReflectionProxy *)reflection functionNames];
  }

  else
  {
    return &unk_1EF4CFDE0;
  }
}

- (id)reflectionForFunctionWithName:(id)a3
{
  reflection = self->_reflection;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v33 = 0;
    return v33;
  }

  if ([-[MPSGraphExecutableReflectionProxy functionNames](self->_reflection "functionNames")])
  {
    v13 = [(MPSGraphExecutableReflectionProxy *)self->_reflection inputNamesForFunction:a3];
    v14 = [(MPSGraphExecutableReflectionProxy *)self->_reflection outputNamesForFunction:a3];
    v15 = [(MPSGraphExecutableReflectionProxy *)self->_reflection inputShapesForFunction:a3];
    v16 = [(MPSGraphExecutableReflectionProxy *)self->_reflection outputShapesForFunction:a3];
    v38 = v15;
    v17 = [v15 count];
    v18 = [v16 count] + v17;
    std::vector<objc_object  {objcproto10MTLBinding}*>::vector[abi:ne200100](&v39, v18);
    if (v18)
    {
      for (i = 0; i != v18; ++i)
      {
        if (v17 <= i)
        {
          v20 = &stru_1EF478240;
          if (i - v17 < [v14 count])
          {
            v20 = [v14 objectAtIndexedSubscript:i - v17];
          }

          v21 = [v16 objectAtIndexedSubscript:i - v17];
        }

        else
        {
          v20 = &stru_1EF478240;
          if ([v13 count] > i)
          {
            v20 = [v13 objectAtIndexedSubscript:i];
          }

          v21 = [v38 objectAtIndexedSubscript:i];
        }

        v22 = v21;
        v23 = [v21 dataType];
        v31 = MTLTensorDataTypeFromMPSDataType(v23, v24, v25, v26, v27, v28, v29, v30);
        v32 = -[MTLTensorBindingInternal initWithName:access:isActive:locationIndex:arrayLength:dataType:indexType:dimensions:]([MTLTensorBindingInternal alloc], "initWithName:access:isActive:locationIndex:arrayLength:dataType:indexType:dimensions:", v20, 2 * (v17 <= i), 1, i, 1, v31, 33, TensorExtentsFromMPSShape([v22 shape]));
        v39[i] = v32;
      }
    }

    LODWORD(v37) = 0;
    v33 = [MTLFunctionReflectionInternal initWithArguments:"initWithArguments:argumentCount:builtInArgumentCount:globalBindings:globalBindingCount:pluginReturnData:primitiveKind:tags:tagCount:returnType:userAnnotation:attributes:" argumentCount:0 builtInArgumentCount:0 globalBindings:v37 globalBindingCount:0 pluginReturnData:0 primitiveKind:0 tags:? tagCount:? returnType:? userAnnotation:? attributes:?];
    v34 = v39;
    v35 = v40;
    if (v39 != v40)
    {
      do
      {
      }

      while (v34 != v35);
      v34 = v39;
    }

    if (v34)
    {
      v40 = v34;
      operator delete(v34);
    }

    return v33;
  }

  [(_MTLMLLibrary *)a3 reflectionForFunctionWithName:v6, v7, v8, v9, v10, v11, v12];
  return 0;
}

- (id)newExternFunctionWithName:(id)a3
{
  v3 = [NSStringFromSelector(a2) UTF8String];
  MTLReportFailure(0, "[_MTLMLLibrary newExternFunctionWithName:]", 21832, @"%s is not supported for machine learning libraries", v4, v5, v6, v7, v3);
  return 0;
}

- (id)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 error:(id *)a5
{
  v5 = [NSStringFromSelector(a2) UTF8String];
  MTLReportFailure(0, "[_MTLMLLibrary newFunctionWithDescriptor:destinationArchive:error:]", 21837, @"%s is not supported for machine learning libraries", v6, v7, v8, v9, v5);
  return 0;
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 functionCache:(id)a5 error:(id *)a6
{
  v6 = [NSStringFromSelector(a2) UTF8String];
  MTLReportFailure(0, "[_MTLMLLibrary newFunctionWithName:constantValues:functionCache:error:]", 21842, @"%s is not supported for machine learning libraries", v7, v8, v9, v10, v6);
  return 0;
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 error:(id *)a6
{
  v6 = [NSStringFromSelector(a2) UTF8String];
  MTLReportFailure(0, "[_MTLMLLibrary newFunctionWithName:constantValues:pipelineLibrary:error:]", 21851, @"%s is not supported for machine learning libraries", v7, v8, v9, v10, v6);
  return 0;
}

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  v4 = [NSStringFromSelector(a2) UTF8String];
  MTLReportFailure(0, "[_MTLMLLibrary serializeToURL:error:]", 21856, @"%s is not supported for machine learning libraries", v5, v6, v7, v8, v4);
  return 0;
}

@end