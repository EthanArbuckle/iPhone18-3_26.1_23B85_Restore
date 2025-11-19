@interface MPSGraphMaxWithIndicesPool4DOp
- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphMaxWithIndicesPool4DOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = a7;
  mpsFileLoc("[MPSGraphMaxWithIndicesPool4DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolMaxOp>(a4, a3, __p, 0x2D2u, v12);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  getMLIRElementType(*a3, [(MPSGraphPooling4DOpDescriptor *)self->super._desc returnIndicesDataType]);
  if (*(a5 + 1) != *a5)
  {
    v13 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    nsArrayToAttr(v13, a3);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5
{
  v8 = a3;
  v45 = a4;
  v46 = a5;
  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v9 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
  v10 = [v9 objectAtIndexedSubscript:0];
  if ([v10 intValue] == 1)
  {
    v11 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    v12 = [v11 objectAtIndexedSubscript:1];
    if ([v12 intValue] == 1)
    {
      v13 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc strides];
      v14 = [v13 objectAtIndexedSubscript:0];
      if ([v14 intValue] == 1)
      {
        v42 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc strides];
        v15 = [v42 objectAtIndexedSubscript:1];
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

  v17 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
  v18 = [v17 objectAtIndexedSubscript:0];
  if ([v18 intValue] == 1)
  {
    v19 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    v20 = [v19 objectAtIndexedSubscript:3];
    if ([v20 intValue] == 1)
    {
      v43 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc strides];
      v21 = [v43 objectAtIndexedSubscript:0];
      if ([v21 intValue] == 1)
      {
        v41 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc strides];
        v22 = [v41 objectAtIndexedSubscript:3];
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
    v25 = [(MPSGraphOperation *)self name];
    v26 = [v24 stringWithFormat:@"%@/%@/shapeOf", v46, v25];

    v27 = MEMORY[0x1E696AEC0];
    v28 = [(MPSGraphOperation *)self name];
    v29 = [v27 stringWithFormat:@"%@/%@/maxPoolGradWithIndices", v46, v28];

    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    v31 = [v8 objectAtIndexedSubscript:0];
    v32 = [WeakRetained shapeOfTensor:v31 name:v26];

    v33 = objc_loadWeakRetained(&self->super.super._graph);
    v34 = [v45 objectAtIndexedSubscript:0];
    v35 = [(MPSGraphOperation *)self outputTensors];
    v36 = [v35 objectAtIndexedSubscript:1];
    v37 = [v33 maxPooling4DGradientWithGradientTensor:v34 indicesTensor:v36 outputShapeTensor:v32 descriptor:self->super._desc name:v29];

    goto LABEL_23;
  }

LABEL_22:
  v38 = MEMORY[0x1E696AEC0];
  v39 = [(MPSGraphOperation *)self name];
  v26 = [v38 stringWithFormat:@"%@/%@/maxPoolGrad", v46, v39];

  v29 = objc_loadWeakRetained(&self->super.super._graph);
  v32 = [v45 objectAtIndexedSubscript:0];
  v33 = [v8 objectAtIndexedSubscript:0];
  v37 = [v29 maxPooling4DGradientWithGradientTensor:v32 sourceTensor:v33 descriptor:self->super._desc name:v26];
LABEL_23:

  [v44 addObject:v37];

  return v44;
}

@end