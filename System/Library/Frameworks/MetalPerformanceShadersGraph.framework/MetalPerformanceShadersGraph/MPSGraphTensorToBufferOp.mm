@interface MPSGraphTensorToBufferOp
- (MPSGraphTensorToBufferOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies shape:(id)shape type:(unsigned int)type interleave:(id)interleave isTensorBufferOp:(BOOL)op isChannelAndInterleaveSame:(BOOL)self0 name:(id)self1;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphTensorToBufferOp

- (MPSGraphTensorToBufferOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies shape:(id)shape type:(unsigned int)type interleave:(id)interleave isTensorBufferOp:(BOOL)op isChannelAndInterleaveSame:(BOOL)self0 name:(id)self1
{
  shapeCopy = shape;
  interleaveCopy = interleave;
  objc_storeStrong(&self->_shape, shape);
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  self->_type = type;
  interleave = self->_interleave;
  self->_interleave = interleaveCopy;

  self->_isTensorBufferOp = op;
  self->_isChannelAndInterleaveSame = same;
  v24 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v24;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v42 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphTensorToBufferOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorBufferOpsPrivate.mm", v35);
  v10 = nameCopy;
  v41 = 260;
  v40[0] = v35;
  StringAttr = mlir::Builder::getStringAttr(builder, v40);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x4Eu, 0);
  if (v10)
  {
    v14 = v10;
    uTF8String = [v10 UTF8String];
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

    v39[2] = v16;
    if (v16)
    {
      memmove(__dst, uTF8String, v16);
    }

    v18 = &__dst[v17];
  }

  else
  {
    v39[2] = 21;
    qmemcpy(__dst, "mpsx.tensor_to_buffer", sizeof(__dst));
    v18 = v39;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v12, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v20 = 1;
  HIBYTE(v41) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v40[0] = p_p;
    v20 = 3;
  }

  LOBYTE(v41) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v40);
  v22 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v39[2] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v39[2] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v36 < 0)
  {
    operator delete(v35[0]);
    shape = self->_shape;
    builderCopy2 = builder;
    if (shape)
    {
LABEL_18:
      v25 = [(NSArray *)shape count];
      getMLIRElementType(*builderCopy2, self->_type);
      v26 = malloc_type_malloc(4 * v25, 0x100004052888210uLL);
      v27 = malloc_type_malloc(4 * v25, 0x100004052888210uLL);
      if (v25)
      {
        for (i = 0; i != v25; ++i)
        {
          v29 = [(NSArray *)self->_shape objectAtIndexedSubscript:i];
          v26[i] = [v29 intValue];

          v30 = [(NSArray *)self->_interleave objectAtIndexedSubscript:i];
          v27[i] = [v30 intValue];
        }
      }

      if (*(values + 1) != *values)
      {
        arrayToU64Attr(builder, v26);
      }

      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else
  {
    shape = self->_shape;
    builderCopy2 = builder;
    if (shape)
    {
      goto LABEL_18;
    }
  }

  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v40[0] = mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::detail::TypedValue<mlir::TensorType>>(builderCopy2, v22, *values) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v40);

  return DefiningOp;
}

@end