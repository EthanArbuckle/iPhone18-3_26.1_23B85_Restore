@interface MPSGraphMaxWithIndicesPooling2DOp
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphMaxWithIndicesPooling2DOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphMaxWithIndicesPooling2DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolMaxOp>(table, builder, __p, 0x124u, nameCopy);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  kernelWidth = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelWidth];
  kernelHeight = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelHeight];
  dataLayout = [(MPSGraphPooling2DOpDescriptor *)self->super._desc dataLayout];
  xyValTo4dAttr(kernelWidth, kernelHeight, dataLayout, builder, v14);
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
  dataLayout = [(MPSGraphPooling2DOpDescriptor *)self->super._desc dataLayout];
  returnIndicesMode = [(MPSGraphPooling2DOpDescriptor *)self->super._desc returnIndicesMode];
  v11 = self->super._desc;
  if ([(MPSGraphPooling2DOpDescriptor *)v11 dilationRateInX]== 1)
  {
    v12 = [(MPSGraphPooling2DOpDescriptor *)v11 dilationRateInY]== 1;
    if (dataLayout == MPSGraphTensorNamedDataLayoutNCHW)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (dataLayout == MPSGraphTensorNamedDataLayoutNCHW)
    {
LABEL_3:
      v13 = returnIndicesMode == MPSGraphPoolingReturnIndicesGlobalFlatten2D && v12;

      if (v13 != 1)
      {
        goto LABEL_10;
      }

LABEL_8:
      v33 = tensorsCopy;
      v15 = MEMORY[0x1E696AEC0];
      name = [(MPSGraphOperation *)self name];
      v17 = [v15 stringWithFormat:@"%@/%@/shapeOf", nameCopy, name];

      v18 = MEMORY[0x1E696AEC0];
      name2 = [(MPSGraphOperation *)self name];
      v20 = [v18 stringWithFormat:@"%@/%@/maxPoolGradWithIndices", nameCopy, name2];

      WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
      v22 = [tensorsCopy objectAtIndexedSubscript:0];
      v23 = [WeakRetained shapeOfTensor:v22 name:v17];

      v24 = objc_loadWeakRetained(&self->super.super._graph);
      v25 = [gradientsCopy objectAtIndexedSubscript:0];
      outputTensors = [(MPSGraphOperation *)self outputTensors];
      v27 = [outputTensors objectAtIndexedSubscript:1];
      v28 = [v24 maxPooling2DGradientWithGradientTensor:v25 indicesTensor:v27 outputShapeTensor:v23 descriptor:self->super._desc name:v20];

      tensorsCopy = v33;
      v29 = v34;
      goto LABEL_11;
    }
  }

  if (dataLayout == MPSGraphTensorNamedDataLayoutNHWC)
  {
    v14 = returnIndicesMode == MPSGraphPoolingReturnIndicesGlobalFlatten3D && v12;

    if (v14 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_10:
  v30 = MEMORY[0x1E696AEC0];
  name3 = [(MPSGraphOperation *)self name];
  v17 = [v30 stringWithFormat:@"%@/%@/maxPoolGrad", nameCopy, name3];

  v20 = objc_loadWeakRetained(&self->super.super._graph);
  v23 = [gradientsCopy objectAtIndexedSubscript:0];
  v29 = v34;
  v24 = [tensorsCopy objectAtIndexedSubscript:0];
  v28 = [v20 maxPooling2DGradientWithGradientTensor:v23 sourceTensor:v24 descriptor:self->super._desc name:v17];
LABEL_11:

  [v29 addObject:v28];

  return v29;
}

@end