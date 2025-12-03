@interface MPSGraphGatherOp
- (MPSGraphGatherOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies axis:(int64_t)axis batchDimensions:(unint64_t)dimensions name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphGatherOp

- (MPSGraphGatherOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies axis:(int64_t)axis batchDimensions:(unint64_t)dimensions name:(id)name
{
  self->_axis = axis;
  self->_batchDims = dimensions;
  self->_allowNegativeIndices = 0;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphGatherOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", __p);
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::GatherOp>(table, builder, __p, 0x89u, nameCopy);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *values;
  v14 = *(values + 1);
  v15 = v14 - *values;
  if (v15 == 16 || v14 == v13 || v15 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = mlir::OpBuilder::create<mlir::mps::GatherOp,mlir::Value &,mlir::Value &,mlir::Value &,unsigned long &,BOOL &>(builder, v12, v13, v13 + 1, v13 + 2, &self->_batchDims, &self->_allowNegativeIndices) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v20);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors objectAtIndexedSubscript:0];
  if (v13 == tensorCopy)
  {
    shape = [tensorCopy shape];
    v16 = isStaticShape(shape);

    if (!v16)
    {
      v14 = 0;
      goto LABEL_13;
    }

    batchDims = self->_batchDims;
    v46 = gradientCopy;
    v47 = nameCopy;
    v45 = gradientCopy;
    inputTensors2 = [(MPSGraphOperation *)self inputTensors];
    v19 = [inputTensors2 objectAtIndexedSubscript:1];

    axis = self->_axis;
    v21 = self->_batchDims;
    array = [MEMORY[0x1E695DF70] array];
    v22 = MEMORY[0x1E695DF70];
    shape2 = [v19 shape];
    v48 = batchDims;
    v24 = [v22 arrayWithArray:shape2];
    v25 = axis - v21;

    if (axis != v21)
    {
      v26 = 0;
      do
      {
        v27 = [MEMORY[0x1E696AD98] numberWithInteger:v26 + self->_batchDims];
        [array addObject:v27];

        shape3 = [tensorCopy shape];
        v29 = [shape3 objectAtIndexedSubscript:v26 + self->_batchDims];
        [v24 insertObject:v29 atIndex:v26 + self->_batchDims];

        ++v26;
      }

      while (v25 != v26);
    }

    [array addObject:&unk_1F5B75A88];
    [v24 addObject:&unk_1F5B75AA0];
    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    v31 = MEMORY[0x1E696AEC0];
    nameCopy = v47;
    inputTensors = v45;
    name = [(MPSGraphOperation *)self name];
    v33 = [v31 stringWithFormat:@"%@/%@/expandDims", v47, name];
    v44 = [WeakRetained expandDimsOfTensor:v19 axes:array name:v33];

    if (v25 < 1)
    {
      v13 = v44;
    }

    else
    {
      v48 = self->_axis;
      v34 = objc_loadWeakRetained(&self->super._graph);
      v35 = MEMORY[0x1E696AEC0];
      name2 = [(MPSGraphOperation *)self name];
      v37 = [v35 stringWithFormat:@"%@/%@/broadcast", v47, name2];
      v13 = [v34 broadcastTensor:v44 toShape:v24 name:v37];
    }

    v38 = objc_loadWeakRetained(&self->super._graph);
    shape4 = [tensorCopy shape];
    v40 = MEMORY[0x1E696AEC0];
    name3 = [(MPSGraphOperation *)self name];
    v42 = [v40 stringWithFormat:@"%@/%@/scatterND", v47, name3];
    v14 = [v38 scatterNDWithUpdatesTensor:v45 indicesTensor:v13 shape:shape4 batchDimensions:v48 name:v42];

    gradientCopy = v46;
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

@end