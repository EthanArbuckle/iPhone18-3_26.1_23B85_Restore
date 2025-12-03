@interface ATXCorrelationMatrixGuardedData
- (ATXCorrelationMatrixGuardedData)init;
- (ATXCorrelationMatrixGuardedData)initWithCorrelationMatrix:(id)matrix locationTotals:(id)totals;
@end

@implementation ATXCorrelationMatrixGuardedData

- (ATXCorrelationMatrixGuardedData)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXCorrelationMatrixGuardedData *)self initWithCorrelationMatrix:v3 locationTotals:v4];

  return v5;
}

- (ATXCorrelationMatrixGuardedData)initWithCorrelationMatrix:(id)matrix locationTotals:(id)totals
{
  matrixCopy = matrix;
  totalsCopy = totals;
  v16.receiver = self;
  v16.super_class = ATXCorrelationMatrixGuardedData;
  v9 = [(ATXCorrelationMatrixGuardedData *)&v16 init];
  v10 = v9;
  if (v9)
  {
    if (matrixCopy && totalsCopy)
    {
      objc_storeStrong(&v9->_correlationMatrix, matrix);
      v11 = totalsCopy;
      totalsCopy = v11;
    }

    else
    {

      v12 = objc_opt_new();
      correlationMatrix = v10->_correlationMatrix;
      v10->_correlationMatrix = v12;

      v11 = objc_opt_new();
      matrixCopy = 0;
      totalsCopy = 0;
    }

    locationTotals = v10->_locationTotals;
    v10->_locationTotals = v11;
  }

  return v10;
}

@end