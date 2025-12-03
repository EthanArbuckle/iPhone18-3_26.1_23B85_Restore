@interface MLCLSTMDescriptor
- (BOOL)isEqual:(id)equal;
- (MLCLSTMDescriptor)initWithInputSize:(unint64_t)size hiddenSize:(unint64_t)hiddenSize layerCount:(unint64_t)count usesBiases:(BOOL)biases batchFirst:(BOOL)first isBidirectional:(BOOL)bidirectional returnsSequences:(BOOL)sequences dropout:(float)self0 resultMode:(unint64_t)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCLSTMDescriptor

- (MLCLSTMDescriptor)initWithInputSize:(unint64_t)size hiddenSize:(unint64_t)hiddenSize layerCount:(unint64_t)count usesBiases:(BOOL)biases batchFirst:(BOOL)first isBidirectional:(BOOL)bidirectional returnsSequences:(BOOL)sequences dropout:(float)self0 resultMode:(unint64_t)self1
{
  v19.receiver = self;
  v19.super_class = MLCLSTMDescriptor;
  result = [(MLCLSTMDescriptor *)&v19 init];
  if (result)
  {
    result->_inputSize = size;
    result->_hiddenSize = hiddenSize;
    result->_usesBiases = biases;
    result->_batchFirst = first;
    result->_isBidirectional = bidirectional;
    result->_returnsSequences = sequences;
    result->_dropout = dropout;
    result->_layerCount = count;
    result->_resultMode = mode;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  inputSize = [(MLCLSTMDescriptor *)self inputSize];
  hiddenSize = [(MLCLSTMDescriptor *)self hiddenSize];
  layerCount = [(MLCLSTMDescriptor *)self layerCount];
  usesBiases = [(MLCLSTMDescriptor *)self usesBiases];
  batchFirst = [(MLCLSTMDescriptor *)self batchFirst];
  isBidirectional = [(MLCLSTMDescriptor *)self isBidirectional];
  [(MLCLSTMDescriptor *)self dropout];
  v13 = [v3 stringWithFormat:@"%@: { inputSize=%lu : hiddenSize=%lu : numberOfLayers=%lu : bias=%d : batchFirst=%d : biDirectional=%d : dropout=%f }", v5, inputSize, hiddenSize, layerCount, usesBiases, batchFirst, isBidirectional, v12];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    inputSize = [v5 inputSize];
    if (inputSize != [(MLCLSTMDescriptor *)self inputSize])
    {
      goto LABEL_12;
    }

    hiddenSize = [v5 hiddenSize];
    if (hiddenSize != [(MLCLSTMDescriptor *)self hiddenSize])
    {
      goto LABEL_12;
    }

    layerCount = [v5 layerCount];
    if (layerCount != [(MLCLSTMDescriptor *)self layerCount])
    {
      goto LABEL_12;
    }

    usesBiases = [v5 usesBiases];
    if (usesBiases == -[MLCLSTMDescriptor usesBiases](self, "usesBiases") && (v10 = [v5 batchFirst], v10 == -[MLCLSTMDescriptor batchFirst](self, "batchFirst")) && (v11 = objc_msgSend(v5, "isBidirectional"), v11 == -[MLCLSTMDescriptor isBidirectional](self, "isBidirectional")) && (v12 = objc_msgSend(v5, "returnsSequences"), v12 == -[MLCLSTMDescriptor returnsSequences](self, "returnsSequences")) && (objc_msgSend(v5, "dropout"), v14 = v13, -[MLCLSTMDescriptor dropout](self, "dropout"), v14 == v15))
    {
      resultMode = [v5 resultMode];
      v17 = resultMode == [(MLCLSTMDescriptor *)self resultMode];
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
  inputSize = [(MLCLSTMDescriptor *)self inputSize];
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
  hashCombine_2(&v14, v6, v7, v8, v9, v10, v11, v12, inputSize);

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  inputSize = [(MLCLSTMDescriptor *)self inputSize];
  hiddenSize = [(MLCLSTMDescriptor *)self hiddenSize];
  layerCount = [(MLCLSTMDescriptor *)self layerCount];
  usesBiases = [(MLCLSTMDescriptor *)self usesBiases];
  batchFirst = [(MLCLSTMDescriptor *)self batchFirst];
  isBidirectional = [(MLCLSTMDescriptor *)self isBidirectional];
  returnsSequences = [(MLCLSTMDescriptor *)self returnsSequences];
  [(MLCLSTMDescriptor *)self dropout];
  v13 = v12;
  resultMode = [(MLCLSTMDescriptor *)self resultMode];
  LOBYTE(v17) = returnsSequences;
  LODWORD(v15) = v13;
  return [v4 initWithInputSize:inputSize hiddenSize:hiddenSize layerCount:layerCount usesBiases:usesBiases batchFirst:batchFirst isBidirectional:isBidirectional returnsSequences:v15 dropout:v17 resultMode:resultMode];
}

@end