@interface _MTL4Compiler
- (_MTL4Compiler)initWithDevice:(id)a3;
- (_MTL4Compiler)initWithDevice:(id)a3 descriptor:(id)a4;
- (id)newDynamicLibraryWithURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (id)newLibraryWithDescriptor:(id)a3 completionHandler:(id)a4;
- (id)newLibraryWithDescriptor:(id)a3 error:(id *)a4;
- (id)newMachineLearningPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (id)newMachineLearningPipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)setPipelineDataSetSerializer:(id)a3;
@end

@implementation _MTL4Compiler

- (_MTL4Compiler)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MTL4Compiler;
  v4 = [(_MTLObjectWithLabel *)&v6 init];
  if (v4)
  {
    v4->_device = a3;
    v4->_pipelineDataSetSerializer = 0;
    v4->_destinationBinaryArchive = 0;
    v4->_mlcompiler_queue = dispatch_queue_create(0, 0);
    v4->_debugQueue = dispatch_queue_create(0, 0);
  }

  return v4;
}

- (_MTL4Compiler)initWithDevice:(id)a3 descriptor:(id)a4
{
  v10.receiver = self;
  v10.super_class = _MTL4Compiler;
  v6 = [(_MTLObjectWithLabel *)&v10 init];
  if (v6)
  {
    v6->_device = a3;
    v7 = [a4 pipelineDataSetSerializer];
    v6->_pipelineDataSetSerializer = v7;
    v8 = v7;
    v6->_destinationBinaryArchive = [(MTL4PipelineDataSetSerializer *)v6->_pipelineDataSetSerializer destinationBinaryArchive];
    v6->_mlcompiler_queue = dispatch_queue_create(0, 0);
    v6->_debugQueue = dispatch_queue_create(0, 0);
    v6->_shouldMaximizeConcurrentCompilation = 0;
    v6->_shouldMaximizeConcurrentCompilation = [a4 shouldMaximizeConcurrentCompilation];
  }

  return v6;
}

- (id)newLibraryWithDescriptor:(id)a3 error:(id *)a4
{
  device = self->_device;
  v7 = [a3 source];
  v8 = [a3 options];

  return [(MTLDevice *)device newLibraryWithSource:v7 options:v8 error:a4];
}

- (void)dealloc
{
  mlcompiler_queue = self->_mlcompiler_queue;
  if (mlcompiler_queue)
  {
    dispatch_release(mlcompiler_queue);
  }

  debugQueue = self->_debugQueue;
  if (debugQueue)
  {
    dispatch_release(debugQueue);
  }

  v5.receiver = self;
  v5.super_class = _MTL4Compiler;
  [(_MTLObjectWithLabel *)&v5 dealloc];
}

- (void)setPipelineDataSetSerializer:(id)a3
{
  pipelineDataSetSerializer = self->_pipelineDataSetSerializer;
  if (pipelineDataSetSerializer)
  {
  }

  self->_pipelineDataSetSerializer = a3;
  if (a3)
  {
    v6 = a3;
    v7 = [(MTL4PipelineDataSetSerializer *)self->_pipelineDataSetSerializer destinationBinaryArchive];
  }

  else
  {
    v7 = 0;
  }

  self->_destinationBinaryArchive = v7;
}

- (id)newLibraryWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v7 = [(_MTL4CompilerTask *)[_MTL4DispatchGroupCompilerTask alloc] initWithCompiler:self];
  -[MTLDevice newLibraryWithSource:options:compilerTask:completionHandler:](self->_device, "newLibraryWithSource:options:compilerTask:completionHandler:", [a3 source], objc_msgSend(a3, "options"), v7, a4);
  return v7;
}

