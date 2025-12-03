@interface MPSGraphMaxWithIndicesPool4DOp
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphMaxWithIndicesPool4DOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v16 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphMaxWithIndicesPool4DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolMaxOp>(table, builder, __p, 0x2D2u, nameCopy);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  getMLIRElementType(*builder, [(MPSGraphPooling4DOpDescriptor *)self->super._desc returnIndicesDataType]);
  if (*(values + 1) != *values)
  {
    kernelSizes = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    nsArrayToAttr(kernelSizes, builder);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
  kernelSizes = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
  v10 = [kernelSizes objectAtIndexedSubscript:0];
  if ([v10 intValue] == 1)
  {
    kernelSizes2 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    v12 = [kernelSizes2 objectAtIndexedSubscript:1];
    if ([v12 intValue] == 1)
    {
      strides = [(MPSGraphPooling4DOpDescriptor *)self->super._desc strides];
      v14 = [strides objectAtIndexedSubscript:0];
      if ([v14 intValue] == 1)
      {
        strides2 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc strides];
        v15 = [strides2 objectAtIndexedSubscript:1];
        v16 = [v15 intValue] == 1;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  kernelSizes3 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
  v18 = [kernelSizes3 objectAtIndexedSubscript:0];
  if ([v18 intValue] == 1)
  {
    kernelSizes4 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    v20 = [kernelSizes4 objectAtIndexedSubscript:3];
    if ([v20 intValue] == 1)
    {
      strides3 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc strides];
      v21 = [strides3 objectAtIndexedSubscript:0];
      if ([v21 intValue] == 1)
      {
        strides4 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc strides];
        v22 = [strides4 objectAtIndexedSubscript:3];
        v23 = [v22 intValue] == 1;
      }

      else
      {
        v23 = 0;
      }

      if (!v16 && !v23)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if (!v16)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  if (isValidIndicesInput4D(!v16, [(MPSGraphPooling4DOpDescriptor *)self->super._desc returnIndicesMode], self->super._desc))
  {
    v24 = MEMORY[0x1E696AEC0];
    name = [(MPSGraphOperation *)self name];
    v26 = [v24 stringWithFormat:@"%@/%@/shapeOf", nameCopy, name];

    v27 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v29 = [v27 stringWithFormat:@"%@/%@/maxPoolGradWithIndices", nameCopy, name2];

    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    v31 = [tensorsCopy objectAtIndexedSubscript:0];
    v32 = [WeakRetained shapeOfTensor:v31 name:v26];

    v33 = objc_loadWeakRetained(&self->super.super._graph);
    v34 = [gradientsCopy objectAtIndexedSubscript:0];
    outputTensors = [(MPSGraphOperation *)self outputTensors];
    v36 = [outputTensors objectAtIndexedSubscript:1];
    v37 = [v33 maxPooling4DGradientWithGradientTensor:v34 indicesTensor:v36 outputShapeTensor:v32 descriptor:self->super._desc name:v29];

    goto LABEL_23;
  }

LABEL_22:
  v38 = MEMORY[0x1E696AEC0];
  name3 = [(MPSGraphOperation *)self name];
  v26 = [v38 stringWithFormat:@"%@/%@/maxPoolGrad", nameCopy, name3];

  v29 = objc_loadWeakRetained(&self->super.super._graph);
  v32 = [gradientsCopy objectAtIndexedSubscript:0];
  v33 = [tensorsCopy objectAtIndexedSubscript:0];
  v37 = [v29 maxPooling4DGradientWithGradientTensor:v32 sourceTensor:v33 descriptor:self->super._desc name:v26];
LABEL_23:

  [v44 addObject:v37];

  return v44;
}

@end