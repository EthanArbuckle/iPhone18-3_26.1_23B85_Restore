@interface MPSGraphBufferToTensorOp
- (MPSGraphBufferToTensorOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 shape:(id)a6 type:(unsigned int)a7 interleave:(id)a8 isTensorBufferOp:(BOOL)a9 isChannelAndInterleaveSame:(BOOL)a10 name:(id)a11;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphBufferToTensorOp

- (MPSGraphBufferToTensorOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 shape:(id)a6 type:(unsigned int)a7 interleave:(id)a8 isTensorBufferOp:(BOOL)a9 isChannelAndInterleaveSame:(BOOL)a10 name:(id)a11
{
  v26 = a6;
  v18 = a8;
  objc_storeStrong(&self->_shape, a6);
  v19 = a11;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  self->_type = a7;
  interleave = self->_interleave;
  self->_interleave = v18;

  self->_isTensorBufferOp = a9;
  self->_isChannelAndInterleaveSame = a10;
  v24 = [(MPSGraphOperation *)self initWithGraph:v22 inputTensors:v21 controlDependencies:v20 name:v19];

  return v24;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v33 = a7;
  mpsFileLoc("[MPSGraphBufferToTensorOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorBufferOpsPrivate.mm", v35);
  v10 = v33;
  v41 = 260;
  v40[0] = v35;
  StringAttr = mlir::Builder::getStringAttr(a3, v40);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0xA1u, 0);
  if (v10)
  {
    v14 = v10;
    v15 = [v10 UTF8String];
    v16 = strlen(v15);
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
      memmove(__dst, v15, v16);
    }

    v18 = &__dst[v17];
  }

  else
  {
    v39[2] = 21;
    qmemcpy(__dst, "mpsx.buffer_to_tensor", sizeof(__dst));
    v18 = v39;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v12, &__p);
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
  v21 = mlir::Builder::getStringAttr(a3, v40);
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
    v24 = a3;
    if (shape)
    {
LABEL_18:
      v25 = [(NSArray *)shape count];
      getMLIRElementType(*v24, self->_type);
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

      if (*(a5 + 1) != *a5)
      {
        arrayToU64Attr(a3, v26);
      }

      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else
  {
    shape = self->_shape;
    v24 = a3;
    if (shape)
    {
      goto LABEL_18;
    }
  }

  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v40[0] = mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &>(v24, v22, *a5) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v40);

  return DefiningOp;
}

@end