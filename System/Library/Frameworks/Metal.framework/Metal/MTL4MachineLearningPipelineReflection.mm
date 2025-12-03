@interface MTL4MachineLearningPipelineReflection
- (MTL4MachineLearningPipelineReflection)initWithExecutable:(id)executable functionName:(id)name inputShapes:(id)shapes outputShapes:(id)outputShapes;
- (void)dealloc;
@end

@implementation MTL4MachineLearningPipelineReflection

- (MTL4MachineLearningPipelineReflection)initWithExecutable:(id)executable functionName:(id)name inputShapes:(id)shapes outputShapes:(id)outputShapes
{
  v36.receiver = self;
  v36.super_class = MTL4MachineLearningPipelineReflection;
  v10 = [(MTL4MachineLearningPipelineReflection *)&v36 init];
  if (v10)
  {
    v11 = [shapes count];
    v12 = [outputShapes count] + v11;
    shapesCopy = shapes;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(executable "functionNames")])
    {
      v13 = [executable inputNamesForFunction:name];
      v14 = [executable outputNamesForFunction:name];
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v15 = v12;
    std::vector<objc_object  {objcproto10MTLBinding}*>::vector[abi:ne200100](&v34, v12);
    if (v12)
    {
      v16 = 0;
      do
      {
        if (v11 <= v16)
        {
          v17 = &stru_1EF478240;
          if (v16 - v11 < [v14 count])
          {
            v17 = [v14 objectAtIndexedSubscript:v16 - v11];
          }

          v18 = [outputShapes objectAtIndexedSubscript:v16 - v11];
        }

        else
        {
          v17 = &stru_1EF478240;
          if ([v13 count] > v16)
          {
            v17 = [v13 objectAtIndexedSubscript:v16];
          }

          v18 = [shapesCopy objectAtIndexedSubscript:v16];
        }

        v19 = v18;
        dataType = [v18 dataType];
        v28 = MTLTensorDataTypeFromMPSDataType(dataType, v21, v22, v23, v24, v25, v26, v27);
        v29 = -[MTLTensorBindingInternal initWithName:access:isActive:locationIndex:arrayLength:dataType:indexType:dimensions:]([MTLTensorBindingInternal alloc], "initWithName:access:isActive:locationIndex:arrayLength:dataType:indexType:dimensions:", v17, 2 * (v11 <= v16), 1, v16, 1, v28, 33, TensorExtentsFromMPSShape([v19 shape]));
        v34[v16++] = v29;
      }

      while (v15 != v16);
    }

    v10->_bindings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
    v31 = v34;
    v30 = v35;
    if (v34 != v35)
    {
      do
      {
      }

      while (v31 != v30);
      v31 = v34;
    }

    if (v31)
    {
      v35 = v31;
      operator delete(v31);
    }
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4MachineLearningPipelineReflection;
  [(MTL4MachineLearningPipelineReflection *)&v3 dealloc];
}

@end