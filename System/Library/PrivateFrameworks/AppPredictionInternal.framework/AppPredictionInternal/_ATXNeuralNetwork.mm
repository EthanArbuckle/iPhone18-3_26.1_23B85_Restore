@interface _ATXNeuralNetwork
- (_ATXNeuralNetwork)initWithData:(id)data;
- (double)predict:(const double *)predict;
- (float)_runOnInputs:(float *)inputs freeInputsAfterUse:(BOOL)use;
- (void)forInputs:(const float *)inputs computeOutputLayer:(float *)layer;
@end

@implementation _ATXNeuralNetwork

- (_ATXNeuralNetwork)initWithData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = _ATXNeuralNetwork;
  v6 = [(_ATXNeuralNetwork *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    bytes = [dataCopy bytes];
    v9 = *bytes;
    v7->_dataBytes = bytes;
    v7->_nlayers = v9;
    if (!v9)
    {
      [_ATXNeuralNetwork initWithData:];
    }

    v7->_layers = (bytes + 1);
  }

  return v7;
}

- (double)predict:(const double *)predict
{
  v5 = malloc_type_malloc(4 * self->_layers->var0, 0x100004052888210uLL);
  if (!v5)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v11);
  }

  var0 = self->_layers->var0;
  if (var0)
  {
    v7 = v5;
    do
    {
      v8 = *predict++;
      v9 = v8;
      *v7++ = v9;
      --var0;
    }

    while (var0);
  }

  [(_ATXNeuralNetwork *)self _predict:v5 freeInputsAfterUse:1];
  return result;
}

- (float)_runOnInputs:(float *)inputs freeInputsAfterUse:(BOOL)use
{
  inputsCopy = inputs;
  if (!self->_nlayers)
  {
    return inputs;
  }

  useCopy = use;
  v7 = 0;
  do
  {
    v8 = &self->_layers[v7];
    var5 = v8->var5;
    if (v8->var5)
    {
      var5 = v8->var0;
    }

    v10 = malloc_type_malloc(4 * (var5 + v8->var1), 0x100004052888210uLL);
    if (!v10)
    {
      v27 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v27);
    }

    v11 = v10;
    memcpy(v10, &self->_dataBytes[self->_layers[v7].var3], 4 * self->_layers[v7].var1);
    v12 = &self->_layers[v7];
    var0 = v12->var0;
    var1 = v12->var1;
    dataBytes = self->_dataBytes;
    var2 = v12->var2;
    cblas_sgemv_NEWLAPACK();
    layers = self->_layers;
    var4 = layers[v7].var4;
    if (layers[v7].var4)
    {
      if (var4 == 1)
      {
        v21 = layers[v7].var1;
        v22 = v11;
        if (v21)
        {
          do
          {
            *v22 = tanhf(*v22);
            ++v22;
            --v21;
          }

          while (v21);
        }
      }

      else if (var4 == 2)
      {
        v19 = layers[v7].var1;
        v20 = v11;
        if (v19)
        {
          do
          {
            *v20 = fmaxf(*v20, 0.0);
            ++v20;
            --v19;
          }

          while (v19);
        }
      }
    }

    else
    {
      v23 = layers[v7].var1;
      if (v23)
      {
        v24 = v11;
        do
        {
          *v24 = 1.0 / (expf(-*v24) + 1.0);
          ++v24;
          --v23;
        }

        while (v23);
      }
    }

    v25 = &layers[v7];
    if (v25->var5)
    {
      memcpy(&v11[layers[v7].var1], inputsCopy, 4 * v25->var0);
    }

    if (v7 || useCopy)
    {
      free(inputsCopy);
    }

    ++v7;
    inputsCopy = v11;
  }

  while (v7 < self->_nlayers);
  return v11;
}

- (void)forInputs:(const float *)inputs computeOutputLayer:(float *)layer
{
  v6 = [(_ATXNeuralNetwork *)self _runOnInputs:inputs freeInputsAfterUse:0];
  v7 = &self->_layers[self->_nlayers];
  var1 = v7[-1].var1;
  v13 = v7[-1].var1;
  if (v7[-1].var6)
  {
    vvexpf(layer, v6, &v13);
    v9 = 0.0;
    if (v13 >= 1)
    {
      v10 = v13;
      layerCopy = layer;
      do
      {
        v12 = *layerCopy++;
        v9 = v9 + v12;
        --v10;
      }

      while (v10);
    }

    cblas_sscal_NEWLAPACK();
  }

  else
  {
    memcpy(layer, v6, 4 * var1);
  }

  free(v6);
}

- (void)initWithData:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v1 handleFailureInMethod:@"_nlayers > 0" object:? file:? lineNumber:? description:?];
}

- (void)_predict:freeInputsAfterUse:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"_layers[_nlayers-1].outsz == 1 || (_layers[_nlayers-1].outsz == 2 && _layers[_nlayers-1].softmax)" object:? file:? lineNumber:? description:?];
}

@end