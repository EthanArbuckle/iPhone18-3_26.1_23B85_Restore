@interface _ATXNeuralNetworkBuilder
- (_ATXNeuralNetworkBuilder)initWithInputSize:(unint64_t)a3;
- (id)serialize;
- (void)addHiddenLayer:(unint64_t)a3 weights:(const float *)a4 bias:(const float *)a5 activation:(unsigned __int8)a6 skip:(BOOL)a7;
- (void)addOutputLayer:(unint64_t)a3 weights:(const float *)a4 bias:(const float *)a5 activation:(unsigned __int8)a6 softmax:(BOOL)a7;
- (void)serialize;
@end

@implementation _ATXNeuralNetworkBuilder

- (_ATXNeuralNetworkBuilder)initWithInputSize:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = _ATXNeuralNetworkBuilder;
  v4 = [(_ATXNeuralNetworkBuilder *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_prevSize = a3;
    v4->_nlayers = 0;
    v6 = objc_opt_new();
    descriptors = v5->_descriptors;
    v5->_descriptors = v6;

    v8 = objc_opt_new();
    weightsAndBiases = v5->_weightsAndBiases;
    v5->_weightsAndBiases = v8;

    *&v5->_haveOutputLayer = 0;
  }

  return v5;
}

- (void)addHiddenLayer:(unint64_t)a3 weights:(const float *)a4 bias:(const float *)a5 activation:(unsigned __int8)a6 skip:(BOOL)a7
{
  v7 = a7;
  if (self->_done)
  {
    [_ATXNeuralNetworkBuilder addHiddenLayer:weights:bias:activation:skip:];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else if (a3)
  {
    goto LABEL_3;
  }

  [_ATXNeuralNetworkBuilder addHiddenLayer:weights:bias:activation:skip:];
LABEL_3:
  prevSize = self->_prevSize;
  v20 = prevSize;
  v21 = a3;
  v22 = 0;
  v23 = 0;
  v24 = a6;
  v25 = v7;
  v26 = 0;
  if (!v7)
  {
    prevSize = 0;
  }

  self->_prevSize = prevSize + a3;
  [(NSMutableData *)self->_descriptors appendBytes:&v20 length:20];
  weightsAndBiases = self->_weightsAndBiases;
  v15 = objc_alloc(MEMORY[0x277CBEA90]);
  v16 = [v15 initWithBytes:a4 length:4 * v21 * v20];
  [(NSMutableArray *)weightsAndBiases addObject:v16];

  v17 = self->_weightsAndBiases;
  v18 = objc_alloc(MEMORY[0x277CBEA90]);
  v19 = [v18 initWithBytes:a5 length:4 * v21];
  [(NSMutableArray *)v17 addObject:v19];

  ++self->_nlayers;
}

- (void)addOutputLayer:(unint64_t)a3 weights:(const float *)a4 bias:(const float *)a5 activation:(unsigned __int8)a6 softmax:(BOOL)a7
{
  v11 = a3;
  if (self->_haveOutputLayer)
  {
    [_ATXNeuralNetworkBuilder addOutputLayer:weights:bias:activation:softmax:];
  }

  if (self->_done)
  {
    [_ATXNeuralNetworkBuilder addOutputLayer:weights:bias:activation:softmax:];
  }

  prevSize = self->_prevSize;
  v20 = v11;
  v21 = 0;
  v22 = 0;
  v23 = a6;
  v24 = 0;
  v25 = a7;
  v26 = 0;
  [(NSMutableData *)self->_descriptors appendBytes:&prevSize length:20];
  weightsAndBiases = self->_weightsAndBiases;
  v14 = objc_alloc(MEMORY[0x277CBEA90]);
  v15 = [v14 initWithBytes:a4 length:4 * v20 * prevSize];
  [(NSMutableArray *)weightsAndBiases addObject:v15];

  v16 = self->_weightsAndBiases;
  v17 = objc_alloc(MEMORY[0x277CBEA90]);
  v18 = [v17 initWithBytes:a5 length:4 * v20];
  [(NSMutableArray *)v16 addObject:v18];

  ++self->_nlayers;
  self->_haveOutputLayer = 1;
}

- (id)serialize
{
  if (!self->_haveOutputLayer)
  {
    [_ATXNeuralNetworkBuilder serialize];
  }

  if (self->_done)
  {
    [_ATXNeuralNetworkBuilder serialize];
  }

  v3 = objc_opt_new();
  nlayers = self->_nlayers;
  [v3 appendBytes:&nlayers length:4];
  [v3 appendData:self->_descriptors];
  if (self->_nlayers)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_weightsAndBiases objectAtIndexedSubscript:v6];
      v8 = offsetFromAppendingData(v3, v7);

      v9 = [(NSMutableArray *)self->_weightsAndBiases objectAtIndexedSubscript:v6 + 1];
      v10 = offsetFromAppendingData(v3, v9);

      v11 = [v3 mutableBytes] + v4;
      *(v11 + 12) = v8;
      *(v11 + 16) = v10;
      ++v5;
      v4 += 20;
      v6 += 2;
    }

    while (v5 < self->_nlayers);
  }

  self->_done = 1;

  return v3;
}

- (void)addHiddenLayer:weights:bias:activation:skip:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"!_done" object:? file:? lineNumber:? description:?];
}

- (void)addHiddenLayer:weights:bias:activation:skip:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"outputSize > 0" object:? file:? lineNumber:? description:?];
}

- (void)addOutputLayer:weights:bias:activation:softmax:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"!_haveOutputLayer" object:? file:? lineNumber:? description:?];
}

- (void)addOutputLayer:weights:bias:activation:softmax:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"!_done" object:? file:? lineNumber:? description:?];
}

- (void)serialize
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"!_done" object:? file:? lineNumber:? description:?];
}

@end