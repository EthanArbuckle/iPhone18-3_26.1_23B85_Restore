@interface MPSGraphNormalizationOp
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphNormalizationOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v59 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphNormalizationOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphNormalizationOps.mm", __p);
  v43 = nameCopy;
  v55 = 260;
  v54[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v54);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x2Du, 0);
  if (v43)
  {
    uTF8String = [v43 UTF8String];
    v16 = strlen(uTF8String);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v58[6] = v16;
    if (v16)
    {
      memmove(&__dst, uTF8String, v16);
    }

    v18 = &__dst + v17;
  }

  else
  {
    v58[6] = 17;
    v57 = 110;
    __dst = *"mps.normalization";
    v18 = v58;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &v50);
  v19 = v50.__r_.__value_.__r.__words[0];
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v50;
  }

  v20 = 1;
  HIBYTE(v55) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    v54[0] = v19;
    v20 = 3;
  }

  LOBYTE(v55) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v54);
  v22 = mlir::NameLoc::get(v21, v14);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
    if ((v58[6] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v58[6] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = *values;
  v24 = *(values + 1) - *values;
  if (!v24 || (v24 >> 3) < 2 || v24 == 16 || (v24 >> 3) < 4 || v24 == 32)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v25 = llvm::detail::IEEEFloat::IEEEFloat(v54, self->_eps);
  v26 = llvm::APFloatBase::IEEEsingle(v25);
  llvm::APFloat::Storage::Storage(&v53, v54, v26);
  llvm::detail::IEEEFloat::~IEEEFloat(v54);
  v47 = v22;
  Context = mlir::Attribute::getContext(&v47);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v52 = 1283;
    v50.__r_.__value_.__r.__words[2] = "mps.normalization";
    v51 = 17;
    v49 = 259;
    llvm::operator+(&v50, &v48, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v54, v22, v28);
  v30 = *v23;
  v31 = v23[1];
  v32 = v23[2];
  v33 = v23[3];
  v34 = v23[4];
  v35 = v53.n128_u64[0];
  v37 = llvm::APFloatBase::PPCDoubleDouble(v36);
  if (v37 == v35)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((&__dst + 8), &v53);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&__dst + 8, &v53);
  }

  mlir::mps::NormalizationOp::build(builder, v54, v30, v31, v32, v33, v34, &__dst);
  if (v37 == *(&__dst + 1))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&__dst + 8));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&__dst + 8));
  }

  v38 = mlir::OpBuilder::create(builder, v54);
  v39 = *(*(v38 + 48) + 16);
  mlir::OperationState::~OperationState(v54);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v44 = v40 - 16;
  if (v37 == v53.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v53);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v53);
  }

  DefiningOp = mlir::Value::getDefiningOp(&v44);

  return DefiningOp;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  v138[5] = *MEMORY[0x1E69E9840];
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  v99 = gradientsCopy;
  v136 = [gradientsCopy objectAtIndexedSubscript:0];
  v134 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:0];
  v132 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
  v135 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
  v133 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
  v131 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:4];
  outputTensors = [(MPSGraphOperation *)self outputTensors];
  v119 = [outputTensors objectAtIndexedSubscript:0];

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v125 = [WeakRetained broadcastGradientArgsForPrimaryTensor:v136 withSecondaryTensor:v134 name:0];

  v12 = objc_loadWeakRetained(&self->super._graph);
  v123 = [v12 broadcastGradientArgsForPrimaryTensor:v136 withSecondaryTensor:v132 name:0];

  v13 = objc_loadWeakRetained(&self->super._graph);
  v116 = [v13 broadcastGradientArgsForPrimaryTensor:v136 withSecondaryTensor:v135 name:0];

  v14 = objc_loadWeakRetained(&self->super._graph);
  v111 = [v14 broadcastGradientArgsForPrimaryTensor:v136 withSecondaryTensor:v133 name:0];

  v15 = objc_loadWeakRetained(&self->super._graph);
  v109 = [v15 broadcastGradientArgsForPrimaryTensor:v136 withSecondaryTensor:v131 name:0];

  v16 = objc_loadWeakRetained(&self->super._graph);
  v127 = [v16 constantWithScalar:&unk_1F5B77708 shape:268435488 dataType:self->_eps];

  v17 = objc_loadWeakRetained(&self->super._graph);
  dataType = [v135 dataType];
  if (nameCopy)
  {
    v19 = [nameCopy stringByAppendingFormat:@"/cast"];
  }

  else
  {
    v19 = @"normalizationGradient/cast";
  }

  v126 = [v17 castTensor:v127 toType:dataType name:v19];
  if (nameCopy)
  {

    v20 = objc_loadWeakRetained(&self->super._graph);
    v21 = [nameCopy stringByAppendingString:@"/addition"];
  }

  else
  {

    v20 = objc_loadWeakRetained(&self->super._graph);
    v21 = @"normalizationGradient/addition";
  }

  v129 = [v20 additionWithPrimaryTensor:v135 secondaryTensor:v126 name:v21];
  if (nameCopy)
  {

    v22 = objc_loadWeakRetained(&self->super._graph);
    v23 = [nameCopy stringByAppendingString:@"/sqrt"];
  }

  else
  {

    v22 = objc_loadWeakRetained(&self->super._graph);
    v23 = @"normalizationGradient/sqrt";
  }

  v128 = [v22 squareRootWithTensor:v129 name:v23];
  if (nameCopy)
  {

    v24 = objc_loadWeakRetained(&self->super._graph);
    v25 = [nameCopy stringByAppendingString:@"/divison"];
  }

  else
  {

    v24 = objc_loadWeakRetained(&self->super._graph);
    v25 = @"normalizationGradient/divison";
  }

  v124 = [v24 divisionWithPrimaryTensor:v133 secondaryTensor:v128 name:v25];
  if (nameCopy)
  {

    v26 = objc_loadWeakRetained(&self->super._graph);
    v27 = [nameCopy stringByAppendingString:@"/multiplication"];
  }

  else
  {

    v26 = objc_loadWeakRetained(&self->super._graph);
    v27 = @"normalizationGradient/multiplication";
  }

  v130 = [v26 multiplicationWithPrimaryTensor:v136 secondaryTensor:v124 name:v27];
  if (nameCopy)
  {

    v28 = objc_loadWeakRetained(&self->super._graph);
    v29 = [nameCopy stringByAppendingFormat:@"/sum"];
  }

  else
  {

    v28 = objc_loadWeakRetained(&self->super._graph);
    v29 = @"normalizationGradient/sum";
  }

  v122 = [v28 reductionSumWithTensor:v130 axesTensor:v125 name:v29];
  if (nameCopy)
  {

    v30 = objc_loadWeakRetained(&self->super._graph);
    v31 = [nameCopy stringByAppendingString:@"/broadcastGradShape"];
  }

  else
  {

    v30 = objc_loadWeakRetained(&self->super._graph);
    v31 = @"normalizationGradient/broadcastGradShape";
  }

  v121 = [v30 shapeOfTensor:v134 name:v31];
  if (nameCopy)
  {

    v32 = objc_loadWeakRetained(&self->super._graph);
    v33 = [nameCopy stringByAppendingString:@"/broadcastGradReshape"];
  }

  else
  {

    v32 = objc_loadWeakRetained(&self->super._graph);
    v33 = @"normalizationGradient/broadcastGradReshape";
  }

  v104 = [v32 reshapeTensor:v122 withShapeTensor:v121 name:v33];
  if (nameCopy)
  {

    v34 = objc_loadWeakRetained(&self->super._graph);
    v35 = [nameCopy stringByAppendingString:@"/meannegative"];
  }

  else
  {

    v34 = objc_loadWeakRetained(&self->super._graph);
    v35 = @"normalizationGradient/mean/negative";
  }

  v120 = [v34 negativeWithTensor:v130 name:v35];
  if (nameCopy)
  {

    v36 = objc_loadWeakRetained(&self->super._graph);
    v37 = [nameCopy stringByAppendingFormat:@"/mean/sum"];
  }

  else
  {

    v36 = objc_loadWeakRetained(&self->super._graph);
    v37 = @"normalizationGradient/mean/sum";
  }

  v118 = [v36 reductionSumWithTensor:v120 axesTensor:v123 name:v37];
  if (nameCopy)
  {

    v38 = objc_loadWeakRetained(&self->super._graph);
    v39 = [nameCopy stringByAppendingString:@"/mean/broadcastGradShape"];
  }

  else
  {

    v38 = objc_loadWeakRetained(&self->super._graph);
    v39 = @"normalizationGradient/mean/broadcastGradShape";
  }

  v117 = [v38 shapeOfTensor:v132 name:v39];
  if (nameCopy)
  {

    v40 = objc_loadWeakRetained(&self->super._graph);
    v41 = [nameCopy stringByAppendingString:@"/mean/broadcastGradReshape"];
  }

  else
  {

    v40 = objc_loadWeakRetained(&self->super._graph);
    v41 = @"normalizationGradient/mean/broadcastGradReshape";
  }

  v102 = [v40 reshapeTensor:v118 withShapeTensor:v117 name:v41];
  if (nameCopy)
  {
  }

  v42 = objc_loadWeakRetained(&self->super._graph);
  v115 = [v42 constantWithScalar:objc_msgSend(v134 dataType:{"dataType"), -0.5}];

  v43 = objc_loadWeakRetained(&self->super._graph);
  if (nameCopy)
  {
    v44 = [nameCopy stringByAppendingString:@"/variance/multiplication"];
  }

  else
  {
    v44 = @"normalizationGradient/variance/multiplication";
  }

  v114 = [v43 multiplicationWithPrimaryTensor:v136 secondaryTensor:v115 name:v44];
  if (nameCopy)
  {

    v45 = objc_loadWeakRetained(&self->super._graph);
    v46 = [nameCopy stringByAppendingString:@"/variance/subtraction"];
  }

  else
  {

    v45 = objc_loadWeakRetained(&self->super._graph);
    v46 = @"normalizationGradient/variance/subtraction";
  }

  v113 = [v45 subtractionWithPrimaryTensor:v119 secondaryTensor:v131 name:v46];
  if (nameCopy)
  {

    v47 = objc_loadWeakRetained(&self->super._graph);
    v48 = [nameCopy stringByAppendingString:@"/variance/multiplication"];
  }

  else
  {

    v47 = objc_loadWeakRetained(&self->super._graph);
    v48 = @"normalizationGradient/variance/multiplication";
  }

  v112 = [v47 multiplicationWithPrimaryTensor:v114 secondaryTensor:v113 name:v48];
  if (nameCopy)
  {

    v49 = objc_loadWeakRetained(&self->super._graph);
    v50 = [nameCopy stringByAppendingString:@"/variance/divison"];
  }

  else
  {

    v49 = objc_loadWeakRetained(&self->super._graph);
    v50 = @"batchNormGammaGradient/variance/divison";
  }

  v110 = [v49 divisionWithPrimaryTensor:v112 secondaryTensor:v129 name:v50];
  if (nameCopy)
  {

    v51 = objc_loadWeakRetained(&self->super._graph);
    v52 = [nameCopy stringByAppendingFormat:@"/variance/sum"];
  }

  else
  {

    v51 = objc_loadWeakRetained(&self->super._graph);
    v52 = @"normalizationGradient/variance/sum";
  }

  v108 = [v51 reductionSumWithTensor:v110 axesTensor:v116 name:v52];
  if (nameCopy)
  {

    v53 = objc_loadWeakRetained(&self->super._graph);
    v54 = [nameCopy stringByAppendingString:@"/variance/broadcastGradShape"];
  }

  else
  {

    v53 = objc_loadWeakRetained(&self->super._graph);
    v54 = @"normalizationGradient/variance/broadcastGradShape";
  }

  v107 = [v53 shapeOfTensor:v135 name:v54];
  if (nameCopy)
  {

    v55 = objc_loadWeakRetained(&self->super._graph);
    v56 = [nameCopy stringByAppendingString:@"/variance/broadcastGradReshape"];
  }

  else
  {

    v55 = objc_loadWeakRetained(&self->super._graph);
    v56 = @"normalizationGradient/variance/broadcastGradReshape";
  }

  v100 = [v55 reshapeTensor:v108 withShapeTensor:v107 name:v56];
  if (nameCopy)
  {

    v57 = objc_loadWeakRetained(&self->super._graph);
    v58 = [nameCopy stringByAppendingString:@"/gamma/subtraction"];
  }

  else
  {

    v57 = objc_loadWeakRetained(&self->super._graph);
    v58 = @"normalizationGradient/gamma/subtraction";
  }

  v106 = [v57 subtractionWithPrimaryTensor:v134 secondaryTensor:v132 name:v58];
  if (nameCopy)
  {

    v59 = objc_loadWeakRetained(&self->super._graph);
    v60 = [nameCopy stringByAppendingString:@"/gamma/divison"];
  }

  else
  {

    v59 = objc_loadWeakRetained(&self->super._graph);
    v60 = @"normalizationGradient/gamma/divison";
  }

  v105 = [v59 divisionWithPrimaryTensor:v106 secondaryTensor:v128 name:v60];
  if (nameCopy)
  {

    v61 = objc_loadWeakRetained(&self->super._graph);
    v62 = [nameCopy stringByAppendingString:@"/gamma/multiplication"];
  }

  else
  {

    v61 = objc_loadWeakRetained(&self->super._graph);
    v62 = @"normalizationGradient/gamma/multiplication";
  }

  v103 = [v61 multiplicationWithPrimaryTensor:v136 secondaryTensor:v105 name:v62];
  if (nameCopy)
  {

    v63 = objc_loadWeakRetained(&self->super._graph);
    v64 = [nameCopy stringByAppendingFormat:@"/gamma/sum"];
  }

  else
  {

    v63 = objc_loadWeakRetained(&self->super._graph);
    v64 = @"normalizationGradient/gamma/sum";
  }

  v101 = [v63 reductionSumWithTensor:v103 axesTensor:v111 name:v64];
  if (nameCopy)
  {

    v65 = objc_loadWeakRetained(&self->super._graph);
    v66 = [nameCopy stringByAppendingString:@"/gamma/broadcastGradShape"];
  }

  else
  {

    v65 = objc_loadWeakRetained(&self->super._graph);
    v66 = @"normalizationGradient/gamma/broadcastGradShape";
  }

  v67 = [v65 shapeOfTensor:v133 name:v66];
  if (nameCopy)
  {

    v68 = objc_loadWeakRetained(&self->super._graph);
    v69 = [nameCopy stringByAppendingString:@"/gamma/broadcastGradReshape"];
  }

  else
  {

    v68 = objc_loadWeakRetained(&self->super._graph);
    v69 = @"normalizationGradient/gamma/broadcastGradReshape";
  }

  v70 = [v68 reshapeTensor:v101 withShapeTensor:v67 name:v69];
  if (nameCopy)
  {

    v71 = objc_loadWeakRetained(&self->super._graph);
    v72 = [nameCopy stringByAppendingFormat:@"/beta/sum"];
  }

  else
  {

    v71 = objc_loadWeakRetained(&self->super._graph);
    v72 = @"normalizationGradient/beta/sum";
  }

  v73 = [v71 reductionSumWithTensor:v136 axesTensor:v109 name:v72];
  if (nameCopy)
  {

    v74 = objc_loadWeakRetained(&self->super._graph);
    v75 = [nameCopy stringByAppendingString:@"/beta/broadcastGradShape"];
  }

  else
  {

    v74 = objc_loadWeakRetained(&self->super._graph);
    v75 = @"normalizationGradient/beta/broadcastGradShape";
  }

  v76 = [v74 shapeOfTensor:v131 name:v75];
  if (nameCopy)
  {

    v77 = objc_loadWeakRetained(&self->super._graph);
    v78 = [nameCopy stringByAppendingString:@"/beta/broadcastGradReshape"];
  }

  else
  {

    v77 = objc_loadWeakRetained(&self->super._graph);
    v78 = @"normalizationGradient/beta/broadcastGradReshape";
  }

  v79 = [v77 reshapeTensor:v73 withShapeTensor:v76 name:v78];
  if (nameCopy)
  {
  }

  v138[0] = v104;
  v138[1] = v102;
  v138[2] = v100;
  v138[3] = v70;
  v138[4] = v79;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:5];
  v81 = [v80 mutableCopy];

  v82 = [tensorsCopy objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v84 = [tensorsCopy objectAtIndexedSubscript:0];
    [v81 setObject:v84 atIndexedSubscript:0];
  }

  v85 = [tensorsCopy objectAtIndexedSubscript:1];
  objc_opt_class();
  v86 = objc_opt_isKindOfClass();

  if (v86)
  {
    v87 = [tensorsCopy objectAtIndexedSubscript:1];
    [v81 setObject:v87 atIndexedSubscript:1];
  }

  v88 = [tensorsCopy objectAtIndexedSubscript:2];
  objc_opt_class();
  v89 = objc_opt_isKindOfClass();

  if (v89)
  {
    v90 = [tensorsCopy objectAtIndexedSubscript:2];
    [v81 setObject:v90 atIndexedSubscript:2];
  }

  v91 = [tensorsCopy objectAtIndexedSubscript:3];
  objc_opt_class();
  v92 = objc_opt_isKindOfClass();

  if (v92)
  {
    v93 = [tensorsCopy objectAtIndexedSubscript:3];
    [v81 setObject:v93 atIndexedSubscript:3];
  }

  v94 = [tensorsCopy objectAtIndexedSubscript:4];
  objc_opt_class();
  v95 = objc_opt_isKindOfClass();

  if (v95)
  {
    v96 = [tensorsCopy objectAtIndexedSubscript:4];
    [v81 setObject:v96 atIndexedSubscript:4];
  }

  v97 = v81;

  return v81;
}

@end