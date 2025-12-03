@interface _MTL4MachineLearningCommandEncoder
- (_MTL4MachineLearningCommandEncoder)initWithCommandBuffer:(id)buffer allocator:(id)allocator;
- (_MTL4MachineLearningCommandEncoder)initWithDevice:(id)device;
- (void)dealloc;
- (void)encodeToCommandQueue:(id)queue;
- (void)endEncoding;
- (void)setArgumentTable:(id)table;
- (void)setPipelineState:(id)state;
@end

@implementation _MTL4MachineLearningCommandEncoder

- (_MTL4MachineLearningCommandEncoder)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = _MTL4MachineLearningCommandEncoder;
  if ([(_MTLObjectWithLabel *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (_MTL4MachineLearningCommandEncoder)initWithCommandBuffer:(id)buffer allocator:(id)allocator
{
  v5.receiver = self;
  v5.super_class = _MTL4MachineLearningCommandEncoder;
  if ([(_MTL4CommandEncoder *)&v5 initWithCommandAllocator:allocator])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatchList = self->_dispatchList;
  v4 = *dispatchList;
  v5 = dispatchList[1];
  if (*dispatchList == v5)
  {
    goto LABEL_6;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4, a2);
    }

    ++v4;
  }

  while (v4 != v5);
  dispatchList = self->_dispatchList;
  if (dispatchList)
  {
LABEL_6:
    v6 = *dispatchList;
    if (*dispatchList)
    {
      dispatchList[1] = v6;
      operator delete(v6);
    }

    MEMORY[0x1865FF210](dispatchList, 0x80C40D6874129);
  }

  self->_dispatchList = 0;

  self->_event = 0;
  self->_currentPipelineState = 0;
  self->_currentArgumentTable = 0;
  v7.receiver = self;
  v7.super_class = _MTL4MachineLearningCommandEncoder;
  [(_MTL4CommandEncoder *)&v7 dealloc];
}

- (void)setPipelineState:(id)state
{
  if (self->_currentPipelineState != state)
  {
    self->_currentPipelineState = state;
  }
}

- (void)setArgumentTable:(id)table
{
  if (self->_currentArgumentTable != table)
  {
    self->_currentArgumentTable = table;
  }
}

- (void)endEncoding
{
  self->_currentPipelineState = 0;
  v2.receiver = self;
  v2.super_class = _MTL4MachineLearningCommandEncoder;
  [(_MTL4CommandEncoder *)&v2 endEncoding];
}

- (void)encodeToCommandQueue:(id)queue
{
  v52 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  mlCommandQueue = [queue mlCommandQueue];
  v45 = 80;
  v4 = *(self->_dispatchList + 1) - *self->_dispatchList;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v44 = v4 >> 3;
    selfCopy = self;
    do
    {
      v7 = **(&self->super.super.super.isa + v45);
      if (v5 >= ((*(&self->super.super.super.isa + v45))[1] - v7) >> 3)
      {
        std::vector<std::pair<MTLHashKey,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *(v7 + 8 * v5);
      if (*(v8 + 8))
      {
        v48 = v6;
        MPSGraphClassByName = getMPSGraphClassByName("MPSGraphTensorData");
        v10 = *(v8 + 8);
        executable = [v10 executable];
        inputShapes = [v10 inputShapes];
        v42 = v10;
        outputShapes = [v10 outputShapes];
        v51 = inputShapes;
        v13 = [inputShapes count];
        v50 = outputShapes;
        v46 = [outputShapes count];
        v47 = &mlCommandQueue;
        v14 = v46 + v13;
        v15 = 8 * (v46 + v13);
        MEMORY[0x1EEE9AC00](v46);
        v17 = (&mlCommandQueue - v16);
        device = [queueCopy device];
        if (v14)
        {
          v19 = device;
          v20 = 0;
          v49 = -v13;
          do
          {
            v21 = *(*(v8 + 16) + 8 * v20);
            if (v20 >= v13)
            {
              v22 = v50;
              v23 = v49 + v20;
            }

            else
            {
              v22 = v51;
              v23 = v20;
            }

            v24 = [v22 objectAtIndexedSubscript:{v23, mlCommandQueue}];
            v25 = v24;
            if (!v21 && elementCount([v24 shape]))
            {
              [(_MTL4MachineLearningCommandEncoder *)v20 encodeToCommandQueue:v26, v27, v28, v29, v30, v31, v32];
            }

            v17[v20] = _NewTensorDataWithMTLTensor(v19, v21, v20, MPSGraphClassByName, v25);
            ++v20;
          }

          while (v14 != v20);
        }

        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{v13, mlCommandQueue}];
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17[v13] count:v46];
        if (v14)
        {
          do
          {
            v35 = *v17++;

            v15 -= 8;
          }

          while (v15);
        }

        v36 = objc_alloc_init(getMPSGraphClassByName("MPSGraphExecutableExecutionDescriptor"));
        self = selfCopy;
        v6 = v48;
        if (v36)
        {
          v37 = v36;
          [v36 setEnableCommitAndContinue:0];
          [v37 waitForEvent:self->_event value:v6 + 1];
          [v37 signalEvent:self->_event atExecutionEvent:0 value:v6 + 2];
          [v37 setEntryFunctionName:{objc_msgSend(v42, "functionName")}];
          [executable runAsyncWithMTLCommandQueue:mlCommandQueue inputsArray:v33 resultsArray:v34 executionDescriptor:v37];
        }
      }

      v5 = ++v6;
    }

    while (v44 > v6);
  }

  v38 = *MEMORY[0x1E69E9840];
}

@end