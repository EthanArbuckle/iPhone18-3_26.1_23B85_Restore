@interface ARNonSynchronousData
- (ARNonSynchronousData)initWithGatheredData:(id)a3 timestamp:(double)a4;
- (id)arMLDepthResult;
- (id)resultDataOfClass:(Class)a3;
- (id)segmentationResultWithDataSource:(int64_t)a3;
@end

@implementation ARNonSynchronousData

- (ARNonSynchronousData)initWithGatheredData:(id)a3 timestamp:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ARNonSynchronousData;
  v8 = [(ARNonSynchronousData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_gatheredData, a3);
    v9->_timestamp = a4;
    v9->_stillRequiresPostProcessing = 0;
  }

  return v9;
}

- (id)resultDataOfClass:(Class)a3
{
  v4 = [(ARNonSynchronousData *)self gatheredData];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__ARNonSynchronousData_resultDataOfClass___block_invoke;
  v8[3] = &__block_descriptor_40_e41_B24__0___ARResultData__8__NSDictionary_16lu32l8;
  v8[4] = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  return v6;
}

- (id)segmentationResultWithDataSource:(int64_t)a3
{
  v4 = [(ARNonSynchronousData *)self resultDataOfClass:objc_opt_class()];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ARNonSynchronousData_segmentationResultWithDataSource___block_invoke;
  v7[3] = &__block_descriptor_40_e35_B32__0__ARSegmentationData_8Q16_B24l;
  v7[4] = a3;
  v5 = [v4 ar_firstObjectPassingTest:v7];

  return v5;
}

BOOL __57__ARNonSynchronousData_segmentationResultWithDataSource___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 source];
  v7 = *(a1 + 32);
  if (v6 == v7)
  {
    *a4 = 1;
  }

  return v6 == v7;
}

- (id)arMLDepthResult
{
  v2 = [(ARNonSynchronousData *)self resultDataOfClass:objc_opt_class()];
  v3 = [v2 ar_firstObjectPassingTest:&__block_literal_global_65];

  return v3;
}

BOOL __39__ARNonSynchronousData_arMLDepthResult__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 source];
  if (v5 == 2)
  {
    *a4 = 1;
  }

  return v5 == 2;
}

@end