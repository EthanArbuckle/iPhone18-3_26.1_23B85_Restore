@interface MTLFunctionReflectionInternal
- (MTLFunctionReflectionInternal)initWithArguments:(id *)arguments argumentCount:(unsigned int)count builtInArgumentCount:(unsigned int)argumentCount globalBindings:(id *)bindings globalBindingCount:(unsigned int)bindingCount pluginReturnData:(id)data primitiveKind:(unint64_t)kind tags:(id *)self0 tagCount:(unsigned int)self1 returnType:(id)self2 userAnnotation:(id)self3 attributes:(id)self4;
- (MTLFunctionReflectionInternal)initWithDevice:(id)device libReflectionData:(id)data functionType:(unint64_t)type;
- (MTLFunctionReflectionInternal)initWithDevice:(id)device reflectionData:(id)data functionType:(unint64_t)type options:(unint64_t)options;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLFunctionReflectionInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLFunctionReflectionInternal;
  [(MTLFunctionReflectionInternal *)&v3 dealloc];
}

- (MTLFunctionReflectionInternal)initWithArguments:(id *)arguments argumentCount:(unsigned int)count builtInArgumentCount:(unsigned int)argumentCount globalBindings:(id *)bindings globalBindingCount:(unsigned int)bindingCount pluginReturnData:(id)data primitiveKind:(unint64_t)kind tags:(id *)self0 tagCount:(unsigned int)self1 returnType:(id)self2 userAnnotation:(id)self3 attributes:(id)self4
{
  LODWORD(v15) = bindingCount;
  v30.receiver = self;
  v30.super_class = MTLFunctionReflectionInternal;
  v20 = [(MTLFunctionReflectionInternal *)&v30 init];
  if (v20)
  {
    v21 = count - argumentCount;
    if (v21 + v15)
    {
      v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(v21 + v15)];
    }

    else
    {
      v22 = 0;
    }

    v20->_arguments = v22;
    if (count != argumentCount)
    {
      argumentsCopy = arguments;
      do
      {
        v24 = *argumentsCopy++;
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
        v25 = *bindings++;
        [(NSArray *)v20->_arguments addObject:v25];
        --v15;
      }

      while (v15);
    }

    if (argumentCount)
    {
      v26 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&arguments[count] - argumentCount count:argumentCount];
    }

    else
    {
      v26 = 0;
    }

    v20->_builtInArguments = v26;
    if (count)
    {
      v27 = v20->_arguments;
    }

    else
    {
      v27 = 0;
    }

    v20->_bindings = v27;
    v20->_pluginReturnData = data;
    v20->_primitiveKind = kind;
    if (tagCount)
    {
      v28 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:tags count:tagCount];
    }

    else
    {
      v28 = 0;
    }

    v20->_tags = v28;
    v20->_returnType = type;
    v20->_userAnnotation = annotation;
    v20->_attributes = attributes;
  }

  return v20;
}

- (MTLFunctionReflectionInternal)initWithDevice:(id)device libReflectionData:(id)data functionType:(unint64_t)type
{
  v7 = objc_autoreleasePoolPush();
  if (type <= 4)
  {
    switch(type)
    {
      case 1uLL:
        ReflectionReaderFactory<MTLVertexReflectionReader>::Create(0, data);
      case 2uLL:
        ReflectionReaderFactory<MTLFragmentReflectionReader>::Create(0, data);
      case 3uLL:
        ReflectionReaderFactory<MTLComputeReflectionReader>::Create(0, data);
    }
  }

  else
  {
    if (type <= 6)
    {
      if (type != 5)
      {
        ReflectionReaderFactory<MTLIntersectionReflectionReader>::Create(0, data);
      }

      ReflectionReaderFactory<MTLVisibleReflectionReader>::Create(0, data);
    }

    if (type == 7)
    {
      ReflectionReaderFactory<MTLMeshReflectionReader>::Create(0, data);
    }

    if (type == 8)
    {
      ReflectionReaderFactory<MTLObjectReflectionReader>::Create(0, data);
    }
  }

  objc_autoreleasePoolPop(v7);
  return 0;
}

- (MTLFunctionReflectionInternal)initWithDevice:(id)device reflectionData:(id)data functionType:(unint64_t)type options:(unint64_t)options
{
  if ((options & 0x200008000) != 0)
  {
    v10 = MTLNewEmulationReflectionData(data);
  }

  else
  {
    v10 = MTLNewReflectionData(data);
  }

  v11 = v10;
  MTLNewReflectionPluginData(data);
  v12 = objc_autoreleasePoolPush();
  if (type <= 4)
  {
    switch(type)
    {
      case 1uLL:
        ReflectionValidator<MTLVertexReflectionReader>::Validate(device, options, data);
        ReflectionReaderFactory<MTLVertexReflectionReader>::Create(options, v11);
      case 2uLL:
        ReflectionValidator<MTLFragmentReflectionReader>::Validate(device, options, data);
        ReflectionReaderFactory<MTLFragmentReflectionReader>::Create(options, v11);
      case 3uLL:
        ReflectionValidator<MTLComputeReflectionReader>::Validate(device, options, data);
        ReflectionReaderFactory<MTLComputeReflectionReader>::Create(options, v11);
    }
  }

  else
  {
    if (type <= 6)
    {
      if (type != 5)
      {
        ReflectionValidator<MTLIntersectionReflectionReader>::Validate(device, options, data);
        ReflectionReaderFactory<MTLIntersectionReflectionReader>::Create(options, v11);
      }

      ReflectionReaderFactory<MTLVisibleReflectionReader>::Create(options, v11);
    }

    if (type == 7)
    {
      ReflectionValidator<MTLMeshReflectionReader>::Validate(device, options, data);
      ReflectionReaderFactory<MTLMeshReflectionReader>::Create(options, v11);
    }

    if (type == 8)
    {
      ReflectionValidator<MTLObjectReflectionReader>::Validate(device, options, data);
      ReflectionReaderFactory<MTLObjectReflectionReader>::Create(options, v11);
    }
  }

  objc_autoreleasePoolPop(v12);
  return 0;
}

- (id)formattedDescription:(unint64_t)description
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v20 = [@"\n" stringByPaddingToLength:description + 8 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:description + 20 withString:@" " startingAtIndex:0];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
  v29[0] = v5;
  v29[1] = @"MTL Bindings =";
  v29[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_bindings, "count")}];
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v29, 3)}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
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
        v27[1] = [v11 formattedDescription:description + 20];
        [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v27, 2)}];
        if ([v11 type] == 37)
        {
          dimensions = [v11 dimensions];
          if (dimensions)
          {
            v13 = dimensions;
            if ([dimensions rank])
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

  v21.receiver = selfCopy;
  v21.super_class = MTLFunctionReflectionInternal;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLFunctionReflectionInternal description](&v21, sel_description), objc_msgSend(v7, "componentsJoinedByString:", @" "];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

@end