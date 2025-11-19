@interface MLCLSTMDescriptor
- (BOOL)isEqual:(id)a3;
- (MLCLSTMDescriptor)initWithInputSize:(unint64_t)a3 hiddenSize:(unint64_t)a4 layerCount:(unint64_t)a5 usesBiases:(BOOL)a6 batchFirst:(BOOL)a7 isBidirectional:(BOOL)a8 returnsSequences:(BOOL)a9 dropout:(float)a10 resultMode:(unint64_t)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCLSTMDescriptor

- (MLCLSTMDescriptor)initWithInputSize:(unint64_t)a3 hiddenSize:(unint64_t)a4 layerCount:(unint64_t)a5 usesBiases:(BOOL)a6 batchFirst:(BOOL)a7 isBidirectional:(BOOL)a8 returnsSequences:(BOOL)a9 dropout:(float)a10 resultMode:(unint64_t)a11
{
  v19.receiver = self;
  v19.super_class = MLCLSTMDescriptor;
  result = [(MLCLSTMDescriptor *)&v19 init];
  if (result)
  {
    result->_inputSize = a3;
    result->_hiddenSize = a4;
    result->_usesBiases = a6;
    result->_batchFirst = a7;
    result->_isBidirectional = a8;
    result->_returnsSequences = a9;
    result->_dropout = a10;
    result->_layerCount = a5;
    result->_resultMode = a11;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLSTMDescriptor *)self inputSize];
  v7 = [(MLCLSTMDescriptor *)self hiddenSize];
  v8 = [(MLCLSTMDescriptor *)self layerCount];
  v9 = [(MLCLSTMDescriptor *)self usesBiases];
  v10 = [(MLCLSTMDescriptor *)self batchFirst];
  v11 = [(MLCLSTMDescriptor *)self isBidirectional];
  [(MLCLSTMDescriptor *)self dropout];
  v13 = [v3 stringWithFormat:@"%@: { inputSize=%lu : hiddenSize=%lu : numberOfLayers=%lu : bias=%d : batchFirst=%d : biDirectional=%d : dropout=%f }", v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 inputSize];
    if (v6 != [(MLCLSTMDescriptor *)self inputSize])
    {
      goto LABEL_12;
    }

    v7 = [v5 hiddenSize];
    if (v7 != [(MLCLSTMDescriptor *)self hiddenSize])
    {
      goto LABEL_12;
    }

    v8 = [v5 layerCount];
    if (v8 != [(MLCLSTMDescriptor *)self layerCount])
    {
      goto LABEL_12;
    }

    v9 = [v5 usesBiases];
    if (v9 == -[MLCLSTMDescriptor usesBiases](self, "usesBiases") && (v10 = [v5 batchFirst], v10 == -[MLCLSTMDescriptor batchFirst](self, "batchFirst")) && (v11 = objc_msgSend(v5, "isBidirectional"), v11 == -[MLCLSTMDescriptor isBidirectional](self, "isBidirectional")) && (v12 = objc_msgSend(v5, "returnsSequences"), v12 == -[MLCLSTMDescriptor returnsSequences](self, "returnsSequences")) && (objc_msgSend(v5, "dropout"), v14 = v13, -[MLCLSTMDescriptor dropout](self, "dropout"), v14 == v15))
    {
      v16 = [v5 resultMode];
      v17 = v16 == [(MLCLSTMDescriptor *)self resultMode];
    }

    else
    {
LABEL_12:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v14 = 0;
  v3 = [(MLCLSTMDescriptor *)self inputSize];
  [(MLCLSTMDescriptor *)self hiddenSize];
  [(MLCLSTMDescriptor *)self layerCount];
  [(MLCLSTMDescriptor *)self usesBiases];
  [(MLCLSTMDescriptor *)self batchFirst];
  [(MLCLSTMDescriptor *)self isBidirectional];
  [(MLCLSTMDescriptor *)self returnsSequences];
  v4 = MEMORY[0x277CCABB0];
  [(MLCLSTMDescriptor *)self dropout];
  v5 = [v4 numberWithFloat:?];
  [v5 hash];
  [(MLCLSTMDescriptor *)self resultMode];
  hashCombine_2(&v14, v6, v7, v8, v9, v10, v11, v12, v3);

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCLSTMDescriptor *)self inputSize];
  v6 = [(MLCLSTMDescriptor *)self hiddenSize];
  v7 = [(MLCLSTMDescriptor *)self layerCount];
  v8 = [(MLCLSTMDescriptor *)self usesBiases];
  v9 = [(MLCLSTMDescriptor *)self batchFirst];
  v10 = [(MLCLSTMDescriptor *)self isBidirectional];
  v11 = [(MLCLSTMDescriptor *)self returnsSequences];
  [(MLCLSTMDescriptor *)self dropout];
  v13 = v12;
  v14 = [(MLCLSTMDescriptor *)self resultMode];
  LOBYTE(v17) = v11;
  LODWORD(v15) = v13;
  return [v4 initWithInputSize:v5 hiddenSize:v6 layerCount:v7 usesBiases:v8 batchFirst:v9 isBidirectional:v10 returnsSequences:v15 dropout:v17 resultMode:v14];
}

@end