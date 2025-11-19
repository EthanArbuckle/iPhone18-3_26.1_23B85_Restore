@interface MPSGraphMaxWithIndicesPooling2DOp
- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphMaxWithIndicesPooling2DOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphMaxWithIndicesPooling2DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolMaxOp>(a4, a3, __p, 0x124u, v10);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelWidth];
  v12 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelHeight];
  v13 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc dataLayout];
  xyValTo4dAttr(v11, v12, v13, a3, v14);
}

- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5
{
  v8 = a3;
  v35 = a4;
  v36 = a5;
  v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v9 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc dataLayout];
  v10 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc returnIndicesMode];
  v11 = self->super._desc;
  if ([(MPSGraphPooling2DOpDescriptor *)v11 dilationRateInX]== 1)
  {
    v12 = [(MPSGraphPooling2DOpDescriptor *)v11 dilationRateInY]== 1;
    if (v9 == MPSGraphTensorNamedDataLayoutNCHW)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (v9 == MPSGraphTensorNamedDataLayoutNCHW)
    {
LABEL_3:
      v13 = v10 == MPSGraphPoolingReturnIndicesGlobalFlatten2D && v12;

      if (v13 != 1)
      {
        goto LABEL_10;
      }

LABEL_8:
      v33 = v8;
      v15 = MEMORY[0x1E696AEC0];
      v16 = [(MPSGraphOperation *)self name];
      v17 = [v15 stringWithFormat:@"%@/%@/shapeOf", v36, v16];

      v18 = MEMORY[0x1E696AEC0];
      v19 = [(MPSGraphOperation *)self name];
      v20 = [v18 stringWithFormat:@"%@/%@/maxPoolGradWithIndices", v36, v19];

      WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
      v22 = [v8 objectAtIndexedSubscript:0];
      v23 = [WeakRetained shapeOfTensor:v22 name:v17];

      v24 = objc_loadWeakRetained(&self->super.super._graph);
      v25 = [v35 objectAtIndexedSubscript:0];
      v26 = [(MPSGraphOperation *)self outputTensors];
      v27 = [v26 objectAtIndexedSubscript:1];
      v28 = [v24 maxPooling2DGradientWithGradientTensor:v25 indicesTensor:v27 outputShapeTensor:v23 descriptor:self->super._desc name:v20];

      v8 = v33;
      v29 = v34;
      goto LABEL_11;
    }
  }

  if (v9 == MPSGraphTensorNamedDataLayoutNHWC)
  {
    v14 = v10 == MPSGraphPoolingReturnIndicesGlobalFlatten3D && v12;

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
  v31 = [(MPSGraphOperation *)self name];
  v17 = [v30 stringWithFormat:@"%@/%@/maxPoolGrad", v36, v31];

  v20 = objc_loadWeakRetained(&self->super.super._graph);
  v23 = [v35 objectAtIndexedSubscript:0];
  v29 = v34;
  v24 = [v8 objectAtIndexedSubscript:0];
  v28 = [v20 maxPooling2DGradientWithGradientTensor:v23 sourceTensor:v24 descriptor:self->super._desc name:v17];
LABEL_11:

  [v29 addObject:v28];

  return v29;
}

@end