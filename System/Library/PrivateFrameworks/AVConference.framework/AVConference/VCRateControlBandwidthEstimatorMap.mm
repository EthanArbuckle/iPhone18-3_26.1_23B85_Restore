@interface VCRateControlBandwidthEstimatorMap
- (VCRateControlBandwidthEstimatorMap)init;
- (int)bandwidthEstimationState;
- (void)dealloc;
- (void)setEstimatedBandwidth:(double)a3;
- (void)setMode:(unsigned int)a3;
- (void)setServerBag:(id)a3;
@end

@implementation VCRateControlBandwidthEstimatorMap

- (VCRateControlBandwidthEstimatorMap)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCRateControlBandwidthEstimatorMap;
  v2 = [(VCRateControlBandwidthEstimatorMap *)&v4 init];
  if (v2)
  {
    v2->_estimatorMap = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_currentActiveEstimatorID = -1;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCRateControlBandwidthEstimatorMap;
  [(VCRateControlBandwidthEstimatorMap *)&v3 dealloc];
}

uint64_t __VCRateControlBandwidthEstimatorMap_EstimatedBandwidthWithArrivalTime_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  if (v5 == 0.0 || (result = [a3 lastProbingArrivalTime], v5 - v7 < 30.0))
  {
    v8 = *(*(a1 + 32) + 24);
    result = [a3 estimatedBandwidth];
    if (v8 >= v9)
    {
      v9 = v8;
    }

    *(*(a1 + 32) + 24) = v9;
  }

  return result;
}

uint64_t __VCRateControlBandwidthEstimatorMap_EstimatedBandwidthUncappedWithArrivalTime_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  if (v5 == 0.0 || (result = [a3 lastProbingArrivalTime], v5 - v7 < 30.0))
  {
    v8 = *(*(a1 + 32) + 32);
    result = [a3 estimatedBandwidthUncapped];
    if (v8 >= v9)
    {
      v9 = v8;
    }

    *(*(a1 + 32) + 32) = v9;
  }

  return result;
}

- (void)setEstimatedBandwidth:(double)a3
{
  v7[5] = *MEMORY[0x1E69E9840];
  self->_estimatedBandwidth = a3;
  defaultEstimator = self->_defaultEstimator;
  if (defaultEstimator)
  {
    v5 = self->_mode - 6 > 0xFFFFFFFD;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    estimatorMap = self->_estimatorMap;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__VCRateControlBandwidthEstimatorMap_setEstimatedBandwidth___block_invoke;
    v7[3] = &__block_descriptor_40_e58_v32__0__NSNumber_8__VCRateControlBandwidthEstimator_16_B24l;
    *&v7[4] = a3;
    [(NSMutableDictionary *)estimatorMap enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {

    [(VCRateControlBandwidthEstimator *)defaultEstimator setEstimatedBandwidth:?];
  }
}

- (void)setMode:(unsigned int)a3
{
  v9 = *MEMORY[0x1E69E9840];
  self->_mode = a3;
  defaultEstimator = self->_defaultEstimator;
  if (a3 - 6 > 0xFFFFFFFD || defaultEstimator == 0)
  {
    estimatorMap = self->_estimatorMap;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__VCRateControlBandwidthEstimatorMap_setMode___block_invoke;
    v7[3] = &__block_descriptor_36_e58_v32__0__NSNumber_8__VCRateControlBandwidthEstimator_16_B24l;
    v8 = a3;
    [(NSMutableDictionary *)estimatorMap enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {

    [(VCRateControlBandwidthEstimator *)defaultEstimator setMode:?];
  }
}

- (int)bandwidthEstimationState
{
  defaultEstimator = self->_defaultEstimator;
  v4 = self->_mode - 6;
  if (defaultEstimator)
  {
    v5 = v4 > 0xFFFFFFFD;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return [(VCRateControlBandwidthEstimator *)defaultEstimator bandwidthEstimationState];
  }
}

- (void)setServerBag:(id)a3
{
  v9[5] = *MEMORY[0x1E69E9840];
  serverBag = self->_serverBag;
  if (serverBag != a3)
  {

    self->_serverBag = a3;
  }

  defaultEstimator = self->_defaultEstimator;
  if (defaultEstimator)
  {
    v7 = self->_mode - 6 > 0xFFFFFFFD;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    estimatorMap = self->_estimatorMap;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__VCRateControlBandwidthEstimatorMap_setServerBag___block_invoke;
    v9[3] = &unk_1E85F93C8;
    v9[4] = a3;
    [(NSMutableDictionary *)estimatorMap enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {

    [(VCRateControlBandwidthEstimator *)defaultEstimator setServerBag:a3];
  }
}

@end