@interface MTLFunctionReflectionInternal
- (MTLFunctionReflectionInternal)initWithArguments:(id *)a3 argumentCount:(unsigned int)a4 builtInArgumentCount:(unsigned int)a5 globalBindings:(id *)a6 globalBindingCount:(unsigned int)a7 pluginReturnData:(id)a8 primitiveKind:(unint64_t)a9 tags:(id *)a10 tagCount:(unsigned int)a11 returnType:(id)a12 userAnnotation:(id)a13 attributes:(id)a14;
- (MTLFunctionReflectionInternal)initWithDevice:(id)a3 libReflectionData:(id)a4 functionType:(unint64_t)a5;
- (MTLFunctionReflectionInternal)initWithDevice:(id)a3 reflectionData:(id)a4 functionType:(unint64_t)a5 options:(unint64_t)a6;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MTLFunctionReflectionInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLFunctionReflectionInternal;
  [(MTLFunctionReflectionInternal *)&v3 dealloc];
}

- (MTLFunctionReflectionInternal)initWithArguments:(id *)a3 argumentCount:(unsigned int)a4 builtInArgumentCount:(unsigned int)a5 globalBindings:(id *)a6 globalBindingCount:(unsigned int)a7 pluginReturnData:(id)a8 primitiveKind:(unint64_t)a9 tags:(id *)a10 tagCount:(unsigned int)a11 returnType:(id)a12 userAnnotation:(id)a13 attributes:(id)a14
{
  LODWORD(v15) = a7;
  v30.receiver = self;
  v30.super_class = MTLFunctionReflectionInternal;
  v20 = [(MTLFunctionReflectionInternal *)&v30 init];
  if (v20)
  {
    v21 = a4 - a5;
    if (v21 + v15)
    {
      v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(v21 + v15)];
    }

    else
    {
      v22 = 0;
    }

    v20->_arguments = v22;
    if (a4 != a5)
    {
      v23 = a3;
      do
      {
        v24 = *v23++;
        [(NSArray *)v20->_arguments addObject:v24];
        --v21;
      }

      while (v21);
    }

    if (v15)
    {
      v15 = v15;
      do
      {
        v25 = *a6++;
        [(NSArray *)v20->_arguments addObject:v25];
        --v15;
      }

      while (v15);
    }

    if (a5)
    {
      v26 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&a3[a4] - a5 count:a5];
    }

    else
    {
      v26 = 0;
    }

    v20->_builtInArguments = v26;
    if (a4)
    {
      v27 = v20->_arguments;
    }

    else
    {
      v27 = 0;
    }

    v20->_bindings = v27;
    v20->_pluginReturnData = a8;
    v20->_primitiveKind = a9;
    if (a11)
    {
      v28 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:a10 count:a11];
    }

    else
    {
      v28 = 0;
    }

    v20->_tags = v28;
    v20->_returnType = a12;
    v20->_userAnnotation = a13;
    v20->_attributes = a14;
  }

  return v20;
}

- (MTLFunctionReflectionInternal)initWithDevice:(id)a3 libReflectionData:(id)a4 functionType:(unint64_t)a5
{
  v7 = objc_autoreleasePoolPush();
  if (a5 <= 4)
  {
    switch(a5)
    {
      case 1uLL:
        ReflectionReaderFactory<MTLVertexReflectionReader>::Create(0, a4);
      case 2uLL:
        ReflectionReaderFactory<MTLFragmentReflectionReader>::Create(0, a4);
      case 3uLL:
        ReflectionReaderFactory<MTLComputeReflectionReader>::Create(0, a4);
    }
  }

  else
  {
    if (a5 <= 6)
    {
      if (a5 != 5)
      {
        ReflectionReaderFactory<MTLIntersectionReflectionReader>::Create(0, a4);
      }

      ReflectionReaderFactory<MTLVisibleReflectionReader>::Create(0, a4);
    }

    if (a5 == 7)
    {
      ReflectionReaderFactory<MTLMeshReflectionReader>::Create(0, a4);
    }

    if (a5 == 8)
    {
      ReflectionReaderFactory<MTLObjectReflectionReader>::Create(0, a4);
    }
  }

  objc_autoreleasePoolPop(v7);
  return 0;
}

- (MTLFunctionReflectionInternal)initWithDevice:(id)a3 reflectionData:(id)a4 functionType:(unint64_t)a5 options:(unint64_t)a6
{
  if ((a6 & 0x200008000) != 0)
  {
    v10 = MTLNewEmulationReflectionData(a4);
  }

  else
  {
    v10 = MTLNewReflectionData(a4);
  }

  v11 = v10;
  MTLNewReflectionPluginData(a4);
  v12 = objc_autoreleasePoolPush();
  if (a5 <= 4)
  {
    switch(a5)
    {
      case 1uLL:
        ReflectionValidator<MTLVertexReflectionReader>::Validate(a3, a6, a4);
        ReflectionReaderFactory<MTLVertexReflectionReader>::Create(a6, v11);
      case 2uLL:
        ReflectionValidator<MTLFragmentReflectionReader>::Validate(a3, a6, a4);
        ReflectionReaderFactory<MTLFragmentReflectionReader>::Create(a6, v11);
      case 3uLL:
        ReflectionValidator<MTLComputeReflectionReader>::Validate(a3, a6, a4);
        ReflectionReaderFactory<MTLComputeReflectionReader>::Create(a6, v11);
    }
  }

  else
  {
    if (a5 <= 6)
    {
      if (a5 != 5)
      {
        ReflectionValidator<MTLIntersectionReflectionReader>::Validate(a3, a6, a4);
        ReflectionReaderFactory<MTLIntersectionReflectionReader>::Create(a6, v11);
      }

      ReflectionReaderFactory<MTLVisibleReflectionReader>::Create(a6, v11);
    }

    if (a5 == 7)
    {
      ReflectionValidator<MTLMeshReflectionReader>::Validate(a3, a6, a4);
      ReflectionReaderFactory<MTLMeshReflectionReader>::Create(a6, v11);
    }

    if (a5 == 8)
    {
      ReflectionValidator<MTLObjectReflectionReader>::Validate(a3, a6, a4);
      ReflectionReaderFactory<MTLObjectReflectionReader>::Create(a6, v11);
    }
  }

  objc_autoreleasePoolPop(v12);
  return 0;
}

- (id)formattedDescription:(unint64_t)a3
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v20 = [@"\n" stringByPaddingToLength:a3 + 8 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:a3 + 20 withString:@" " startingAtIndex:0];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
  v29[0] = v5;
  v29[1] = @"MTL Bindings =";
  v29[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_bindings, "count")}];
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v29, 3)}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = self;
  obj = self->_bindings;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v19 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v27[0] = v20;
        v27[1] = [v11 formattedDescription:a3 + 20];
        [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v27, 2)}];
        if ([v11 type] == 37)
        {
          v12 = [v11 dimensions];
          if (v12)
          {
            v13 = v12;
            if ([v12 rank])
            {
              v14 = 0;
              do
              {
                v26[0] = v6;
                v26[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dimensions[%lu] %lu:", v14, *(objc_msgSend(v13, "extents") + 8 * v14)];
                [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v26, 2)}];
                ++v14;
              }

              while ([v13 rank] > v14);
            }
          }
        }
      }

      v9 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  v21.receiver = v17;
  v21.super_class = MTLFunctionReflectionInternal;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLFunctionReflectionInternal description](&v21, sel_description), objc_msgSend(v7, "componentsJoinedByString:", @" "];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

@end