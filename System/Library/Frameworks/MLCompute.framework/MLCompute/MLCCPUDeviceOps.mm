@interface MLCCPUDeviceOps
- (MLCCPUDeviceOps)initWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0 betaDeltaData:(id)self1 gammaDeltaData:(id)self2 betaMomentumData:(id)self3 gammaMomentumData:(id)self4;
- (void)dealloc;
@end

@implementation MLCCPUDeviceOps

- (MLCCPUDeviceOps)initWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0 betaDeltaData:(id)self1 gammaDeltaData:(id)self2 betaMomentumData:(id)self3 gammaMomentumData:(id)self4
{
  paramsCopy = params;
  dataCopy = data;
  deltaDataCopy = deltaData;
  weightsDeltaDataCopy = weightsDeltaData;
  weightsDeltaDataCopy2 = weightsDeltaData;
  biasDeltaDataCopy = biasDeltaData;
  momentumDataCopy = momentumData;
  biasMomentumDataCopy = biasMomentumData;
  betaDeltaDataCopy = betaDeltaData;
  gammaDeltaDataCopy = gammaDeltaData;
  betaMomentumDataCopy = betaMomentumData;
  gammaMomentumDataCopy = gammaMomentumData;
  v51.receiver = self;
  v51.super_class = MLCCPUDeviceOps;
  v20 = [(MLCDeviceOps *)&v51 initWithSource:0 secondarySource:0 result:0 batchSize:1];
  v21 = v20;
  if (v20)
  {
    v20->_deviceOpType = type;
    objc_storeStrong(&v20->_params, params);
    fusedPrimitiveParams = v21->_fusedPrimitiveParams;
    v21->_fusedPrimitiveParams = 0;

    if (dataCopy)
    {
      v23 = [MEMORY[0x277CBEA60] arrayWithArray:dataCopy];
    }

    else
    {
      v23 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v21->_inDeltaData, v23);
    if (dataCopy)
    {
    }

    if (deltaDataCopy)
    {
      v24 = [MEMORY[0x277CBEA60] arrayWithArray:deltaDataCopy];
    }

    else
    {
      v24 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v21->_outDeltaData, v24);
    if (deltaDataCopy)
    {
    }

    objc_storeStrong(&v21->_weightsDeltaData, weightsDeltaDataCopy);
    objc_storeStrong(&v21->_biasDeltaData, biasDeltaData);
    objc_storeStrong(&v21->_betaDeltaData, betaDeltaData);
    objc_storeStrong(&v21->_gammaDeltaData, gammaDeltaData);
    objc_storeStrong(&v21->_weightsMomentumData, momentumData);
    objc_storeStrong(&v21->_biasMomentumData, biasMomentumData);
    objc_storeStrong(&v21->_betaMomentumData, betaMomentumData);
    objc_storeStrong(&v21->_gammaMomentumData, gammaMomentumData);
    poolingIndicesBuffer = v21->_poolingIndicesBuffer;
    v21->_poolingIndicesBuffer = 0;

    movingMean = v21->_movingMean;
    v21->_movingMean = 0;

    movingVariance = v21->_movingVariance;
    v21->_movingVariance = 0;

    v21->_sourceStride = 0;
    v21->_sourceStrideSecondary = 0;
    v21->_sourceStrideTertiary = 0;
    v21->_resultStride = 0;
    v21->_sourceDataOffset = 0;
    v21->_secondarySourceDataOffset = 0;
    v21->_tertiarySourceDataOffset = 0;
    v21->_resultDataOffset = 0;
    v21->_BNNSFilter = 0;
    v21->_isFusedBNNSFilter = 0;
    weightsDeltaDataBytes = v21->_weightsDeltaDataBytes;
    v21->_weightsDeltaDataBytes = 0;

    biasDeltaDataBytes = v21->_biasDeltaDataBytes;
    v21->_biasDeltaDataBytes = 0;

    v21->_computeWeightsAndBiasOnly = 0;
    betaDeltaDataBytes = v21->_betaDeltaDataBytes;
    v21->_betaDeltaDataBytes = 0;

    gammaDeltaDataBytes = v21->_gammaDeltaDataBytes;
    v21->_gammaDeltaDataBytes = 0;

    weightsMomentumDataBytes = v21->_weightsMomentumDataBytes;
    v21->_weightsMomentumDataBytes = 0;

    biasMomentumDataBytes = v21->_biasMomentumDataBytes;
    v21->_biasMomentumDataBytes = 0;

    betaMomentumDataBytes = v21->_betaMomentumDataBytes;
    v21->_betaMomentumDataBytes = 0;

    gammaMomentumDataBytes = v21->_gammaMomentumDataBytes;
    v21->_gammaMomentumDataBytes = 0;

    v21->_binaryOperation = 0;
    v21->_paddingPolicy = 0;
    v21->_useSourceGradientDeviceMemoryForResultGradientTensor = 0;
    v21->_useSourceGradientDeviceMemoryForSecondaryResultGradientTensor = 0;
    v21->_inferenceOnly = 0;
    arithmeticParamsData = v21->_arithmeticParamsData;
    v21->_arithmeticParamsData = 0;
  }

  return v21;
}

- (void)dealloc
{
  layer = [(MLCCPUDeviceOps *)self layer];

  if (layer)
  {
    goto LABEL_4;
  }

  if ([(MLCCPUDeviceOps *)self BNNSFilter])
  {
    BNNSFilterDestroy([(MLCCPUDeviceOps *)self BNNSFilter]);
LABEL_4:
    [(MLCCPUDeviceOps *)self setBNNSFilter:0];
  }

  v4.receiver = self;
  v4.super_class = MLCCPUDeviceOps;
  [(MLCCPUDeviceOps *)&v4 dealloc];
}

@end