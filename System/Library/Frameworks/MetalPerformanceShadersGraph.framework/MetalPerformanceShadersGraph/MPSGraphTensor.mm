@interface MPSGraphTensor
- (MPSGraphOperation)operation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)initTensorWithOperation:(id)a3 value:(Value)a4 graph:(id)a5 name:(id)a6;
- (id)initTensorWithOperation:(id)a3 value:(Value)a4 graph:(id)a5 parentBlock:(id)a6 name:(id)a7;
- (id)initTensorWithValue:(Value)a3 graph:(id)a4;
@end

@implementation MPSGraphTensor

- (id)initTensorWithValue:(Value)a3 graph:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MPSGraphTensor;
  v7 = [(MPSGraphTensor *)&v12 init];
  v8 = getMPSShapeFromMLIR(a3.impl);
  shape = v7->_shape;
  v7->_shape = v8;

  v7->_value = a3;
  objc_storeWeak(&v7->_graph, v6);
  name = v7->_name;
  v7->_name = @"UndefinedName";

  objc_storeWeak(&v7->_operation, 0);
  v7->_dataType = getMPSDataType((*(a3.impl + 1) & 0xFFFFFFFFFFFFFFF8));
  if (qword_1ECE753D8 != -1)
  {
    dispatch_once(&qword_1ECE753D8, &__block_literal_global_2);
  }

  v7->_index = atomic_fetch_add(_MergedGlobals_3, 1u);

  return v7;
}

- (id)initTensorWithOperation:(id)a3 value:(Value)a4 graph:(id)a5 name:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(MPSGraphTensor *)self initTensorWithValue:a4.impl graph:a5];
  objc_storeWeak(v12 + 2, v10);
  if (v11)
  {
    objc_storeStrong(v12 + 8, a6);
  }

  return v12;
}

- (id)initTensorWithOperation:(id)a3 value:(Value)a4 graph:(id)a5 parentBlock:(id)a6 name:(id)a7
{
  v12 = a6;
  v13 = [(MPSGraphTensor *)self initTensorWithOperation:a3 value:a4.impl graph:a5 name:a7];
  objc_storeWeak(v13 + 4, v12);

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)debugDescription
{
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v11 = 0;
  v15 = 0;
  v16 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v10 = &unk_1F5B3FB30;
  v17 = v18;
  llvm::raw_ostream::SetBufferAndMode(&v10, 0, 0, 0);
  mlir::Value::print(&self->_value, &v10);
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MPSGraphTensor;
  v4 = [(MPSGraphTensor *)&v9 debugDescription];
  v5 = v17;
  if (*(v17 + 23) < 0)
  {
    v5 = *v17;
  }

  v6 = [(NSArray *)self->_shape debugDescription];
  v7 = [v3 stringWithFormat:@"%@ : \n\nIR: %s \nShape: %@\n", v4, v5, v6];

  llvm::raw_ostream::~raw_ostream(&v10);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  return v7;
}

- (MPSGraphOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end