- (id)newMachineLearningPipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v5 = [a3 machineLearningFunctionDescriptor];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = [v5 library];
  v6 = [v34 functionNames];
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v7)
  {
    v8 = *v38;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v38 != v8)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v37 + 1) + 8 * v9) isEqual:{objc_msgSend(v5, "name")}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Function %s not found in library", objc_msgSend(objc_msgSend(v5, "name"), "UTF8String")];
    if (v10)
    {
      objc_autoreleasePoolPop(context);
      v11 = 0;
LABEL_29:
      if (a4)
      {
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObject:v10 forKey:*MEMORY[0x1E696A578]];
        *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v26];
      }

      goto LABEL_32;
    }
  }

  MPSGraphClassByName = getMPSGraphClassByName("MPSGraphDevice");
  v31 = [v34 device];
  v29 = [(objc_class *)MPSGraphClassByName deviceWithMTLDevice:v31];
  v33 = _MTLNewMPSGraphCompilationDescriptor([a3 deviceSelection]);
  v13 = [v34 executableWithDeviceSelection:{objc_msgSend(a3, "deviceSelection")}];
  v14 = [v13 getInputShapesForFunction:{objc_msgSend(v5, "name")}];
  v15 = [v14 count];
  v16 = getMPSGraphClassByName("MPSGraphShapedType");
  std::vector<objc_object  {objcproto17MPSGraphTypeProxy}*>::vector[abi:ne200100](__p, v15);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v18 = [v14 objectAtIndexedSubscript:i];
      v19 = [a3 inputDimensionsAtBufferIndex:i];
      if (v19)
      {
        v20 = [[v16 alloc] initWithShape:MPSShapeFromTensorExtents(v19) dataType:{objc_msgSend(v18, "dataType")}];
      }

      else
      {
        v20 = [v14 objectAtIndexedSubscript:i];
      }

      *(__p[0] + i) = v20;
    }
  }

  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:__p[0] count:v15];
  v22 = [objc_alloc(getMPSGraphClassByName("MPSGraphExecutableEntryPoint")) initWithEntryFunctionName:objc_msgSend(v5 inputTypes:{"name"), v21}];
  if (objc_opt_respondsToSelector())
  {
    v35 = 0;
    v42 = v22;
    [v13 specializeWithDevice:v29 entryPoints:objc_msgSend(MEMORY[0x1E695DEC8] compilationDescriptor:"arrayWithObjects:count:" error:{&v42, 1), v33, &v35}];
    if (v35)
    {
      v10 = [v35 localizedDescription];
      if (v10)
      {
        v11 = 0;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v41 = v22;
    [v13 specializeWithDevice:v29 entryPoints:objc_msgSend(MEMORY[0x1E695DEC8] compilationDescriptor:{"arrayWithObjects:count:", &v41, 1), v33}];
  }

  v23 = -[_MTL4MachineLearningPipelineState initWithDevice:descriptor:executable:functionName:deviceSelection:]([_MTL4MachineLearningPipelineState alloc], "initWithDevice:descriptor:executable:functionName:deviceSelection:", v31, a3, v13, [v5 name], objc_msgSend(a3, "deviceSelection"));
  v11 = v23;
  if (v23)
  {
    [(_MTL4MachineLearningPipelineState *)v23 setInputShapes:v21];
    -[_MTL4MachineLearningPipelineState setAllocatedSize:](v11, "setAllocatedSize:", [v34 executableSize]);
    v24 = [v13 getOutputTypesWithDevice:v29 entryPoint:v22 compilationDescriptor:v33];
    [(_MTL4MachineLearningPipelineState *)v11 setOutputShapes:v24];
    if ([objc_msgSend(a3 "options")])
    {
      v25 = -[MTL4MachineLearningPipelineReflection initWithExecutable:functionName:inputShapes:outputShapes:]([MTL4MachineLearningPipelineReflection alloc], "initWithExecutable:functionName:inputShapes:outputShapes:", v13, [v5 name], v21, v24);
      [(_MTL4MachineLearningPipelineState *)v11 setReflection:v25];
    }
  }

  v10 = 0;
LABEL_26:

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(context);
  if (v10)
  {
    goto LABEL_29;
  }

LABEL_32:
  v27 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)newMachineLearningPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v7 = [(_MTL4CompilerTask *)[_MTL4DispatchBlockCompilerTask alloc] initWithCompiler:self];
  objc_initWeak(&location, v7);
  v8 = [a3 copy];
  [objc_loadWeak(&location) setStatus:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81___MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler___block_invoke;
  block[3] = &unk_1E6EEC840;
  objc_copyWeak(&v12, &location);
  block[4] = self;
  block[5] = v8;
  block[6] = a4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  [(_MTL4DispatchBlockCompilerTask *)v7 setBlock:v9];

  dispatch_async(self->_mlcompiler_queue, v9);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  return v7;
}

- (id)newDynamicLibraryWithURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = [(_MTL4CompilerTask *)[_MTL4DispatchBlockCompilerTask alloc] initWithCompiler:self];
  objc_initWeak(&location, v9);
  [objc_loadWeak(&location) setStatus:1];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __68___MTL4Compiler_newDynamicLibraryWithURL_options_completionHandler___block_invoke;
  v15 = &unk_1E6EEC868;
  objc_copyWeak(v19, &location);
  v16 = self;
  v17 = a3;
  v19[1] = a4;
  v18 = a5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v12);
  [(_MTL4DispatchBlockCompilerTask *)v9 setBlock:v10, v12, v13, v14, v15];

  dispatch_async(self->_debugQueue, v10);
  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  return v9;
}

@end