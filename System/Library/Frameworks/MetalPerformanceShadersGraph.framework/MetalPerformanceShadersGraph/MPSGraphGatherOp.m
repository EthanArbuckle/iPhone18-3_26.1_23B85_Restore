@interface MPSGraphGatherOp
- (MPSGraphGatherOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 axis:(int64_t)a6 batchDimensions:(unint64_t)a7 name:(id)a8;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphGatherOp

- (MPSGraphGatherOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 axis:(int64_t)a6 batchDimensions:(unint64_t)a7 name:(id)a8
{
  self->_axis = a6;
  self->_batchDims = a7;
  self->_allowNegativeIndices = 0;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a8];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v11 = a7;
  mpsFileLoc("[MPSGraphGatherOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", __p);
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::GatherOp>(a4, a3, __p, 0x89u, v11);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *a5;
  v14 = *(a5 + 1);
  v15 = v14 - *a5;
  if (v15 == 16 || v14 == v13 || v15 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = mlir::OpBuilder::create<mlir::mps::GatherOp,mlir::Value &,mlir::Value &,mlir::Value &,unsigned long &,BOOL &>(a3, v12, v13, v13 + 1, v13 + 2, &self->_batchDims, &self->_allowNegativeIndices) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v20);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(MPSGraphOperation *)self inputTensors];
  v13 = [v12 objectAtIndexedSubscript:0];
  if (v13 == v9)
  {
    v15 = [v9 shape];
    v16 = isStaticShape(v15);

    if (!v16)
    {
      v14 = 0;
      goto LABEL_13;
    }

    batchDims = self->_batchDims;
    v46 = v10;
    v47 = v11;
    v45 = v10;
    v18 = [(MPSGraphOperation *)self inputTensors];
    v19 = [v18 objectAtIndexedSubscript:1];

    axis = self->_axis;
    v21 = self->_batchDims;
    v49 = [MEMORY[0x1E695DF70] array];
    v22 = MEMORY[0x1E695DF70];
    v23 = [v19 shape];
    v48 = batchDims;
    v24 = [v22 arrayWithArray:v23];
    v25 = axis - v21;

    if (axis != v21)
    {
      v26 = 0;
      do
      {
        v27 = [MEMORY[0x1E696AD98] numberWithInteger:v26 + self->_batchDims];
        [v49 addObject:v27];

        v28 = [v9 shape];
        v29 = [v28 objectAtIndexedSubscript:v26 + self->_batchDims];
        [v24 insertObject:v29 atIndex:v26 + self->_batchDims];

        ++v26;
      }

      while (v25 != v26);
    }

    [v49 addObject:&unk_1F5B75A88];
    [v24 addObject:&unk_1F5B75AA0];
    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    v31 = MEMORY[0x1E696AEC0];
    v11 = v47;
    v12 = v45;
    v32 = [(MPSGraphOperation *)self name];
    v33 = [v31 stringWithFormat:@"%@/%@/expandDims", v47, v32];
    v44 = [WeakRetained expandDimsOfTensor:v19 axes:v49 name:v33];

    if (v25 < 1)
    {
      v13 = v44;
    }

    else
    {
      v48 = self->_axis;
      v34 = objc_loadWeakRetained(&self->super._graph);
      v35 = MEMORY[0x1E696AEC0];
      v36 = [(MPSGraphOperation *)self name];
      v37 = [v35 stringWithFormat:@"%@/%@/broadcast", v47, v36];
      v13 = [v34 broadcastTensor:v44 toShape:v24 name:v37];
    }

    v38 = objc_loadWeakRetained(&self->super._graph);
    v39 = [v9 shape];
    v40 = MEMORY[0x1E696AEC0];
    v41 = [(MPSGraphOperation *)self name];
    v42 = [v40 stringWithFormat:@"%@/%@/scatterND", v47, v41];
    v14 = [v38 scatterNDWithUpdatesTensor:v45 indicesTensor:v13 shape:v39 batchDimensions:v48 name:v42];

    v10 = v46;
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

@end