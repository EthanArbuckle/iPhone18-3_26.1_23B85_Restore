@interface MPSGraphCropResizeOp
- (MPSGraphCropResizeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphCropResizeOp

- (MPSGraphCropResizeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  objc_storeStrong(&self->_desc, descriptor);
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  v16 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v16;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v51 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphCropResizeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphCropResizeOps.mm", __p);
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SampleGridOp>(table, builder, __p, 0x6Eu, nameCopy);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  resizeHeight = [(MPSGraphCropResizeOpDescriptor *)self->_desc resizeHeight];
  resizeWidth = [(MPSGraphCropResizeOpDescriptor *)self->_desc resizeWidth];
  normalizeCoordinates = [(MPSGraphCropResizeOpDescriptor *)self->_desc normalizeCoordinates];
  [(MPSGraphCropResizeOpDescriptor *)self->_desc spatialScale];
  v18 = llvm::detail::IEEEFloat::IEEEFloat(v48, v17);
  v19 = llvm::APFloatBase::IEEEsingle(v18);
  llvm::APFloat::Storage::Storage(&v47, v48, v19);
  llvm::detail::IEEEFloat::~IEEEFloat(v48);
  resizeMode = [(MPSGraphCropResizeOpDescriptor *)self->_desc resizeMode];
  v37 = normalizeCoordinates;
  v38 = resizeWidth;
  builderCopy = builder;
  samplingMode = [(MPSGraphCropResizeOpDescriptor *)self->_desc samplingMode];
  coordinateMode = [(MPSGraphCropResizeOpDescriptor *)self->_desc coordinateMode];
  v42 = v12;
  Context = mlir::Attribute::getContext(&v42);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropResizeOp,void>::id, Context);
  if ((v26 & 1) == 0)
  {
    v46 = 1283;
    v45[2] = "mps.crop_resize";
    v45[3] = 15;
    v44 = 259;
    llvm::operator+(v45, &v43, v49);
    llvm::report_fatal_error(v49, 1);
  }

  mlir::OperationState::OperationState(v48, v12, v25);
  v27 = *v13;
  v28 = v13[1];
  v29 = v47.n128_u64[0];
  v31 = llvm::APFloatBase::PPCDoubleDouble(v30);
  if (v31 == v29)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v50, &v47);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v50, &v47);
  }

  mlir::mps::CropResizeOp::build(builderCopy, v48, v27, v28, resizeHeight, v38, v37, v49, resizeMode, samplingMode, coordinateMode);
  if (v31 == v50[0].n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v50);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v50);
  }

  v32 = mlir::OpBuilder::create(builderCopy, v48);
  v33 = *(*(v32 + 48) + 16);
  mlir::OperationState::~OperationState(v48);
  if (v33 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeOp,void>::id)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  v39 = v34 - 16;
  if (v31 == v47.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v47);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v47);
  }

  DefiningOp = mlir::Value::getDefiningOp(&v39);

  return DefiningOp;
}

@end