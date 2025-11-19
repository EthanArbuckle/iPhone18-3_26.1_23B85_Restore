@interface MLCCPUDeviceOps
- (MLCCPUDeviceOps)initWithType:(int)a3 params:(id)a4 inDeltaData:(id)a5 outDeltaData:(id)a6 weightsDeltaData:(id)a7 biasDeltaData:(id)a8 weightsMomentumData:(id)a9 biasMomentumData:(id)a10 betaDeltaData:(id)a11 gammaDeltaData:(id)a12 betaMomentumData:(id)a13 gammaMomentumData:(id)a14;
- (void)dealloc;
@end

@implementation MLCCPUDeviceOps

- (MLCCPUDeviceOps)initWithType:(int)a3 params:(id)a4 inDeltaData:(id)a5 outDeltaData:(id)a6 weightsDeltaData:(id)a7 biasDeltaData:(id)a8 weightsMomentumData:(id)a9 biasMomentumData:(id)a10 betaDeltaData:(id)a11 gammaDeltaData:(id)a12 betaMomentumData:(id)a13 gammaMomentumData:(id)a14
{
  v50 = a4;
  v18 = a5;
  v19 = a6;
  v40 = a7;
  v49 = a7;
  v48 = a8;
  v47 = a9;
  v46 = a10;
  v45 = a11;
  v44 = a12;
  v43 = a13;
  v42 = a14;
  v51.receiver = self;
  v51.super_class = MLCCPUDeviceOps;
  v20 = [(MLCDeviceOps *)&v51 initWithSource:0 secondarySource:0 result:0 batchSize:1];
  v21 = v20;
  if (v20)
  {
    v20->_deviceOpType = a3;
    objc_storeStrong(&v20->_params, a4);
    fusedPrimitiveParams = v21->_fusedPrimitiveParams;
    v21->_fusedPrimitiveParams = 0;

    if (v18)
    {
      v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
    }

    else
    {
      v23 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v21->_inDeltaData, v23);
    if (v18)
    {
    }

    if (v19)
    {
      v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
    }

    else
    {
      v24 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v21->_outDeltaData, v24);
    if (v19)
    {
    }

    objc_storeStrong(&v21->_weightsDeltaData, v40);
    objc_storeStrong(&v21->_biasDeltaData, a8);
    objc_storeStrong(&v21->_betaDeltaData, a11);
    objc_storeStrong(&v21->_gammaDeltaData, a12);
    objc_storeStrong(&v21->_weightsMomentumData, a9);
    objc_storeStrong(&v21->_biasMomentumData, a10);
    objc_storeStrong(&v21->_betaMomentumData, a13);
    objc_storeStrong(&v21->_gammaMomentumData, a14);
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
  v3 = [(MLCCPUDeviceOps *)self layer];

  if (v3)
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