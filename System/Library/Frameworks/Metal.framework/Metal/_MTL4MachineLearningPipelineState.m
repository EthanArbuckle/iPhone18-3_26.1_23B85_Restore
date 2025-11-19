@interface _MTL4MachineLearningPipelineState
- (_MTL4MachineLearningPipelineState)initWithDevice:(id)a3 descriptor:(id)a4 executable:(id)a5 functionName:(id)a6 deviceSelection:(int64_t)a7;
- (id)optimizedBytecode;
- (id)runWithInputsArray:(id)a3 resultsArray:(id)a4 intermediateOperations:(id)a5;
- (void)dealloc;
@end

@implementation _MTL4MachineLearningPipelineState

- (_MTL4MachineLearningPipelineState)initWithDevice:(id)a3 descriptor:(id)a4 executable:(id)a5 functionName:(id)a6 deviceSelection:(int64_t)a7
{
  v14.receiver = self;
  v14.super_class = _MTL4MachineLearningPipelineState;
  v12 = [(_MTLAllocation *)&v14 initWithAllocationType:5];
  if (v12)
  {
    -[_MTLObjectWithLabel setLabel:](v12, "setLabel:", [a4 label]);
    v12->_device = a3;
    v12->_executable = a5;
    v12->_intermediatesHeapSize = 64;
    v12->_deviceSelection = a7;
    v12->_functionName = [a6 copy];
  }

  return v12;
}

- (void)dealloc
{
  self->_executable = 0;

  self->_functionName = 0;
  self->_reflection = 0;

  self->_inputShapes = 0;
  self->_outputShapes = 0;
  v3.receiver = self;
  v3.super_class = _MTL4MachineLearningPipelineState;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (id)optimizedBytecode
{
  v3 = [(objc_class *)getMPSGraphClassByName("MPSGraphDevice") deviceWithMTLDevice:self->_device];
  v4 = _MTLNewMPSGraphCompilationDescriptor(self->_deviceSelection);
  executable = self->_executable;
  inputShapes = self->_inputShapes;

  return [(MPSGraphExecutableProxy *)executable optimizedBytecode:v3 inputShapes:inputShapes compilationDescriptor:v4];
}

- (id)runWithInputsArray:(id)a3 resultsArray:(id)a4 intermediateOperations:(id)a5
{
  v77[1] = *MEMORY[0x1E69E9840];
  executable = self->_executable;
  if (objc_opt_respondsToSelector())
  {
    v70 = a5;
    v71 = 72;
    v75 = a4;
    v76 = 56;
    v74 = [(objc_class *)getMPSGraphClassByName("MPSGraphDevice") deviceWithMTLDevice:self->_device];
    MPSGraphClassByName = getMPSGraphClassByName("MPSGraphTensorData");
    v11 = [a3 count];
    v73 = &v69;
    v12 = &v69 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = 0x1E695D000uLL;
    if (v11)
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = a3;
        v17 = [a3 objectAtIndexedSubscript:v14];
        if ([v17 isEqual:{objc_msgSend(*(v13 + 4016), "null")}])
        {
          v17 = 0;
        }

        v18 = v13;
        v19 = *(&self->super.super.super.isa + v76);
        v20 = [(NSArray *)self->_inputShapes objectAtIndexedSubscript:v14];
        v21 = v19;
        v13 = v18;
        v22 = v17;
        a3 = v16;
        *&v12[8 * v14] = _NewTensorDataWithMTLTensor(v21, v22, v14, MPSGraphClassByName, v20);
        v14 = v15;
        v23 = v11 > v15++;
      }

      while (v23);
    }

    v72 = MPSGraphClassByName;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:v11];
    v25 = *(&self->super.super.super.isa + v71);
    v71 = v24;
    v70 = [v25 newExecutableWithDevice:v74 inputsArray:? intermediateOperations:? executionDescriptor:?];
    v26 = [v70 getOutputShapes];
    v27 = v26;
    v28 = v75;
    v29 = self;
    if (!v75)
    {
      v30 = [v26 count];
      v75 = &v69;
      v69 = v30;
      v31 = 8 * v30;
      v32 = (&v69 - ((8 * v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      v33 = [v27 count];
      v34 = v76;
      if (v33)
      {
        v35 = 0;
        v36 = 1;
        do
        {
          v37 = [v27 objectAtIndexedSubscript:v35];
          v77[0] = 0;
          v38 = objc_opt_new();
          [v38 setDimensions:{TensorExtentsFromMPSShape(objc_msgSend(v37, "shape"))}];
          v39 = [v37 dataType];
          [v38 setDataType:{MTLTensorDataTypeFromMPSDataType(v39, v40, v41, v42, v43, v44, v45, v46)}];
          [v38 setUsage:4];
          v47 = [*(&v29->super.super.super.isa + v34) newTensorWithDescriptor:v38 error:v77];

          v32[v35] = v47;
          v35 = v36;
          v23 = [v27 count] > v36++;
        }

        while (v23);
      }

      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:{objc_msgSend(v27, "count")}];
      if (v69)
      {
        do
        {
          v48 = *v32++;

          v31 -= 8;
        }

        while (v31);
      }
    }

    v75 = &v69 - ((8 * [v27 count] + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = [v27 count];
    v50 = v72;
    v51 = v76;
    v52 = 0x1E695D000uLL;
    if (v49)
    {
      v53 = v29;
      v54 = 0;
      v55 = 1;
      do
      {
        v56 = v28;
        v57 = [v28 objectAtIndexedSubscript:v54];
        if ([v57 isEqual:{objc_msgSend(*(v52 + 4016), "null")}])
        {
          v57 = 0;
        }

        v58 = v52;
        v59 = *(&v53->super.super.super.isa + v51);
        v60 = [v27 objectAtIndexedSubscript:v54];
        v61 = v59;
        v52 = v58;
        v62 = v57;
        v28 = v56;
        v63 = _NewTensorDataWithMTLTensor(v61, v62, v54, v50, v60);
        *&v75[8 * v54] = v63;
        v54 = v55;
        v23 = [v27 count] > v55++;
      }

      while (v23);
    }

    v64 = MEMORY[0x1E695DEC8];
    v65 = [v27 count];
    v66 = [v64 arrayWithObjects:v75 count:v65];
    [v70 runWithDevice:v74 inputsArray:v71 resultsArray:v66 executionDescriptor:0];
  }

  else
  {
    v28 = 0;
  }

  v67 = *MEMORY[0x1E69E9840];
  return v28;
}

@end